Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22917508909
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 15:15:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353251AbiDTNSO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 09:18:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378843AbiDTNSL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 09:18:11 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46AA220FF
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 06:15:22 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-e2afb80550so1904346fac.1
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 06:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2TjlctiPhcyfc6x0qaFkO2dCpbnSw8+/ECo4ApA6F+0=;
        b=ZY2HjYcjrvxfP2cwvlcWKsWv4TnZcsVaeOdCx/eCM4+d3s9eE9zqNBXzub24qpGX7E
         Tc8br4oU4o9K48VnH4dhgSDcme4+0aEqIZ8r8EVxqGUPxju599fVVPTfN+BpErntmuh+
         Y7KrBMQKM8B+EWxJLIiWJxDndNNAujZRiCHz/bX1FJB00qTE02itE7PLzWiB5CLS0XDO
         md/qxHig50JmRmM9xJDmwDyGHZTP3ak8tq858sFmHaPpR+PEE4nK5ebeS45cURNvcSXj
         nuR7DHR2RObgfGX4G452ClivzsmgZYfeqVe+WsSMmO0ghMe+LNdtdrWOmh2eyqVlY+Nn
         CZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2TjlctiPhcyfc6x0qaFkO2dCpbnSw8+/ECo4ApA6F+0=;
        b=G2GfCl2UEeZjfuJHoRB6g9GXnvdcGAnCy3v/yzlXLO6vtOx0GTW5kf/OzgXtb7okit
         LWKQjFYqgI7al5ggdqx3orRP01qQeDujBGcDXtVx/boUGj237rEfcBZMrlVjHMjXbBrk
         uLBKKhGnGuCYidnP1zIALZIy62D8odCVDSX/2IqV9ZHt/dpgCIRKXpdgemjM/NfgDXm5
         bZeZLoplJG407QhQRtMs0eC8N2mHw7SztSR9tb9OCNF0mVQ/JB+Yb2B1p6lKIRvfatCF
         YyDqEXdK99wR3/iqLsZpf+UyKulBnb3ZbV11HVTu32DzS9ml4TxCfZmQhDq7ZxXsCa/W
         GHrQ==
X-Gm-Message-State: AOAM531IaaVhbTLZbmhIN/ADtNcnqJft1uJs/hDSIJCtwniMwPZGOaKI
        6oHBaYv1utks0mZSum6CUO1C9ovJ4k4=
X-Google-Smtp-Source: ABdhPJw5gyizOYd7/AVGNYSJZ9Di0dLjehcFoIofsWR/9EX24zQf4u2jnVfqKJTrjJom19XeauzQ9w==
X-Received: by 2002:a05:6870:8186:b0:e5:a566:74c7 with SMTP id k6-20020a056870818600b000e5a56674c7mr1476806oae.209.1650460521921;
        Wed, 20 Apr 2022 06:15:21 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:3ce1:a87b:51c0:189d])
        by smtp.gmail.com with ESMTPSA id n66-20020acabd45000000b002ef6c6992e8sm6148916oif.42.2022.04.20.06.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 06:15:21 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/3] ARM: dts: imx7d-smegw01: Add support for i.MX7D SMEGW01 board
Date:   Wed, 20 Apr 2022 10:15:07 -0300
Message-Id: <20220420131507.1032732-3-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220420131507.1032732-1-festevam@gmail.com>
References: <20220420131507.1032732-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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
 arch/arm/boot/dts/Makefile          |   1 +
 arch/arm/boot/dts/imx7d-smegw01.dts | 474 ++++++++++++++++++++++++++++
 2 files changed, 475 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-smegw01.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 01d5e66df832..b5f19aefa07d 100644
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
index 000000000000..a21830a41dc5
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-smegw01.dts
@@ -0,0 +1,474 @@
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
+		regulator-always-on;
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
+		regulator-always-on;
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
+		reg = <0>;
+		compatible = "microchip,48l640";
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
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc_int>;
+		compatible = "microcrystal,rv3028";
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
+	cap-sd-highspeed;
+	cap-mmc-highspeed;
+	cap-mmc-hw-reset;
+	mmc-hs200-1_8v;
+	mmc-ddr-1_8v;
+	sd-uhs-ddr50;
+	sd-uhs-sdr104;
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

