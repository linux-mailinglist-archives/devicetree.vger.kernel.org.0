Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 349CC784055
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 14:08:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233834AbjHVMIO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 08:08:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235174AbjHVMIN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 08:08:13 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1E6F91
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 05:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692706092; x=1724242092;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=c5aKk6Nl7l7Dda7yL6IGpp8auUBf5Bry2rjnW3LLVb4=;
  b=J+zNkUKIdAXlXE0zKR40id2tu5r6SykvsBs7feuKr7yV0N4cJBsxEJDX
   oAcAnfSJJdlHtm14Xz14Jq7nU+GKuITQ3mpHaOv7pjE1UgufOrowrtxAs
   ivzt8O8+CCByQVcalm6iKbHMBnXfyJ2DUv5JeWP8mk1LUVh2NQG43jrl0
   VNPfF88F2JImSIMniJS6umzHDK1fJwLmp2zYiIAPXUllyWP3+WFrLhrE4
   13nZrmm6kvsIGfqSlgHNsQ9W0Wxd68RB4SqFDclR5/QeQ00broH3o+OL5
   Lcc7A9CYhUxSG4zFjBzF9wUZVCS6ErbLUWnDCX79A/3ypOhd/fDDA/EDJ
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,193,1684792800"; 
   d="scan'208";a="32562947"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Aug 2023 14:08:09 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 17D2C280084;
        Tue, 22 Aug 2023 14:08:09 +0200 (CEST)
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
Subject: [PATCH v2 1/5] arm64: dts: mba8mx: Add DSI-LVDS bridge nodes
Date:   Tue, 22 Aug 2023 14:08:00 +0200
Message-Id: <20230822120804.717592-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230822120804.717592-1-alexander.stein@ew.tq-group.com>
References: <20230822120804.717592-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
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
 arch/arm64/boot/dts/freescale/mba8mx.dtsi | 93 +++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 8a9fe5cdcc98a..e2bc53b8d39a8 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -8,6 +8,16 @@
 /* TQ-Systems GmbH MBa8Mx baseboard */
 
 / {
+	backlight_lvds: backlight {
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
+	panel: panel-lvds {
+		/*
+		 * Display is not fixed, so compatible has to be added from
+		 * DT overlay
+		 */
+		backlight = <&backlight_lvds>;
+		power-supply = <&reg_vcc_3v3>;
+		status = "disabled";
+
+		port {
+			panel_in_lvds: endpoint {
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
+				  "", "", "LVDS_BRIDGE_EN", "",
+				  "", "", "", "",
+				  "", "", "", "";
 
 		sd-mux-oe-hog {
 			gpio-hog;
@@ -227,6 +274,52 @@ &i2c3 {
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
+			port@0 {
+				reg = <0>;
+
+				lvds_bridge_in: endpoint {
+					data-lanes = <1 2 3 4>;
+					remote-endpoint = <&mipi_dsi_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				lvds_bridge_out: endpoint {
+					remote-endpoint = <&panel_in_lvds>;
+				};
+			};
+		};
+	};
+};
+
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
 };
 
 &pwm3 {
-- 
2.34.1

