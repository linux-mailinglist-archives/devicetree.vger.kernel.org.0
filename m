Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C34B6661BE0
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 02:22:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231226AbjAIBWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 20:22:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230175AbjAIBWh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 20:22:37 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A62D3D45
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 17:22:33 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FF85152B;
        Sun,  8 Jan 2023 17:23:15 -0800 (PST)
Received: from donnerap.cambridge.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C71DC3F67D;
        Sun,  8 Jan 2023 17:22:31 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Icenowy Zheng <uwu@icenowy.me>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: [PATCH v5 2/3] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date:   Mon,  9 Jan 2023 01:22:22 +0000
Message-Id: <20230109012223.4079299-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230109012223.4079299-1-andre.przywara@arm.com>
References: <20230109012223.4079299-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Icenowy Zheng <uwu@icenowy.me>

The F1C100s SoC has one USB OTG port connected to a MUSB controller.

Add support for its USB PHY.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 5472db9e87ef8..d9beacc3f8c22 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -918,6 +918,14 @@ static int sun4i_usb_phy_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct sun4i_usb_phy_cfg suniv_f1c100s_cfg = {
+	.num_phys = 1,
+	.type = sun4i_a10_phy,
+	.disc_thresh = 3,
+	.phyctl_offset = REG_PHYCTL_A10,
+	.dedicated_clocks = true,
+};
+
 static const struct sun4i_usb_phy_cfg sun4i_a10_cfg = {
 	.num_phys = 3,
 	.type = sun4i_a10_phy,
@@ -1059,6 +1067,8 @@ static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	  .data = &sun50i_a64_cfg},
 	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = &sun50i_h6_cfg },
 	{ .compatible = "allwinner,sun50i-h616-usb-phy", .data = &sun50i_h616_cfg },
+	{ .compatible = "allwinner,suniv-f1c100s-usb-phy",
+	  .data = &suniv_f1c100s_cfg },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, sun4i_usb_phy_of_match);
-- 
2.25.1

