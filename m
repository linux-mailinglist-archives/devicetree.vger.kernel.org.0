Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 488CA443724
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 21:17:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbhKBUUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 16:20:25 -0400
Received: from mga07.intel.com ([134.134.136.100]:13749 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230457AbhKBUUY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Nov 2021 16:20:24 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="294812569"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="294812569"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 13:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="500738814"
Received: from maru.jf.intel.com ([10.54.51.77])
  by orsmga008.jf.intel.com with ESMTP; 02 Nov 2021 13:17:48 -0700
From:   jae.hyun.yoo@intel.com
To:     Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net
Subject: [PATCH -next v2 3/6] ipmi: bt: add clock control logic
Date:   Tue,  2 Nov 2021 13:37:14 -0700
Message-Id: <20211102203717.96794-4-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

If LPC BT driver is registered ahead of lpc-ctrl module, LPC BT
hardware block will be enabled without heart beating of LCLK until
lpc-ctrl enables the LCLK. This issue causes improper handling on
host interrupts when the host sends interrupts in that time frame.
Then kernel eventually forcibly disables the interrupt with
dumping stack and printing a 'nobody cared this irq' message out.

To prevent this issue, all LPC sub drivers should enable LCLK
individually so this patch adds clock control logic into the LPC
BT driver.

Fixes: 54f9c4d0778b ("ipmi: add an Aspeed BT IPMI BMC driver")
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Cédric Le Goater <clg@kaod.org>
---
v1 -> v2:
 - No change.

 drivers/char/ipmi/bt-bmc.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index 7450904e330a..a20f92cc7b18 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -5,6 +5,7 @@
 
 #include <linux/atomic.h>
 #include <linux/bt-bmc.h>
+#include <linux/clk.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
@@ -62,6 +63,7 @@ struct bt_bmc {
 	wait_queue_head_t	queue;
 	struct timer_list	poll_timer;
 	struct mutex		mutex;
+	struct clk		*clk;
 };
 
 static atomic_t open_count = ATOMIC_INIT(0);
@@ -423,6 +425,19 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	if (IS_ERR(bt_bmc->base))
 		return PTR_ERR(bt_bmc->base);
 
+	bt_bmc->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(bt_bmc->clk)) {
+		rc = PTR_ERR(bt_bmc->clk);
+		if (rc != -EPROBE_DEFER)
+			dev_err(dev, "Unable to get clock\n");
+		return rc;
+	}
+	rc = clk_prepare_enable(bt_bmc->clk);
+	if (rc) {
+		dev_err(dev, "Unable to enable clock\n");
+		return rc;
+	}
+
 	mutex_init(&bt_bmc->mutex);
 	init_waitqueue_head(&bt_bmc->queue);
 
@@ -433,7 +448,7 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	rc = misc_register(&bt_bmc->miscdev);
 	if (rc) {
 		dev_err(dev, "Unable to register misc device\n");
-		return rc;
+		goto err;
 	}
 
 	bt_bmc_config_irq(bt_bmc, pdev);
@@ -457,6 +472,11 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	clr_b_busy(bt_bmc);
 
 	return 0;
+
+err:
+	clk_disable_unprepare(bt_bmc->clk);
+
+	return rc;
 }
 
 static int bt_bmc_remove(struct platform_device *pdev)
@@ -466,6 +486,8 @@ static int bt_bmc_remove(struct platform_device *pdev)
 	misc_deregister(&bt_bmc->miscdev);
 	if (bt_bmc->irq < 0)
 		del_timer_sync(&bt_bmc->poll_timer);
+	clk_disable_unprepare(bt_bmc->clk);
+
 	return 0;
 }
 
-- 
2.25.1

