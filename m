Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F13842D6880
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 21:18:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393646AbgLJUSR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 15:18:17 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:44552 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390088AbgLJUSJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 15:18:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607631442; x=1610223442;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:Mime-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=8zWDA49c1xvNjqMpG7tIDX2px27DF+N5wC7Ce45TSJQ=;
        b=F5xvJqCTKZzxFjKsCbfWUZYfDpciLJ2cGvk/b+2cq/5VLo43HEl8NFn7b5zYFH6P
        D54ej4m8DJMQv+PxfocPjXgivJo9yrDvd+dDfD/E3M+s0K9BaWAIn+0BFZ5sJops
        aSw2ye/2VllO2oeOJtpF1D75ojMj2Eo2dqSC/dCsXcY=;
X-AuditID: c39127d2-96bff70000006435-5a-5fd28252d897
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id DE.72.25653.25282DF5; Thu, 10 Dec 2020 21:17:22 +0100 (CET)
Received: from llp-tremmet ([172.16.5.100])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020121021172260-958249 ;
          Thu, 10 Dec 2020 21:17:22 +0100 
Message-ID: <e30dd7dc8e3d74def286afcd18e0960546e3375c.camel@phytec.de>
Subject: Re: [PATCH v2 4/4] arm64: dts: freescale: Add support for
 phyBOARD-Pollux-i.MX8MP
From:   Teresa Remmet <t.remmet@phytec.de>
To:     Alexander Dahl <ada@thorsis.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>
Date:   Thu, 10 Dec 2020 21:17:22 +0100
In-Reply-To: <5772451.vJfJuro9ls@ada>
References: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
         <1607445491-208271-5-git-send-email-t.remmet@phytec.de>
         <5772451.vJfJuro9ls@ada>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 10.12.2020 21:17:22,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 10.12.2020 21:17:22,
        Serialize complete at 10.12.2020 21:17:22
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBLMWRmVeSWpSXmKPExsWyRoCBSzeo6VK8wd5dZhZ9B5ks3i/rYbSY
        f+Qcq8XDq/4W589vYLfY9Pgaq0Xr3iPsFn+3b2KxeLFF3IHTY828NYweO2fdZffYtKqTzWPz
        knqP/r8GHuvmvmf3+LxJLoA9issmJTUnsyy1SN8ugSvj2OED7AXPmxgr3s6aztzA2J3SxcjJ
        ISFgIrFtxRbGLkYuDiGBrYwSD//PZYNwjjNKfLn3lB2kilfATaL7+19WEFtYIEZi1szJzCA2
        m4CGxNMVp5lAbBEBL4mW5V1gzcwC/xglNiybygaSYBFQlTh06BoLiM0JZJ++uIEFYsMsRomG
        c71MEHfoSHy4/wnoDg6gbYISf3cIg9RICDQySVy++IoRokZI4vTis2CbmQXkJba/nQNla0q0
        bv/NPoFRcBZC+ywkVbOQVC1gZF7FKJSbmZydWpSZrVeQUVmSmqyXkrqJERgbhyeqX9rB2DfH
        4xAjEwfjIUYJDmYlEV5ZlkvxQrwpiZVVqUX58UWlOanFhxilOViUxHk38JaECQmkJ5akZqem
        FqQWwWSZODilGhj59Es2TuOIlN1ioeqy+O8v37dbZn7jvdn6eMPCsINL5Cb7nLrzrHZ5QYjR
        VqeJz/PcvzBeVj1f+Jrhic3Hi8U2Z87M4ub7flzE5g2n80OF34+mSR6osjEQkz6Rlpmo2KDM
        e+bzDMl/CfHteb/47XKOu7xePbOq8/vtW980/yVUvPvl615bF1OlxFKckWioxVxUnAgAAlZR
        s3sCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Alexander,

Am Mittwoch, den 09.12.2020, 16:01 +0100 schrieb Alexander Dahl:
> Hei hei,
> 
> Am Dienstag, 8. Dezember 2020, 17:38:11 CET schrieb Teresa Remmet:
> > Add initial support for phyBOARD-Pollux-i.MX8MP.
> > Supported basic features:
> > 	* eMMC
> > 	* i2c EEPROM
> > 	* i2c RTC
> > 	* i2c LED
> > 	* PMIC
> > 	* debug UART
> > 	* SD card
> > 	* 1Gbit Ethernet (fec)
> > 	* watchdog
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> >  arch/arm64/boot/dts/freescale/Makefile             |   1 +
> >  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 166
> > ++++++++++++
> >  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 296
> > +++++++++++++++++++++ 3 files changed, 463 insertions(+)
> >  create mode 100644
> > arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts create
> > mode
> > 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile
> > b/arch/arm64/boot/dts/freescale/Makefile index
> > acfb8af45912..a43b496678be
> > 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -37,6 +37,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> > +dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-
> > rdk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts new
> > file
> > mode 100644
> > index 000000000000..9a3d73f08429
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
> > @@ -0,0 +1,166 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/leds/leds-pca9532.h>
> > +#include <dt-bindings/pwm/pwm.h>
> > +#include "imx8mp-phycore-som.dtsi"
> > +
> > +/ {
> > +	model = "PHYTEC phyBOARD-Pollux i.MX8MP";
> > +	compatible = "phytec,imx8mp-phyboard-pollux-rdk",
> > +		     "phytec,imx8mp-phycore-som", "fsl,imx8mp";
> > +
> > +	chosen {
> > +		stdout-path = &uart2;
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
> > +		startup-delay-us = <100>;
> > +		off-on-delay-us = <12000>;
> > +	};
> > +};
> > +
> > +&i2c2 {
> > +	clock-frequency = <400000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c2>;
> > +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
> > +	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > +	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > +	status = "okay";
> > +
> > +	eeprom@51 {
> > +		compatible = "atmel,24c02";
> > +		reg = <0x51>;
> > +		pagesize = <16>;
> > +		status = "okay";
> > +	};
> > +
> > +	leds@62 {
> > +		compatible = "nxp,pca9533";
> > +		reg = <0x62>;
> > +		status = "okay";
> > +
> > +		led1 {
> > +			label = "red:user1";
> > +			type = <PCA9532_TYPE_LED>;
> > +		};
> > +
> > +		led2 {
> > +			label = "green:user2";
> > +			type = <PCA9532_TYPE_LED>;
> > +		};
> > +
> > +		led3 {
> > +			label = "blue:user3";
> > +			type = <PCA9532_TYPE_LED>;
> > +		};
> > +	};
> 
> The property 'label' is deprecated, see 
> Documentation/devicetree/bindings/leds/common.yaml 
> for details.

Thank you for the review.
I will replace this in v3.

Teresa

> 
> Greets
> Alex
> 
> > +};
> > +
> > +&snvs_pwrkey {
> > +	status = "okay";
> > +};
> > +
> > +/* debug console */
> > +&uart2 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_uart2>;
> > +	status = "okay";
> > +};
> > +
> > +/* SD-Card */
> > +&usdhc2 {
> > +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> > +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_pins>;
> > +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_pins>;
> > +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_pins>;
> > +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> > +	vmmc-supply = <&reg_usdhc2_vmmc>;
> > +	bus-width = <4>;
> > +	status = "okay";
> > +};
> > +
> > +&iomuxc {
> > +	pinctrl_i2c2: i2c2grp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL		0x4
> > 00001c3
> > +			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA		0x4
> > 00001c3
> > +		>;
> > +	};
> > +
> > +	pinctrl_i2c2_gpio: i2c2gpiogrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16	0x1e3
> > +			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17	0x1e3
> > +		>;
> > +	};
> > +
> > +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x4
> > 1
> > +		>;
> > +	};
> > +
> > +	pinctrl_uart2: uart2grp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x4
> > 9
> > +			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x4
> > 9
> > +		>;
> > +	};
> > +
> > +	pinctrl_usdhc2_pins: usdhc2-gpiogrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12	0x1c4
> > +		>;
> > +	};
> > +
> > +	pinctrl_usdhc2: usdhc2grp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x190
> > +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d0
> > +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1
> > d0
> > +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1
> > d0
> > +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1
> > d0
> > +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1
> > d0
> > +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc
> > 1
> > +		>;
> > +	};
> > +
> > +	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x194
> > +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d4
> > +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1
> > d4
> > +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1
> > d4
> > +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1
> > d4
> > +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1
> > d4
> > +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc
> > 1
> > +		>;
> > +	};
> > +
> > +	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x196
> > +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d6
> > +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1
> > d6
> > +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1
> > d6
> > +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1
> > d6
> > +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1
> > d6
> > +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc
> > 1
> > +		>;
> > +	};
> > +};
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi new file
> > mode
> > 100644
> > index 000000000000..8618df68b1e5
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> > @@ -0,0 +1,296 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > + */
> > +
> > +#include <dt-bindings/net/ti-dp83867.h>
> > +#include "imx8mp.dtsi"
> > +
> > +/ {
> > +	model = "PHYTEC phyCORE-i.MX8MP";
> > +	compatible = "phytec,imx8mp-phycore-som", "fsl,imx8mp";
> > +
> > +	aliases {
> > +		rtc0 = &rv3028;
> > +		rtc1 = &snvs_rtc;
> > +	};
> > +
> > +	memory@40000000 {
> > +		device_type = "memory";
> > +		reg = <0x0 0x40000000 0 0x80000000>;
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
> > +/* ethernet 1 */
> > +&fec {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_fec>;
> > +	phy-mode = "rgmii-id";
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
> > +			interrupt-parent = <&gpio1>;
> > +			interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
> > +			ti,rx-internal-delay =
> > <DP83867_RGMIIDCTL_2_00_NS>;
> > +			ti,tx-internal-delay =
> > <DP83867_RGMIIDCTL_2_00_NS>;
> > +			ti,fifo-depth =
> > <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
> > +			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
> > +			enet-phy-lane-no-swap;
> > +		};
> > +	};
> > +};
> > +
> > +&i2c1 {
> > +	clock-frequency = <400000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c1>;
> > +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> > +	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > +	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > +	status = "okay";
> > +
> > +	pmic: pmic@25 {
> > +		reg = <0x25>;
> > +		compatible = "nxp,pca9450c";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_pmic>;
> > +		interrupt-parent = <&gpio4>;
> > +		interrupts = <18 IRQ_TYPE_LEVEL_LOW>;
> > +
> > +		regulators {
> > +			buck1: BUCK1 {
> > +				regulator-compatible = "BUCK1";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <2187500>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-ramp-delay = <3125>;
> > +			};
> > +
> > +			buck2: BUCK2 {
> > +				regulator-compatible = "BUCK2";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <2187500>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-ramp-delay = <3125>;
> > +			};
> > +
> > +			buck4: BUCK4 {
> > +				regulator-compatible = "BUCK4";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			buck5: BUCK5 {
> > +				regulator-compatible = "BUCK5";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			buck6: BUCK6 {
> > +				regulator-compatible = "BUCK6";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo1: LDO1 {
> > +				regulator-compatible = "LDO1";
> > +				regulator-min-microvolt = <1600000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo2: LDO2 {
> > +				regulator-compatible = "LDO2";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <1150000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo3: LDO3 {
> > +				regulator-compatible = "LDO3";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo4: LDO4 {
> > +				regulator-compatible = "LDO4";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo5: LDO5 {
> > +				regulator-compatible = "LDO5";
> > +				regulator-min-microvolt = <1800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +			};
> > +		};
> > +	};
> > +
> > +	eeprom@51 {
> > +		compatible = "atmel,24c32";
> > +		reg = <0x51>;
> > +		pagesize = <32>;
> > +		status = "okay";
> > +	};
> > +
> > +	rv3028: rtc@52 {
> > +		compatible = "microcrystal,rv3028";
> > +		reg = <0x52>;
> > +		trickle-resistor-ohms = <1000>;
> > +		enable-level-switching-mode;
> > +		status = "okay";
> > +	};
> > +};
> > +
> > +/* eMMC */
> > +&usdhc3 {
> > +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> > +	pinctrl-0 = <&pinctrl_usdhc3>;
> > +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> > +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> > +	bus-width = <8>;
> > +	non-removable;
> > +	status = "okay";
> > +};
> > +
> > +&wdog1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_wdog>;
> > +	fsl,ext-reset-output;
> > +	status = "okay";
> > +};
> > +
> > +&iomuxc {
> > +	pinctrl_fec: fecgrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x3
> > +			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x3
> > +			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0		
> > 0x91
> > +			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1		
> > 0x91
> > +			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2		
> > 0x91
> > +			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3		
> > 0x91
> > +			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC		
> > 0x91
> > +			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x9
> > 1
> > +			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0		
> > 0x1f
> > +			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1		
> > 0x1f
> > +			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2		
> > 0x1f
> > +			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3		
> > 0x1f
> > +			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x1
> > f
> > +			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC		
> > 0x1f
> > +			MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15		0x1
> > 1
> > +		>;
> > +	};
> > +
> > +	pinctrl_i2c1: i2c1grp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL		0x4
> > 00001c3
> > +			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA		0x4
> > 00001c3
> > +		>;
> > +	};
> > +
> > +	pinctrl_i2c1_gpio: i2c1gpiogrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14	0x1e3
> > +			MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15	0x1e3
> > +		>;
> > +	};
> > +
> > +	pinctrl_pmic: pmicirqgrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18	0x141
> > +		>;
> > +	};
> > +
> > +	pinctrl_usdhc3: usdhc3grp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x190
> > +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d0
> > +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1
> > d0
> > +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1
> > d0
> > +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1
> > d0
> > +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1
> > d0
> > +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1
> > d0
> > +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1
> > d0
> > +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1
> > d0
> > +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d0
> > +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x1
> > 90
> > +		>;
> > +	};
> > +
> > +	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x194
> > +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d4
> > +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1
> > d4
> > +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1
> > d4
> > +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1
> > d4
> > +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1
> > d4
> > +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1
> > d4
> > +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1
> > d4
> > +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1
> > d4
> > +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d4
> > +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x1
> > 94
> > +		>;
> > +	};
> > +
> > +	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x196
> > +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d6
> > +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1
> > d6
> > +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1
> > d6
> > +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1
> > d6
> > +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1
> > d6
> > +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1
> > d6
> > +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1
> > d6
> > +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1
> > d6
> > +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d6
> > +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x1
> > 96
> > +		>;
> > +	};
> > +
> > +	pinctrl_wdog: wdoggrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B	0xc
> > 6
> > +		>;
> > +	};
> > +};
> 
> 
> 
> 

