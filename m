Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B534E51BDE8
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 13:19:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234423AbiEELXS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 07:23:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348377AbiEELXR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 07:23:17 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56DB253E00
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 04:19:37 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-ed8a3962f8so3891424fac.4
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 04:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ucie07/l0EDYdAUuxWN+A4JMjzT2HM4TSj59SrhYe1Y=;
        b=oKESeAWUcg3GWsQglHZUXn4Rhp6S1zejZ5isUfrWFFMndP47OLQdHvHTrTkCCjU1D/
         9yr3OHjS2MLvLStRuMRje5PyfGGF0fg38ztKnw3njGuAT82BhD5y2i+Ljzfh3xmgWvjU
         khbrnlkVrdRw58MDyPOR+ECfNAnLfG/JDYll10/F9MUSV/4rxCVWi/vShR43aHy2O99T
         Dk9SMij4WnsBw7jZs2A2k2h7XK4bQO+foKZVsEaV8GNr4jVIoeUTXQ8YFcTDbG58jXkd
         BIUYFJYh/AXWZugHOn403r9Qm6Z8k9eGEAk+290XfRqiogVgRfehnZKkG2Q9+sFD251C
         bGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ucie07/l0EDYdAUuxWN+A4JMjzT2HM4TSj59SrhYe1Y=;
        b=i53rGKMCTbJ9agwRxCFghAzu2SfIaSRWkpYbu9QSphuQ5NMosur435cwYM4BXmCzuD
         5/QKWCW3zLXGw+5ZnI5tTP3f8SlD7/Qy0XQGiqdsEQEfwWIoBbcl80kC3oxHddDwBm0w
         vU/T+o9KEgqwOieccDPOQJWY0dRtY1RHyZNMNTgSn9lme80p6oJM8vmID2SltfsD91R9
         /OWZebOYtkikb7sUW+g2qnjCbrP8G2BBSkka1agE6I1nAm17Rg083qW0Mg8FaHbIlhLn
         MseqhcYKN9BFh+tUPbWFaEObgg0oH5erMYpvmQaD+28XbP9L4PN9kc/ZmO/zIO0s50nB
         jO1A==
X-Gm-Message-State: AOAM530itJjbupJhLl++BZSP/uzLUXWlSTQY7V5iueJTVmZkQTQ2CYjL
        /FzGVYh/O1XTdtTQrXHC+RU=
X-Google-Smtp-Source: ABdhPJwx0hKBEyJzt7uNDqPJWn0EdBVmvuFmd3jr3GJM03L6N4w3mutVFg5ZoqnhDocK2Ve1cGgaLQ==
X-Received: by 2002:a05:6870:1788:b0:e6:225:9841 with SMTP id r8-20020a056870178800b000e602259841mr1886475oae.152.1651749576582;
        Thu, 05 May 2022 04:19:36 -0700 (PDT)
Received: from localhost.localdomain ([2804:431:d77f:b636:b8f0:b089:e0ad:f3c2])
        by smtp.gmail.com with ESMTPSA id n7-20020aca5907000000b00325cda1ff9esm532779oib.29.2022.05.05.04.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 04:19:36 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 3/3] ARM: dts: imx7d-smegw01: Add support for i.MX7D SMEGW01 board
Date:   Thu,  5 May 2022 08:19:05 -0300
Message-Id: <20220505111905.1510904-3-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220505111905.1510904-1-festevam@gmail.com>
References: <20220505111905.1510904-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add support for the i.MX7D SMEGW01 board.

This is a gateway board that supports the following peripherals:

- eMMC / SD card
- RTC
- USB modem
- Wifi via SDIO
- Dual Ethernet
- CAN
- Serial SRAM

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Only pass 'regulator-always-on' when necessary (Shawn)
- Use compatible as the first property in sram and rtc (Shawn)
- Remove SD-related properties from eMMC node (Shawn)

 arch/arm/boot/dts/Makefile          |   1 +
 arch/arm/boot/dts/imx7d-smegw01.dts | 469 ++++++++++++++++++++++++++++
 2 files changed, 470 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-smegw01.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 18b1ac13eb8d..410e59068de8 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -741,6 +741,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-sdb.dtb \
 	imx7d-sdb-reva.dtb \
 	imx7d-sdb-sht11.dtb \
+	imx7d-smegw01.dtb \
 	imx7d-zii-rmu2.dtb \
 	imx7d-zii-rpu2.dtb \
 	imx7s-colibri-aster.dtb \
diff --git a/arch/arm/boot/dts/imx7d-smegw01.dts b/arch/arm/boot/dts/imx7d-smegw01.dts
new file mode 100644
index 000000000000..c6b32064a009
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-smegw01.dts
@@ -0,0 +1,469 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+//
+// Copyright (C) 2020 PHYTEC Messtechnik GmbH
+// Author: Jens Lang  <J.Lang@phytec.de>
+// Copyright (C) 2021 Fabio Estevam <festevam@denx.de>
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include "imx7d.dtsi"
+
+/ {
+	model = "Storopack SMEGW01 board";
+	compatible = "storopack,imx7d-smegw01", "fsl,imx7d";
+
+	aliases {
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc3;
+		mmc2 = &usdhc2;
+		rtc0 = &i2c_rtc;
+		rtc1 = &snvs_rtc;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;
+	};
+
+	reg_lte_on: regulator-lte-on {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_lte_on>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "lte_on";
+		gpio = <&gpio7 12 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_lte_nreset: regulator-lte-nreset {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_lte_nreset>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "LTE_nReset";
+		gpio = <&gpio6 21 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_wifi: regulator-wifi {
+		compatible = "regulator-fixed";
+		gpio = <&gpio2 30 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wifi>;
+		regulator-name = "wifi_reg";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reg_wlan_rfkill: regulator-wlan-rfkill {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-2 = <&pinctrl_rfkill>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "wlan_rfkill";
+		gpio = <&gpio2 11 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_usbotg_vbus: regulator-usbotg-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbotg1_pwr_gpio>;
+		regulator-name = "usb_otg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio1 05 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	sram@0 {
+		compatible = "microchip,48l640";
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <16000000>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	assigned-clocks = <&clks IMX7D_ENET1_TIME_ROOT_SRC>,
+			  <&clks IMX7D_ENET1_TIME_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <100000000>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@1 {
+			compatible = "ethernet-phy-id0022.1622",
+				     "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			reset-gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
+		};
+
+		ethphy1: ethernet-phy@2 {
+			compatible = "ethernet-phy-id0022.1622",
+				     "ethernet-phy-ieee802.3-c22";
+			reg = <2>;
+		};
+	};
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2>;
+	assigned-clocks = <&clks IMX7D_ENET2_TIME_ROOT_SRC>,
+			  <&clks IMX7D_ENET2_TIME_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <100000000>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy1>;
+	fsl,magic-packet;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 =<&pinctrl_i2c2>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	i2c_rtc: rtc@52 {
+		compatible = "microcrystal,rv3028";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc_int>;
+		reg = <0x52>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	status = "okay";
+};
+
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg1_lpsr>;
+	dr_mode = "otg";
+	vbus-supply = <&reg_usbotg_vbus>;
+	status = "okay";
+};
+
+&usbotg2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg2>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+	no-1-8-v;
+	enable-sdio-wakeup;
+	keep-power-in-suspend;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <4>;
+	non-removable;
+	cap-sd-highspeed;
+	sd-uhs-ddr50;
+	mmc-ddr-1_8v;
+	vmmc-supply = <&reg_wifi>;
+	enable-sdio-wakeup;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	assigned-clocks = <&clks IMX7D_USDHC3_ROOT_CLK>;
+	assigned-clock-rates = <400000000>;
+	max-frequency = <200000000>;
+	bus-width = <8>;
+	fsl,tuning-step = <1>;
+	non-removable;
+	cap-mmc-highspeed;
+	cap-mmc-hw-reset;
+	mmc-hs200-1_8v;
+	mmc-ddr-1_8v;
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
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX7D_PAD_ECSPI1_SS0__GPIO4_IO19	0x04
+			MX7D_PAD_ECSPI1_SCLK__ECSPI1_SCLK	0x04
+			MX7D_PAD_ECSPI1_MOSI__ECSPI1_MOSI	0x04
+			MX7D_PAD_ECSPI1_MISO__ECSPI1_MISO	0x04
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL 0x5
+			MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0	0x5
+			MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1	0x5
+			MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2	0x5
+			MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3	0x5
+			MX7D_PAD_ENET1_RGMII_RXC__ENET1_RGMII_RXC	0x5
+			MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL 0x5
+			MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0	0x5
+			MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1	0x5
+			MX7D_PAD_ENET1_RGMII_TD2__ENET1_RGMII_TD2	0x5
+			MX7D_PAD_ENET1_RGMII_TD3__ENET1_RGMII_TD3	0x5
+			MX7D_PAD_ENET1_RGMII_TXC__ENET1_RGMII_TXC	0x5
+			MX7D_PAD_GPIO1_IO10__ENET1_MDIO		0x7
+			MX7D_PAD_GPIO1_IO11__ENET1_MDC		0x7
+		>;
+	};
+
+	pinctrl_enet2: enet2grp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL 0x5
+			MX7D_PAD_EPDC_SDCE1__ENET2_RGMII_RXC	0x5
+			MX7D_PAD_EPDC_SDCLK__ENET2_RGMII_RD0	0x5
+			MX7D_PAD_EPDC_SDLE__ENET2_RGMII_RD1	0x5
+			MX7D_PAD_EPDC_SDOE__ENET2_RGMII_RD2	0x5
+			MX7D_PAD_EPDC_SDSHR__ENET2_RGMII_RD3	0x5
+			MX7D_PAD_EPDC_SDCE2__ENET2_RGMII_TD0	0x5
+			MX7D_PAD_EPDC_SDCE3__ENET2_RGMII_TD1	0x5
+			MX7D_PAD_EPDC_GDCLK__ENET2_RGMII_TD2	0x5
+			MX7D_PAD_EPDC_GDOE__ENET2_RGMII_TD3	0x5
+			MX7D_PAD_EPDC_GDRL__ENET2_RGMII_TX_CTL 0x5
+			MX7D_PAD_EPDC_GDSP__ENET2_RGMII_TXC	0x5
+			MX7D_PAD_GPIO1_IO09__GPIO1_IO9	0x08
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX7D_PAD_I2C2_SCL__I2C2_SCL		0x40000004
+			MX7D_PAD_I2C2_SDA__I2C2_SDA		0x40000004
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO12__FLEXCAN1_RX	0x0b0b0
+			MX7D_PAD_GPIO1_IO13__FLEXCAN1_TX	0x0b0b0
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO14__FLEXCAN2_RX	0x0b0b0
+			MX7D_PAD_GPIO1_IO15__FLEXCAN2_TX	0x0b0b0
+		>;
+	};
+
+	pinctrl_lte_on: lteongrp {
+		fsl,pins = <
+			MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12	0x17059
+		>;
+	};
+
+	pinctrl_lte_nreset: ltenresetgrp {
+		fsl,pins = <
+			MX7D_PAD_SAI2_RX_DATA__GPIO6_IO21	0x17059
+		>;
+	};
+
+	pinctrl_rfkill: rfkillrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA11__GPIO2_IO11	0x17059
+		>;
+	};
+
+	pinctrl_rtc_int: rtcintgrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA15__GPIO2_IO15	0x17059
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX	0x74
+			MX7D_PAD_UART1_RX_DATA__UART1_DCE_RX	0x7c
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX7D_PAD_UART3_TX_DATA__UART3_DCE_TX	0x7c
+			MX7D_PAD_UART3_RX_DATA__UART3_DCE_RX	0x74
+		>;
+	};
+
+	pinctrl_usbotg1_lpsr: usbotg1 {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO04__USB_OTG1_OC	0x04
+		>;
+	};
+
+	pinctrl_usbotg1_pwr: usbotg1-pwr {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO05__USB_OTG1_PWR	0x04
+		>;
+	};
+
+	pinctrl_usbotg1_pwr_gpio: usbotg1-pwr-gpio {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x04
+		>;
+	};
+
+	pinctrl_usbotg2: usbotg2grp {
+		fsl,pins = <
+			MX7D_PAD_UART3_RTS_B__USB_OTG2_OC	0x04
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59
+			MX7D_PAD_SD1_CMD__SD1_CMD		0x59
+			MX7D_PAD_SD1_CLK__SD1_CLK		0x19
+			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
+			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
+			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
+			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX7D_PAD_SD2_CLK__SD2_CLK		0x19
+			MX7D_PAD_SD2_CMD__SD2_CMD		0x59
+			MX7D_PAD_SD2_DATA0__SD2_DATA0		0x59
+			MX7D_PAD_SD2_DATA1__SD2_DATA1		0x59
+			MX7D_PAD_SD2_DATA2__SD2_DATA2		0x59
+			MX7D_PAD_SD2_DATA3__SD2_DATA3		0x59
+			MX7D_PAD_SD2_CD_B__SD2_CD_B		0x08
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD		0x5d
+			MX7D_PAD_SD3_CLK__SD3_CLK		0x1d
+			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x5d
+			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x5d
+			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x5d
+			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x5d
+			MX7D_PAD_SD3_DATA4__SD3_DATA4		0x5d
+			MX7D_PAD_SD3_DATA5__SD3_DATA5		0x5d
+			MX7D_PAD_SD3_DATA6__SD3_DATA6		0x5d
+			MX7D_PAD_SD3_DATA7__SD3_DATA7		0x5d
+			MX7D_PAD_SD3_STROBE__SD3_STROBE	0x1d
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD		0x5e
+			MX7D_PAD_SD3_CLK__SD3_CLK		0x1e
+			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x5e
+			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x5e
+			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x5e
+			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x5e
+			MX7D_PAD_SD3_DATA4__SD3_DATA4		0x5e
+			MX7D_PAD_SD3_DATA5__SD3_DATA5		0x5e
+			MX7D_PAD_SD3_DATA6__SD3_DATA6		0x5e
+			MX7D_PAD_SD3_DATA7__SD3_DATA7		0x5e
+			MX7D_PAD_SD3_STROBE__SD3_STROBE	0x1e
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD		0x5f
+			MX7D_PAD_SD3_CLK__SD3_CLK		0x0f
+			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x5f
+			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x5f
+			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x5f
+			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x5f
+			MX7D_PAD_SD3_DATA4__SD3_DATA4		0x5f
+			MX7D_PAD_SD3_DATA5__SD3_DATA5		0x5f
+			MX7D_PAD_SD3_DATA6__SD3_DATA6		0x5f
+			MX7D_PAD_SD3_DATA7__SD3_DATA7		0x5f
+			MX7D_PAD_SD3_STROBE__SD3_STROBE	0x1f
+		>;
+	};
+
+	pinctrl_wifi: wifigrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30	0x04
+			MX7D_PAD_SD2_RESET_B__GPIO5_IO11	0x04
+		>;
+	};
+};
+
+&iomuxc_lpsr {
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B 0x74
+		>;
+	};
+};
-- 
2.25.1

