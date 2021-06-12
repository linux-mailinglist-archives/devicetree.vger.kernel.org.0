Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 230B03A4C52
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 05:05:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbhFLDHt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 23:07:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:43642 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229584AbhFLDHt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Jun 2021 23:07:49 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 80517601FF;
        Sat, 12 Jun 2021 03:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623467150;
        bh=t5P288Kx5uls7pGmnzXa8xoBimJ1+QLR3xYJh5B51H8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kifh/C2C5QcAB/bpHIQKpyj8gIA5uTdTKVyzbvIZCvXGPJErGJDlx9nNRbNsbTNQ3
         2XeF8MUEZQVKGoSFl9XoatWXR7ylMMJFBX1xNRvbsqHg44SNcC2twdwkCNfNkdbLHA
         COq/cgLvLCsnrE1r370XfhyYdlZqi/WHK9Gyi8oWjChT/GfFglkhRFjpW4UtV23R8d
         tYcTDuQIX6GBT0GrgMbnCqpWTpYw1FWCmkKu2OffDSywI45uOEkF4SqsfG5v3nXnCj
         8Osl5XNpzMAE92Yp5HB96dn7XuC+tv8YKOKFLPcnsuRpzoi2AGFzbqzd+xt+xIFzLT
         MxdO7jnNc8QsQ==
Date:   Sat, 12 Jun 2021 11:05:45 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH v3 1/4] arm64: dts: imx8mq: add Nitrogen8 SoM
Message-ID: <20210612030541.GG29138@dragon>
References: <20210524124536.27854-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210524124536.27854-1-dev@lynxeye.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 24, 2021 at 02:45:33PM +0200, Lucas Stach wrote:
> This adds the description of the Nitrogen8 System on Module. The module
> is quite simple with only a few (almost) fixed regulators and a eMMC
> on-board.
> 
> The eMMC is currently limited to 50MHz modes via the pinctrl, as the board
> has not wired up the data strobe line, which prevents HS400 mode from
> working. As both the controller and the eMMC support this mode, it is
> automatically selected when we allow the faster modes, leading to failing
> transfers. Until we have a proper solution to only disable HS400 mode,
> keep the eMMC at the slow bus modes.

With the change below, you should be able to keep 100MHz pinctrl state?

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=25e8b9eb096d

> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> v2:
> - remove 100/200MHz pinctrl states for usdhc1
> - rename i2c nodes
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +

Bindings go to separate patch.

>  .../dts/freescale/imx8mq-nitrogen-som.dtsi    | 242 ++++++++++++++++++
>  2 files changed, 243 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-nitrogen-som.dtsi
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 297c87f45db8..15519cc2d2c0 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -730,6 +730,7 @@ properties:
>          items:
>            - enum:
>                - boundary,imx8mq-nitrogen8m # i.MX8MQ NITROGEN Board
> +              - boundary,imx8mq-nitrogen8m-som # i.MX8MQ NITROGEN SoM
>                - einfochips,imx8mq-thor96  # i.MX8MQ Thor96 Board
>                - fsl,imx8mq-evk            # i.MX8MQ EVK Board
>                - google,imx8mq-phanbell    # Google Coral Edge TPU
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-nitrogen-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen-som.dtsi
> new file mode 100644
> index 000000000000..7f20d9b9ffb3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen-som.dtsi
> @@ -0,0 +1,242 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2018 Boundary Devices
> + * Copyright 2021 Lucas Stach <dev@lynxeye.de>
> + */
> +
> +#include "imx8mq.dtsi"
> +
> +/ {
> +	model = "Boundary Devices i.MX8MQ Nitrogen8M";
> +	compatible = "boundary,imx8mq-nitrogen8m-som", "fsl,imx8mq";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	reg_1p8v: regulator-fixed-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1P8V";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +
> +	reg_snvs: regulator-fixed-snvs {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VDD_SNVS";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +};
> +
> +&{/opp-table/opp-800000000} {
> +	opp-microvolt = <1000000>;
> +};
> +
> +&{/opp-table/opp-1000000000} {
> +	opp-microvolt = <1000000>;
> +};

Can we have some comments about these changes?

Shawn

> +
> +&A53_0 {
> +	cpu-supply = <&reg_arm_dram>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&reg_arm_dram>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&reg_arm_dram>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&reg_arm_dram>;
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@4 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <4>;
> +			interrupt-parent = <&gpio1>;
> +			interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
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
> +	i2c-mux@70 {
> +		compatible = "nxp,pca9546";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_i2c1_pca9546>;
> +		reg = <0x70>;
> +		reset-gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		i2c1a: i2c@0 {
> +			reg = <0>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			reg_arm_dram: regulator@60 {
> +				compatible = "fcs,fan53555";
> +				reg = <0x60>;
> +				regulator-name = "VDD_ARM_DRAM_1V";
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-always-on;
> +			};
> +		};
> +
> +		i2c1b: i2c@1 {
> +			reg = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			reg_dram_1p1v: regulator@60 {
> +				compatible = "fcs,fan53555";
> +				reg = <0x60>;
> +				regulator-name = "NVCC_DRAM_1P1V";
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-always-on;
> +			};
> +		};
> +
> +		i2c1c: i2c@2 {
> +			reg = <2>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			reg_soc_gpu_vpu: regulator@60 {
> +				compatible = "fcs,fan53555";
> +				reg = <0x60>;
> +				regulator-name = "VDD_SOC_GPU_VPU";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-always-on;
> +			};
> +		};
> +
> +		i2c1d: i2c@3 {
> +			reg = <3>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +	};
> +};
> +
> +&pgc_gpu {
> +	power-supply = <&reg_soc_gpu_vpu>;
> +};
> +
> +&pgc_vpu {
> +	power-supply = <&reg_soc_gpu_vpu>;
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
> +	assigned-clock-rates = <400000000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	vqmmc-supply = <&reg_1p8v>;
> +	vmmc-supply = <&reg_snvs>;
> +	bus-width = <8>;
> +	non-removable;
> +	no-sdio;
> +	no-sd;
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
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
> +			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO		0x23
> +			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
> +			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
> +			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
> +			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
> +			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
> +			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
> +			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
> +			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
> +			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
> +			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
> +			MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
> +			MX8MQ_IOMUXC_GPIO1_IO11_GPIO1_IO11		0x59
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
> +			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA			0x4000007f
> +		>;
> +	};
> +
> +	pinctrl_i2c1_pca9546: i2c1-pca9546grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_GPIO1_IO08_GPIO1_IO8		0x49
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x45
> +			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x45
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
> +			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
> +			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
> +			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
> +		>;
> +	};
> +};
> -- 
> 2.31.1
> 
