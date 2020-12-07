Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EACD2D123B
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 14:37:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726261AbgLGNgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 08:36:18 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:54520 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726251AbgLGNgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 08:36:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607348134; x=1609940134;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:Mime-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=mGpboy12sBLgcRIylGKPok3VrlPctgykZWou1TRk0AU=;
        b=G+BGSFPoTzWd3cc9dHVUU4PjgEu2xeABw0aYIcrhJqFDLpmxN8N0Mmqz7B8L6vmu
        THj4SxeBt8h/AwL3BmizHwvO6jkrIzyIC0Ih3WqDF3cKijHWnh01zIZXUkW0LXEV
        UX/+nvYGxNF5syW79wUX0KjUuYaZh/FwRzHSw/+sUiE=;
X-AuditID: c39127d2-96bff70000006435-50-5fce2fa6dd89
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 96.5B.25653.6AF2ECF5; Mon,  7 Dec 2020 14:35:34 +0100 (CET)
Received: from llp-tremmet ([172.16.5.100])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120714353396-929709 ;
          Mon, 7 Dec 2020 14:35:33 +0100 
Message-ID: <fcc57a9546bbd34f1e787d19c86f3ff8d1cadce2.camel@phytec.de>
Subject: Re: [PATCH 4/4] arm64: dts: freescale: Add support for
 phyBOARD-Pollux-i.MX8MP
From:   Teresa Remmet <t.remmet@phytec.de>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Date:   Mon, 07 Dec 2020 14:35:33 +0100
In-Reply-To: <20201207120951.GB27266@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
         <1607113982-109524-5-git-send-email-t.remmet@phytec.de>
         <20201207120951.GB27266@kozik-lap>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.12.2020 14:35:34,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.12.2020 14:35:34,
        Serialize complete at 07.12.2020 14:35:34
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHLMWRmVeSWpSXmKPExsWyRoCBS3eZ/rl4g53beCzeL+thtJh/5Byr
        xcOr/hbnz29gt9j0+BqrReveI+wWf7dvYrF4sUXcgcNjzbw1jB47Z91l99i0qpPNY/OSeo/+
        vwYenzfJBbBFcdmkpOZklqUW6dslcGWcar7MWHCtkbGis+MuYwPjg6QuRk4OCQETiR27exhB
        bCGBrYwS91dpdjFyAdnHGCVWbVvEDJLgFXCTWN3RwgRiCwtESszeeYgNxGYT0JB4uuI0WFxE
        QFPi+t/vrCDNzAJ/GSWWL37HApJgEVCV2L93AlgRp4C+xNqlU9khNixhlDjyt4EF4gwdiQ/3
        PwGdwQG0TVDi7w5hkBoJgUYmia5zdxghaoQkTi8+C3YRs4C8xPa3c6BsTYnW7b/ZJzAKzkJo
        n4WkahaSqgWMzKsYhXIzk7NTizKz9QoyKktSk/VSUjcxAuPg8ET1SzsY++Z4HGJk4mA8xCjB
        wawkwqsmdTZeiDclsbIqtSg/vqg0J7X4EKM0B4uSOO8G3pIwIYH0xJLU7NTUgtQimCwTB6dU
        A6MHa1PBNp+nyW+fahXPWPBhU0eLWNf5QBXDmO1iP1+Vn+tYYXFCclfe/A7ByyobP/779avm
        +luLt5KBxvmJeptPnGCfoHtDNLxwvdkSBbVg9f/lTd5S9VcfusblNm8U+Vtts8OmcsMWJT4P
        IU8324sb32+fyC3xY+Jh3mkH/lxYKcsxy1X5aJcSS3FGoqEWc1FxIgCsw1utcQIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

Am Montag, den 07.12.2020, 13:09 +0100 schrieb Krzysztof Kozlowski:
> On Fri, Dec 04, 2020 at 09:33:02PM +0100, Teresa Remmet wrote:
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
> >  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   |  16 ++
> >  .../boot/dts/freescale/imx8mp-phyboard-pollux.dtsi | 152
> > ++++++++++
> >  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 319
> > +++++++++++++++++++++
> >  4 files changed, 488 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > pollux-rdk.dts
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > pollux.dtsi
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-
> > som.dtsi
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile
> > b/arch/arm64/boot/dts/freescale/Makefile
> > index acfb8af45912..a43b496678be 100644
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
> > rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-
> > rdk.dts
> > new file mode 100644
> > index 000000000000..dd64be32c99d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
> > @@ -0,0 +1,16 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "imx8mp-phycore-som.dtsi"
> > +#include "imx8mp-phyboard-pollux.dtsi"
> > +
> > +/ {
> > +	model = "PHYTEC phyBOARD-Pollux i.MX8MP";
> > +	compatible = "phytec,imx8mp-phyboard-pollux-rdk",
> > +		     "phytec,imx8mp-phycore-som", "fsl,imx8mp";
> 
> This is the purpose of this file? Why having a DTS to include DTSI
> only?
> Usually there is just DTSI for SOM and DTS fot the board.

we have different options for the SoMs. Like SPI-NOR flash mounted or
not. We usually add this to the SoM include, but disable it. We enable
this in the dts if mounted. This makes it easy to generate different
device trees for different SoM options. So far upstream is not every
feature supported. So we don't do anything in the dts yet. But I want
to setup the layout already.

I hope this makes it clear.

> 
> > +};
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > pollux.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > pollux.dtsi
> > new file mode 100644
> > index 000000000000..dbeaa27eb043
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux.dtsi
> > @@ -0,0 +1,152 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > + */
> > +
> > +#include <dt-bindings/leds/leds-pca9532.h>
> > +#include <dt-bindings/pwm/pwm.h>
> > +
> > +/ {
> > +	chosen {
> > +		stdout-path = &uart2;
> > +	};
> > +
> > +	reg_usdhc2_vmmc: regulator-usdhc2 {
> > +		compatible = "regulator-fixed";
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
> > +	leddimmer@62 {
> 
> I think name "leds" is more appropriate.

okay I will change it.

> 
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
> > +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x4
> > 1
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
> > b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> > new file mode 100644
> > index 000000000000..e1fdfebd8142
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> > @@ -0,0 +1,319 @@
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
> > +
> > +	rtcclkout: rv3028-clkout {
> 
> Is it really a separate oscillator giving 32 kHz? Or maybe this is
> actually part of PMIC?

It is a clock out of the used i2c rtc. Which I actually trying to
disable. As it is not connected. But it is enabled as default.

> 
> In any case node name should reflect class of a device so just
> "clock".

Changing that.

> 
> > +		compatible = "fixed-clock";
> > +		#clock-cells = <0>;
> > +		clock-frequency = <32768>;
> > +		clock-output-names = "rv3028-clkout";
> > +		status = "disabled";
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
> > +	pmic: pca9450@25 {
> 
> Node name: pmic.

Will be fixed.

> 
> > +		reg = <0x25>;
> > +		compatible = "nxp,pca9450c";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_pmic>;
> > +		interrupt-parent = <&gpio4>;
> > +		interrupts = <18 IRQ_TYPE_LEVEL_LOW>;
> > +
> > +		regulators {
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +
> > +			buck1: BUCK1 {
> > +				reg = <0>;
> 
> Does this all pass dtc W=1 builds and dtschema? The node name does
> not
> have unit address. Bindings explicitly do not allow it... This looks
> wrong.

The reg property is a leftover and not correct. I will remove this and
others below. Same with #address-cells and #size-cells.

> 
> > +				regulator-compatible = "BUCK1";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <2187500>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-ramp-delay = <3125>;
> > +			};
> > +
> > +			buck2: BUCK2 {
> > +				reg = <1>;
> > +				regulator-compatible = "BUCK2";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <2187500>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-ramp-delay = <3125>;
> > +			};
> > +
> > +			buck4: BUCK4 {
> > +				reg = <3>;
> > +				regulator-compatible = "BUCK4";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			buck5: BUCK5 {
> > +				reg = <4>;
> > +				regulator-compatible = "BUCK5";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			buck6: BUCK6 {
> > +				reg = <5>;
> > +				regulator-compatible = "BUCK6";
> > +				regulator-min-microvolt = <600000>;
> > +				regulator-max-microvolt = <3400000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo1: LDO1 {
> > +				reg = <6>;
> > +				regulator-compatible = "LDO1";
> > +				regulator-min-microvolt = <1600000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo2: LDO2 {
> > +				reg = <7>;
> > +				regulator-compatible = "LDO2";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <1150000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo3: LDO3 {
> > +				reg = <8>;
> > +				regulator-compatible = "LDO3";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo4: LDO4 {
> > +				reg = <9>;
> > +				regulator-compatible = "LDO4";
> > +				regulator-min-microvolt = <800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo5: LDO5 {
> > +				reg = <10>;
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
> > +		clocks = <&rtcclkout>;
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
> > +
> 
> Too many line breaks.

Oh, I will remove this.

Thank you for the review.

Teresa
> 
> Best regards,
> Krzysztof

