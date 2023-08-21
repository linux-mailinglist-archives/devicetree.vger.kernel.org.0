Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC914782AB9
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 15:40:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235491AbjHUNko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 09:40:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235489AbjHUNko (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 09:40:44 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D729CE
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 06:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692625240; x=1724161240;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=h817tnBkoiUYVNTNEOCWNnfyJ2GfHbo4QUMpeLDMwSw=;
  b=WYtzta/EedSwxfgSh+XV4VKyHQB3zgSpVmcg1eGCJMDHfqEF2Ppefbfw
   +ErZwjD5QP6mKpKXMxrvkwPbjhyrJY1/hYHZoRCnvCA9PQuYX5VhJP7oE
   3MhwOI+E4TSYmB64XPzI1Rczsu8lH814MpjM+P4oX0QRpXZGHkis3pPq+
   wxmkvqyKo6rKi6V2YH8Ajc9v7azpIsmvgSqwZhbQ0qicfjtu1Rn5USguw
   crKtrZJJTcGYDsvaA20zdoRq07roFxzFygO4vX2O8/yZZc7GZlPyBAM70
   OPaLb4Gi87Q52RARpIZE6Y0yMw/mZJYupz4VgnbTx/mnU2QnMfLwE2wcs
   A==;
X-IronPort-AV: E=Sophos;i="6.01,190,1684792800"; 
   d="scan'208";a="32542896"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Aug 2023 15:40:29 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9785C280084;
        Mon, 21 Aug 2023 15:40:29 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux@ew.tq-group.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: dts: imx8mm-tqma8mqml-mba8mx: Add DSI-LVDS bridge node
Date:   Mon, 21 Aug 2023 15:40:24 +0200
Message-Id: <20230821134026.385752-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230821134026.385752-1-alexander.stein@ew.tq-group.com>
References: <20230821134026.385752-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the DSI-LVDS bridge including the regulator, backlight and
an unspecified panel. It is expected to set the compatible when the
display chain is enabled.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 29 ++++++++
 .../boot/dts/freescale/imx8mm-tqma8mqml.dtsi  |  5 ++
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     | 68 +++++++++++++++++++
 3 files changed, 102 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
index 156d793a0c972..b2b825d990a62 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
@@ -56,6 +56,19 @@ usb_dr_connector: endpoint {
 	};
 };
 
+&dsi_lvds_bridge {
+	ports {
+		port@0 {
+			reg = <0>;
+
+			lvds_bridge_in: endpoint {
+				data-lanes = <1 2 3 4>;
+				remote-endpoint = <&mipi_dsi_out>;
+			};
+		};
+	};
+};
+
 &i2c1 {
 	expander2: gpio@27 {
 		compatible = "nxp,pca9555";
@@ -72,6 +85,22 @@ expander2: gpio@27 {
 	};
 };
 
+&mipi_dsi {
+	samsung,burst-clock-frequency = <891000000>;
+	samsung,esc-clock-frequency = <20000000>;
+
+	ports {
+		port@1 {
+			reg = <1>;
+
+			mipi_dsi_out: endpoint {
+				data-lanes = <1 2 3 4>;
+				remote-endpoint = <&lvds_bridge_in>;
+			};
+		};
+	};
+};
+
 &pcie_phy {
 	clocks = <&pcie0_refclk>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index b4466a26d838a..8c0c6e7159247 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -230,6 +230,11 @@ eeprom0: eeprom@57 {
 	};
 };
 
+&mipi_dsi {
+	vddcore-supply = <&ldo4_reg>;
+	vddio-supply = <&ldo3_reg>;
+};
+
 &pcie_phy {
 	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
 	fsl,clkreq-unsupported;
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 8a9fe5cdcc98a..269e604cb1574 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -8,6 +8,16 @@
 /* TQ-Systems GmbH MBa8Mx baseboard */
 
 / {
+	backlight_lvds0: backlight0 {
+		compatible = "pwm-backlight";
+		pwms = <&pwm3 0 5000000 0>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		power-supply = <&reg_12v>;
+		enable-gpios = <&expander2 2 GPIO_ACTIVE_HIGH>;
+		status = "disabled";
+	};
+
 	beeper {
 		compatible = "pwm-beeper";
 		pwms = <&pwm4 0 250000 0>;
@@ -65,12 +75,45 @@ led2: led2 {
 		};
 	};
 
+	gpio_delays: gpio-delays {
+		compatible = "gpio-delay";
+		#gpio-cells = <3>;
+		gpio-controller;
+		gpios = <&expander0 6 GPIO_ACTIVE_HIGH>;
+		gpio-line-names = "LVDS_BRIDGE_EN_1V8";
+	};
+
+	panel0: panel_lvds0 {
+		/*
+		 * Display is not fixed, so compatible has to be added from
+		 * DT overlay
+		 */
+		backlight = <&backlight_lvds0>;
+		power-supply = <&reg_vcc_3v3>;
+		status = "disabled";
+
+		port {
+			panel_in_lvds0: endpoint {
+				data-lanes = <1 2 3 4>;
+				remote-endpoint = <&lvds_bridge_out>;
+			};
+		};
+	};
+
 	pcie0_refclk: pcie0-refclk {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <100000000>;
 	};
 
+	reg_12v: regulator-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "MBA8MX_12V";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+	};
+
 	reg_hub_vbus: regulator-hub-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "MBA8MX_HUB_VBUS";
@@ -157,6 +200,10 @@ expander0: gpio@23 {
 		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		gpio-line-names = "", "", "", "",
+				  "", "", "LVDS_BRIDGE_EN_3V3", "",
+				  "", "", "", "",
+				  "", "", "", "";
 
 		sd-mux-oe-hog {
 			gpio-hog;
@@ -227,6 +274,27 @@ &i2c3 {
 	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
+
+	dsi_lvds_bridge: bridge@2d {
+		compatible = "ti,sn65dsi84";
+		reg = <0x2d>;
+		enable-gpios = <&gpio_delays 0 130000 0>;
+		vcc-supply = <&reg_sn65dsi83_1v8>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@2 {
+				reg = <2>;
+
+				lvds_bridge_out: endpoint {
+					remote-endpoint = <&panel_in_lvds0>;
+				};
+			};
+		};
+	};
 };
 
 &pwm3 {
-- 
2.34.1

