Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 044E5458634
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 20:54:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229776AbhKUT5H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 14:57:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbhKUT5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 14:57:07 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B212C061574
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 11:54:01 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id f18so70709970lfv.6
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 11:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nQP1NjnROxOP2uUy2qYpkLLRNOS1H+2WMTMotJrpSCw=;
        b=6nmLl4db9aEDbKdFkJJ6+dSghC5PwZb/o9t6251/zT4OmGX2ZRX8H6Ay75EzOFwV6Y
         bap2Egm54SWuhvp6vktnaYBnX7sWg2ZHiL4Ju4K5pRB03MBIsJWF4E8UJtBayl8Ns+IT
         JZqyrCETcPkY0dTbLMPXNBTGq+lWC06lJHoHRlIqrfSeTRe9EzrDE0Fmr9qlsiB3jaJA
         yLY/I5aOtASEYnmeNw82D23k4e7PPTEKRKvp7IC4GN2iJGBGrV/r9ThZ853aoToyi/ge
         hPgTOJQHqyOGh6o3GHBZysie8Um4XEpegugHCo72iu2e9RvfCmQK0vgyuv2B9JNtqOIt
         56dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nQP1NjnROxOP2uUy2qYpkLLRNOS1H+2WMTMotJrpSCw=;
        b=Raj9PYcZg9kJDKNCg1Lk9mg+FS2NL2Sl66d1cNCdfGJkGKbIMV4c8dCMnYQPm3p2Kt
         jBnfEqpRC1tCoCbd4GcouSK8pO5xohyffs2ThD+SZkNxbG00kqpBQbwUwz1xiRt8ZxKS
         1E8nsuNXNp6PRgZluAurFVGGPhN9gP2GEiJWBDOb56D7fDFSfdFEbCQnYa8rmqVbXw8o
         13aMnk4FjhZ5U+pmZDOVAS8UT2Yj9Rk8psY1X5nJxQq2Ri0zjXpSUUQiMz9YDrO24e+T
         R5qwarapwZdL8kApmWNiwEeuhG1ulp40ox1OH68w7ySYm+lF12i0VoFbAQadYunReqQN
         L0CQ==
X-Gm-Message-State: AOAM531vBwNGLhMi1ZjV5X5TlnJ72d7WmTWblUefe2UixRWToLlaYunJ
        scZLurbhADEjXPqi8U/r0i25Pw==
X-Google-Smtp-Source: ABdhPJxifYrrCmCT6QRgl2SG0RtsCFdGwUTA6xje0y+r42KUO/VE9Rp5aGnPezZjfiSYKUblUCXLew==
X-Received: by 2002:a2e:86da:: with SMTP id n26mr46096926ljj.522.1637524439998;
        Sun, 21 Nov 2021 11:53:59 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id a24sm768987ljq.18.2021.11.21.11.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Nov 2021 11:53:59 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: [PATCH v3 1/3] net: allwinner: reset control support
Date:   Sun, 21 Nov 2021 22:53:35 +0300
Message-Id: <20211121195337.230475-2-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211121195337.230475-1-boger@wirenboard.com>
References: <20211121195337.230475-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 (aka V40/A40i/T3) and A10/A20 share the same EMAC IP.
However, on R40 the EMAC is gated by default.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 drivers/net/ethernet/allwinner/sun4i-emac.c | 64 +++++++++++++++++++--
 1 file changed, 59 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethernet/allwinner/sun4i-emac.c
index 800ee022388f..16039784f2c6 100644
--- a/drivers/net/ethernet/allwinner/sun4i-emac.c
+++ b/drivers/net/ethernet/allwinner/sun4i-emac.c
@@ -28,6 +28,7 @@
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
+#include <linux/reset.h>
 #include <linux/soc/sunxi/sunxi_sram.h>
 
 #include "sun4i-emac.h"
@@ -68,6 +69,15 @@ MODULE_PARM_DESC(watchdog, "transmit timeout in milliseconds");
  * devices, EMACA and EMACB.
  */
 
+/**
+ * struct emac_quirks - Differences between SoC variants.
+ *
+ * @has_reset: SoC needs reset deasserted.
+ */
+struct emac_quirks {
+	bool		has_reset;
+};
+
 struct emac_board_info {
 	struct clk		*clk;
 	struct device		*dev;
@@ -85,6 +95,7 @@ struct emac_board_info {
 	unsigned int		link;
 	unsigned int		speed;
 	unsigned int		duplex;
+	struct reset_control	*reset;
 
 	phy_interface_t		phy_interface;
 };
@@ -790,6 +801,7 @@ static int emac_probe(struct platform_device *pdev)
 	struct emac_board_info *db;
 	struct net_device *ndev;
 	int ret = 0;
+	const struct emac_quirks *quirks;
 
 	ndev = alloc_etherdev(sizeof(struct emac_board_info));
 	if (!ndev) {
@@ -808,6 +820,13 @@ static int emac_probe(struct platform_device *pdev)
 
 	spin_lock_init(&db->lock);
 
+	quirks = of_device_get_match_data(&pdev->dev);
+	if (!quirks) {
+		dev_err(&pdev->dev, "Failed to determine the quirks to use\n");
+		ret = -ENODEV;
+		goto out;
+	}
+
 	db->membase = of_iomap(np, 0);
 	if (!db->membase) {
 		dev_err(&pdev->dev, "failed to remap registers\n");
@@ -824,16 +843,31 @@ static int emac_probe(struct platform_device *pdev)
 		goto out_iounmap;
 	}
 
+	if (quirks->has_reset) {
+		db->reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
+		if (IS_ERR(db->reset)) {
+			dev_err(&pdev->dev, "unable to request reset\n");
+			ret = PTR_ERR(db->reset);
+			goto out_dispose_mapping;
+		}
+
+		ret = reset_control_deassert(db->reset);
+		if (ret) {
+			dev_err(&pdev->dev, "could not deassert EMAC reset\n");
+			goto out_dispose_mapping;
+		}
+	}
+
 	db->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(db->clk)) {
 		ret = PTR_ERR(db->clk);
-		goto out_dispose_mapping;
+		goto out_assert_reset;
 	}
 
 	ret = clk_prepare_enable(db->clk);
 	if (ret) {
 		dev_err(&pdev->dev, "Error couldn't enable clock (%d)\n", ret);
-		goto out_dispose_mapping;
+		goto out_assert_reset;
 	}
 
 	ret = sunxi_sram_claim(&pdev->dev);
@@ -889,6 +923,8 @@ static int emac_probe(struct platform_device *pdev)
 	sunxi_sram_release(&pdev->dev);
 out_clk_disable_unprepare:
 	clk_disable_unprepare(db->clk);
+out_assert_reset:
+	reset_control_assert(db->reset);
 out_dispose_mapping:
 	irq_dispose_mapping(ndev->irq);
 out_iounmap:
@@ -909,6 +945,7 @@ static int emac_remove(struct platform_device *pdev)
 	unregister_netdev(ndev);
 	sunxi_sram_release(&pdev->dev);
 	clk_disable_unprepare(db->clk);
+	reset_control_assert(db->reset);
 	irq_dispose_mapping(ndev->irq);
 	iounmap(db->membase);
 	free_netdev(ndev);
@@ -940,11 +977,28 @@ static int emac_resume(struct platform_device *dev)
 	return 0;
 }
 
-static const struct of_device_id emac_of_match[] = {
-	{.compatible = "allwinner,sun4i-a10-emac",},
+static const struct emac_quirks sun4i_a10_emac_quirks = {
+	.has_reset = false,
+};
+
+static const struct emac_quirks sun4i_r40_emac_quirks = {
+	.has_reset = true,
+};
 
+static const struct of_device_id emac_of_match[] = {
+	{
+		.compatible = "allwinner,sun4i-a10-emac",
+		.data = &sun4i_a10_emac_quirks
+	},
+	{
+		.compatible = "allwinner,sun4i-r40-emac",
+		.data = &sun4i_r40_emac_quirks
+	},
 	/* Deprecated */
-	{.compatible = "allwinner,sun4i-emac",},
+	{
+		.compatible = "allwinner,sun4i-emac",
+		.data = &sun4i_a10_emac_quirks
+	},
 	{},
 };
 
-- 
2.25.1

