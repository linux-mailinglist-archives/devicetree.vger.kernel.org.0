Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E5E833BFB8
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 16:30:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230481AbhCOP3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 11:29:36 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:60821 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231245AbhCOP3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Mar 2021 11:29:09 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 1CB355C018F;
        Mon, 15 Mar 2021 11:29:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 15 Mar 2021 11:29:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=6Z4T2CPJAEVOYc0t54l3KRcWzeT
        zfZPedHFtNh7IdAo=; b=RntAKagu7ceOTOIyyKSO7gU+qaixpYIHWk8Lid5GqM4
        txmFmbCJeKjiop4K8TveKrBfFtqxOv5bcfL6U274XxmOqTBJ0l7RSHy4cwpcAKDP
        31ZA9UnAr+plQ42YZQDYz+7UGPtfEbTdAq5g+se14ThtRVGaDmut8oEi8LYqeSQA
        kHkz9Xb028FCqPoxDrRv58boAuOfdDPWIUuSR9DqIAFnvKgg7JCMMspS6KBFnSl8
        Jf5GcIfSy9bqUH5rXNR3pt/5Y/92+hCh0oZRXFMBe0J8vHg9hSuMOrGkIIBGvNjt
        X1bP4PNaA3bDOPCB8Dl6LHBQq/4Rq3qTxJ+yPj8Gq2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6Z4T2C
        PJAEVOYc0t54l3KRcWzeTzfZPedHFtNh7IdAo=; b=ic9yfYIGGWLXcc5Z0ho3nz
        VNb1njoOU0XqSqperi9felb+SxrvUuwRWh7TDsDQMA+J/ULp3AWqQfifhrfYmuZ4
        ZETyKcsYLVht97SDKJQtPZeoYT31FDRTZsvzs1dKICBHsNmL3O6vYCQO+UKmwQeo
        IByGihr8Gek665QhN94mFZOE6I7AHphWlAF9KVehrOqMs381H+nlyUajFvH4zV26
        ffXpSq9xer0ZMlMmL3gyG+yI9nI1JKvuQBX9UDUMIwtS/PM1WSTVyqTDDkQ2eEN5
        nm3NndlaDV3nXqWuj1mdRdIjGcctbEfZ0afKuYjnUzSqB1fySharmTDwvD7Gyu4g
        ==
X-ME-Sender: <xms:Q31PYJmDQMqhmJqwtRSZukK993mIsnu8_V3XBQKux4O9wjRcDJpaLA>
    <xme:Q31PYCqM3-sVPLRMRBr3R7YxSI2MJfL8WudVHMgJuHt8mnkQBEfAoP6M_HuwnTRB3
    AQv9fc3GobofEO1D1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddvledgjeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnheptdfggfelgeehieeuieegfefgueduudefheffhfejleekheefjeevveegueel
    ueefnecuffhomhgrihhnpehlihhnuhigqdhsuhhngihirdhorhhgnecukfhppeeltddrke
    elrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Q31PYKGfFZZtKWleL68ai7Nj1X9Bu_qSCX7YwZftszo3XLGjn8yy9A>
    <xmx:Q31PYGzroWmgmyd3cNGZ69qMW1mu2q69YDhVH_3uWR8aDuZWOwlkEQ>
    <xmx:Q31PYHpY76oQPUHfvLmA6Je9dbt0Ek0LD83geHH9qLvWka0kSGa65g>
    <xmx:RX1PYMLvtGYiXtf8-R3QZ3H9tS2nXTDg7nkyA8tWw6lVxPLtlPj1xQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 2337E24005A;
        Mon, 15 Mar 2021 11:29:07 -0400 (EDT)
Date:   Mon, 15 Mar 2021 16:29:04 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v1] ARM: dts: sun8i: r40: add dts for Forlinx FETA40i-C &
 OKA40i-C
Message-ID: <20210315152904.gqwie3xnmizvid3w@gilmour>
References: <20210311153056.69337f0a@NervousEnergy>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vzwq4gzp2mhf4ctf"
Content-Disposition: inline
In-Reply-To: <20210311153056.69337f0a@NervousEnergy>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--vzwq4gzp2mhf4ctf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

You seem to have some issues with your mailer that mangles the mail, you
should try using git-send-email instead.

There's also a bunch of checkpatch --strict issues you want to get rid
of.

On Thu, Mar 11, 2021 at 03:30:56PM +0300, Ivan Uvarov wrote:
> Add support for the Forlinx FETA40i-C SoM and OKA40i-C devboard[1]
> based on it. The DT is split into a .dtsi, which (hopefully) corresponds
> to the functions of the SoM itself, and a .dts for the devboard.
>=20
> [1]:https://linux-sunxi.org/Forlinx_OKA40i-C

Instead of a URL that might be dead at some point, it would be better to
have a proper commit log explaining why you did your patch that way

> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> ---
>=20
> draft2 -> v1:=20
>=20
> * fix indentation from spaces to tabs;
> * remove commented properties and other extraneous comments;
> * enable uarts 2,4,5&7 and alias uart3;
> * update the user-LED bindings;
> * remove mmc1 & add mmc3 binding;
> * bring together the max/min microvolts on three regulators;
>     * The 2.5v in ALDO2 came from U-Boot, where apparently this is the
>       KConfig default for this regulator. The correct voltage is 1.8v.
> * remove extraneous `always-on`s from regulators dldo1 and eldo2/3;
> * remove reg_dldo3 node entirely.
>=20
>  arch/arm/boot/dts/Makefile               |   1 +
>  arch/arm/boot/dts/sun8i-r40-feta40i.dtsi |  68 +++++++
>  arch/arm/boot/dts/sun8i-r40-oka40i-c.dts | 245 +++++++++++++++++++++++
>  arch/arm/boot/dts/sun8i-r40.dtsi         |  35 ++++
>  4 files changed, 349 insertions(+)
>  create mode 100644 arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
>  create mode 100644 arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
>=20
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 8e5d4ab4e7..88aae9de95 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1222,6 +1222,7 @@ dtb-$(CONFIG_MACH_SUN8I) +=3D \
>  	sun8i-r16-nintendo-super-nes-classic.dtb \
>  	sun8i-r16-parrot.dtb \
>  	sun8i-r40-bananapi-m2-ultra.dtb \
> +	sun8i-r40-oka40i-c.dtb \
>  	sun8i-s3-elimo-initium.dtb \
>  	sun8i-s3-lichee-zero-plus.dtb \
>  	sun8i-s3-pinecube.dtb \
> diff --git a/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
> b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi new file mode 100644
> index 0000000000..4764661849
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
> +// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:=20
> +//  Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
> +//  Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> +
> +
> +#include "sun8i-r40.dtsi"
> +
> +
> +&i2c0 {
> +	status =3D "okay";
> +
> +	axp22x: pmic@34 {
> +		compatible =3D "x-powers,axp221";
> +		reg =3D <0x34>;
> +		interrupt-parent =3D <&nmi_intc>;
> +		interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +#include "axp22x.dtsi"
> +
> +&mmc2 {
> +	vmmc-supply =3D <&reg_dcdc1>;
> +	vqmmc-supply =3D <&reg_aldo2>;
> +	bus-width =3D <8>;
> +	non-removable;
> +	status =3D "okay";
> +};
> +
> +
> +&pio {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&clk_out_a_pin>;
> +	vcc-pa-supply =3D <&reg_dcdc1>;
> +	vcc-pc-supply =3D <&reg_aldo2>;
> +	vcc-pd-supply =3D <&reg_dcdc1>;
> +	vcc-pf-supply =3D <&reg_dldo4>;
> +	vcc-pg-supply =3D <&reg_dldo1>;
> +};
> +
> +&reg_aldo2 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <1800000>;
> +	regulator-max-microvolt =3D <1800000>;
> +	regulator-name =3D "vcc-pa";
> +};
> +
> +&reg_dcdc1 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-3v3";
> +};
> +
> +&reg_dldo1 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-wifi-io";=20
> +};
> +
> +&reg_dldo4 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <2500000>;
> +	regulator-max-microvolt =3D <2500000>;
> +	regulator-name =3D "vdd2v5-sata";
> +};
> diff --git a/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
> b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts new file mode 100644
> index 0000000000..ae06dd72c9
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
> @@ -0,0 +1,245 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
> +// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:=20
> +//	Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
> +//	Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> +
> +/dts-v1/;
> +#include "sun8i-r40-feta40i.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model =3D "Forlinx OKA40i-C";
> +	compatible =3D "forlinx,oka40i-c", "allwinner,sun8i-r40";
> +
> +	aliases {
> +		ethernet0 =3D &gmac;
> +		serial0 =3D &uart0;
> +		serial2 =3D &uart2;
> +		serial3 =3D &uart3;
> +		serial4 =3D &uart4;
> +		serial5 =3D &uart5; /* RS485 */
> +		serial7 =3D &uart7;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +	};
> +
> +	connector {
> +		compatible =3D "hdmi-connector";
> +		type =3D "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint =3D <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led-5 {
> +			gpios =3D <&pio 7 26 GPIO_ACTIVE_LOW>; /* PH26 */
> +			color =3D <LED_COLOR_ID_BLUE>;
> +			function =3D LED_FUNCTION_STATUS;
> +		};
> +
> +		led-6 {
> +			gpios =3D <&pio 8 15 GPIO_ACTIVE_LOW>; /* PI15 */
> +			color =3D <LED_COLOR_ID_BLUE>;
> +			function =3D LED_FUNCTION_STATUS;
> +		};
> +	};
> +
> +	reg_vcc5v0: vcc5v0 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc5v0";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible =3D "mmc-pwrseq-simple";
> +		reset-gpios =3D <&pio 1 10 GPIO_ACTIVE_LOW>; // PB10
> WIFI_EN
> +		clocks =3D <&ccu CLK_OUTA>;
> +		clock-names =3D "ext_clock";
> +	};
> +};
> +
> +&ahci {
> +	ahci-supply =3D <&reg_dldo4>;
> +	phy-supply =3D <&reg_eldo2>;
> +	status =3D "okay";
> +};
> +
> +&de {
> +	status =3D "okay";
> +};
> +
> +&ehci1 {
> +	status =3D "okay";
> +};
> +
> +&ehci2 {
> +	status =3D "okay";
> +};
> +
> +&gmac {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&gmac_rgmii_pins>;
> +	phy-handle =3D <&phy1>;
> +	phy-mode =3D "rgmii-id";
> +	phy-supply =3D <&reg_dcdc1>;
> +	status =3D "okay";
> +};
> +
> +&gmac_mdio {
> +	phy1: ethernet-phy@1 {
> +		compatible =3D "ethernet-phy-ieee802.3-c22";
> +		reg =3D <1>;
> +	};
> +};
> +
> +&hdmi {
> +	status =3D "okay";
> +};
> +
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint =3D <&hdmi_con_in>;
> +	};
> +};
> +
> +
> +&i2c2 {
> +	status =3D "okay";
> +};
> +
> +
> +&mmc0 {
> +	vmmc-supply =3D <&reg_dcdc1>;
> +	vqmmc-supply =3D <&reg_dcdc1>;
> +	bus-width =3D <4>;
> +	cd-gpios =3D <&pio 8 11 GPIO_ACTIVE_LOW>; // PI11
> +	status =3D "okay";
> +};
> +
> +&mmc3 {
> +	vmmc-supply =3D <&reg_dcdc1>;
> +	vqmmc-supply =3D <&reg_dcdc1>;
> +	bus-width =3D <4>;
> +	cd-gpios =3D <&pio 8 10 GPIO_ACTIVE_LOW>; // PI10
> +	status =3D "okay";
> +};
> +
> +&ohci1 {
> +	status =3D "okay";
> +};
> +
> +&ohci2 {
> +	status =3D "okay";
> +};
> +
> +&reg_aldo3 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <3000000>;
> +	regulator-max-microvolt =3D <3000000>;
> +	regulator-name =3D "avcc";
> +};
> +
> +&reg_dc1sw {
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-lcd";
> +};
> +
> +&reg_dcdc2 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <1100000>;
> +	regulator-max-microvolt =3D <1100000>;
> +	regulator-name =3D "vdd-cpu";
> +};
> +
> +&reg_dcdc3 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <1100000>;
> +	regulator-max-microvolt =3D <1100000>;
> +	regulator-name =3D "vdd-sys";
> +};
> +
> +&reg_dcdc5 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <1500000>;
> +	regulator-max-microvolt =3D <1500000>;
> +	regulator-name =3D "vcc-dram";
> +};
> +
> +&reg_dldo2 {
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-wifi";
> +};
> +
> +&reg_eldo2 {
> +	regulator-min-microvolt =3D <1200000>;
> +	regulator-max-microvolt =3D <1200000>;
> +	regulator-name =3D "vdd1v2-sata";
> +};
> +
> +&reg_eldo3 {
> +	regulator-min-microvolt =3D <2800000>;
> +	regulator-max-microvolt =3D <2800000>;
> +	regulator-name =3D "vcc-pe";
> +};
> +
> +&tcon_tv0 {
> +	status =3D "okay";
> +};
> +
> +&uart0 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart0_pb_pins>;
> +	status =3D "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart2_pi_pins>, <&uart2_rts_cts_pi_pins>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart3_pg_pins>, <&uart3_rts_cts_pg_pins>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart4_pg_pins>;
> +	status =3D "okay";
> +};
> +
> +&uart5 { /* RS485 */
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart5_ph_pins>;
> +	status =3D "okay";
> +};
> +
> +&uart7 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart7_pi_pins>;
> +	status =3D "okay";
> +};
> +
> +&usbphy {
> +	usb1_vbus-supply =3D <&reg_vcc5v0>;
> +	usb2_vbus-supply =3D <&reg_vcc5v0>;
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi
> b/arch/arm/boot/dts/sun8i-r40.dtsi index d5ad3b9efd..0fe3a8fcd4 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -357,6 +357,8 @@ mmc3: mmc@1c12000 {
>  			clock-names =3D "ahb", "mmc";
>  			resets =3D <&ccu RST_BUS_MMC3>;
>  			reset-names =3D "ahb";
> +			pinctrl-0 =3D <&mmc3_pins>;
> +			pinctrl-names =3D "default";
>  			interrupts =3D <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
>  			status =3D "disabled";
>  			#address-cells =3D <1>;
> @@ -601,6 +603,14 @@ mmc2_pins: mmc2-pins {
>  				bias-pull-up;
>  			};
> =20
> +			mmc3_pins: mmc3-pins {
> +				pins =3D "PI4", "PI5", "PI6",
> +				       "PI7", "PI8", "PI9";
> +				function =3D "mmc3";
> +				drive-strength =3D <30>;
> +				bias-pull-up;
> +			};
> +

This should be in a separate patch

>  			/omit-if-no-ref/
>  			spi0_pc_pins: spi0-pc-pins {
>  				pins =3D "PC0", "PC1", "PC2";
> @@ -636,6 +646,16 @@ uart0_pb_pins: uart0-pb-pins {
>  				function =3D "uart0";
>  			};
> =20
> +			uart2_pi_pins: uart2-pi-pins {
> +				pins =3D "PI18", "PI19";
> +				function =3D "uart2";
> +			};
> +
> +			uart2_rts_cts_pi_pins: uart2-rts-cts-pi-pins{
> +				pins =3D "PI16", "PI17";
> +				function =3D "uart2";
> +			};
> +

Ditto, and it should have /omit-if-no-ref/

>  			uart3_pg_pins: uart3-pg-pins {
>  				pins =3D "PG6", "PG7";
>  				function =3D "uart3";
> @@ -645,6 +665,21 @@ uart3_rts_cts_pg_pins: uart3-rts-cts-pg-pins {
>  				pins =3D "PG8", "PG9";
>  				function =3D "uart3";
>  			};
> +
> +			uart4_pg_pins: uart4-pg-pins {
> +				pins =3D "PG10", "PG11";
> +				function =3D "uart4";
> +			};
> +
> +			uart5_ph_pins: uart5-ph-pins {
> +				pins =3D "PH6", "PH7";
> +				function =3D "uart5";
> +			};
> +
> +			uart7_pi_pins: uart7-pi-pins {
> +				pins =3D "PI20", "PI21";
> +				function =3D "uart7";
> +			};

Ditto

maxime

--vzwq4gzp2mhf4ctf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYE99QAAKCRDj7w1vZxhR
xRnbAP0X3ffJ19nKPSz32XTyGQm1ow6LhAxn3pfUCw7b+KOg/QD/bvRMPEPVEJmJ
3fbdWwUMHKcMp21Fz1sPqFTF73l5lAU=
=MQtS
-----END PGP SIGNATURE-----

--vzwq4gzp2mhf4ctf--
