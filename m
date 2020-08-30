Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE178256E1D
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 15:44:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728780AbgH3Nop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 09:44:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:47180 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728773AbgH3Noo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 30 Aug 2020 09:44:44 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C15052078D;
        Sun, 30 Aug 2020 13:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1598795081;
        bh=ozAIwQKkUy/0Kf93vx6wO2QQJt4WNCGnGU3x7vTIb6E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=x2VuI+lgoPUafZmFxvKheICT7/Q4LDeLsPxaf+Q/Co4VjPJqDK6s1NhHB37nvNLiF
         X3I9peSFjbqIUNZ5b1coXO2oZ69bffSfa0BBvUI3nCUTGTbq1jRBfol+8ucR9unF7y
         BNxmZHPSmPriEJuBZuEPys+z77dPz188kuSw/1cw=
Date:   Sun, 30 Aug 2020 21:44:36 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: imx8mm: Split the imx8mm evk board
 dts to a common dtsi
Message-ID: <20200830134435.GA4488@dragon>
References: <1598253627-25797-1-git-send-email-ping.bai@nxp.com>
 <1598253627-25797-2-git-send-email-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1598253627-25797-2-git-send-email-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 24, 2020 at 03:20:26PM +0800, Jacky Bai wrote:
> There are two type of i.MX8MM EVK board, one is populated with
> LPDDR4(default dts), and one is populated with DDR4. these two
> boards share most of the board design, but still have some difference.
> imx8mm-evk has emmc support, imx8mm-ddr4-evk has gpmi nand support.
> And also, the BT/WIFI module is different. So move the common dts
> part into imx8mm-evk.dtsi for reuse.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

It doesn't apply to my branch.  Can you please rebase it to my for-next
or imx/dt64 branch?

Shawn

> ---
> Change for v2: no changes.
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 528 ++----------------
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 470 ++++++++++++++++
>  2 files changed, 506 insertions(+), 492 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index 0f1d7f8aeac4..09abdef8c166 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -1,97 +1,16 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  /*
> - * Copyright 2019 NXP
> + * Copyright 2019-2020 NXP
>   */
>  
>  /dts-v1/;
>  
>  #include <dt-bindings/usb/pd.h>
> -#include "imx8mm.dtsi"
> +#include "imx8mm-evk.dtsi"
>  
>  / {
>  	model = "FSL i.MX8MM EVK board";
>  	compatible = "fsl,imx8mm-evk", "fsl,imx8mm";
> -
> -	chosen {
> -		stdout-path = &uart2;
> -	};
> -
> -	memory@40000000 {
> -		device_type = "memory";
> -		reg = <0x0 0x40000000 0 0x80000000>;
> -	};
> -
> -	leds {
> -		compatible = "gpio-leds";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_gpio_led>;
> -
> -		status {
> -			label = "status";
> -			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> -			default-state = "on";
> -		};
> -	};
> -
> -	reg_usdhc2_vmmc: regulator-usdhc2 {
> -		compatible = "regulator-fixed";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> -		regulator-name = "VSD_3V3";
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> -		enable-active-high;
> -	};
> -
> -	wm8524: audio-codec {
> -		#sound-dai-cells = <0>;
> -		compatible = "wlf,wm8524";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_gpio_wlf>;
> -		wlf,mute-gpios = <&gpio5 21 GPIO_ACTIVE_LOW>;
> -	};
> -
> -	sound-wm8524 {
> -		compatible = "simple-audio-card";
> -		simple-audio-card,name = "wm8524-audio";
> -		simple-audio-card,format = "i2s";
> -		simple-audio-card,frame-master = <&cpudai>;
> -		simple-audio-card,bitclock-master = <&cpudai>;
> -		simple-audio-card,widgets =
> -			"Line", "Left Line Out Jack",
> -			"Line", "Right Line Out Jack";
> -		simple-audio-card,routing =
> -			"Left Line Out Jack", "LINEVOUTL",
> -			"Right Line Out Jack", "LINEVOUTR";
> -
> -		cpudai: simple-audio-card,cpu {
> -			sound-dai = <&sai3>;
> -			dai-tdm-slot-num = <2>;
> -			dai-tdm-slot-width = <32>;
> -		};
> -
> -		simple-audio-card,codec {
> -			sound-dai = <&wm8524>;
> -			clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
> -		};
> -	};
> -};
> -
> -&A53_0 {
> -	cpu-supply = <&buck2_reg>;
> -};
> -
> -&A53_1 {
> -	cpu-supply = <&buck2_reg>;
> -};
> -
> -&A53_2 {
> -	cpu-supply = <&buck2_reg>;
> -};
> -
> -&A53_3 {
> -	cpu-supply = <&buck2_reg>;
>  };
>  
>  &ddrc {
> @@ -114,238 +33,6 @@ opp-750M {
>  	};
>  };
>  
> -&fec1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_fec1>;
> -	phy-mode = "rgmii-id";
> -	phy-handle = <&ethphy0>;
> -	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
> -	phy-reset-duration = <10>;
> -	fsl,magic-packet;
> -	status = "okay";
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ethphy0: ethernet-phy@0 {
> -			compatible = "ethernet-phy-ieee802.3-c22";
> -			reg = <0>;
> -		};
> -	};
> -};
> -
> -&i2c1 {
> -	clock-frequency = <400000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2c1>;
> -	status = "okay";
> -
> -	pmic@4b {
> -		compatible = "rohm,bd71847";
> -		reg = <0x4b>;
> -		pinctrl-0 = <&pinctrl_pmic>;
> -		interrupt-parent = <&gpio1>;
> -		interrupts = <3 GPIO_ACTIVE_LOW>;
> -		rohm,reset-snvs-powered;
> -
> -		regulators {
> -			buck1_reg: BUCK1 {
> -				regulator-name = "BUCK1";
> -				regulator-min-microvolt = <700000>;
> -				regulator-max-microvolt = <1300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -				regulator-ramp-delay = <1250>;
> -			};
> -
> -			buck2_reg: BUCK2 {
> -				regulator-name = "BUCK2";
> -				regulator-min-microvolt = <700000>;
> -				regulator-max-microvolt = <1300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -				regulator-ramp-delay = <1250>;
> -				rohm,dvs-run-voltage = <1000000>;
> -				rohm,dvs-idle-voltage = <900000>;
> -			};
> -
> -			buck3_reg: BUCK3 {
> -				// BUCK5 in datasheet
> -				regulator-name = "BUCK3";
> -				regulator-min-microvolt = <700000>;
> -				regulator-max-microvolt = <1350000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			buck4_reg: BUCK4 {
> -				// BUCK6 in datasheet
> -				regulator-name = "BUCK4";
> -				regulator-min-microvolt = <3000000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			buck5_reg: BUCK5 {
> -				// BUCK7 in datasheet
> -				regulator-name = "BUCK5";
> -				regulator-min-microvolt = <1605000>;
> -				regulator-max-microvolt = <1995000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			buck6_reg: BUCK6 {
> -				// BUCK8 in datasheet
> -				regulator-name = "BUCK6";
> -				regulator-min-microvolt = <800000>;
> -				regulator-max-microvolt = <1400000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo1_reg: LDO1 {
> -				regulator-name = "LDO1";
> -				regulator-min-microvolt = <1600000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo2_reg: LDO2 {
> -				regulator-name = "LDO2";
> -				regulator-min-microvolt = <800000>;
> -				regulator-max-microvolt = <900000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo3_reg: LDO3 {
> -				regulator-name = "LDO3";
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo4_reg: LDO4 {
> -				regulator-name = "LDO4";
> -				regulator-min-microvolt = <900000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo6_reg: LDO6 {
> -				regulator-name = "LDO6";
> -				regulator-min-microvolt = <900000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -		};
> -	};
> -};
> -
> -&i2c2 {
> -	clock-frequency = <400000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2c2>;
> -	status = "okay";
> -
> -	ptn5110: tcpc@50 {
> -		compatible = "nxp,ptn5110";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_typec1>;
> -		reg = <0x50>;
> -		interrupt-parent = <&gpio2>;
> -		interrupts = <11 8>;
> -		status = "okay";
> -
> -		port {
> -			typec1_dr_sw: endpoint {
> -				remote-endpoint = <&usb1_drd_sw>;
> -			};
> -		};
> -
> -		typec1_con: connector {
> -			compatible = "usb-c-connector";
> -			label = "USB-C";
> -			power-role = "dual";
> -			data-role = "dual";
> -			try-power-role = "sink";
> -			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> -			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> -				     PDO_VAR(5000, 20000, 3000)>;
> -			op-sink-microwatt = <15000000>;
> -			self-powered;
> -		};
> -	};
> -};
> -
> -&i2c3 {
> -	clock-frequency = <400000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2c3>;
> -	status = "okay";
> -
> -	pca6416: gpio@20 {
> -		compatible = "ti,tca6416";
> -		reg = <0x20>;
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -	};
> -};
> -
> -&sai3 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_sai3>;
> -	assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
> -	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
> -	assigned-clock-rates = <24576000>;
> -	status = "okay";
> -};
> -
> -&snvs_pwrkey {
> -	status = "okay";
> -};
> -
> -&uart2 { /* console */
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_uart2>;
> -	status = "okay";
> -};
> -
> -&usbotg1 {
> -	dr_mode = "otg";
> -	hnp-disable;
> -	srp-disable;
> -	adp-disable;
> -	usb-role-switch;
> -	status = "okay";
> -
> -	port {
> -		usb1_drd_sw: endpoint {
> -			remote-endpoint = <&typec1_dr_sw>;
> -		};
> -	};
> -};
> -
> -&usdhc2 {
> -	assigned-clocks = <&clk IMX8MM_CLK_USDHC2>;
> -	assigned-clock-rates = <200000000>;
> -	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> -	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> -	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> -	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> -	cd-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
> -	bus-width = <4>;
> -	vmmc-supply = <&reg_usdhc2_vmmc>;
> -	status = "okay";
> -};
> -
>  &usdhc3 {
>  	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
>  	assigned-clock-rates = <400000000>;
> @@ -358,196 +45,53 @@ &usdhc3 {
>  	status = "okay";
>  };
>  
> -&wdog1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_wdog>;
> -	fsl,ext-reset-output;
> -	status = "okay";
> -};
> -
>  &iomuxc {
> -	pinctrl-names = "default";
> -
> -	pinctrl_fec1: fec1grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x3
> -			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x3
> -			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
> -			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
> -			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
> -			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
> -			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
> -			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
> -			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
> -			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
> -			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
> -			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
> -			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> -			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> -			MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22		0x19
> -		>;
> -	};
> -
> -	pinctrl_gpio_led: gpioledgrp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
> -		>;
> -	};
> -
> -	pinctrl_gpio_wlf: gpiowlfgrp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_I2C4_SDA_GPIO5_IO21	0xd6
> -		>;
> -	};
> -
> -	pinctrl_i2c1: i2c1grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c3
> -			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400001c3
> -		>;
> -	};
> -
> -	pinctrl_i2c2: i2c2grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL			0x400001c3
> -			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA			0x400001c3
> -		>;
> -	};
> -
> -	pinctrl_i2c3: i2c3grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL			0x400001c3
> -			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA			0x400001c3
> -		>;
> -	};
> -
> -	pinctrl_pmic: pmicirq {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x41
> -		>;
> -	};
> -
> -	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
> -		>;
> -	};
> -
> -	pinctrl_sai3: sai3grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC     0xd6
> -			MX8MM_IOMUXC_SAI3_TXC_SAI3_TX_BCLK      0xd6
> -			MX8MM_IOMUXC_SAI3_MCLK_SAI3_MCLK        0xd6
> -			MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0     0xd6
> -		>;
> -	};
> -
> -	pinctrl_typec1: typec1grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_SD1_STROBE_GPIO2_IO11	0x159
> -		>;
> -	};
> -
> -	pinctrl_uart2: uart2grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
> -			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX	0x140
> -		>;
> -	};
> -
> -	pinctrl_usdhc2_gpio: usdhc2grpgpio {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_GPIO1_IO15_GPIO1_IO15	0x1c4
> -		>;
> -	};
> -
> -	pinctrl_usdhc2: usdhc2grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
> -			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
> -			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
> -			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
> -			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
> -			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
> -			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> -		>;
> -	};
> -
> -	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
> -			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
> -			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
> -			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
> -			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
> -			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
> -			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> -		>;
> -	};
> -
> -	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
> -			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
> -			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
> -			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
> -			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
> -			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
> -			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> -		>;
> -	};
> -
>  	pinctrl_usdhc3: usdhc3grp {
>  		fsl,pins = <
> -			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x190
> -			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
> -			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
> -			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
> -			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
> -			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
> -			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
> -			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
> -			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
> -			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
> -			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE 		0x190
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x190
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d0
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d0
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d0
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d0
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d0
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d0
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d0
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d0
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x190
>  		>;
>  	};
>  
>  	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
>  		fsl,pins = <
> -			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x194
> -			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
> -			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
> -			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
> -			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
> -			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
> -			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
> -			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
> -			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
> -			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
> -			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE 		0x194
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x194
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d4
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d4
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d4
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d4
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d4
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d4
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d4
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d4
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d4
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x194
>  		>;
>  	};
>  
>  	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
>  		fsl,pins = <
> -			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x196
> -			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
> -			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
> -			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
> -			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
> -			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
> -			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
> -			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
> -			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
> -			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
> -			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE 		0x196
> -		>;
> -	};
> -
> -	pinctrl_wdog: wdoggrp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0xc6
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x196
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d6
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d6
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d6
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d6
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d6
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d6
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d6
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d6
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d6
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x196
>  		>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> new file mode 100644
> index 000000000000..ddb3e8715733
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> @@ -0,0 +1,470 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2020 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/usb/pd.h>
> +#include "imx8mm.dtsi"
> +
> +/ {
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0 0x80000000>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_led>;
> +
> +		status {
> +			label = "status";
> +			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +		};
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	wm8524: audio-codec {
> +		#sound-dai-cells = <0>;
> +		compatible = "wlf,wm8524";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_wlf>;
> +		wlf,mute-gpios = <&gpio5 21 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	sound-wm8524 {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "wm8524-audio";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,frame-master = <&cpudai>;
> +		simple-audio-card,bitclock-master = <&cpudai>;
> +		simple-audio-card,widgets =
> +			"Line", "Left Line Out Jack",
> +			"Line", "Right Line Out Jack";
> +		simple-audio-card,routing =
> +			"Left Line Out Jack", "LINEVOUTL",
> +			"Right Line Out Jack", "LINEVOUTR";
> +
> +		cpudai: simple-audio-card,cpu {
> +			sound-dai = <&sai3>;
> +			dai-tdm-slot-num = <2>;
> +			dai-tdm-slot-width = <32>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&wm8524>;
> +			clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
> +		};
> +	};
> +};
> +
> +&A53_0 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
> +	phy-reset-duration = <10>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	pmic@4b {
> +		compatible = "rohm,bd71847";
> +		reg = <0x4b>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 GPIO_ACTIVE_LOW>;
> +		rohm,reset-snvs-powered;
> +
> +		regulators {
> +			buck1_reg: BUCK1 {
> +				regulator-name = "BUCK1";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +			};
> +
> +			buck2_reg: BUCK2 {
> +				regulator-name = "BUCK2";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +				rohm,dvs-run-voltage = <1000000>;
> +				rohm,dvs-idle-voltage = <900000>;
> +			};
> +
> +			buck3_reg: BUCK3 {
> +				// BUCK5 in datasheet
> +				regulator-name = "BUCK3";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				// BUCK6 in datasheet
> +				regulator-name = "BUCK4";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				// BUCK7 in datasheet
> +				regulator-name = "BUCK5";
> +				regulator-min-microvolt = <1605000>;
> +				regulator-max-microvolt = <1995000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {
> +				// BUCK8 in datasheet
> +				regulator-name = "BUCK6";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-name = "LDO1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2_reg: LDO2 {
> +				regulator-name = "LDO2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3_reg: LDO3 {
> +				regulator-name = "LDO3";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-name = "LDO4";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo6_reg: LDO6 {
> +				regulator-name = "LDO6";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	ptn5110: tcpc@50 {
> +		compatible = "nxp,ptn5110";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_typec1>;
> +		reg = <0x50>;
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <11 8>;
> +		status = "okay";
> +
> +		port {
> +			typec1_dr_sw: endpoint {
> +				remote-endpoint = <&usb1_drd_sw>;
> +			};
> +		};
> +
> +		typec1_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			power-role = "dual";
> +			data-role = "dual";
> +			try-power-role = "sink";
> +			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> +				     PDO_VAR(5000, 20000, 3000)>;
> +			op-sink-microwatt = <15000000>;
> +			self-powered;
> +		};
> +	};
> +};
> +
> +&i2c3 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +
> +	pca6416: gpio@20 {
> +		compatible = "ti,tca6416";
> +		reg = <0x20>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
> +};
> +
> +&sai3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sai3>;
> +	assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
> +	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates = <24576000>;
> +	status = "okay";
> +};
> +
> +&snvs_pwrkey {
> +	status = "okay";
> +};
> +
> +&uart2 { /* console */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	dr_mode = "otg";
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	usb-role-switch;
> +	status = "okay";
> +
> +	port {
> +		usb1_drd_sw: endpoint {
> +			remote-endpoint = <&typec1_dr_sw>;
> +		};
> +	};
> +};
> +
> +&usdhc2 {
> +	assigned-clocks = <&clk IMX8MM_CLK_USDHC2>;
> +	assigned-clock-rates = <200000000>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	cd-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
> +	bus-width = <4>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	status = "okay";
> +};
> +
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x3
> +			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x3
> +			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
> +			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
> +			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
> +			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
> +			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
> +			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
> +			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
> +			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
> +			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
> +			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
> +			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +			MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22		0x19
> +		>;
> +	};
> +
> +	pinctrl_gpio_led: gpioledgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
> +		>;
> +	};
> +
> +	pinctrl_gpio_wlf: gpiowlfgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C4_SDA_GPIO5_IO21	0xd6
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c3
> +			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL			0x400001c3
> +			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA			0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL			0x400001c3
> +			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA			0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmicirq {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x41
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
> +		>;
> +	};
> +
> +	pinctrl_sai3: sai3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC     0xd6
> +			MX8MM_IOMUXC_SAI3_TXC_SAI3_TX_BCLK      0xd6
> +			MX8MM_IOMUXC_SAI3_MCLK_SAI3_MCLK        0xd6
> +			MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0     0xd6
> +		>;
> +	};
> +
> +	pinctrl_typec1: typec1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD1_STROBE_GPIO2_IO11	0x159
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
> +			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX	0x140
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2grpgpio {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO15_GPIO1_IO15	0x1c4
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0xc6
> +		>;
> +	};
> +};
> -- 
> 2.26.2
> 
