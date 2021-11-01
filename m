Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A2904423DD
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 00:18:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232388AbhKAXVA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 19:21:00 -0400
Received: from mga18.intel.com ([134.134.136.126]:29623 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232387AbhKAXU7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 1 Nov 2021 19:20:59 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="218053511"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; 
   d="scan'208";a="218053511"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2021 16:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; 
   d="scan'208";a="727670714"
Received: from maru.jf.intel.com ([10.54.51.77])
  by fmsmga005.fm.intel.com with ESMTP; 01 Nov 2021 16:18:24 -0700
From:   jae.hyun.yoo@intel.com
To:     Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net
Subject: [PATCH -next 4/4] ipmi: kcs_bmc_aspeed: add clock control logic
Date:   Mon,  1 Nov 2021 16:37:51 -0700
Message-Id: <20211101233751.49222-5-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

If LPC KCS driver is registered ahead of lpc-ctrl module, LPC
KCS block will be enabled without heart beating of LCLK until
lpc-ctrl enables the LCLK. This issue causes improper handling on
host interrupts when the host sends interrupts in that time frame.
Then kernel eventually forcibly disables the interrupt with
dumping stack and printing a 'nobody cared this irq' message out.

To prevent this issue, all LPC sub drivers should enable LCLK
individually so this patch adds clock control logic into the LPC
KCS driver.

Fixes: be2ed207e374 ("ipmi: add an Aspeed KCS IPMI BMC driver")
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 92a37b33494c..00706472cc4d 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -6,6 +6,7 @@
 #define pr_fmt(fmt) "aspeed-kcs-bmc: " fmt
 
 #include <linux/atomic.h>
+#include <linux/clk.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
@@ -126,6 +127,8 @@ struct aspeed_kcs_bmc {
 		bool remove;
 		struct timer_list timer;
 	} obe;
+
+	struct clk *clk;
 };
 
 struct aspeed_kcs_of_ops {
@@ -620,24 +623,37 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
+	priv->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		rc = PTR_ERR(priv->clk);
+		if (rc != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Couldn't get clock\n");
+		return rc;
+	}
+	rc = clk_prepare_enable(priv->clk);
+	if (rc) {
+		dev_err(&pdev->dev, "Couldn't enable clock\n");
+		return rc;
+	}
+
 	spin_lock_init(&priv->obe.lock);
 	priv->obe.remove = false;
 	timer_setup(&priv->obe.timer, aspeed_kcs_check_obe, 0);
 
 	rc = aspeed_kcs_set_address(kcs_bmc, addrs, nr_addrs);
 	if (rc)
-		return rc;
+		goto err;
 
 	/* Host to BMC IRQ */
 	rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
 	if (rc)
-		return rc;
+		goto err;
 
 	/* BMC to Host IRQ */
 	if (have_upstream_irq) {
 		rc = aspeed_kcs_config_upstream_irq(priv, upstream_irq[0], upstream_irq[1]);
 		if (rc < 0)
-			return rc;
+			goto err;
 	} else {
 		priv->upstream_irq.mode = aspeed_kcs_irq_none;
 	}
@@ -650,13 +666,19 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	rc = kcs_bmc_add_device(&priv->kcs_bmc);
 	if (rc) {
 		dev_warn(&pdev->dev, "Failed to register channel %d: %d\n", kcs_bmc->channel, rc);
-		return rc;
+		goto err;
 	}
 
 	dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
 			kcs_bmc->channel, addrs[0]);
 
 	return 0;
+
+err:
+	aspeed_kcs_enable_channel(kcs_bmc, false);
+	clk_disable_unprepare(priv->clk);
+
+	return rc;
 }
 
 static int aspeed_kcs_remove(struct platform_device *pdev)
@@ -664,6 +686,7 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
 	struct aspeed_kcs_bmc *priv = platform_get_drvdata(pdev);
 	struct kcs_bmc_device *kcs_bmc = &priv->kcs_bmc;
 
+	clk_disable_unprepare(priv->clk);
 	kcs_bmc_remove_device(kcs_bmc);
 
 	aspeed_kcs_enable_channel(kcs_bmc, false);
-- 
2.25.1

