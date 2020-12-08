Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8E622D2A06
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 12:54:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729214AbgLHLyF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 06:54:05 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:60896 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727358AbgLHLyF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 06:54:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607428403; x=1610020403;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:Mime-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Pv0hdFwH5Ot6gogFptPA/1REU2aWrAVkmoARg7K7BeA=;
        b=LCteNtr5RRGaVWXnCA3hEeqQZGP1i7u5FV+ly2Te2L2yJTQcYM1tHmBY6uVxIzZq
        czi0CqIr1qR9tJw5bh7LOxvLwA1XTWpss8iDOiemaS3HT6FZKatTE18QYsw/ysLD
        ziBgdXGru3aWFGXxf4riESMCqGSFAroH0Z0/AKll52g=;
X-AuditID: c39127d2-981ff70000006435-5a-5fcf69339373
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 60.41.25653.3396FCF5; Tue,  8 Dec 2020 12:53:23 +0100 (CET)
Received: from llp-tremmet ([172.16.5.100])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120812532290-937913 ;
          Tue, 8 Dec 2020 12:53:22 +0100 
Message-ID: <ba6299a58ffd841c045a75d544a04b3d55c65cad.camel@phytec.de>
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
Date:   Tue, 08 Dec 2020 12:53:22 +0100
In-Reply-To: <20201207134618.GA33960@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
         <1607113982-109524-5-git-send-email-t.remmet@phytec.de>
         <20201207120951.GB27266@kozik-lap>
         <fcc57a9546bbd34f1e787d19c86f3ff8d1cadce2.camel@phytec.de>
         <20201207134618.GA33960@kozik-lap>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 12:53:22,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 12:53:23,
        Serialize complete at 08.12.2020 12:53:23
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHLMWRmVeSWpSXmKPExsWyRoCBS9c483y8wb7d7Bbvl/UwWsw/co7V
        4uFVf4vz5zewW2x6fI3VonXvEXaLv9s3sVi82CLuwOGxZt4aRo+ds+6ye2xa1cnmsXlJvUf/
        XwOPz5vkAtiiuGxSUnMyy1KL9O0SuDKOnn/PVvAosWLng8WsDYzHPLoYOTkkBEwkDh/ZxtLF
        yMUhJLCVUWLzujlsEM4xRomeswtYQap4Bdwk3n14wwhiCwtESszeeYgNxGYT0JB4uuI0E4gt
        IqApcf3vd1aQZmaBv4wSyxe/YwFJsAioSty9fAVsEKeAvsTRC42MEBs6mCS650BskBDQkfhw
        /xNQggNom6DE3x3CIDUSAo1MElev3GaEqBGSOL34LDOIzSwgL7H97RwoW1Oidftv9gmMgrMQ
        2mchqZqFpGoBI/MqRqHczOTs1KLMbL2CjMqS1GS9lNRNjMA4ODxR/dIOxr45HocYmTgYDzFK
        cDArifCqSZ2NF+JNSaysSi3Kjy8qzUktPsQozcGiJM67gbckTEggPbEkNTs1tSC1CCbLxMEp
        1cDYuJSf5a/RnpNMe9L1tpQvbZgg6PLSbNa5BdNf+YooMXn8jvn2sdK2uH16+LvlBpkcG8/Z
        tX8U4u9c2DHZjrnU2PLoi5tvaw5kTV87Y7LQzwrnGUs21R8/8SajtL5cfOnbzd3lH++I3ymq
        ttveoOk8f6fOPKWVV6codm6anLOf1TQ02C222fuTEktxRqKhFnNRcSIAIPYM0XECAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

Am Montag, den 07.12.2020, 14:46 +0100 schrieb Krzysztof Kozlowski:
> On Mon, Dec 07, 2020 at 02:35:33PM +0100, Teresa Remmet wrote:
> > Hello Krzysztof,
> > 
> > Am Montag, den 07.12.2020, 13:09 +0100 schrieb Krzysztof Kozlowski:
> > > On Fri, Dec 04, 2020 at 09:33:02PM +0100, Teresa Remmet wrote:
> > > > Add initial support for phyBOARD-Pollux-i.MX8MP.
> > > > Supported basic features:
> > > > 	* eMMC
> > > > 	* i2c EEPROM
> > > > 	* i2c RTC
> > > > 	* i2c LED
> > > > 	* PMIC
> > > > 	* debug UART
> > > > 	* SD card
> > > > 	* 1Gbit Ethernet (fec)
> > > > 	* watchdog
> > > > 
> > > > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > > > ---
> > > >  arch/arm64/boot/dts/freescale/Makefile             |   1 +
> > > >  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   |  16 ++
> > > >  .../boot/dts/freescale/imx8mp-phyboard-pollux.dtsi | 152
> > > > ++++++++++
> > > >  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 319
> > > > +++++++++++++++++++++
> > > >  4 files changed, 488 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > phyboard-
> > > > pollux-rdk.dts
> > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > phyboard-
> > > > pollux.dtsi
> > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > phycore-
> > > > som.dtsi
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/freescale/Makefile
> > > > b/arch/arm64/boot/dts/freescale/Makefile
> > > > index acfb8af45912..a43b496678be 100644
> > > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > > @@ -37,6 +37,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> > > > +dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > > > pollux-
> > > > rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-
> > > > rdk.dts
> > > > new file mode 100644
> > > > index 000000000000..dd64be32c99d
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-
> > > > rdk.dts
> > > > @@ -0,0 +1,16 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > > > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > > > + */
> > > > +
> > > > +/dts-v1/;
> > > > +
> > > > +#include "imx8mp-phycore-som.dtsi"
> > > > +#include "imx8mp-phyboard-pollux.dtsi"
> > > > +
> > > > +/ {
> > > > +	model = "PHYTEC phyBOARD-Pollux i.MX8MP";
> > > > +	compatible = "phytec,imx8mp-phyboard-pollux-rdk",
> > > > +		     "phytec,imx8mp-phycore-som", "fsl,imx8mp";
> > > 
> > > This is the purpose of this file? Why having a DTS to include
> > > DTSI
> > > only?
> > > Usually there is just DTSI for SOM and DTS fot the board.
> > 
> > we have different options for the SoMs. Like SPI-NOR flash mounted
> > or
> > not. We usually add this to the SoM include, but disable it. We
> > enable
> > this in the dts if mounted. This makes it easy to generate
> > different
> > device trees for different SoM options. So far upstream is not
> > every
> > feature supported. So we don't do anything in the dts yet. But I
> > want
> > to setup the layout already.
> > 
> > I hope this makes it clear.
> 
> You make the upstream DTSes more complicated to make it easier for
> downstream. No, this does not work this way. You can either upstream
> other DTSes so such split will make sense, or this contribution
> should
> make sense in the upstreamed state.
> 
> In the second case, by "matching upstreamed state" I mean that you
> organize your DTSes in a way they make sense for upstream, for
> example
> one DTSI for the SOM and one DTS for the board using it.

Ok, then i will change it now like you suggested and rework it later
after more features are available.

> 
> > 
> > > 
> > > > +};
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > > > pollux.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > > > pollux.dtsi
> > > > new file mode 100644
> > > > index 000000000000..dbeaa27eb043
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux.dtsi
> > > > @@ -0,0 +1,152 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > > > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > > > + */
> > > > +
> > > > +#include <dt-bindings/leds/leds-pca9532.h>
> > > > +#include <dt-bindings/pwm/pwm.h>
> > > > +
> > > > +/ {
> > > > +	chosen {
> > > > +		stdout-path = &uart2;
> > > > +	};
> > > > +
> > > > +	reg_usdhc2_vmmc: regulator-usdhc2 {
> > > > +		compatible = "regulator-fixed";
> > > > +		regulator-name = "VSD_3V3";
> > > > +		regulator-min-microvolt = <3300000>;
> > > > +		regulator-max-microvolt = <3300000>;
> > > > +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> > > > +		enable-active-high;
> > > > +		startup-delay-us = <100>;
> > > > +		off-on-delay-us = <12000>;
> > > > +	};
> > > > +};
> > > > +
> > > > +&i2c2 {
> > > > +	clock-frequency = <400000>;
> > > > +	pinctrl-names = "default";
> > > > +	pinctrl-0 = <&pinctrl_i2c2>;
> > > > +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
> > > > +	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH |
> > > > GPIO_OPEN_DRAIN)>;
> > > > +	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH |
> > > > GPIO_OPEN_DRAIN)>;
> > > > +	status = "okay";
> > > > +
> > > > +	eeprom@51 {
> > > > +		compatible = "atmel,24c02";
> > > > +		reg = <0x51>;
> > > > +		pagesize = <16>;
> > > > +		status = "okay";
> > > > +	};
> > > > +
> > > > +	leddimmer@62 {
> > > 
> > > I think name "leds" is more appropriate.
> > 
> > okay I will change it.
> > 
> > > 
> > > > +		compatible = "nxp,pca9533";
> > > > +		reg = <0x62>;
> > > > +		status = "okay";
> > > > +
> > > > +		led1 {
> > > > +			label = "red:user1";
> > > > +			type = <PCA9532_TYPE_LED>;
> > > > +		};
> > > > +
> > > > +		led2 {
> > > > +			label = "green:user2";
> > > > +			type = <PCA9532_TYPE_LED>;
> > > > +		};
> > > > +
> > > > +		led3 {
> > > > +			label = "blue:user3";
> > > > +			type = <PCA9532_TYPE_LED>;
> > > > +		};
> > > > +	};
> > > > +};
> > > > +
> > > > +&snvs_pwrkey {
> > > > +	status = "okay";
> > > > +};
> > > > +
> > > > +/* debug console */
> > > > +&uart2 {
> > > > +	pinctrl-names = "default";
> > > > +	pinctrl-0 = <&pinctrl_uart2>;
> > > > +	status = "okay";
> > > > +};
> > > > +
> > > > +/* SD-Card */
> > > > +&usdhc2 {
> > > > +	pinctrl-names = "default", "state_100mhz",
> > > > "state_200mhz";
> > > > +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_pins>;
> > > > +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>,
> > > > <&pinctrl_usdhc2_pins>;
> > > > +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>,
> > > > <&pinctrl_usdhc2_pins>;
> > > > +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> > > > +	vmmc-supply = <&reg_usdhc2_vmmc>;
> > > > +	bus-width = <4>;
> > > > +	status = "okay";
> > > > +};
> > > > +
> > > > +&iomuxc {
> > > > +	pinctrl_i2c2: i2c2grp {
> > > > +		fsl,pins = <
> > > > +			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL		
> > > > 0x4
> > > > 00001c3
> > > > +			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA		
> > > > 0x4
> > > > 00001c3
> > > > +		>;
> > > > +	};
> > > > +
> > > > +	pinctrl_i2c2_gpio: i2c2gpiogrp {
> > > > +		fsl,pins = <
> > > > +			MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16	
> > > > 0x1e3
> > > > +			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17	
> > > > 0x1e3
> > > > +		>;
> > > > +	};
> > > > +
> > > > +	pinctrl_uart2: uart2grp {
> > > > +		fsl,pins = <
> > > > +			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	
> > > > 0x4
> > > > 9
> > > > +			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	
> > > > 0x4
> > > > 9
> > > > +		>;
> > > > +	};
> > > > +
> > > > +	pinctrl_usdhc2_pins: usdhc2-gpiogrp {
> > > > +		fsl,pins = <
> > > > +			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12	
> > > > 0x1c4
> > > > +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	
> > > > 0x4
> > > > 1
> > > > +		>;
> > > > +	};
> > > > +
> > > > +	pinctrl_usdhc2: usdhc2grp {
> > > > +		fsl,pins = <
> > > > +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	
> > > > 0x190
> > > > +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	
> > > > 0x1d0
> > > > +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	
> > > > 0x1
> > > > d0
> > > > +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	
> > > > 0x1
> > > > d0
> > > > +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	
> > > > 0x1
> > > > d0
> > > > +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	
> > > > 0x1
> > > > d0
> > > > +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT
> > > > 	0xc
> > > > 1
> > > > +		>;
> > > > +	};
> > > > +
> > > > +	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
> > > > +		fsl,pins = <
> > > > +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	
> > > > 0x194
> > > > +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	
> > > > 0x1d4
> > > > +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	
> > > > 0x1
> > > > d4
> > > > +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	
> > > > 0x1
> > > > d4
> > > > +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	
> > > > 0x1
> > > > d4
> > > > +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	
> > > > 0x1
> > > > d4
> > > > +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT
> > > > 	0xc
> > > > 1
> > > > +		>;
> > > > +	};
> > > > +
> > > > +	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> > > > +		fsl,pins = <
> > > > +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	
> > > > 0x196
> > > > +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	
> > > > 0x1d6
> > > > +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	
> > > > 0x1
> > > > d6
> > > > +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	
> > > > 0x1
> > > > d6
> > > > +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	
> > > > 0x1
> > > > d6
> > > > +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	
> > > > 0x1
> > > > d6
> > > > +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT
> > > > 	0xc
> > > > 1
> > > > +		>;
> > > > +	};
> > > > +};
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phycore-
> > > > som.dtsi
> > > > b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> > > > new file mode 100644
> > > > index 000000000000..e1fdfebd8142
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> > > > @@ -0,0 +1,319 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > > > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > > > + */
> > > > +
> > > > +#include <dt-bindings/net/ti-dp83867.h>
> > > > +#include "imx8mp.dtsi"
> > > > +
> > > > +/ {
> > > > +	model = "PHYTEC phyCORE-i.MX8MP";
> > > > +	compatible = "phytec,imx8mp-phycore-som", "fsl,imx8mp";
> > > > +
> > > > +	aliases {
> > > > +		rtc0 = &rv3028;
> > > > +		rtc1 = &snvs_rtc;
> > > > +	};
> > > > +
> > > > +	memory@40000000 {
> > > > +		device_type = "memory";
> > > > +		reg = <0x0 0x40000000 0 0x80000000>;
> > > > +	};
> > > > +
> > > > +	rtcclkout: rv3028-clkout {
> > > 
> > > Is it really a separate oscillator giving 32 kHz? Or maybe this
> > > is
> > > actually part of PMIC?
> > 
> > It is a clock out of the used i2c rtc. Which I actually trying to
> > disable. As it is not connected. But it is enabled as default.
> 
> This does not make sense at all:
> 1. This is a node without any reference to hardware,
> 2. It is being disabled in DTS so it will not have any effect in
> kernel
>    therefore will not have any impact on real hardware,

I measured it. I could see that the clock was being disabled. But yes
it does not feel like correct solution and needs more investigation.
I was not able to find the correct property modification.
Will remove this for now and find a proper solution afterwards. It does
not have impact on the functionality if it is enabled or not.
So I will remove the clock part in v2.

Regards,
Teresa

> 3. The RV3028 RTC takes it as phandle... but RV3028 RTC is a clock
>    provider, not a consumer.
> 
> If you want to disable RV3028 RTC clock, you need to modify it's
> properties, not add fake nodes.
> 
> Best regards,
> Krzysztof

