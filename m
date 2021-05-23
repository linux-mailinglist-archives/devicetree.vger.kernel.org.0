Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A33A338D87D
	for <lists+devicetree@lfdr.de>; Sun, 23 May 2021 05:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231523AbhEWDXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 May 2021 23:23:05 -0400
Received: from mail.kernel.org ([198.145.29.99]:34656 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231508AbhEWDXE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 22 May 2021 23:23:04 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 20012610FA;
        Sun, 23 May 2021 03:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621740098;
        bh=ytkV8ZR2ggAiTX6uIxK5BzgVTjmIYhHjBBFwDs4DKaY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dz5E9/DU/Vbua3tUkyBqoZDwOhUj6niU645MeQs6/OwCahDGRSqV6WPITktCaxRWs
         5I1KbwbGK3Z5rraWgsIu9hPIsyzPbkJRDew1pTnzY1llQFCK8YnNtj73rTNdoHz5BD
         0JaOUcDKaCvCDmo8ym57KsGiMGIsYymIYF9r/halwhBNThw+UfFNJHLMvDs7rlMBCm
         xpRRPYdX7gCH/Fnw/yE/H6nvaV7h9rFEJV4mD9pRk9CtUcmjUq8QZ8wBFXXGxtLLJx
         9YWS6TPqcvL803D+VpGDnUq1LUNLXRe2vAXCS8BKhrUNB5XKiZp+XqKUs0gtlH9kyd
         4a2pWYOWms+zw==
Date:   Sun, 23 May 2021 11:21:33 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8mq: add support for MNT Reform2
Message-ID: <20210523032133.GQ8194@dragon>
References: <20210510185931.104780-1-l.stach@pengutronix.de>
 <20210510185931.104780-3-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210510185931.104780-3-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 10, 2021 at 08:59:31PM +0200, Lucas Stach wrote:
> From: Lucas Stach <dev@lynxeye.de>
> 
> This adds a basic devicetree for the MNT Reform2 DIY laptop. Not all
> of the board periperals are enabled yet, as some of them still require
> kernel patches to work properly. The nodes for those peripherals will
> be added as soon as the required patches are upstream.
> 
> The following has been tested to work:
> - UART console
> - SD card
> - eMMC
> - Gigabit Ethernet
> - USB (internal Keyboard, Mouse, external ports)
> - M.2 PCIe port
> 
> Co-developed-by: Lukas F. Hartmann <lukas@mntre.com>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> v2: Fix checkpatch complaints.
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +

Bindings goes to separate patch.

>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8mq-mnt-reform2.dts | 164 ++++++++++++++++++
>  3 files changed, 166 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 15519cc2d2c0..fd208c7e49ae 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -737,6 +737,7 @@ properties:
>                - purism,librem5-devkit     # Purism Librem5 devkit
>                - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
>                - technexion,pico-pi-imx8m  # TechNexion PICO-PI-8M evk
> +              - mntre,reform2             # MNT Reform2 Laptop

Break order.

>            - const: fsl,imx8mq
>  
>        - description: Purism Librem5 phones
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 44890d56c194..e45c8f9c8912 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -54,6 +54,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-r2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-r3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-r4.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mq-mnt-reform2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-nitrogen.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-phanbell.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
> new file mode 100644
> index 000000000000..104a236c9609
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
> @@ -0,0 +1,164 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/*
> + * Copyright 2019-2021 MNT Research GmbH
> + * Copyright 2021 Lucas Stach <dev@lynxeye.de>
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mq-nitrogen-som.dtsi"
> +
> +/ {
> +	model = "MNT Reform 2";
> +	compatible = "mntre,reform2", "boundary,imx8mq-nitrogen8m-som", "fsl,imx8mq";
> +
> +	pcie1_refclk: clock-pcie1-refclk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <100000000>;
> +	};
> +
> +	reg_main_5v: regulator-main-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "5V";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	reg_main_3v3: regulator-main-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	reg_main_usb: regulator-main-usb {
> +		compatible = "regulator-fixed";
> +		regulator-name = "USB_PWR";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&reg_main_5v>;
> +	};
> +};
> +
> +&fec1 {
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +
> +	pcf8523: pcf8523@68 {
> +		compatible = "nxp,pcf8523";
> +		reg = <0x68>;
> +	};
> +};
> +
> +&pcie1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie1>;
> +	reset-gpio = <&gpio3 23 GPIO_ACTIVE_LOW>;
> +	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
> +		 <&clk IMX8MQ_CLK_PCIE2_AUX>,
> +		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
> +		 <&pcie1_refclk>;
> +	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
> +	status = "okay";
> +};
> +
> +&reg_1p8v {
> +	vin-supply = <&reg_main_5v>;
> +};
> +
> +&reg_snvs {
> +	vin-supply = <&reg_main_5v>;
> +};
> +
> +&reg_arm_dram {
> +	vin-supply = <&reg_main_5v>;
> +};
> +
> +&reg_dram_1p1v {
> +	vin-supply = <&reg_main_5v>;
> +};
> +
> +&reg_soc_gpu_vpu {
> +	vin-supply = <&reg_main_5v>;
> +};
> +
> +&snvs_rtc {
> +	status = "disabled";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&usb3_phy0 {
> +	vbus-supply = <&reg_main_usb>;
> +	status = "okay";
> +};
> +
> +&usb3_phy1 {
> +	vbus-supply = <&reg_main_usb>;
> +	status = "okay";
> +};
> +
> +&usb_dwc3_0 {
> +	status = "okay";
> +	dr_mode = "host";

End property list with 'status' please.

> +};
> +
> +&usb_dwc3_1 {
> +	status = "okay";
> +	dr_mode = "host";

Ditto

Shawn

> +};
> +
> +&usdhc2 {
> +	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
> +	assigned-clock-rates = <200000000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	vqmmc-supply = <&reg_main_3v3>;
> +	vmmc-supply = <&reg_main_3v3>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL			0x4000007f
> +			MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA			0x4000007f
> +		>;
> +	};
> +
> +	pinctrl_pcie1: pcie1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SAI5_RXD2_GPIO3_IO23		0x16
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX		0x45
> +			MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX		0x45
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x83
> +			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc3
> +			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc3
> +			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc3
> +			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc3
> +			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc3
> +		>;
> +	};
> +};
> -- 
> 2.31.1
> 
