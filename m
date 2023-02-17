Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A06F969B306
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 20:27:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbjBQT1E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 14:27:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbjBQT1D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 14:27:03 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDAFC55E58
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 11:27:02 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id F23AE85C9F;
        Fri, 17 Feb 2023 20:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676662020;
        bh=taPpk/j2x0M3/1mCf2b4vVlQ3Jce/CA0P6/rJXx1RPU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=puuoV0PHc+/LN23d1xT9n/xBbGq8nHnlGh1R5GZYtX8X1xYDcguu/3FPW0oaqsgnW
         qXMpQaQy51i9ALlXiv5GxXiylua7MU/3w7PMJCrFShwhpepXI1i9F3/iSYIeJ4TJ7F
         j7zX748zRaZt7avS+YwF1AP0a579TmSURZdqtAqKSYUwN+bGXqTStWscvkHrRJU520
         vvNeUbAjL5emVwhX41vfK1jW8O7HjqYRk2MltMTbtZrIAlqEBQFTSI7Z2d4FBS/ymd
         r1Ao8fA262BdX9fT/DkfjheyjatcLwbZQyVe7gLeaLM4P/UpEUb5D7tudQZqGOXb+c
         2Xru1v0iw+8iw==
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
Subject: [PATCH 4/5] arm64: dts: imx8mp: Add EQoS RMII pin mux on i.MX8MP DHCOM
Date:   Fri, 17 Feb 2023 20:26:46 +0100
Message-Id: <20230217192647.61733-4-marex@denx.de>
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

The i.MX8MP DHCOM SoM may come with either KSZ9131RNXI RGMII PHY
or LAN8740Ai RMII PHY on the SoM attached to EQoS MAC. Add pin
mux settings for both options, so that DT overlay can override
these settings on SoM variant with the LAN8740Ai PHY.

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
 .../boot/dts/freescale/imx8mp-dhcom-som.dtsi  | 20 +++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index d34020e83bbde..cd285df84d311 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -83,7 +83,7 @@ &ecspi2 {
 
 &eqos {	/* First ethernet */
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_eqos>;
+	pinctrl-0 = <&pinctrl_eqos_rgmii>;
 	phy-handle = <&ethphy0g>;
 	phy-mode = "rgmii-id";
 	status = "okay";
@@ -673,7 +673,7 @@ MX8MP_IOMUXC_ECSPI2_SS0__GPIO5_IO13		0x40
 		>;
 	};
 
-	pinctrl_eqos: dhcom-eqos-grp {	/* RGMII */
+	pinctrl_eqos_rgmii: dhcom-eqos-rgmii-grp {	/* RGMII */
 		fsl,pins = <
 			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC		0x3
 			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO		0x3
@@ -692,6 +692,22 @@ MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3	0x91
 		>;
 	};
 
+	pinctrl_eqos_rmii: dhcom-eqos-rmii-grp {	/* RMII */
+		fsl,pins = <
+			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC		0x3
+			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO		0x3
+			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL	0x1f
+			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0	0x1f
+			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1	0x1f
+			MX8MP_IOMUXC_ENET_RXC__ENET_QOS_RX_ER		0x1f
+			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL	0x91
+			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0	0x91
+			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1	0x91
+			/* Clock */
+			MX8MP_IOMUXC_ENET_TD2__CCM_ENET_QOS_CLOCK_GENERATE_REF_CLK	0x4000001f
+		>;
+	};
+
 	pinctrl_enet_vio: dhcom-enet-vio-grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10		0x22
-- 
2.39.1

