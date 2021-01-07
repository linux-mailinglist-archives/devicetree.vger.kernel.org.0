Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00D862ECABA
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 08:01:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725916AbhAGG55 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 01:57:57 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:56860 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726752AbhAGG55 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 01:57:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1610002635; x=1612594635;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=qlIYyx2dKbyzQPLxoTo8MZiCWD1AYCgVDcO/IGZU0jw=;
        b=QA8uAM/aZOlthZesYpxPd48v+N11Xej1mKt69KF3ImdUBHgR61PzF/kJ7QQ6MltU
        CwzOHrvnbUOehUPmANbewzSv1JFO6A4hbHMMuqcrhN9Xbai/HQNGCfMAE0ZK2ASr
        UwZs/0Myqj41kmHMC09LBfAoOJF5fSnTp41OoFbLBKo=;
X-AuditID: c39127d2-0c7b670000001c86-91-5ff6b0cbba6b
Received: from Berlix.phytec.de (Berlix.phytec.de [172.16.0.117])
        (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id FC.A0.07302.BC0B6FF5; Thu,  7 Jan 2021 07:57:15 +0100 (CET)
Received: from llp-tremmet (172.16.0.116) by Berlix.phytec.de (172.16.0.117)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Thu, 7 Jan 2021
 07:57:14 +0100
Message-ID: <39e830a329225b1f06c77ffaef8ed2ae5fe864fb.camel@phytec.de>
Subject: Re: [PATCH v3 4/4] arm64: dts: freescale: Add support for
 phyBOARD-Pollux-i.MX8MP
From:   Teresa Remmet <t.remmet@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Date:   Thu, 7 Jan 2021 07:57:14 +0100
In-Reply-To: <20210107062234.GE28365@dragon>
References: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
         <1607694535-417799-5-git-send-email-t.remmet@phytec.de>
         <20210107062234.GE28365@dragon>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Originating-IP: [172.16.0.116]
X-ClientProxiedBy: Berlix.phytec.de (172.16.0.117) To Berlix.phytec.de
 (172.16.0.117)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMLMWRmVeSWpSXmKPExsWyRoChVPf0hm/xBu/eclv0HWSyeL+sh9Fi
        /pFzrBYPr/pbnD+/gd1i0+NrrBate4+wW/zdvonF4sUWcQdOjzXz1jB67Jx1l91j06pONo/N
        S+o9+v8aeKyb+57d4/MmuQD2KC6blNSczLLUIn27BK6M0+seMxe81Kr40HaTpYHxiXwXIweH
        hICJxNHlGl2MXBxCAsuYJHYe/coE4dxmlPjyeTp7FyMnB6+Am0Tz65dsILawQIzElccrWEFs
        NgENiacrTjOB2CICyhKnNvaxgzQzC2wEmvRlDSNIgkVAReLP6VXMIDangI5E46QzjBAbFjJK
        HL+0GKybWUBTonX7b7BtogJqEnuO3WOF2CwocXLmExaIGnmJ7W/ngA0SArJ3XToJtkBCQEFi
        7u+JzBB2uMTbU7+ZJzAKzUIydhaSUbOQjFrAyLyKUSg3Mzk7tSgzW68go7IkNVkvJXUTIzBi
        Dk9Uv7SDsW+OxyFGJg7GQ4wSHMxKIrwWx77EC/GmJFZWpRblxxeV5qQWH2KU5mBREufdwFsS
        JiSQnliSmp2aWpBaBJNl4uCUamAsTi7iFbk3b8VnueWKh+6+NHimtPjujZkLri9sO/2JS99C
        IcNg3s/eb5NbJnZFH+mYVG+6ZeIlccbrxs932r/oZz7wRvLC4V8XVx7+npQYtK1n3jeuYJ/u
        GzfrbXwt5Vh55t1IPVwRPc1kkZCATqFvuaPbnWe+1kx7P7z5/P7mGp5Pf+85nXwwXYmlOCPR
        UIu5qDgRAB48lSyGAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Shawn,

Am Donnerstag, den 07.01.2021, 14:22 +0800 schrieb Shawn Guo:
> On Fri, Dec 11, 2020 at 02:48:55PM +0100, Teresa Remmet wrote:
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
> > Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  arch/arm64/boot/dts/freescale/Makefile             |   1 +
> >  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 163
> > ++++++++++++
> >  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 296
> > +++++++++++++++++++++
> >  3 files changed, 460 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > pollux-rdk.dts
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-
> > som.dtsi
> > 
> > 

[...]

> > +}
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
> 
> Undocumented property?

yes it is undocumented but used by the drivers/net/phy/dp83867.c
eth phy driver.

> 
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
> 
> Unneeded 'okay' status.
> 
> > +	};
> > +
> > +	rv3028: rtc@52 {
> > +		compatible = "microcrystal,rv3028";
> > +		reg = <0x52>;
> > +		trickle-resistor-ohms = <1000>;
> > +		enable-level-switching-mode;
> 
> Undocumented property?

This is a downstream leftover. I will remove it. 
Same with the unneeded status properties.

Thank you for the review.

Teresa


> 
> Shawn
> 

