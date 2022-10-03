Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9BE55F3000
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 14:06:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229779AbiJCMGK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 08:06:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiJCMGJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 08:06:09 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B8F50049
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 05:06:07 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 43240440;
        Mon,  3 Oct 2022 14:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1664798765;
        bh=u+7HQgXow3fvTWDcYsdQKktiM+OTxeIFm4JhvlDCxHo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Aink1qac0T2+J/EwqKhqqajEoEyJANi3ns0iOjq+1sNXvF4tGQVNho/GH3NKdvvq/
         gFxQ7y7vGMGkO2jRhg0AJkJp0QtReLFiqNPxQ1/yo+HWHB3zjrYyrYAJCpF3FV/7AS
         XW6wY87HV8xxOjb1W6rS/gumvVBQhuH46gGJQA9g=
Date:   Mon, 3 Oct 2022 15:06:03 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Daniel Scally <dan.scally@ideasonboard.com>,
        Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net
Subject: Re: [PATCH 3/3] arm64: dts: Add device tree for the Debix Model A
 Board
Message-ID: <YzrQKyryCafL5pYx@pendragon.ideasonboard.com>
References: <20221003083705.22495-1-dan.scally@ideasonboard.com>
 <20221003083705.22495-4-dan.scally@ideasonboard.com>
 <152eb491-ddff-9639-a72b-968e3fc5949c@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <152eb491-ddff-9639-a72b-968e3fc5949c@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 03, 2022 at 11:26:54AM +0200, Krzysztof Kozlowski wrote:
> On 03/10/2022 10:37, Daniel Scally wrote:
> > Add a device tree file describing the Debix Model A board from
> > Polyhex Technology Co.
> > 
> > Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> > ---
> >  arch/arm64/boot/dts/freescale/Makefile        |   1 +
> >  .../dts/freescale/imx8mp-debix-model-a.dts    | 550 ++++++++++++++++++
> >  2 files changed, 551 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > index 238a83e5b8c6..f26e802cef82 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -79,6 +79,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
> > +dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > new file mode 100644
> > index 000000000000..6d0fa3930d0b
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > @@ -0,0 +1,550 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright 2019 NXP
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/usb/pd.h>
> > +
> > +#include "imx8mp.dtsi"
> > +
> > +/ {
> > +	model = "Polyhex Debix Model A (2GB) i.MX8MPlus board";
> > +	compatible = "polyhex,imx8mp-debix-modela2gb", "fsl,imx8mp";
> > +
> > +	chosen {
> > +		stdout-path = &uart2;
> > +	};
> > +
> > +	gpio-leds {
> > +		compatible = "gpio-leds";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_gpio_led>;
> > +
> > +		status-led {
> > +			function = LED_FUNCTION_POWER;
> > +			color = <LED_COLOR_ID_RED>;
> > +			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> > +			default-state = "on";
> > +		};
> > +	};
> > +
> > +	reg_usdhc2_vmmc: regulator-usdhc2 {
> > +		compatible = "regulator-fixed";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> > +		regulator-name = "VSD_3V3";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +	};
> > +};
> > +
> > +&A53_0 {
> > +	cpu-supply = <&buck2>;
> > +};
> > +
> > +&A53_1 {
> > +	cpu-supply = <&buck2>;
> > +};
> > +
> > +&A53_2 {
> > +	cpu-supply = <&buck2>;
> > +};
> > +
> > +&A53_3 {
> > +	cpu-supply = <&buck2>;
> > +};
> > +
> > +&eqos {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_eqos>;
> > +	phy-connection-type = "rgmii-id";
> > +	phy-handle = <&ethphy0>;
> > +	status = "okay";
> > +
> > +	mdio {
> > +		compatible = "snps,dwmac-mdio";
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +
> > +		ethphy0: ethernet-phy@0 {
> > +			compatible = "ethernet-phy-ieee802.3-c22";
> > +			reg = <0>;
> > +			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
> > +			reset-assert-us = <20>;
> > +			reset-deassert-us = <200000>;
> > +		};
> > +	};
> > +};
> > +
> > +&fec {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_fec>;
> > +	phy-connection-type = "rgmii-id";
> > +	phy-handle = <&ethphy1>;
> > +	fsl,magic-packet;
> > +	status = "okay";
> > +
> > +	mdio {
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +
> > +		ethphy1: ethernet-phy@0 {
> > +			compatible = "ethernet-phy-ieee802.3-c22";
> > +			reg = <0>;
> > +			reset-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
> > +			reset-assert-us = <10>;
> > +			reset-deassert-us = <150>;
> > +		};
> > +	};
> > +};
> > +
> > +&i2c1 {
> > +	clock-frequency = <400000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c1>;
> > +	status = "okay";
> > +
> > +	pmic@25 {
> > +		reg = <0x25>;
> > +		compatible = "nxp,pca9450c";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_pmic>;
> > +		interrupt-parent = <&gpio1>;
> > +		interrupts = <3 GPIO_ACTIVE_LOW>;
> 
> Nope, wrong flag. This is a hint for us that you based your DTS on
> something ancient (e.g. broken downstream stuff). Please start from
> *scratch* and write your DTS based on a board taken from mainline.
> 
> There is no point for us to repeat review for all the things  we already
> fixed in mainline.

We can't fully do that, as we don't have access to the schematics for
the board. What we can do, however, is to compare this .dts to others
from mainline and investigate all differences to see if they can be
bugs.

> > +
> > +		regulators {
> > +			buck1: BUCK1 {
> > +				regulator-name = "BUCK1";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <2187500>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-ramp-delay = <3125>;
> > +			};
> > +
> > +			buck2: BUCK2 {
> > +				regulator-name = "BUCK2";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <2187500>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-ramp-delay = <3125>;
> > +				nxp,dvs-run-voltage = <950000>;
> > +				nxp,dvs-standby-voltage = <850000>;
> > +			};
> > +
> > +			buck4: BUCK4{
> > +				regulator-name = "BUCK4";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			buck5: BUCK5{
> > +				regulator-name = "BUCK5";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			buck6: BUCK6 {
> > +				regulator-name = "BUCK6";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo1: LDO1 {
> > +				regulator-name = "LDO1";
> > +				regulator-min-microvolt = <1600000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo2: LDO2 {
> > +				regulator-name = "LDO2";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <1150000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo3: LDO3 {
> > +				regulator-name = "LDO3";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo4: LDO4 {
> > +				regulator-name = "LDO4";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo5: LDO5 {
> > +				regulator-name = "LDO5";
> > +				regulator-min-microvolt = <1800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +		};
> > +	};
> > +};
> > +
> > +&i2c2 {
> > +	clock-frequency = <100000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c2>;
> > +	status = "okay";
> > +};
> > +
> > +&i2c3 {
> > +	clock-frequency = <400000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c3>;
> > +	status = "okay";
> > +};
> > +
> > +&i2c4 {
> > +	clock-frequency = <100000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c4>;
> > +	status = "okay";
> > +
> > +	eeprom@50 {
> > +		compatible = "atmel,24c02";
> > +		reg = <0x50>;
> > +		pagesize = <16>;
> > +	};
> > +
> > +	hym8563@51 {
> 
> Node names should be generic.
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

-- 
Regards,

Laurent Pinchart
