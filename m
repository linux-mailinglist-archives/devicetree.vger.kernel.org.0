Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA2D32ECA78
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 07:23:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726001AbhAGGXX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 01:23:23 -0500
Received: from mail.kernel.org ([198.145.29.99]:50186 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725983AbhAGGXX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 7 Jan 2021 01:23:23 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id B897E22E00;
        Thu,  7 Jan 2021 06:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610000561;
        bh=Y2nC5wVzstkU6r3Lw5cI+YSaUEJ9SuGy9Pb4njfHOkE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cTeBSuPbjYsxetvHpniJHhUGdUYFQKCjZvlJIExOUOQqQ6Qly6O9VOHMQvGDCwBQb
         W1y2Rq5hZ9fLOoyt547JzP1x0yYMbkjGr4i/uNpsUOZJCwweJEyo7iITP+2jN6yM51
         XK8Yl/GJhoke64sgBcUUBRLiVo8tJmGtTQKIzcnU51C3wqfHT35Kptbrh+3DEqARp4
         8aBQC5VQ6GBw86j0E+7yAeBLI6G18lrY3sNn8PgPyNMlHXYtdueiM1pXLdq5lWy9VK
         ks+YDC6Qy7TtSXF8QcyNZ+CPZyQoJOi87qJZbk4/WFcngXBLHdk+QduF5qd9Uxv0vV
         RDm//cqOf6XKQ==
Date:   Thu, 7 Jan 2021 14:22:35 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: freescale: Add support for
 phyBOARD-Pollux-i.MX8MP
Message-ID: <20210107062234.GE28365@dragon>
References: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
 <1607694535-417799-5-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1607694535-417799-5-git-send-email-t.remmet@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 11, 2020 at 02:48:55PM +0100, Teresa Remmet wrote:
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
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm64/boot/dts/freescale/Makefile             |   1 +
>  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 163 ++++++++++++
>  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 296 +++++++++++++++++++++
>  3 files changed, 460 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
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
> index 000000000000..e92868c10526
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
> @@ -0,0 +1,163 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> + * Author: Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/leds/leds-pca9532.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include "imx8mp-phycore-som.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyBOARD-Pollux i.MX8MP";
> +	compatible = "phytec,imx8mp-phyboard-pollux-rdk",
> +		     "phytec,imx8mp-phycore-som", "fsl,imx8mp";
> +
> +	chosen {
> +		stdout-path = &uart2;
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

We generally use 'okay' to flip the 'disabled' status defined in
<soc>.dtsi.  It's only really needed for such cases.

> +	};
> +
> +	leds@62 {
> +		compatible = "nxp,pca9533";
> +		reg = <0x62>;
> +		status = "okay";

Ditto

> +
> +		led1 {
> +			type = <PCA9532_TYPE_LED>;
> +		};
> +
> +		led2 {
> +			type = <PCA9532_TYPE_LED>;
> +		};
> +
> +		led3 {
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
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x41
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
> index 000000000000..8618df68b1e5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> @@ -0,0 +1,296 @@
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

Undocumented property?

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
> +	pmic: pmic@25 {
> +		reg = <0x25>;
> +		compatible = "nxp,pca9450c";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <18 IRQ_TYPE_LEVEL_LOW>;
> +
> +		regulators {
> +			buck1: BUCK1 {
> +				regulator-compatible = "BUCK1";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +			};
> +
> +			buck2: BUCK2 {
> +				regulator-compatible = "BUCK2";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +			};
> +
> +			buck4: BUCK4 {
> +				regulator-compatible = "BUCK4";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5: BUCK5 {
> +				regulator-compatible = "BUCK5";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6: BUCK6 {
> +				regulator-compatible = "BUCK6";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1: LDO1 {
> +				regulator-compatible = "LDO1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2: LDO2 {
> +				regulator-compatible = "LDO2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3: LDO3 {
> +				regulator-compatible = "LDO3";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4: LDO4 {
> +				regulator-compatible = "LDO4";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo5: LDO5 {
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

Unneeded 'okay' status.

> +	};
> +
> +	rv3028: rtc@52 {
> +		compatible = "microcrystal,rv3028";
> +		reg = <0x52>;
> +		trickle-resistor-ohms = <1000>;
> +		enable-level-switching-mode;

Undocumented property?

Shawn

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
> +	pinctrl_pmic: pmicirqgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18	0x141
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x190
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d0
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d0
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d0
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d0
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d0
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d0
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d0
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d0
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d0
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x190
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x194
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d4
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d4
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x194
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x196
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d6
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d6
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d6
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d6
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d6
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d6
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d6
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d6
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d6
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x196
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B	0xc6
> +		>;
> +	};
> +};
> -- 
> 2.7.4
> 
