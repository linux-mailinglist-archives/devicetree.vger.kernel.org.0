Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03E8354E34B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 16:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377592AbiFPOWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 10:22:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377668AbiFPOWd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 10:22:33 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0AD1BF2
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 07:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655389350; x=1686925350;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9iMdrIqk/kjjE+XwDrWRh/VphaDq4FR5y8k9Sw2wHmw=;
  b=p5aLT+zTRUh3csareCFPt2AUxFRYbJGP9fmQzotx9LQlG9+cgSYvrFm4
   qEMuocWM8Nz6av0Net1yw5cnVb2/LUL10CnfquX2wRmhHOdpmTVYP/KB3
   7J2XhnZgVMXPsZsuVVBbF5QQu1b+NaUsWpBir6B/bAgmB611cogo/fmRI
   yLEVzNQZMW5cjZ6Y3z4Bm50Jq/HsBpGywIvXw99Vp8OIEHIfLDJOTOLuU
   Vo4XkJtQCTuXKxWCvZTjMRkGj+NCEkiKv4R4lCS/+9Tv/gbdQWPSl8T7A
   T/3Y/NiDcQVywh/TdeiJL/QM6lJ9J684P1iwTLZfBtFuYN0nVxAA0VkHM
   A==;
X-IronPort-AV: E=Sophos;i="5.92,305,1650924000"; 
   d="scan'208";a="24497082"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Jun 2022 16:22:26 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Jun 2022 16:22:26 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Jun 2022 16:22:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655389346; x=1686925346;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9iMdrIqk/kjjE+XwDrWRh/VphaDq4FR5y8k9Sw2wHmw=;
  b=YH23fopJX3YhgJhZ7EtbanEmZAP16s6C3UCUmy85Mo+pwp7ExxeN8UlS
   Ew9fIizZWn4YiH5zMvxLRlyH/Bv4lnB2A9fU2xN1IhYMSG41hYYvdo3NS
   rnv9RSN+R6ggGME6QQqQYD2D8YGrD6FPwMrNOaOwBqIxXapcQC16U/l8D
   BB9Mvd5ZRLQuifGz8fK0LP5zL2pcanb7kjxmwuasGKhjRCeBLUXZgk2N4
   tR9oBD+yncRgKKR9m0/JAqlOFk7Nrd47JHYtaiG3LtRbuVB6Xb18KZWzE
   rZXcFuMOyMc2ZAiXx/CoTJYKJaRyTa0EnBJyB9E1GqCz49gT7Kl+9f+CD
   w==;
X-IronPort-AV: E=Sophos;i="5.92,305,1650924000"; 
   d="scan'208";a="24497081"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2022 16:22:26 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1F806280056;
        Thu, 16 Jun 2022 16:22:26 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
Subject: [PATCH 2/2] arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP
Date:   Thu, 16 Jun 2022 16:22:21 +0200
Message-Id: <20220616142221.3986670-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com>
References: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support for TQMa8MPQL module on MBa8MPxL board.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 689 ++++++++++++++++++
 .../boot/dts/freescale/imx8mp-tqma8mpql.dtsi  | 284 ++++++++
 3 files changed, 974 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index c288bda8aa36..ab8e61d4dd7c 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -82,6 +82,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw74xx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dev.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
new file mode 100644
index 000000000000..e9755bd7619c
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -0,0 +1,689 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2021-2022 TQ-Systems GmbH
+ * Author: Alexander Stein <alexander.stein@tq-group.com>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/net/ti-dp83867.h>
+#include <dt-bindings/pwm/pwm.h>
+#include "imx8mp-tqma8mpql.dtsi"
+
+/ {
+	model = "TQ-Systems i.MX8MPlus TQMa8MPxL on MBa8MPxL";
+	compatible = "tq,imx8mp-tqma8mpql-mba8mpxl", "tq,imx8mp-tqma8mpql", "fsl,imx8mp";
+
+	chosen {
+		stdout-path = &uart4;
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&adc 0>, <&adc 1>;
+	};
+
+	aliases {
+		mmc0 = &usdhc3;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc1;
+		rtc0 = &pcf85063;
+		rtc1 = &snvs_rtc;
+		spi0 = &flexspi;
+		spi1 = &ecspi1;
+		spi2 = &ecspi2;
+		spi3 = &ecspi3;
+	};
+
+	backlight_lvds: backlight-lvds {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_bllvds>;
+		pwms = <&pwm2 0 5000000 0>;
+		power-supply = <&reg_vcc_12v0>;
+		enable-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+		status = "disabled";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpiobutton>;
+		autorepeat;
+
+		switch1 {
+			label = "S12";
+			linux,code = <BTN_0>;
+			gpios = <&gpio5 26 GPIO_ACTIVE_LOW>;
+		};
+
+		switch2 {
+			label = "S13";
+			linux,code = <BTN_1>;
+			gpios = <&gpio5 27 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpioled>;
+
+		led0 {
+			label = "led0";
+			gpios = <&gpio5 5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+		};
+
+		led1 {
+			label = "led1";
+			gpios = <&gpio5 4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		led2 {
+			label = "led2";
+			gpios = <&gpio5 3 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	lvds_panel: display {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_lvdspanel>;
+		enable-gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
+		backlight = <&backlight_lvds>;
+		status = "disabled";
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <100>;
+		off-on-delay-us = <12000>;
+	};
+
+	reg_vcc_12v0: regulator-12v0 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg12v0>;
+		regulator-name = "VCC_12V0";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		gpio = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_vcc_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		ocram: ocram@900000 {
+			no-map;
+			reg = <0 0x900000 0 0x70000>;
+		};
+
+		/* global autoconfigured region for contiguous allocations */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0 0x38000000>;
+			alloc-ranges = <0 0x40000000 0 0xB0000000>;
+			linux,cma-default;
+		};
+	};
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&ecspi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3>;
+	cs-gpios = <&gpio5 25 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	adc: adc@0 {
+		reg = <0>;
+		compatible = "microchip,mcp3202";
+		/* 100 ksps * 18 */
+		spi-max-frequency = <1800000>;
+		vref-supply = <&reg_vcc_3v3>;
+		#io-channel-cells = <1>;
+	};
+};
+
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>, <&pinctrl_eqos_phy>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy3>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy3: ethernet-phy@3 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <3>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,dp83867-rxctrl-strap-quirk;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			reset-gpios = <&gpio4 2 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <500000>;
+			reset-deassert-us = <50000>;
+			enet-phy-lane-no-swap;
+			interrupt-parent = <&gpio4>;
+			interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>, <&pinctrl_fec_phy>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,dp83867-rxctrl-strap-quirk;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <500000>;
+			reset-deassert-us = <50000>;
+			enet-phy-lane-no-swap;
+			interrupt-parent = <&gpio4>;
+			interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+		};
+	};
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	xceiver-supply = <&reg_vcc_3v3>;
+	status = "okay";
+};
+
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	xceiver-supply = <&reg_vcc_3v3>;
+	status = "okay";
+};
+
+&gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio1>;
+
+	gpio-line-names = "GPO1", "GPO0", "", "GPO3",
+			  "", "", "GPO2", "GPI0",
+			  "PMIC_IRQ", "GPI1", "OTG_ID", "USB_HUB_RST#",
+			  "OTG_PWR", "", "GPI2", "GPI3",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+};
+
+&gpio2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hoggpio2>;
+
+	gpio-line-names = "", "", "", "",
+			  "", "", "VCC12V_EN", "PERST#",
+			  "", "", "CLKREQ#", "PEWAKE#",
+			  "USDHC2_CD", "", "", "",
+			  "", "", "", "V_SD3V3_EN",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+
+	perst-hog {
+		gpio-hog;
+		gpios = <7 0>;
+		output-high;
+		line-name = "PERST#";
+	};
+
+	clkreq-hog {
+		gpio-hog;
+		gpios = <10 0>;
+		input;
+		line-name = "CLKREQ#";
+	};
+
+	pewake-hog {
+		gpio-hog;
+		gpios = <11 0>;
+		input;
+		line-name = "PEWAKE#";
+	};
+};
+
+&gpio3 {
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "LVDS0_RESET#", "",
+			  "", "", "", "LVDS0_BLT_EN",
+			  "LVDS0_PWR_EN", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+};
+
+&gpio4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio4>;
+
+	gpio-line-names = "ENET0_RST#", "ENET0_INT#", "ENET1_RST#", "ENET1_INT#",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "DP_IRQ", "DSI_EN",
+			  "HDMI_OC#", "TEMP_EVENT#", "PCIE_CLK_OE#", "",
+			  "", "", "", "FAN_PWR",
+			  "RTC_EVENT#", "CODEC_RST#", "", "";
+};
+
+&gpio5 {
+	gpio-line-names = "", "", "", "LED2",
+			  "LED1", "LED0", "CSI0_RESET#", "CSI0_SYNC",
+			  "CSI0_TRIGGER", "CSI0_ENABLE", "", "",
+			  "", "ECSPI2_SS0", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "ECSPI3_SS0", "SWITCH_A", "SWITCH_B",
+			  "", "", "", "";
+};
+
+&i2c2 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	/* NXP SE97BTP with temperature sensor + eeprom */
+	se97_1c: temperature-sensor-eeprom@1c {
+		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+		reg = <0x1c>;
+	};
+
+	at24c02_54: eeprom@54 {
+		compatible = "nxp,se97b", "atmel,24c02";
+		reg = <0x54>;
+		pagesize = <16>;
+		vcc-supply = <&reg_vcc_3v3>;
+	};
+};
+
+&i2c4 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	scl-gpios = <&gpio5 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
+&i2c6 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c6>;
+	pinctrl-1 = <&pinctrl_i2c6_gpio>;
+	scl-gpios = <&gpio2 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio2 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
+&pcf85063 {
+	/* RTC_EVENT# is connected on MBa8MPxL */
+	interrupt-parent = <&gpio4>;
+	interrupts = <28 IRQ_TYPE_EDGE_FALLING>;
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2>;
+	status = "disabled";
+};
+
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART1>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART3>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	status = "okay";
+};
+
+&uart4 {
+	/* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_bllvds: bllvdsgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19		0x14>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXD1__CAN1_TX		0x150>,
+			   <MX8MP_IOMUXC_SAI5_RXD2__CAN1_RX		0x150>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXD3__CAN2_TX		0x150>,
+			   <MX8MP_IOMUXC_SAI5_MCLK__CAN2_RX		0x150>;
+	};
+
+	/* only on X57, primary used as CSI0 control signals */
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <MX8MP_IOMUXC_ECSPI1_MISO__ECSPI1_MISO	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI1_MOSI__ECSPI1_MOSI	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI1_SCLK__ECSPI1_SCLK	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI1_SS0__GPIO5_IO09		0x1c0>;
+	};
+
+	/* on X63 and optionally on X57, can also be used as CSI1 control signals */
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <MX8MP_IOMUXC_ECSPI2_MISO__ECSPI2_MISO	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI2_MOSI__ECSPI2_MOSI	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI2_SCLK__ECSPI2_SCLK	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI2_SS0__GPIO5_IO13		0x1c0>;
+	};
+
+	pinctrl_ecspi3: ecspi3grp {
+		fsl,pins = <MX8MP_IOMUXC_UART1_TXD__ECSPI3_MOSI		0x1c0>,
+			   <MX8MP_IOMUXC_UART1_RXD__ECSPI3_SCLK		0x1c0>,
+			   <MX8MP_IOMUXC_UART2_RXD__ECSPI3_MISO		0x1c0>,
+			   <MX8MP_IOMUXC_UART2_TXD__GPIO5_IO25		0x1c0>;
+	};
+
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x40000044>,
+			   <MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO			0x40000044>,
+			   <MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x90>,
+			   <MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x90>,
+			   <MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL		0x90>,
+			   <MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x12>,
+			   <MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL		0x12>,
+			   <MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x14>;
+	};
+
+	pinctrl_eqos_event: eqosevtgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_RXD0__ENET_QOS_1588_EVENT2_OUT		0x100>,
+			   <MX8MP_IOMUXC_SAI2_TXD0__ENET_QOS_1588_EVENT2_IN		0x1c0>;
+	};
+
+	pinctrl_eqos_phy: eqosphygrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD0__GPIO4_IO02				0x100>,
+			   <MX8MP_IOMUXC_SAI1_RXD1__GPIO4_IO03				0x1c0>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x40000044>,
+			   <MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x40000044>,
+			   <MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC	0x14>;
+	};
+
+	pinctrl_fec_event: fecevtgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXFS__ENET1_1588_EVENT0_IN	0x100>,
+			   <MX8MP_IOMUXC_SAI1_RXC__ENET1_1588_EVENT0_OUT	0x1c0>;
+	};
+
+	pinctrl_fec_phy: fecphygrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXFS__GPIO4_IO00		0x100>,
+			   <MX8MP_IOMUXC_SAI1_RXC__GPIO4_IO01		0x1c0>;
+	};
+
+	pinctrl_fec_phyalt: fecphyaltgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_TXFS__GPIO4_IO24		0x180>,
+			   <MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		0x180>;
+	};
+
+	pinctrl_gpiobutton: gpiobuttongrp {
+		fsl,pins = <MX8MP_IOMUXC_UART3_RXD__GPIO5_IO26		0x10>,
+			   <MX8MP_IOMUXC_UART3_TXD__GPIO5_IO27		0x10>;
+	};
+
+	pinctrl_gpioled: gpioledgrp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_EXT_CLK__GPIO5_IO05	0x14>,
+			   <MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04		0x14>,
+			   <MX8MP_IOMUXC_SPDIF_TX__GPIO5_IO03		0x14>;
+	};
+
+	pinctrl_gpio1: gpio1grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO01__GPIO1_IO01		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07		0x80>,
+			   <MX8MP_IOMUXC_GPIO1_IO09__GPIO1_IO09		0x80>,
+			   <MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14		0x80>,
+			   <MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15		0x80>;
+	};
+
+	pinctrl_gpio4: gpio4grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_MCLK__GPIO4_IO20		0x180>,
+			   <MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22		0x180>;
+	};
+
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c3>,
+			   <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c3>,
+			   <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD	0x40000019>,
+			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000019>;
+	};
+
+	pinctrl_hoggpio2: hoggpio2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07		0x140>,
+			   <MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10	0x140>,
+			   <MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11		0x140>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17		0x400001e2>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C4_SCL__GPIO5_IO20		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C4_SDA__GPIO5_IO21		0x400001e2>;
+	};
+
+	pinctrl_i2c6: i2c6grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA0__I2C6_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_DATA1__I2C6_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c6_gpio: i2c6-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA0__GPIO2_IO02		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_DATA1__GPIO2_IO03		0x400001e2>;
+	};
+
+	pinctrl_lvdspanel: lvdspanelgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20		0x10>; /* Power enable */
+	};
+
+	/* LVDS Backlight */
+	pinctrl_pwm2: pwm2grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXD0__PWM2_OUT		0x14>;
+	};
+
+	/* FAN */
+	pinctrl_pwm3: pwm3grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SDA__PWM3_OUT		0x14>;
+	};
+
+	pinctrl_reg12v0: reg12v0grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06		0x140>; /* VCC12V enable */
+	};
+
+	/* X61 */
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__UART1_DCE_TX		0x140>,
+			   <MX8MP_IOMUXC_SD1_CMD__UART1_DCE_RX		0x140>;
+	};
+
+	/* X61 */
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA2__UART2_DCE_TX	0x140>,
+			   <MX8MP_IOMUXC_SD1_DATA3__UART2_DCE_RX	0x140>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA6__UART3_DCE_TX	0x140>,
+			   <MX8MP_IOMUXC_SD1_DATA7__UART3_DCE_RX	0x140>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX	0x140>,
+			   <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x140>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x192>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d2>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12		0x1c0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
new file mode 100644
index 000000000000..7bd680a926ce
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
@@ -0,0 +1,284 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2021-2022 TQ-Systems GmbH
+ * Author: Alexander Stein <alexander.stein@tq-group.com>
+ */
+
+#include "imx8mp.dtsi"
+
+/ {
+	model = "TQ-Systems i.MX8MPlus TQMa8MPxL";
+	compatible = "tq,imx8mp-tqma8mpql", "fsl,imx8mp";
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x0 0x40000000 0 0x80000000>;
+	};
+
+	/* identical to buck4_reg, but should never change */
+	reg_vcc3v3: regulator-vcc3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	/* e-MMC IO, needed for HS modes */
+	reg_vcc1v8: regulator-vcc1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&buck2_reg>;
+};
+
+&flexspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexspi0>;
+	status = "okay";
+
+	flash0: flash@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <80000000>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <4>;
+	};
+};
+
+&i2c1 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	/* NXP SE97BTP with temperature sensor + eeprom */
+	se97: temperature-sensor-eeprom@1b {
+		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+		reg = <0x1b>;
+	};
+
+	pmic: pmic@25 {
+		reg = <0x25>;
+		compatible = "nxp,pca9450c";
+
+		/* PMIC PCA9450 PMIC_nINT GPIO1_IO08 */
+		pinctrl-0 = <&pinctrl_pmic>;
+		pinctrl-names = "default";
+		interrupt-parent = <&gpio1>;
+		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			/* V_0V85_SOC: 0.85 .. 0.95 */
+			buck1_reg: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <950000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			/* VDD_ARM */
+			buck2_reg: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+				regulator-ramp-delay = <3125>;
+			};
+
+			/* VCC3V3 -> VMMC, ... must not be changed */
+			buck4_reg: BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* V_1V8 -> VQMMC, SPI-NOR, ... must not be changed */
+			buck5_reg: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* V_1V1 -> RAM, ... must not be changed */
+			buck6_reg: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* V_1V8_SNVS */
+			ldo1_reg: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* V_1V8_ANA */
+			ldo3_reg: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* unused */
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			/* VCC SD IO - switched using SD2 VSELECT */
+			ldo5_reg: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+
+	pcf85063: rtc@51 {
+		compatible = "nxp,pcf85063a";
+		reg = <0x51>;
+	};
+
+	at24c02: eeprom@53 {
+		compatible = "nxp,se97b", "atmel,24c02";
+		read-only;
+		reg = <0x53>;
+		pagesize = <16>;
+		vcc-supply = <&reg_vcc3v3>;
+	};
+
+	m24c64: eeprom@57 {
+		compatible = "atmel,24c64";
+		reg = <0x57>;
+		pagesize = <32>;
+		vcc-supply = <&reg_vcc3v3>;
+	};
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	vmmc-supply = <&reg_vcc3v3>;
+	vqmmc-supply = <&reg_vcc1v8>;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_flexspi0: flexspi0grp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_ALE__FLEXSPI_A_SCLK	0x142>,
+			   <MX8MP_IOMUXC_NAND_CE0_B__FLEXSPI_A_SS0_B	0x82>,
+			   <MX8MP_IOMUXC_NAND_DATA00__FLEXSPI_A_DATA00	0x82>,
+			   <MX8MP_IOMUXC_NAND_DATA01__FLEXSPI_A_DATA01	0x82>,
+			   <MX8MP_IOMUXC_NAND_DATA02__FLEXSPI_A_DATA02	0x82>,
+			   <MX8MP_IOMUXC_NAND_DATA03__FLEXSPI_A_DATA03	0x82>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c1_gpio: i2c1-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15		0x400001e2>;
+	};
+
+	pinctrl_pmic: pmicirqgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO08__GPIO1_IO08		0x1c0>;
+	};
+
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x10>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194>,
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x84>,
+			   <MX8MP_IOMUXC_NAND_READY_B__USDHC3_RESET_B	0x84>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194>,
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x84>,
+			   <MX8MP_IOMUXC_NAND_READY_B__USDHC3_RESET_B	0x84>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194>,
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x84>,
+			   <MX8MP_IOMUXC_NAND_READY_B__USDHC3_RESET_B	0x84>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B	0x1c4>;
+	};
+};
-- 
2.25.1

