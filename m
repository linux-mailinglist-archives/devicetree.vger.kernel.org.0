Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20D774D64BF
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 16:37:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234420AbiCKPiS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 10:38:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244819AbiCKPiA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 10:38:00 -0500
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5CBC1C65CC
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:36:55 -0800 (PST)
Received: (Authenticated sender: gregory.clement@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 196C240002;
        Fri, 11 Mar 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1647013012;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Ul6NV7aOA+X78zM/kkBXGZTRJL15ZIhEOieoEwHTp9s=;
        b=ChxqHhYjR1mhZ5pDbw0DIpVl4XBDYXbmOtNRMuEZ/rbBLmA6Iwj1T7aY02hfRxuElt8qq1
        Hb9uHZDGGtLoYK67lzcmR/DUiiKGNLY6u+Ue/+ZfE523DoTWjJp4rbT7jsV2/HYvJun64O
        K95RjAAruA0t7foHCO2zAlaX8RNzjixECOCIuq/4pXM9C42ZtY2fnW80oOK/8syzP+mELi
        ybGQftPz/yVQZniDx7fuCrZIZYJb7EpD1suyd/MpDFQQzfeTasUK4gCylcWUNKCK0K33Cl
        k19BlJu5nGGk95pHMkdWt/nFeXOrjq8z0pnEfIgC+Mzt0WeoCKjWNKOYfYhyTw==
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH 1/2] ARM: dts: imx6qdl: Add Variscite VAR-SOM-MX6 SoM support
Date:   Fri, 11 Mar 2022 16:36:13 +0100
Message-Id: <20220311153614.2191584-2-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311153614.2191584-1-gregory.clement@bootlin.com>
References: <20220311153614.2191584-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for the Variscite VAR_SOM-MX6 SoM with :
- i.MX6 Quad or Dual Lite SoC
- 256 – 4096 MB DDR3
- 4-64 GB eMMC
- 128 – 1024 MB SLC NAND
- Camera Interface
- HDMI+CEC interface
- LVDS / DSI / Parallel RGB interfaces
- Ethernet RGMII interface
- On-SoM Wi-Fi/Bluetooth with WiLink wl183x SDIO Module
- SD/MMC/SDIO interface
- USB Host + USB OTG interface
- I2C interfaces
- SPI interfaces
- PCI-Express 2.0 interface
- on-SoM Audio Codec with HP/Line-In interfaces + DMIC interface
- Digital Audio interface
- S/PDIF interface

Product website : https://www.variscite.com/product/system-on-module-som/cortex-a9/var-som-mx6-cpu-freescale-imx6/

Support is handled with a SoM-centric dtsi exporting the default interfaces
along the default pinmuxing to be enabled by the board dts file.

This file is based on the one provided by Variscite on their own
kernel, but adapted for mainline.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/boot/dts/imx6qdl-var-som.dtsi | 543 +++++++++++++++++++++++++
 1 file changed, 543 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6qdl-var-som.dtsi

diff --git a/arch/arm/boot/dts/imx6qdl-var-som.dtsi b/arch/arm/boot/dts/imx6qdl-var-som.dtsi
new file mode 100644
index 000000000000..2ba47a370841
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-var-som.dtsi
@@ -0,0 +1,543 @@
+// SPDX-License-Identifier: GPL-2.0+
+//
+// Copyright 2011 Linaro Ltd.
+// Copyright 2012 Freescale Semiconductor, Inc.
+// Copyright (C) 2014-2016 Variscite, Ltd. All Rights Reserved,
+//   Donio Ron: ron.d@variscite.com
+// Copyright 2022 Bootlin
+
+/dts-v1/;
+
+#include "imx6q.dtsi"
+#include <dt-bindings/clock/imx6qdl-clock.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/sound/fsl-imx-audmux.h>
+
+/ {
+	model = "Variscite i.MX6 QUAD/DUAL VAR-SOM-MX6";
+	compatible = "fsl,imx6q-var-som", "fsl,imx6q";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	memory: memory {
+		reg = <0x10000000 0x40000000>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_audio: regulator-audio {
+			compatible = "regulator-fixed";
+			regulator-name = "tlv320aic3x-supply";
+			enable-active-high;
+		};
+
+		reg_3p3v: regulator-3p3v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+
+		touch_3v3_regulator: touch_3v3_regulator {
+			compatible = "regulator-fixed";
+			regulator-name = "touch_3v3_supply";
+			regulator-always-on;
+			status = "okay";
+		};
+	};
+
+	wlan_en_reg: fixedregulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "wlan-en-regulator";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&gpio7 8 GPIO_ACTIVE_HIGH>;
+		/* WLAN card specific delay */
+		startup-delay-us = <70000>;
+		enable-active-high;
+	};
+
+	sound: sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "var-som-audio";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound_codec>;
+		simple-audio-card,frame-master = <&sound_codec>;
+		simple-audio-card,widgets = "Headphone", "Headphone Jack",
+					    "Line", "Line In", "Microphone", "Mic Jack";
+		simple-audio-card,routing = "Headphone Jack", "HPLOUT",
+					    "Headphone Jack", "HPROUT",
+					    "LINE1L", "Line In",
+					    "LINE1R", "Line In";
+
+		sound_cpu: simple-audio-card,cpu {
+			sound-dai = <&ssi2>;
+		};
+
+		sound_codec: simple-audio-card,codec {
+			sound-dai = <&codec>;
+			clocks = <&clks IMX6QDL_CLK_CKO>;
+		};
+	};
+
+	wlan_bt_rfkill {
+		compatible = "net,rfkill-gpio";
+		name = "wlan_bt_rfkill";
+		type = <2>;     /* bluetooth */
+		gpios = <&gpio6 18 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&cpu0 {
+	operating-points = <
+		/* kHz    uV */
+		1200000 1350000
+		996000  1250000
+		852000  1250000
+		792000  1175000
+		396000  1175000
+	>;
+
+	fsl,soc-operating-points = <
+		/* ARM kHz  SOC-PU uV */
+		1200000 1275000
+		996000	1250000
+		852000	1250000
+		792000	1250000
+		396000	1250000
+	>;
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux_2>;
+	status = "okay";
+
+	ssi2 {
+		fsl,audmux-port = <1>;
+		fsl,port-config = <
+			(IMX_AUDMUX_V2_PTCR_SYN |
+			IMX_AUDMUX_V2_PTCR_TFSDIR |
+			IMX_AUDMUX_V2_PTCR_TFSEL(2) |
+			IMX_AUDMUX_V2_PTCR_TCLKDIR |
+			IMX_AUDMUX_V2_PTCR_TCSEL(2))
+			IMX_AUDMUX_V2_PDCR_RXDSEL(2)
+		>;
+	};
+
+	aud3 {
+		fsl,audmux-port = <2>;
+		fsl,port-config = <
+			IMX_AUDMUX_V2_PTCR_SYN
+			IMX_AUDMUX_V2_PDCR_RXDSEL(1)
+		>;
+	};
+};
+
+&ecspi3 {
+	fsl,spi-num-chipselects = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3_1>;
+	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet_4>;
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
+	fsl,magic-packet;
+	status = "okay";
+};
+
+&gpc {
+	fsl,ldo-bypass = <1>;
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2_2>;
+	status = "okay";
+
+	pmic: pfuze100@8 {
+		compatible = "fsl,pfuze100";
+		reg = <0x8>;
+		status = "okay";
+		regulators {
+			sw1a_reg: sw1ab {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw1c_reg: sw1c {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3a {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3950000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3b_reg: sw3b {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3950000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw4_reg: sw4 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3950000>;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen1_reg: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+
+			vgen2_reg: vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			vgen4_reg: vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			vgen5_reg: vgen5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			vgen6_reg: vgen6 {
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+		};
+	};
+
+	codec: tlv320aic3x@1b {
+		compatible = "ti,tlv320aic3106";
+		reg = <0x1b>;
+		#sound-dai-cells = <0>;
+		DRVDD-supply = <&reg_3p3v>;
+		AVDD-supply = <&reg_3p3v>;
+		IOVDD-supply = <&reg_3p3v>;
+		DVDD-supply = <&reg_3p3v>;
+		ai3x-ocmv = <0>;
+		reset-gpios = <&gpio4 5 GPIO_ACTIVE_LOW>;
+		ai3x-gpio-func = <
+			0 /* AIC3X_GPIO1_FUNC_DISABLED */
+			5 /* AIC3X_GPIO2_FUNC_DIGITAL_MIC_INPUT */
+		>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6qdl-var-som-mx6 {
+
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* CTW6120 IRQ */
+				MX6QDL_PAD_EIM_DA7__GPIO3_IO07 		0x80000000
+				/* for Bluetooth/wifi enable */
+				MX6QDL_PAD_SD3_DAT6__GPIO6_IO18		0x1b0b1
+				/* SDMMC2 CD/WP */
+				MX6QDL_PAD_KEY_COL4__GPIO4_IO14		0x80000000
+				MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x80000000
+				/* PMIC INT */
+				MX6QDL_PAD_GPIO_17__GPIO7_IO12		0x80000000
+				/* Wifi Slow Clock */
+				MX6QDL_PAD_ENET_RXD0__OSC32K_32K_OUT	0x000b0
+				/* Audio Clock */
+				MX6QDL_PAD_GPIO_0__CCM_CLKO1		0x130b0
+			>;
+		};
+
+		pinctrl_audmux_2: audmux {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
+				MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
+				MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
+				MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
+			>;
+		};
+
+		pinctrl_enet_4: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
+				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
+				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
+				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
+				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
+				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
+				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
+				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
+				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
+				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
+				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
+				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
+				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
+			>;
+		};
+
+		pinctrl_enet_irq: enetirqgrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_6__ENET_IRQ		0x000b1
+			>;
+		};
+
+
+
+		pinctrl_i2c1_2: i2c1grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
+				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c2_2: i2c2grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
+				MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c3_3: i2c3grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
+				MX6QDL_PAD_GPIO_16__I2C3_SDA		0x4001b8b1
+			>;
+		};
+
+
+		pinctrl_pwm2_1: pwm2grp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT9__PWM2_OUT		0x1b0b1
+			>;
+		};
+		/* Linux Console */
+		pinctrl_uart1_1: uart1grp-1 { /* RX/TX only */
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
+				MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
+			>;
+		};
+
+		/* Variscite Bluetooth */
+		pinctrl_uart2_3: uart2grp-3 { /* RTS/CTS only mode */
+			fsl,pins = <
+				MX6QDL_PAD_SD3_DAT4__UART2_RX_DATA	0x1b0b1
+				MX6QDL_PAD_SD3_DAT5__UART2_TX_DATA	0x1b0b1
+				MX6QDL_PAD_EIM_D28__UART2_CTS_B		0x1b0b1
+				MX6QDL_PAD_EIM_D29__UART2_RTS_B		0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc3_2: usdhc3grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_CMD__SD3_CMD    		0x17069
+				MX6QDL_PAD_SD3_CLK__SD3_CLK    		0x10069
+				MX6QDL_PAD_SD3_DAT0__SD3_DATA0 		0x17069
+				MX6QDL_PAD_SD3_DAT1__SD3_DATA1 		0x17069
+				MX6QDL_PAD_SD3_DAT2__SD3_DATA2 		0x17069
+				MX6QDL_PAD_SD3_DAT3__SD3_DATA3 		0x17069
+                                MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 	0x13059   /* Reserve two pins from sd1 for wl8 gpio, this is pulled low at reset for WL_EN */
+                                MX6QDL_PAD_SD3_RST__GPIO7_IO08  	0x13059   /* this is for wl_irq which driver will configure as an input with a pull down */
+			>;
+		};
+
+		pinctrl_usdhc3_2_100mhz: usdhc3grp-100mhz {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170B9
+				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100B9
+				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170B9
+				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170B9
+				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170B9
+				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170B9
+                                MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 	0x130B9   /* reserve two pins from sd1 for wl8 gpio, this is pulled low at reset for WL_EN */
+                                MX6QDL_PAD_SD3_RST__GPIO7_IO08  	0x130B9   /* this is for wl_irq which driver will configure as an input with a pull down */
+			>;
+		};
+
+		pinctrl_usdhc3_2_200mhz: usdhc3grp-200mhz {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170F9
+				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100F9
+				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170F9
+				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170F9
+				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170F9
+				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170F9
+                                MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 	0x130F9   /* reserve two pins from sd1 for wl8 gpio, this is pulled low at reset for WL_EN */
+                                MX6QDL_PAD_SD3_RST__GPIO7_IO08  	0x130F9   /* this is for wl_irq which driver will configure as an input with a pull down */
+			>;
+		};
+
+		pinctrl_gpmi_nand_v1: gpmi-nand-1 {
+			fsl,pins = <
+				MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
+				MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
+				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
+				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
+				MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb0b1
+				MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
+				MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
+				MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
+				MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
+				MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
+				MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
+				MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
+				MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
+				MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
+				MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
+				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
+			>;
+		};
+
+		pinctrl_ecspi3_1: ecspi3grp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
+				MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
+				MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
+			>;
+		};
+	};
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2_1>;
+	status = "okay";
+};
+
+
+&ssi2 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+/* Console Uart */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_1>;
+	status = "okay";
+};
+
+&snvs_poweroff {
+	status = "okay";
+};
+
+/* Bluetooth Uart */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2_3>;
+	fsl,uart-has-rtscts;
+	status = "okay";
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand_v1>;
+	status = "okay";
+};
+
+&usdhc3 {	/* uSDHC3, TiWi wl1271 7 Wilink8 WL18xx*/
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3_2>;
+	pinctrl-1 = <&pinctrl_usdhc3_2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_2_200mhz>;
+	keep-power-in-suspend;
+	vmmc-supply = <&wlan_en_reg>;
+	bus-width = <4>;
+	non-removable;
+	cap-power-off-card;
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	wlcore: wlcore@0 {
+		compatible = "ti,wl1835";
+		reg = <2>;
+
+		interrupt-parent = <&gpio6>;
+		interrupts = <17 IRQ_TYPE_EDGE_RISING>;
+
+		/* if a 12xx card is there, configure the clock to WL12XX_REFCLOCK_38_XTAL */
+		board-ref-clock = <4>;
+	};
+};
+
+&reg_arm {
+	vin-supply = <&sw1a_reg>;
+};
+
+&reg_pu {
+	vin-supply = <&sw1c_reg>;
+};
+
+&reg_soc {
+	vin-supply = <&sw1c_reg>;
+};
+
+&reg_vdd1p1 {
+	vin-supply = <&vgen5_reg>;
+};
+
+&reg_vdd2p5 {
+	vin-supply = <&vgen5_reg>;
+};
-- 
2.34.1

