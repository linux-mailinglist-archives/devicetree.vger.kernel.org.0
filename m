Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24DD07032DA
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 18:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242680AbjEOQYu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 12:24:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242192AbjEOQYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 12:24:45 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C5F695
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 09:24:43 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C35F78471B;
        Mon, 15 May 2023 18:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684167881;
        bh=Ju+Ku51EIWB24IvQ1oukH2kWYgilIj6x0dUyJqz9fcc=;
        h=From:To:Cc:Subject:Date:From;
        b=fipf9xyYAUyS6ebKXaUnibUctoPEuHndbPoJnzE54LFiiznE7iPub4IBpj8a4Sl9T
         6MuA18dp5OsdVnlsl4aEClMzu+fB6KQJ49BivOzqUlCsvaW9vPl4OePO7/oJ3j8LkZ
         vCBl76pvYaezY6NYUho1/XTxvNTcpDazAF5lB2ywMm4lgGN1WlL7YGXDUCujQ95c3D
         rX5eaCeOcUoiiD7OPf0mp2mt9LIlOl5NznIAzv6KyHMMiWWBEGlht4vtPvXfmy7azX
         1C9C0QLc5LWOOTWQ4RaCe/4Lr2Epk7fMqOL8FB0asn58GqEbks22wAZ0QNIceScWKR
         R3RSvnVN2sKGA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Add TC9595 bridge on DH electronics i.MX8M Plus DHCOM
Date:   Mon, 15 May 2023 18:24:24 +0200
Message-Id: <20230515162424.67597-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
DH electronics i.MX8M Plus DHCOM SoM . The bridge
is populated on the SoM, but disabled by default
unless used for display output.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 .../boot/dts/freescale/imx8mp-dhcom-som.dtsi  | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 98a11c31d7d45..9c0cb75386e36 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -240,6 +240,36 @@ &i2c3 {
 	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
+	tc_bridge: bridge@f {
+		compatible = "toshiba,tc9595", "toshiba,tc358767";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tc9595>;
+		reg = <0xf>;
+		clock-names = "ref";
+		clocks = <&clk IMX8MP_CLK_CLKOUT2>;
+		assigned-clocks = <&clk IMX8MP_CLK_CLKOUT2_SEL>,
+				  <&clk IMX8MP_CLK_CLKOUT2>,
+				  <&clk IMX8MP_AUDIO_PLL2_OUT>;
+		assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL2_OUT>;
+		assigned-clock-rates = <13000000>, <13000000>, <156000000>;
+		reset-gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				tc_bridge_in: endpoint {
+					data-lanes = <1 2 3 4>;
+					remote-endpoint = <&dsi_out>;
+				};
+			};
+		};
+	};
+
 	pmic: pmic@25 {
 		compatible = "nxp,pca9450c";
 		reg = <0x25>;
@@ -406,6 +436,22 @@ &i2c5 {	/* HDMI EDID bus */
 	status = "okay";
 };
 
+&mipi_dsi {
+	samsung,burst-clock-frequency = <160000000>;
+	samsung,esc-clock-frequency = <10000000>;
+
+	ports {
+		port@1 {
+			reg = <1>;
+
+			dsi_out: endpoint {
+				data-lanes = <1 2 3 4>;
+				remote-endpoint = <&tc_bridge_in>;
+			};
+		};
+	};
+};
+
 &pwm1 {
 	pinctrl-0 = <&pinctrl_pwm1>;
 	pinctrl-names = "default";
@@ -880,6 +926,15 @@ MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0xd6
 		>;
 	};
 
+	pinctrl_tc9595: dhcom-tc9595-grp {
+		fsl,pins = <
+			/* RESET_DSIBRIDGE */
+			MX8MP_IOMUXC_SAI1_RXC__GPIO4_IO01		0x40000146
+			/* DSI-CONV_INT Interrupt */
+			MX8MP_IOMUXC_SAI5_RXD0__GPIO3_IO21		0x141
+		>;
+	};
+
 	pinctrl_touch: dhcom-touch-grp {
 		fsl,pins = <
 			/* #TOUCH_INT */
-- 
2.39.2

