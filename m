Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5924E69B307
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 20:27:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229570AbjBQT1F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 14:27:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjBQT1E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 14:27:04 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38FCA53EF0
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 11:27:03 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8CD2485CA4;
        Fri, 17 Feb 2023 20:27:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676662021;
        bh=4GNgTW2OiGbEUFZ0YzAcaa4wnLTVN10EET+AW8mIu3c=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=LDpDmm96W2NmeIH+I4+5Vt4zlKN/IZWquybV1BxUrqYck6D3Zyr+3ei/IVE57Jt3X
         bZiZy3+TTjHiwQHwY75KdeTPZzPu95n7IiBQiq39sGBVcUibda8ArWkHKq1zb+X8NI
         GGUC9cHjyblpOeDaDQXic7SGTEequ/WvlRZm2sG5ID547XSc2YpVMwutSxzNBjW5qE
         fh1BytfxjrRotwf768XPrmBr1JMfzqsE/xXESq9bvCk4cQWIYA1x1xxKGRQEYCRnpC
         +bZUcSEdznkkuZ9McLhX6RYniHO2DAYNDQBZtcOhil/+V6aDxRQZU8VKRexyaOLv9B
         Z7GBwyLhcLR2A==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com
Subject: [PATCH 5/5] arm64: dts: imx8mp: Add FEC RMII pin mux on i.MX8MP DHCOM
Date:   Fri, 17 Feb 2023 20:26:47 +0100
Message-Id: <20230217192647.61733-5-marex@denx.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230217192647.61733-1-marex@denx.de>
References: <20230217192647.61733-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX8MP DHCOM SoM may come with either external RGMII PHY or
LAN8740Ai RMII PHY on the SoM attached to FEC MAC. Add pin mux
settings for both options, so that DT overlay can override these
settings on SoM variant with the LAN8740Ai PHY.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
---
 .../boot/dts/freescale/imx8mp-dhcom-pdk2.dts  |  2 ++
 .../boot/dts/freescale/imx8mp-dhcom-som.dtsi  | 22 ++++++++++++++++---
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
index 1cbf49ec138b9..92df6c1277c36 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
@@ -105,7 +105,9 @@ led-3 {
 };
 
 &fec {	/* Second ethernet */
+	pinctrl-0 = <&pinctrl_fec_rgmii>;
 	phy-handle = <&ethphypdk>;
+	phy-mode = "rgmii";
 
 	mdio {
 		ethphypdk: ethernet-phy@7 { /* KSZ 9021 */
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index cd285df84d311..7e804f6507843 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -129,9 +129,9 @@ ethphy0g: ethernet-phy@5 { /* Micrel KSZ9131RNXI */
 
 &fec {	/* Second ethernet */
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_fec>;
+	pinctrl-0 = <&pinctrl_fec_rmii>;
 	phy-handle = <&ethphy1f>;
-	phy-mode = "rgmii";
+	phy-mode = "rmii";
 	fsl,magic-packet;
 	status = "okay";
 
@@ -732,7 +732,7 @@ MX8MP_IOMUXC_SAI1_RXD1__GPIO4_IO03		0x11
 		>;
 	};
 
-	pinctrl_fec: dhcom-fec-grp {
+	pinctrl_fec_rgmii: dhcom-fec-rgmii-grp {	/* RGMII */
 		fsl,pins = <
 			MX8MP_IOMUXC_SAI1_MCLK__ENET1_TX_CLK		0x1f
 			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x3
@@ -753,6 +753,22 @@ MX8MP_IOMUXC_SAI1_TXD6__ENET1_RX_ER		0x1f
 		>;
 	};
 
+	pinctrl_fec_rmii: dhcom-fec-rmii-grp {	/* RMII */
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x3
+			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x3
+			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0		0x91
+			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1		0x91
+			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x91
+			MX8MP_IOMUXC_SAI1_TXD6__ENET1_RX_ER		0x91
+			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0		0x1f
+			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1		0x1f
+			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x1f
+			/* Clock */
+			MX8MP_IOMUXC_SAI1_MCLK__ENET1_TX_CLK		0x4000001f
+		>;
+	};
+
 	pinctrl_flexcan1: dhcom-flexcan1-grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SPDIF_RX__CAN1_RX			0x154
-- 
2.39.1

