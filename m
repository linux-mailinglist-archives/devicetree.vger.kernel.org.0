Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 335B15FC3A8
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 12:21:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbiJLKVz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 06:21:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiJLKVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 06:21:54 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7BD5B603C
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 03:21:52 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8EF51CD1;
        Wed, 12 Oct 2022 12:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665570110;
        bh=wW72xJAMc3lF7wj4a6um2XOgDYyb0JYpMPJQGhGQtKI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=juXEj5zXS3MjuEH38WueowpE+2hXAfoeIJtvQ5ebSONxqFC5x561B60R7p25udTuZ
         O98ZBesdHo86bb+ONYgH7Rv+20Fvp+dDuceclfkaE7R6LyPOZZaKtBGio6hESqLBZO
         WC+fObwSMn4pIhAqgoB8A/ePKum1EmwLCpbDmRU8=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v3 3/3] arm64: dts: Add device tree for the Debix Model A Board
Date:   Wed, 12 Oct 2022 11:21:21 +0100
Message-Id: <20221012102121.1747491-4-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221012102121.1747491-1-dan.scally@ideasonboard.com>
References: <20221012102121.1747491-1-dan.scally@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a device tree file describing the Debix Model A board from
Polyhex Technology Co.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
---
Changes in v3 (Laurent):

    - Added IOB copyright notice
    - Removed the eth node for the connector that's on the separate I/O
    board
    - Re-ordered some pinctrl groups so they're alphabetical

Changes in v2:

    - Fixed the interrupt flag for i2c1/pmic@25
    - Fixed the node name for i2c4/rtc@51 (was "hym8563@51")
    - Fixed a group control name that didn't match the bindings pattern
    - Re-compared the rest of the DT with the EVK's .dts file to try to
    make sure it complies with the way things should be, hopefully without
    missing anything...

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8mp-debix-model-a.dts    | 529 ++++++++++++++++++
 2 files changed, 530 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 8bf7f7ecebaa..6a33a08946ac 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -80,6 +80,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
new file mode 100644
index 000000000000..5549ceea3af6
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
@@ -0,0 +1,529 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019 NXP
+ * Copyright 2022 Ideas on Board Oy
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/usb/pd.h>
+
+#include "imx8mp.dtsi"
+
+/ {
+	model = "Polyhex Debix Model A i.MX8MPlus board";
+	compatible = "polyhex,imx8mp-debix-model-a", "fsl,imx8mp";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_led>;
+
+		status-led {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
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
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_1 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_2 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_3 {
+	cpu-supply = <&buck2>;
+};
+
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-connection-type = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <20>;
+			reset-deassert-us = <200000>;
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic@25 {
+		reg = <0x25>;
+		compatible = "nxp,pca9450c";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_EDGE_RISING>;
+
+		regulators {
+			buck1: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck2: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			buck4: BUCK4{
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5: BUCK5{
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo5: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+};
+
+&i2c4 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	status = "okay";
+
+	eeprom@50 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+
+	rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+		interrupt-parent = <&gpio2>;
+		interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc_int>;
+	};
+};
+
+&i2c6 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c6>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC							0x3
+			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO						0x3
+			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0					0x91
+			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1					0x91
+			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2					0x91
+			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3					0x91
+			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x91
+			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL				0x91
+			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0					0x1f
+			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1					0x1f
+			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2					0x1f
+			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3					0x1f
+			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL				0x1f
+			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x1f
+			MX8MP_IOMUXC_SAI1_RXFS__ENET1_1588_EVENT0_IN				0x1f
+			MX8MP_IOMUXC_SAI1_RXC__ENET1_1588_EVENT0_OUT				0x1f
+			MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18							0x19
+		>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC							0x3
+			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO							0x3
+			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0						0x91
+			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1						0x91
+			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2						0x91
+			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3						0x91
+			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC						0x91
+			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL					0x91
+			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0						0x1f
+			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1						0x1f
+			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2						0x1f
+			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3						0x1f
+			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL					0x1f
+			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC						0x1f
+			MX8MP_IOMUXC_SAI1_RXD1__ENET1_1588_EVENT1_OUT				0x1f
+			MX8MP_IOMUXC_SAI1_RXD0__ENET1_1588_EVENT1_IN				0x1f
+			MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19							0x19
+		>;
+	};
+
+	pinctrl_gpio_led: gpioledgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16						0x19
+		>;
+	};
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL					0x400001c3
+			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA					0x400001c3
+			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD						0x40000019
+			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC						0x40000019
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL								0x400001c2
+			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA								0x400001c2
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL								0x400001c2
+			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA								0x400001c2
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL								0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA								0x400001c2
+		>;
+	};
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL								0x400001c3
+			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA								0x400001c3
+		>;
+	};
+
+	pinctrl_i2c6: i2c6grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI5_RXFS__I2C6_SCL							0x400001c3
+			MX8MP_IOMUXC_SAI5_RXC__I2C6_SDA								0x400001c3
+		>;
+	};
+
+	pinctrl_pmic: pmicirqgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03							0x41
+		>;
+	};
+
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19						0x41
+		>;
+	};
+
+	pinctrl_rtc_int: rtcintgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11							0x140
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX						0x14f
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX						0x14f
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART3_RXD__UART3_DCE_RX						0x49
+			MX8MP_IOMUXC_UART3_TXD__UART3_DCE_TX						0x49
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX						0x49
+			MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX						0x49
+		>;
+	};
+
+	pinctrl_usb1_vbus: usb1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25							0x19
+			MX8MP_IOMUXC_SAI2_TXD0__GPIO4_IO26							0x19
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK							0x190
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD							0x1d0
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0						0x1d0
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1						0x1d0
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2						0x1d0
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3						0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT						0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK							0x194
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD							0x1d4
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0						0x1d4
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1						0x1d4
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2						0x1d4
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3						0x1d4
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT						0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK							0x196
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD							0x1d6
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0						0x1d6
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1						0x1d6
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2						0x1d6
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3						0x1d6
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT						0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12							0x1c4
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK							0x190
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD							0x1d0
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0						0x1d0
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1						0x1d0
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2						0x1d0
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3						0x1d0
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4						0x1d0
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5						0x1d0
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6						0x1d0
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7							0x1d0
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE						0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK							0x194
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD							0x1d4
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0						0x1d4
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1						0x1d4
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2						0x1d4
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3						0x1d4
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4						0x1d4
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5						0x1d4
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6						0x1d4
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7							0x1d4
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE						0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK							0x196
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD							0x1d6
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0						0x1d6
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1						0x1d6
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2						0x1d6
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3						0x1d6
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4						0x1d6
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5						0x1d6
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6						0x1d6
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7							0x1d6
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE						0x196
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B						0xc6
+		>;
+	};
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&uart2 {
+	/* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+/* SD Card */
+&usdhc2 {
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+/* eMMc */
+&usdhc3 {
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
-- 
2.34.1

