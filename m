Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D82082D1023
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 13:12:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726969AbgLGMKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 07:10:37 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38731 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726254AbgLGMKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 07:10:37 -0500
Received: by mail-wr1-f66.google.com with SMTP id r7so1268395wrc.5
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 04:10:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/x1WSAwugkz1UIFcrg3+SUvcP7R1F+pTio6iQJ0hkfU=;
        b=JWwKRWQGS28d+UAYCRDwzbRZPY3IkPMeIcgVSw74dGnGle5gTNs4gOp9UR/gVczTi2
         easY3RxD7CXHIe9lK1IuZoxQWbhABfytNQnFjtUJCXj4e0l92/cgyv22uPReG9blmHkW
         2KVQdi/wK9HmBF+Swr8Q0TH3KkMH/nzADqgrhz7RSQscoUu9fXT4m6o0O+4ytHcOyfDa
         +BH8/2QPDjKsvB5+dTpmFXyvgHjrJu5w9RX/NOQ1ODIOR1bBv5rX61eQd7R6CmqTTR+f
         9mAimUw6ulE0WhbzovL+i1COvMzY8+dfd/npanWw/7x2MoYc4/RwhFvrLtUdClltcE38
         0Olg==
X-Gm-Message-State: AOAM531HZ1MBazrP4W2T7+jJLrkHn7lDsrPmgBI2N99UniEKrYQg6Hch
        W9NxZl0FcjPbKWwwr+KNA64=
X-Google-Smtp-Source: ABdhPJwuUtoWBnRkcqcncM+XsdfpEN8I8fEjxgoiRqIBwMILJMpw4FegbVEHgd9I1CCBSpskh3ZpEA==
X-Received: by 2002:a5d:554e:: with SMTP id g14mr2149826wrw.264.1607342993443;
        Mon, 07 Dec 2020 04:09:53 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id j6sm14674629wrq.38.2020.12.07.04.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 04:09:52 -0800 (PST)
Date:   Mon, 7 Dec 2020 13:09:51 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: freescale: Add support for
 phyBOARD-Pollux-i.MX8MP
Message-ID: <20201207120951.GB27266@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
 <1607113982-109524-5-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1607113982-109524-5-git-send-email-t.remmet@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 04, 2020 at 09:33:02PM +0100, Teresa Remmet wrote:
> Add initial support for phyBOARD-Pollux-i.MX8MP.
> Supported basic features:
> 	* eMMC
> 	* i2c EEPROM
> 	* i2c RTC
> 	* i2c LED
> 	* PMIC
> 	* debug UART
> 	* SD card
> 	* 1Gbit Ethernet (fec)
> 	* watchdog
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm64/boot/dts/freescale/Makefile             |   1 +
>  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   |  16 ++
>  .../boot/dts/freescale/imx8mp-phyboard-pollux.dtsi | 152 ++++++++++
>  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 319 +++++++++++++++++++++
>  4 files changed, 488 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index acfb8af45912..a43b496678be 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -37,6 +37,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
> new file mode 100644
> index 000000000000..dd64be32c99d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> + * Author: Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mp-phycore-som.dtsi"
> +#include "imx8mp-phyboard-pollux.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyBOARD-Pollux i.MX8MP";
> +	compatible = "phytec,imx8mp-phyboard-pollux-rdk",
> +		     "phytec,imx8mp-phycore-som", "fsl,imx8mp";

This is the purpose of this file? Why having a DTS to include DTSI only?
Usually there is just DTSI for SOM and DTS fot the board.

> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux.dtsi
> new file mode 100644
> index 000000000000..dbeaa27eb043
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux.dtsi
> @@ -0,0 +1,152 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> + * Author: Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +#include <dt-bindings/leds/leds-pca9532.h>
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		startup-delay-us = <100>;
> +		off-on-delay-us = <12000>;
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
> +	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +
> +	eeprom@51 {
> +		compatible = "atmel,24c02";
> +		reg = <0x51>;
> +		pagesize = <16>;
> +		status = "okay";
> +	};
> +
> +	leddimmer@62 {

I think name "leds" is more appropriate.

> +		compatible = "nxp,pca9533";
> +		reg = <0x62>;
> +		status = "okay";
> +
> +		led1 {
> +			label = "red:user1";
> +			type = <PCA9532_TYPE_LED>;
> +		};
> +
> +		led2 {
> +			label = "green:user2";
> +			type = <PCA9532_TYPE_LED>;
> +		};
> +
> +		led3 {
> +			label = "blue:user3";
> +			type = <PCA9532_TYPE_LED>;
> +		};
> +	};
> +};
> +
> +&snvs_pwrkey {
> +	status = "okay";
> +};
> +
> +/* debug console */
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +/* SD-Card */
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_pins>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_pins>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_pins>;
> +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL		0x400001c3
> +			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA		0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c2_gpio: i2c2gpiogrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16	0x1e3
> +			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17	0x1e3
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x49
> +			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x49
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_pins: usdhc2-gpiogrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12	0x1c4
> +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x41
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x190
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d0
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x194
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x196
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d6
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc1
> +		>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> new file mode 100644
> index 000000000000..e1fdfebd8142
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> @@ -0,0 +1,319 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> + * Author: Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +#include <dt-bindings/net/ti-dp83867.h>
> +#include "imx8mp.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyCORE-i.MX8MP";
> +	compatible = "phytec,imx8mp-phycore-som", "fsl,imx8mp";
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
> +	rtcclkout: rv3028-clkout {

Is it really a separate oscillator giving 32 kHz? Or maybe this is
actually part of PMIC?

In any case node name should reflect class of a device so just "clock".

> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		clock-output-names = "rv3028-clkout";
> +		status = "disabled";
> +	};
> +};
> +
> +&A53_0 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +/* ethernet 1 */
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy1>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy1: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +			interrupt-parent = <&gpio1>;
> +			interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
> +			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
> +			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
> +			enet-phy-lane-no-swap;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +
> +	pmic: pca9450@25 {

Node name: pmic.

> +		reg = <0x25>;
> +		compatible = "nxp,pca9450c";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <18 IRQ_TYPE_LEVEL_LOW>;
> +
> +		regulators {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			buck1: BUCK1 {
> +				reg = <0>;

Does this all pass dtc W=1 builds and dtschema? The node name does not
have unit address. Bindings explicitly do not allow it... This looks
wrong.

> +				regulator-compatible = "BUCK1";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +			};
> +
> +			buck2: BUCK2 {
> +				reg = <1>;
> +				regulator-compatible = "BUCK2";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +			};
> +
> +			buck4: BUCK4 {
> +				reg = <3>;
> +				regulator-compatible = "BUCK4";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5: BUCK5 {
> +				reg = <4>;
> +				regulator-compatible = "BUCK5";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6: BUCK6 {
> +				reg = <5>;
> +				regulator-compatible = "BUCK6";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1: LDO1 {
> +				reg = <6>;
> +				regulator-compatible = "LDO1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2: LDO2 {
> +				reg = <7>;
> +				regulator-compatible = "LDO2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3: LDO3 {
> +				reg = <8>;
> +				regulator-compatible = "LDO3";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4: LDO4 {
> +				reg = <9>;
> +				regulator-compatible = "LDO4";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo5: LDO5 {
> +				reg = <10>;
> +				regulator-compatible = "LDO5";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +			};
> +		};
> +	};
> +
> +	eeprom@51 {
> +		compatible = "atmel,24c32";
> +		reg = <0x51>;
> +		pagesize = <32>;
> +		status = "okay";
> +	};
> +
> +	rv3028: rtc@52 {
> +		compatible = "microcrystal,rv3028";
> +		reg = <0x52>;
> +		trickle-resistor-ohms = <1000>;
> +		enable-level-switching-mode;
> +		clocks = <&rtcclkout>;
> +		status = "okay";
> +	};
> +};
> +
> +/* eMMC */
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	bus-width = <8>;
> +	non-removable;
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
> +	pinctrl_fec: fecgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x3
> +			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x3
> +			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0		0x91
> +			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1		0x91
> +			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2		0x91
> +			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3		0x91
> +			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC		0x91
> +			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x91
> +			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0		0x1f
> +			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1		0x1f
> +			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2		0x1f
> +			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3		0x1f
> +			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x1f
> +			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC		0x1f
> +			MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15		0x11
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL		0x400001c3
> +			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA		0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c1_gpio: i2c1gpiogrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14	0x1e3
> +			MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15	0x1e3
> +		>;
> +	};
> +
> +

Too many line breaks.

Best regards,
Krzysztof
