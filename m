Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D28C1AD6D4
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2020 09:05:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728613AbgDQHFe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Apr 2020 03:05:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728322AbgDQHFe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Apr 2020 03:05:34 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3093EC061A0C
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2020 00:05:34 -0700 (PDT)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1jPL45-0008No-3p; Fri, 17 Apr 2020 09:05:29 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1jPL44-00032Q-E6; Fri, 17 Apr 2020 09:05:28 +0200
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rohit Visavalia <rohit.visavalia@xilinx.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dhaval Shah <dshah@xilinx.com>, kernel@pengutronix.de,
        Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH v3 1/6] soc: xilinx: vcu: drop useless success message
Date:   Fri, 17 Apr 2020 09:05:21 +0200
Message-Id: <20200417070526.7178-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417070526.7178-1-m.tretter@pengutronix.de>
References: <20200417070526.7178-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The message that the driver was successfully probed only adds useless
noise. Drop the message.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2 -> v3:
- none

v1 -> v2:
- none
---
 drivers/soc/xilinx/xlnx_vcu.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/soc/xilinx/xlnx_vcu.c b/drivers/soc/xilinx/xlnx_vcu.c
index a3aa40996f13..dcd8e7824b06 100644
--- a/drivers/soc/xilinx/xlnx_vcu.c
+++ b/drivers/soc/xilinx/xlnx_vcu.c
@@ -571,8 +571,6 @@ static int xvcu_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(&pdev->dev, xvcu);
 
-	dev_info(&pdev->dev, "%s: Probed successfully\n", __func__);
-
 	return 0;
 
 error_pll_ref:
-- 
2.20.1

