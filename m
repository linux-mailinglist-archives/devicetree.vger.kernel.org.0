Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3C25508B6
	for <lists+devicetree@lfdr.de>; Sun, 19 Jun 2022 07:07:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231559AbiFSFHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 01:07:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiFSFH3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 01:07:29 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D520C11A38
        for <devicetree@vger.kernel.org>; Sat, 18 Jun 2022 22:07:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6A75F60F5D
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 05:07:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8860CC34114;
        Sun, 19 Jun 2022 05:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1655615246;
        bh=CgQskpAcVgGgnexObgkTS//x0Q9R7a2BLDDhRxttZdo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lQZeTjFRRIYSvhJijHnvrCla3SLhFowQdpMtmQqBXpxxiJl0/ASc5CcnG7jPjklmk
         Nu07T8Xy3qZW3G9cDOsqP76IcZd+C/5Y/hgugtBqYCAz0Y+yT+o7Gx5v9ma3Vos6IL
         74vBJSdL0s3UjDez8EUtXMp0lDYFlrKgiz/vcPlpDxeWYv4AN1G1mMV4Rdh5n66YjF
         A+Yx4Ac693LhjmDe3u48y1VtmWh9iLBToZsLhxfxXs16ydhsJ7iynCdKG4D2IVin71
         0+DnsM1H4a1TTVVV9fCgW7ugqYDTFuHi67tsbm9jAtFDpNpj9bmH+jQKURAUzR0oNL
         nzs+1mNyHI68Q==
Date:   Sun, 19 Jun 2022 13:07:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: Re: [PATCH v2 3/3] arm64: dts: freescale: Add phyBOARD-Polis-i.MX8MM
 support
Message-ID: <20220619050719.GA254723@dragon>
References: <20220602132127.95333-1-t.remmet@phytec.de>
 <20220602132127.95333-3-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220602132127.95333-3-t.remmet@phytec.de>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 02, 2022 at 03:21:27PM +0200, Teresa Remmet wrote:
> Add initial support for phyBOARD-Polis-i.MX8MM.
> Main features are:
> 	* Bluetooth and Wifi
> 	* CANFD
> 	* eMMC
> 	* i2c RTC
> 	* Ethernet
> 	* PCIe
> 	* RS232/RS485
> 	* SD-Card
> 	* SPI-NOR flash
> 	* USB
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
> Changes in v2:
> - added missing space in compatible of imx8mm-phyboard-polis-rdk
> - removed underscores in node names
> - fixed indentation of reg_usdhc2_vmmc node
> - put status always as last property of nodes
> - updated node name of sn65dsi83 to bridge
> 
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../freescale/imx8mm-phyboard-polis-rdk.dts   | 450 ++++++++++++++++++
>  .../dts/freescale/imx8mm-phycore-som.dtsi     | 433 +++++++++++++++++
>  3 files changed, 884 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 238a83e5b8c6..1e25dec2109b 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-n801x-s.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-mx8menlo.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-nitrogen-r2.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-phyboard-polis-rdk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw71xx-0x.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
> new file mode 100644
> index 000000000000..4156f4255e24
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
> @@ -0,0 +1,450 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2022 PHYTEC Messtechnik GmbH
> + * Author: Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +#include "imx8mm-phycore-som.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyBOARD-Polis-i.MX8MM RDK";
> +	compatible = "phytec,imx8mm-phyboard-polis-rdk",
> +		     "phytec,imx8mm-phycore-som", "fsl,imx8mm";
> +
> +	chosen {
> +		stdout-path = &uart3;
> +	};
> +
> +	bt_osc_32k: bt-lp-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "bt_osc_32k";
> +		#clock-cells = <0>;
> +	};
> +
> +	can_osc_40m: can-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <40000000>;
> +		clock-output-names = "can_osc_40m";
> +		#clock-cells = <0>;
> +	};
> +
> +	fan {
> +		compatible = "gpio-fan";
> +		gpios = <&gpio4 8 GPIO_ACTIVE_HIGH>;
> +		gpio-fan,speed-map = <0     0
> +				      13000 1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_fan>;
> +		#cooling-cells = <2>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		led-0 {
> +			color = <LED_COLOR_ID_RED>;
> +			function = LED_FUNCTION_DISK;
> +			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "mmc2";
> +		};
> +
> +		led-1 {
> +			color = <LED_COLOR_ID_BLUE>;
> +			function = LED_FUNCTION_DISK;
> +			gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "mmc1";
> +		};
> +
> +		led-2 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			function = LED_FUNCTION_CPU;
> +			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	usdhc1_pwrseq: pwr-seq {
> +		compatible = "mmc-pwrseq-simple";
> +		post-power-on-delay-ms = <100>;
> +		power-off-delay-us = <60>;
> +		reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	reg_can_en: regulator-can-en {
> +		compatible = "regulator-fixed";
> +		gpio = <&gpio1 9 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_can_en>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "CAN_EN";
> +		startup-delay-us = <20>;
> +	};
> +
> +	reg_usb_otg1_vbus: regulator-usb-otg1 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;

Can we put 'enable-active-high' after 'gpio' line?

> +		gpio = <&gpio1 12 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usbotg1pwrgrp>;
> +		regulator-name = "usb_otg1_vbus";
> +		regulator-max-microvolt = <5000000>;
> +		regulator-min-microvolt = <5000000>;
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		off-on-delay-us = <20000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "VSD_3V3";
> +	};
> +
> +	reg_vcc_3v3: regulator-vcc-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "VCC_3V3";
> +	};
> +};
> +
> +/* SPI - CAN MCP251XFD */
> +&ecspi1 {
> +	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>;
> +	status = "okay";
> +
> +	can0: can@0 {
> +		compatible = "microchip,mcp251xfd";
> +		clocks = <&can_osc_40m>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_can_int>;
> +		reg = <0>;
> +		spi-max-frequency = <20000000>;
> +		xceiver-supply = <&reg_can_en>;
> +	};
> +};
> +
> +&gpio1 {
> +	gpio-line-names = "nINT_ETHPHY", "LED_RED", "WDOG_INT", "X_RTC_INT",
> +		"", "", "", "RESET_ETHPHY",
> +		"CAN_nINT", "CAN_EN", "nENABLE_FLATLINK", "",
> +		"USB_OTG_VBUS_EN", "", "LED_GREEN", "LED_BLUE";
> +};
> +
> +&gpio2 {
> +	gpio-line-names = "", "", "", "",
> +		"", "", "BT_REG_ON", "WL_REG_ON",
> +		"BT_DEV_WAKE", "BT_HOST_WAKE", "", "",
> +		"X_SD2_CD_B", "", "", "",
> +		"", "", "", "SD2_RESET_B";
> +};
> +
> +&gpio4 {
> +	gpio-line-names = "", "", "", "",
> +		"", "", "", "",
> +		"FAN", "miniPCIe_nPERST", "", "",
> +		"COEX1", "COEX2";
> +};
> +
> +&gpio5 {
> +	gpio-line-names = "", "", "", "",
> +		"", "", "", "",
> +		"", "ECSPI1_SS0";
> +};
> +
> +/* PCIe */
> +&pcie0 {
> +	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
> +			  <&clk IMX8MM_CLK_PCIE1_CTRL>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
> +				 <&clk IMX8MM_SYS_PLL2_250M>;
> +	assigned-clock-rates = <10000000>, <250000000>;
> +	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&clk IMX8MM_CLK_PCIE1_AUX>,
> +		 <&clk IMX8MM_CLK_PCIE1_PHY>;
> +	clock-names = "pcie", "pcie_aux", "pcie_bus";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie>;
> +	reset-gpio = <&gpio4 9 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +	fsl,clkreq-unsupported;
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_OUTPUT>;
> +	fsl,tx-deemph-gen1 = <0x2d>;
> +	fsl,tx-deemph-gen2 = <0xf>;
> +	status = "okay";
> +};
> +
> +&rv3028 {
> +	trickle-resistor-ohms = <3000>;
> +};
> +
> +&snvs_pwrkey {
> +	status = "okay";
> +};
> +
> +/* UART - RS232/RS485 */
> +&uart1 {
> +	assigned-clocks = <&clk IMX8MM_CLK_UART1>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +/* UART - Sterling-LWB Bluetooth */
> +&uart2 {
> +	assigned-clocks = <&clk IMX8MM_CLK_UART2>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
> +	fsl,dte-mode;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2_bt>;
> +	uart-has-rtscts;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		clocks = <&bt_osc_32k>;
> +		clock-names = "lpo";
> +		device-wakeup-gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
> +		interrupt-names = "host-wakeup";
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <9 IRQ_TYPE_EDGE_BOTH>;
> +		max-speed = <2000000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_bt>;
> +		shutdown-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
> +		vddio-supply = <&reg_vcc_3v3>;
> +	};
> +};
> +
> +/* UART - console */
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	status = "okay";
> +};
> +
> +/* USB */
> +&usbotg1 {
> +	adp-disable;
> +	dr_mode = "otg";
> +	over-current-active-low;
> +	samsung,picophy-pre-emp-curr-control = <3>;
> +	samsung,picophy-dc-vol-level-adjust = <7>;
> +	srp-disable;
> +	vbus-supply = <&reg_usb_otg1_vbus>;
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	disable-over-current;
> +	dr_mode = "host";
> +	samsung,picophy-pre-emp-curr-control = <3>;
> +	samsung,picophy-dc-vol-level-adjust = <7>;
> +	status = "okay";
> +};
> +
> +/* SDIO - Sterling-LWB Wifi */
> +&usdhc1 {
> +	assigned-clocks = <&clk IMX8MM_CLK_USDHC1>;
> +	assigned-clock-rates = <200000000>;
> +	bus-width = <4>;
> +	mmc-pwrseq = <&usdhc1_pwrseq>;
> +	non-removable;
> +	no-1-8-v;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_wlan>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	brcmf: wifi@1 {
> +		compatible = "brcm,bcm4329-fmac";
> +		reg = <1>;
> +	};
> +};
> +
> +/* SD-Card */
> +&usdhc2 {
> +	assigned-clocks = <&clk IMX8MM_CLK_USDHC2>;
> +	assigned-clock-rates = <200000000>;
> +	bus-width = <4>;
> +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	vqmmc-supply = <&reg_nvcc_sd2>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_bt: btgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD1_DATA4_GPIO2_IO6	0x00
> +			MX8MM_IOMUXC_SD1_DATA6_GPIO2_IO8	0x00
> +			MX8MM_IOMUXC_SD1_DATA7_GPIO2_IO9	0x00
> +		>;
> +	};
> +
> +	pinctrl_can_en: can-engrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO9	0x00
> +		>;
> +	};
> +
> +	pinctrl_can_int: can-intgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO08_GPIO1_IO8	0x00
> +		>;
> +	};
> +
> +	pinctrl_ecspi1: ecspi1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_ECSPI1_MISO_ECSPI1_MISO	0x80
> +			MX8MM_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI	0x80
> +			MX8MM_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK	0x80
> +			MX8MM_IOMUXC_ECSPI1_SS0_GPIO5_IO9	0x00
> +		>;
> +	};
> +
> +	pinctrl_fan: fan0grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI1_RXD6_GPIO4_IO8	0x16
> +		>;
> +	};
> +
> +	pinctrl_leds: leds1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO01_GPIO1_IO1	0x16
> +			MX8MM_IOMUXC_GPIO1_IO14_GPIO1_IO14	0x16
> +			MX8MM_IOMUXC_GPIO1_IO15_GPIO1_IO15	0x16
> +		>;
> +	};
> +
> +	pinctrl_pcie: pciegrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI1_RXD7_GPIO4_IO9	0x00
> +			MX8MM_IOMUXC_SAI1_TXD0_GPIO4_IO12	0x12
> +			MX8MM_IOMUXC_SAI1_TXD7_GPIO4_IO19	0x12
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI2_RXC_UART1_DCE_RX	0x00
> +			MX8MM_IOMUXC_SAI2_RXD0_UART1_DCE_RTS_B	0x00
> +			MX8MM_IOMUXC_SAI2_RXFS_UART1_DCE_TX	0x00
> +			MX8MM_IOMUXC_SAI2_TXFS_UART1_DCE_CTS_B	0x00
> +		>;
> +	};
> +
> +	pinctrl_uart2_bt: uart2btgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI3_RXC_UART2_DTE_RTS_B	0x00
> +			MX8MM_IOMUXC_SAI3_RXD_UART2_DTE_CTS_B	0x00
> +			MX8MM_IOMUXC_SAI3_TXC_UART2_DTE_RX	0x00
> +			MX8MM_IOMUXC_SAI3_TXFS_UART2_DTE_TX	0x00
> +		>;
> +	};
> +
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_UART3_RXD_UART3_DCE_RX	0x49
> +			MX8MM_IOMUXC_UART3_TXD_UART3_DCE_TX	0x49
> +		>;
> +	};
> +
> +	pinctrl_usbotg1pwrgrp: usbotg1pwrgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO12_GPIO1_IO12	0x00
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x182
> +			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0xc6
> +			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0xc6
> +			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0xc6
> +			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0xc6
> +			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0xc6
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12	0x41
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x192
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d2
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d2
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d2
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d2
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d2
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
> +		>;
> +	};
> +
> +	pinctrl_wlan: wlangrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD1_DATA5_GPIO2_IO7	0x00
> +		>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi
> new file mode 100644
> index 000000000000..ba9bd2211e7c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi
> @@ -0,0 +1,433 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2022 PHYTEC Messtechnik GmbH
> + * Author: Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +#include "imx8mm.dtsi"
> +#include <dt-bindings/net/ti-dp83867.h>
> +
> +/ {
> +	model = "PHYTEC phyCORE-i.MX8MM";
> +	compatible = "phytec,imx8mm-phycore-som", "fsl,imx8mm";
> +
> +	aliases {
> +		rtc0 = &rv3028;
> +		rtc1 = &snvs_rtc;
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0 0x80000000>;
> +	};
> +
> +	reg_vdd_3v3_s: regulator-vdd-3v3-s {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "VDD_3V3_S";
> +	};
> +};
> +
> +&A53_0 {
> +	cpu-supply = <&reg_vdd_arm>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&reg_vdd_arm>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&reg_vdd_arm>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&reg_vdd_arm>;
> +};
> +
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-25M {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +
> +		opp-100M {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +
> +		opp-750M {
> +			opp-hz = /bits/ 64 <750000000>;
> +		};
> +	};
> +};
> +
> +/* Ethernet */
> +&fec1 {
> +	fsl,magic-packet;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			enet-phy-lane-no-swap;
> +			interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
> +			interrupt-parent = <&gpio1>;
> +			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
> +			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
> +			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +			reg = <0>;
> +			reset-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
> +			reset-assert-us = <1000>;
> +			reset-deassert-us = <1000>;
> +		};
> +	};
> +};
> +
> +/* SPI Flash */
> +&flexspi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexspi0>;
> +	status = "okay";
> +
> +	som_flash: flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <80000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +	};
> +};
> +
> +&gpio1 {
> +	gpio-line-names = "nINT_ETHPHY", "", "WDOG_INT", "X_RTC_INT",
> +		"", "", "", "RESET_ETHPHY",
> +		"", "", "nENABLE_FLATLINK";
> +};
> +
> +/* I2C1 */
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default","gpio";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +
> +	pmic@8 {
> +		compatible = "nxp,pf8121a";
> +		reg = <0x08>;
> +
> +		regulators {
> +			reg_nvcc_sd1: ldo1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-name = "NVCC_SD1 (LDO1)";

Have a newline between properties and child node.

> +				regulator-state-mem {

> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_nvcc_sd2: ldo2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-name = "NVCC_SD2 (LDO2)";
> +				vselect-en;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vcc_enet: ldo3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <2500000>;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-name = "VCC_ENET_2V5 (LDO3)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vdda_1v8: ldo4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-name = "VDDA_1V8 (LDO4)";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-min-microvolt = <1500000>;
> +					regulator-suspend-max-microvolt = <1500000>;
> +				};
> +			};
> +
> +			reg_soc_vdda_phy: buck1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <900000>;
> +				regulator-min-microvolt = <400000>;
> +				regulator-name = "VDD_SOC_VDDA_PHY_0P8 (BUCK1)";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-min-microvolt = <400000>;
> +					regulator-suspend-max-microvolt = <400000>;
> +				};
> +			};
> +
> +			reg_vdd_gpu_dram: buck2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-min-microvolt = <1000000>;
> +				regulator-name = "VDD_GPU_DRAM (BUCK2)";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <1000000>;
> +					regulator-suspend-min-microvolt = <1000000>;
> +				};
> +			};
> +
> +			reg_vdd_gpu: buck3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-min-microvolt = <400000>;
> +				regulator-name = "VDD_VPU (BUCK3)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vdd_mipi: buck4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1050000>;
> +				regulator-min-microvolt = <900000>;
> +				regulator-name = "VDD_MIPI_0P9 (BUCK4)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vdd_arm: buck5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1050000>;
> +				regulator-min-microvolt = <400000>;
> +				regulator-name = "VDD_ARM (BUCK5)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vdd_1v8: buck6 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-name = "VDD_1V8 (BUCK6)";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <1800000>;
> +					regulator-suspend-min-microvolt = <1800000>;
> +				};
> +			};
> +
> +			reg_nvcc_dram: buck7 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-name = "NVCC_DRAM_1P1V (BUCK7)";
> +			};
> +
> +			reg_vsnvs: vsnvs {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-name = "NVCC_SNVS_1P8 (VSNVS)";
> +			};
> +		};
> +	};
> +
> +	eeprom@51 {
> +		compatible = "atmel,24c32";
> +		pagesize = <32>;
> +		reg = <0x51>;
> +		vcc-supply = <&reg_vdd_3v3_s>;
> +	};
> +
> +	sn65dsi83: bridge@2d {

Sort I2C devices in unit-address.

Shawn

> +		compatible = "ti,sn65dsi83";
> +		enable-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_sn65dsi83>;
> +		reg = <0x2d>;
> +		status = "disabled";
> +	};
> +
> +	rv3028: rtc@52 {
> +		compatible = "microcrystal,rv3028";
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-parent = <&gpio1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_rtc>;
> +		reg = <0x52>;
> +	};
> +};
> +
> +/* EMMC */
> +&usdhc3 {
> +	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
> +	assigned-clock-rates = <400000000>;
> +	bus-width = <8>;
> +	keep-power-in-suspend;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +/* Watchdog */
> +&wdog1 {
> +	fsl,ext-reset-output;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x3
> +			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x3
> +			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
> +			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
> +			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
> +			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
> +			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
> +			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
> +			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
> +			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
> +			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
> +			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
> +			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +			MX8MM_IOMUXC_GPIO1_IO00_GPIO1_IO0		0x19
> +			MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7		0x19
> +		>;
> +	};
> +
> +	pinctrl_flexspi0: flexspi0grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_ALE_QSPI_A_SCLK		0x1c2
> +			MX8MM_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B		0x82
> +			MX8MM_IOMUXC_NAND_DATA00_QSPI_A_DATA0		0x82
> +			MX8MM_IOMUXC_NAND_DATA01_QSPI_A_DATA1		0x82
> +			MX8MM_IOMUXC_NAND_DATA02_QSPI_A_DATA2		0x82
> +			MX8MM_IOMUXC_NAND_DATA03_QSPI_A_DATA3		0x82
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400001c0
> +			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c0
> +		>;
> +	};
> +
> +	pinctrl_i2c1_gpio: i2c1gpiogrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C1_SDA_GPIO5_IO15		0x1e0
> +			MX8MM_IOMUXC_I2C1_SCL_GPIO5_IO14		0x1e0
> +		>;
> +	};
> +
> +	pinctrl_rtc: rtcgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x1c0
> +		>;
> +	};
> +
> +	pinctrl_sn65dsi83: sn65dsi83grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x0
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x190
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x194
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x196
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0x26
> +		>;
> +	};
> +};
> -- 
> 2.25.1
> 
