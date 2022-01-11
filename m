Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D49548B191
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 17:06:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244049AbiAKQGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 11:06:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240810AbiAKQGM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 11:06:12 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F35BC06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 08:06:12 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id x22so5402395lfd.10
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 08:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V1d1hWvVycjkagHoYZGryo2W04Ierj/dRC0TMT4n6OY=;
        b=y8rp1KIPOzsnlGCTA0GxIEGQUtw3C0MU6ec2BVfyvtz8PUNPf5J9wUwE8FLMGk4sXx
         oG0fqVTD6dCRvYbdcOzAqwl3VOYK83IT/+UASzUmfs/cPfNjm2/u0B3DBKd827npRWmz
         9Iu5RB+/iL/gJAt/+VX3Szxh21hTIevdOA4oOTwyzEPLZXiRrALax9c6/FZOBSeBxuOn
         xlvSx2y/VbvpwamZ1s2tyNt0n/tt5nse0lhZZxUKWLUOMEuLb68JalA/dW5TrVeq1cZe
         9bpcefN0b3btLsY7G5PQzJALWRghHgxS1YflynDsCJX27FOusnqIELPZHx/GqFcVrqsc
         LGPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V1d1hWvVycjkagHoYZGryo2W04Ierj/dRC0TMT4n6OY=;
        b=o884PUDWrTl0SQ29SVZKuWZBwUtrBpXrKFlauCqbCXVhihAkS95sk7WPLwROQuTz7r
         +QziC45Mh8s5sSqSV8Q9p2MdeIxxH3h6SzRGIgAht7ngvCzBxBUX1vFssTk6OOXyHf0b
         6J0x62yv02d2k36dEFlV8UF98Q60Ppeu4ErNoddywHCr2pjoBK+hzc+uYYImECmLA7to
         qenrhP9sheE0S+OaCYn/DqXO4C6gSt/yh51NLzmo+awMi6Kod9R+Zx0NP9hfQsvcSSIX
         tR7NakzqvHXVNZdY8PEsZ7I+VYMbM9syaUlIlA3gn+3+ZEn0utUW3pXjrGo4Rr0P+jBV
         KimQ==
X-Gm-Message-State: AOAM5338WDD1oexTFvx/bUfQYPC6VQG5cPJksLbM592yb6TDssmvN0n5
        9I37bBwlgkdlRcr09kuQEYgQ3w==
X-Google-Smtp-Source: ABdhPJzMZl2hD6yFwcvk58x69BcZXAdbh4ZgLJ5ZHt4M39q5O8Y6ZjhYRGJAXB6S+k7Qbz7VSS2vsw==
X-Received: by 2002:a05:651c:8a:: with SMTP id 10mr2113109ljq.491.1641917170723;
        Tue, 11 Jan 2022 08:06:10 -0800 (PST)
Received: from boger-laptop.lan (81.5.110.253.dhcp.mipt-telecom.ru. [81.5.110.253])
        by smtp.gmail.com with ESMTPSA id k39sm564803lfv.150.2022.01.11.08.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 08:06:10 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: [PATCH v4 1/3] net: allwinner: reset control support
Date:   Tue, 11 Jan 2022 19:05:58 +0300
Message-Id: <20220111160600.58384-2-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220111160600.58384-1-boger@wirenboard.com>
References: <20220111160600.58384-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 (aka V40/A40i/T3) and A10/A20 share the same EMAC IP.
However, on R40 the EMAC reset needs to be deasserted.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 drivers/net/ethernet/allwinner/sun4i-emac.c | 64 +++++++++++++++++++--
 1 file changed, 59 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethernet/allwinner/sun4i-emac.c
index 800ee022388f..368597f0ff76 100644
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
+static const struct emac_quirks sun8i_r40_emac_quirks = {
+	.has_reset = true,
+};
 
+static const struct of_device_id emac_of_match[] = {
+	{
+		.compatible = "allwinner,sun4i-a10-emac",
+		.data = &sun4i_a10_emac_quirks
+	},
+	{
+		.compatible = "allwinner,sun8i-r40-emac",
+		.data = &sun8i_r40_emac_quirks
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

