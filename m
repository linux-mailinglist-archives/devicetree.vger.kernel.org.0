Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C57AF5ABCA3
	for <lists+devicetree@lfdr.de>; Sat,  3 Sep 2022 05:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231743AbiICDsc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 23:48:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231725AbiICDsa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 23:48:30 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2F78E3413
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 20:48:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 463BBB82D74
        for <devicetree@vger.kernel.org>; Sat,  3 Sep 2022 03:48:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA396C433D6;
        Sat,  3 Sep 2022 03:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662176906;
        bh=S2BKcELPB8rRU1xzfZfOjbQZ+DwtFdonTeiv//JxHks=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EDPYpbHLujD74/+aiRasdqA/RyV+QiUnSS16eI49IRogI3GBSxH38kl6Yyj2cJ4fU
         XwqlpsQ2H59562URaajzj2KKN43pBHhoOfh/jSCpTode0H/KQP67sGYWEjt5Z0mI3h
         ZmJhU/vRW+UBXWJPn/4MwgX0CxLusycKC6VvM3CSCa3JdCzWdKfDTQ7Cy96pquCc8B
         1zz6sTmp4eijFUdvDOHC9Px+BCujzNP5h0Mdisdh1mFafPDIbKUZsU+VErOZ82XZkU
         pgNsp2HAQZwiYNsOCzj+gmfxg4drgCdKsd+sRYUgKvMIe8GYtJUSr+8tlebIHbQkh8
         /hS2tlUN5w0tQ==
Date:   Sat, 3 Sep 2022 11:48:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v6 5/5] arm64: dts: freescale: add support for i.MX8DXL
 EVK board
Message-ID: <20220903034819.GF1728671@dragon>
References: <20220822175245.222691-1-shenwei.wang@nxp.com>
 <20220822175245.222691-6-shenwei.wang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220822175245.222691-6-shenwei.wang@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 22, 2022 at 12:52:45PM -0500, Shenwei Wang wrote:
> This is to support the EVK (Evaluation Kit Board) for the i.MX8DXL.
> The patch has enabled the serial console, SD/EMMC interface, and
> the eqos and fec ethernet network.
> 
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 427 ++++++++++++++++++
>  2 files changed, 428 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 8bf7f7ecebaa..2741205efe84 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -48,6 +48,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-85bb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-899b.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-9999.dtb
>  
> +dtb-$(CONFIG_ARCH_MXC) += imx8dxl-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
> new file mode 100644
> index 000000000000..bc343d96f46e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
> @@ -0,0 +1,427 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2019~2020, 2022 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8dxl.dtsi"
> +
> +/ {
> +	model = "Freescale i.MX8DXL EVK";
> +	compatible = "fsl,imx8dxl-evk", "fsl,imx8dxl";
> +
> +	aliases {
> +		i2c2 = &i2c2;
> +		mmc0 = &usdhc1;
> +		mmc1 = &usdhc2;
> +		serial0 = &lpuart0;
> +	};
> +
> +	chosen {
> +		stdout-path = &lpuart0;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x80000000 0 0x40000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		/*
> +		 * Memory reserved for optee usage. Please do not use.
> +		 * This will be automatically added to dtb if OP-TEE is installed.
> +		 * optee@96000000 {
> +		 *     reg = <0 0x96000000 0 0x2000000>;
> +		 *     no-map;
> +		 * };
> +		 */
> +
> +		/* global autoconfigured region for contiguous allocations */
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			reusable;
> +			size = <0 0x14000000>;
> +			alloc-ranges = <0 0x98000000 0 0x14000000>;
> +			linux,cma-default;
> +		};
> +	};
> +
> +	mux3_en: regulator-0 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "mux3_en";
> +		gpio = <&pca6416_2 8 GPIO_ACTIVE_LOW>;
> +		regulator-always-on;
> +	};
> +
> +	reg_fec1_sel: regulator-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fec1_supply";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pca6416_1 11 GPIO_ACTIVE_HIGH>;

Missing enable-active-high?

> +		regulator-always-on;
> +		status = "disabled";
> +	};
> +
> +	reg_fec1_io: regulator-2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fec1_io_supply";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		gpio = <&max7322 0 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +		status = "disabled";
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "SD1_SPWR";
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +		gpio = <&lsio_gpio4 30 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		off-on-delay-us = <3480>;
> +	};
> +};
> +
> +&eqos {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_eqos>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	nvmem-cells = <&fec_mac1>;
> +	nvmem-cell-names = "mac-address";
> +	snps,reset-gpios = <&pca6416_1 2 GPIO_ACTIVE_LOW>;
> +	snps,reset-delays-us = <10 20 200000>;
> +	status = "okay";
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +			eee-broken-1000t;
> +			qca,disable-smarteee;
> +			vddio-supply = <&vddio0>;
> +
> +			vddio0: vddio-regulator {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +		};
> +	};
> +};
> +
> +/*
> + * fec1 shares the some PINs with usdhc2.
> + * by default usdhc2 is enabled in this dts.
> + * Please disable usdhc2 to enable fec1
> + */
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-txid";
> +	phy-handle = <&ethphy1>;
> +	fsl,magic-packet;
> +	rx-internal-delay-ps = <2000>;
> +	nvmem-cells = <&fec_mac0>;
> +	nvmem-cell-names = "mac-address";
> +	phy-reset-gpios = <&pca6416_1 0 GPIO_ACTIVE_LOW>;
> +	phy-reset-duration = <10>;
> +	phy-reset-post-delay = <150>;

These are listed as deprecated optional properties in fsl,fec.yaml.

Shawn

> +	status = "disabled";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy1: ethernet-phy@1 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <1>;
> +			qca,disable-smarteee;
> +			vddio-supply = <&vddio1>;
> +
> +			vddio1: vddio-regulator {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	pca6416_1: gpio@20 {
> +		compatible = "ti,tca6416";
> +		reg = <0x20>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
> +
> +	pca6416_2: gpio@21 {
> +		compatible = "ti,tca6416";
> +		reg = <0x21>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
> +
> +	pca9548_1: i2c-mux@70 {
> +		compatible = "nxp,pca9548";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +
> +		i2c@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x0>;
> +
> +			max7322: gpio@68 {
> +				compatible = "maxim,max7322";
> +				reg = <0x68>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		i2c@4 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x4>;
> +		};
> +
> +		i2c@5 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x5>;
> +		};
> +
> +		i2c@6 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x6>;
> +		};
> +	};
> +};
> +
> +&lpuart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpuart0>;
> +	status = "okay";
> +};
> +
> +&lsio_gpio4 {
> +	status = "okay";
> +};
> +
> +&lsio_gpio5 {
> +	status = "okay";
> +};
> +
> +&thermal_zones {
> +	pmic-thermal0 {
> +		polling-delay-passive = <250>;
> +		polling-delay = <2000>;
> +		thermal-sensors = <&tsens IMX_SC_R_PMIC_0>;
> +
> +		trips {
> +			pmic_alert0: trip0 {
> +				temperature = <110000>;
> +				hysteresis = <2000>;
> +				type = "passive";
> +			};
> +
> +			pmic_crit0: trip1 {
> +				temperature = <125000>;
> +				hysteresis = <2000>;
> +				type = "critical";
> +			};
> +		};
> +
> +		cooling-maps {
> +			map0 {
> +				trip = <&pmic_alert0>;
> +				cooling-device =
> +					<&A35_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					<&A35_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +			};
> +		};
> +	};
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	bus-width = <8>;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	bus-width = <4>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	cd-gpios = <&lsio_gpio5 1 GPIO_ACTIVE_LOW>;
> +	wp-gpios = <&lsio_gpio5 0 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHB_PAD	0x000514a0
> +			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHK_PAD	0x000014a0
> +			IMX8DXL_SPI3_CS0_ADMA_ACM_MCLK_OUT1		0x0600004c
> +			IMX8DXL_SNVS_TAMPER_OUT1_LSIO_GPIO2_IO05_IN	0x0600004c
> +		>;
> +	};
> +
> +	pinctrl_usbotg1: usbotg1grp {
> +		fsl,pins = <
> +			IMX8DXL_USB_SS3_TC0_CONN_USB_OTG1_PWR		0x00000021
> +		>;
> +	};
> +
> +	pinctrl_usbotg2: usbotg2grp {
> +		fsl,pins = <
> +			IMX8DXL_USB_SS3_TC1_CONN_USB_OTG2_PWR		0x00000021
> +		>;
> +	};
> +
> +	pinctrl_eqos: eqosgrp {
> +		fsl,pins = <
> +			IMX8DXL_ENET0_MDC_CONN_EQOS_MDC				0x06000020
> +			IMX8DXL_ENET0_MDIO_CONN_EQOS_MDIO			0x06000020
> +			IMX8DXL_ENET1_RGMII_RXC_CONN_EQOS_RGMII_RXC		0x06000020
> +			IMX8DXL_ENET1_RGMII_RXD0_CONN_EQOS_RGMII_RXD0		0x06000020
> +			IMX8DXL_ENET1_RGMII_RXD1_CONN_EQOS_RGMII_RXD1		0x06000020
> +			IMX8DXL_ENET1_RGMII_RXD2_CONN_EQOS_RGMII_RXD2		0x06000020
> +			IMX8DXL_ENET1_RGMII_RXD3_CONN_EQOS_RGMII_RXD3		0x06000020
> +			IMX8DXL_ENET1_RGMII_RX_CTL_CONN_EQOS_RGMII_RX_CTL	0x06000020
> +			IMX8DXL_ENET1_RGMII_TXC_CONN_EQOS_RGMII_TXC		0x06000020
> +			IMX8DXL_ENET1_RGMII_TXD0_CONN_EQOS_RGMII_TXD0		0x06000020
> +			IMX8DXL_ENET1_RGMII_TXD1_CONN_EQOS_RGMII_TXD1		0x06000020
> +			IMX8DXL_ENET1_RGMII_TXD2_CONN_EQOS_RGMII_TXD2		0x06000020
> +			IMX8DXL_ENET1_RGMII_TXD3_CONN_EQOS_RGMII_TXD3		0x06000020
> +			IMX8DXL_ENET1_RGMII_TX_CTL_CONN_EQOS_RGMII_TX_CTL	0x06000020
> +		>;
> +	};
> +
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins = <
> +			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_ENET_ENETB0_PAD		0x000014a0
> +			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_ENET_ENETB1_PAD		0x000014a0
> +			IMX8DXL_ENET0_MDC_CONN_ENET0_MDC			0x06000020
> +			IMX8DXL_ENET0_MDIO_CONN_ENET0_MDIO			0x06000020
> +			IMX8DXL_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC		0x00000060
> +			IMX8DXL_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0		0x00000060
> +			IMX8DXL_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1		0x00000060
> +			IMX8DXL_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2		0x00000060
> +			IMX8DXL_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3		0x00000060
> +			IMX8DXL_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL	0x00000060
> +			IMX8DXL_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC		0x00000060
> +			IMX8DXL_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0		0x00000060
> +			IMX8DXL_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1		0x00000060
> +			IMX8DXL_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2		0x00000060
> +			IMX8DXL_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3		0x00000060
> +			IMX8DXL_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL	0x00000060
> +		>;
> +	};
> +
> +	pinctrl_lpspi3: lpspi3grp {
> +		fsl,pins = <
> +			IMX8DXL_SPI3_SCK_ADMA_SPI3_SCK		0x6000040
> +			IMX8DXL_SPI3_SDO_ADMA_SPI3_SDO		0x6000040
> +			IMX8DXL_SPI3_SDI_ADMA_SPI3_SDI		0x6000040
> +			IMX8DXL_SPI3_CS1_ADMA_SPI3_CS1		0x6000040
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			IMX8DXL_SPI1_SCK_ADMA_I2C2_SDA		0x06000021
> +			IMX8DXL_SPI1_SDO_ADMA_I2C2_SCL		0x06000021
> +		>;
> +	};
> +
> +	pinctrl_cm40_lpuart: cm40lpuartgrp {
> +		fsl,pins = <
> +			IMX8DXL_ADC_IN2_M40_UART0_RX		0x06000020
> +			IMX8DXL_ADC_IN3_M40_UART0_TX		0x06000020
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			IMX8DXL_SPI1_CS0_ADMA_I2C3_SDA		0x06000021
> +			IMX8DXL_SPI1_SDI_ADMA_I2C3_SCL		0x06000021
> +		>;
> +	};
> +
> +	pinctrl_lpuart0: lpuart0grp {
> +		fsl,pins = <
> +			IMX8DXL_UART0_RX_ADMA_UART0_RX		0x06000020
> +			IMX8DXL_UART0_TX_ADMA_UART0_TX		0x06000020
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			IMX8DXL_EMMC0_CLK_CONN_EMMC0_CLK	0x06000041
> +			IMX8DXL_EMMC0_CMD_CONN_EMMC0_CMD	0x00000021
> +			IMX8DXL_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000021
> +			IMX8DXL_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000021
> +			IMX8DXL_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000021
> +			IMX8DXL_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000021
> +			IMX8DXL_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000021
> +			IMX8DXL_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000021
> +			IMX8DXL_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000021
> +			IMX8DXL_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000021
> +			IMX8DXL_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000041
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
> +		fsl,pins = <
> +			IMX8DXL_ENET0_RGMII_TX_CTL_LSIO_GPIO4_IO30	0x00000040 /* RESET_B */
> +			IMX8DXL_ENET0_RGMII_TXD1_LSIO_GPIO5_IO00	0x00000021 /* WP */
> +			IMX8DXL_ENET0_RGMII_TXD2_LSIO_GPIO5_IO01	0x00000021 /* CD */
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			IMX8DXL_ENET0_RGMII_RXC_CONN_USDHC1_CLK		0x06000041
> +			IMX8DXL_ENET0_RGMII_RX_CTL_CONN_USDHC1_CMD	0x00000021
> +			IMX8DXL_ENET0_RGMII_RXD0_CONN_USDHC1_DATA0	0x00000021
> +			IMX8DXL_ENET0_RGMII_RXD1_CONN_USDHC1_DATA1	0x00000021
> +			IMX8DXL_ENET0_RGMII_RXD2_CONN_USDHC1_DATA2	0x00000021
> +			IMX8DXL_ENET0_RGMII_RXD3_CONN_USDHC1_DATA3	0x00000021
> +			IMX8DXL_ENET0_RGMII_TXD0_CONN_USDHC1_VSELECT	0x00000021
> +		>;
> +	};
> +};
> -- 
> 2.25.1
> 
