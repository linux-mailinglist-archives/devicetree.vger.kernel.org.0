Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E63CD32C09C
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1579638AbhCCSbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:31:45 -0500
Received: from foss.arm.com ([217.140.110.172]:47514 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S241229AbhCCNJm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Mar 2021 08:09:42 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CD9131B;
        Wed,  3 Mar 2021 05:08:40 -0800 (PST)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F025C3F766;
        Wed,  3 Mar 2021 05:08:38 -0800 (PST)
Date:   Wed, 3 Mar 2021 13:08:34 +0000
From:   Andre Przywara <andre.przywara@arm.com>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [draft2 PATCH] ARM: dts: sun8i: r40: add devicetree for
 FETA40i-C/OKA40i-C
Message-ID: <20210303130834.401cc50c@slackpad.fritz.box>
In-Reply-To: <c4c13d63-e319-48b5-17e6-26d9967aa66f@cognitivepilot.com>
References: <c4c13d63-e319-48b5-17e6-26d9967aa66f@cognitivepilot.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2 Mar 2021 13:54:15 +0300
Ivan Uvarov <i.uvarov@cognitivepilot.com> wrote:

Hi Ivan,

many thanks for spending the time in piecing this together and caring
about upstreaming!

> From: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> 
> This patch adds support for the Forlinx FETA40i-C SoM and OKA40i-C
> devboard[1] that is based on it. The devicetree is split into a .dtsi 
> which (hopefully) corresponds to the functions of the SoM itself and 
> a .dts for the devboard.
> 
> [1]:https://linux-sunxi.org/Forlinx_OKA40i-C
> 
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> ---
>  arch/arm/boot/dts/Makefile               |   1 +
>  arch/arm/boot/dts/sun8i-r40-feta40i.dtsi |  68 +++++++
>  arch/arm/boot/dts/sun8i-r40-oka40i-c.dts | 238 +++++++++++++++++++++++
>  3 files changed, 307 insertions(+)
>  create mode 100644 arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
>  create mode 100644 arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 8e5d4ab4e7..88aae9de95 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1222,6 +1222,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
>  	sun8i-r16-nintendo-super-nes-classic.dtb \
>  	sun8i-r16-parrot.dtb \
>  	sun8i-r40-bananapi-m2-ultra.dtb \
> +	sun8i-r40-oka40i-c.dtb \
>  	sun8i-s3-elimo-initium.dtb \
>  	sun8i-s3-lichee-zero-plus.dtb \
>  	sun8i-s3-pinecube.dtb \
> diff --git a/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
> new file mode 100644
> index 0000000000..edfb846db1
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
> +// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:
> +//  Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
> +//  Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
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
> +  non-removable;

Should be a TAB here.

And I don't know if this is just my client, but someone mangled equal
signs into "=3D" everywhere :-(
I am trying to ignore this for now ...
Can you force pure text email in Thunderbird? Or use git send-email?

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
> +	regulator-max-microvolt =3D <2500000>;
> +	regulator-name =3D "vcc-pa";
> +};//2500000uV reported by kernel

I think min and max should be the same in those cases. Do you know what
the recommended voltage is? Does the BSP report something?
PortA is used for Ethernet, is that using 2.5V as the signalling
voltage?

> +
> +&reg_dcdc1 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-3v3";
> +};
> +
> +
> +//I don't know whether these really belong here

Since it seems to be used above, for VCC_PG: yes.

> +&reg_dldo1 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-wifi-io";
> +};
> +
> +&reg_dldo4 {
> +	regulator-always-on;

Does this really need to be always on? If it's just for SATA, I'd
expect this to be enabled by the driver when needed? As you correctly do
in the ahci node below.

> +	regulator-min-microvolt =3D <2500000>;
> +	regulator-max-microvolt =3D <2500000>;
> +	regulator-name =3D "vdd2v5-sata";

Does this end prematurely here?

> diff --git a/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
> new file mode 100644
> index 0000000000..7e47cf633e
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
> @@ -0,0 +1,238 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
> +// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:
> +//  Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
> +//  Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> +
> +/dts-v1/;
> +#include "sun8i-r40-feta40i.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	model =3D "Forlinx OKA40i-C";
> +	compatible =3D "forlinx,oka40i-c", "allwinner,sun8i-r40";
> +
> +	aliases {
> +		ethernet0 =3D &gmac;
> +		serial0 =3D &uart0;
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
> +		user-led-5 {
> +			label =3D "oka40i:led5:user";

The current binding uses different properties:
		function = LED_FUNCTION_xxx;
		color = <LED_COLOR_ID_RED>;

> +			gpios =3D <&pio 7 26 GPIO_ACTIVE_LOW>;

I think it's customary to add the GPIO pin spelled out as a comment, so
		gpios = <&pio 7 26 GPIO_ACTIVE_LOW>; /* PH27 */

> +		};
> +
> +		user-led-6 {
> +			label =3D "oka40i:led6:user";
> +			gpios =3D <&pio 8 15 GPIO_ACTIVE_LOW>;
> +		};
> +
> +	};
> +
> +	reg_vcc5v0: vcc5v0 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc5v0";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		//gpio =3D <&pio 7 23 GPIO_ACTIVE_HIGH>; // PH23

Is that regulator switchable? If not, no need for commented lines, just
remove them. I don't see PH23 connected to a regulator on the board.

> +		//enable-active-high;

This is redundant anyway this the above GPIO_ACTIVE_HIGH.

> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible =3D "mmc-pwrseq-simple";
> +		reset-gpios =3D <&pio 1 10 GPIO_ACTIVE_LOW>; // PB10 WIFI_EN
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
> +&mmc1 {

So this is the SDIO connector on the board, right? Which is just a set
of header pins? Not sure we should have it in here, then.

> +	vmmc-supply =3D <&reg_dcdc1>;
> +	vqmmc-supply =3D <&reg_dcdc1>;
> +	mmc-pwrseq =3D <&wifi_pwrseq>;
> +	bus-width =3D <4>;
> +	status =3D "okay";
> +};

What about MMC3, which is apparently connected to a microSD slot (TF
card in the schematic)?

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
> +	regulator-max-microvolt =3D <1160000>;
> +	regulator-name =3D "vdd-cpu";
> +};//1100000uV reported by kernel

Again, this should be the one value then, for both min and max.

> +
> +&reg_dcdc3 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <1100000>;
> +	regulator-max-microvolt =3D <1200000>;
> +	regulator-name =3D "vdd-sys";
> +};//1100000uV reported by kernel

Same here.

> +
> +
> +&reg_dcdc5 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <1500000>;
> +	regulator-max-microvolt =3D <1500000>;
> +	regulator-name =3D "vcc-dram";
> +};
> +
> +&reg_dldo2 {
> +	// regulator-always-on;

Please, no commented properties.

> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-wifi";
> +};
> +
> +&reg_dldo3 { // possibly unneeded

If it's unneeded, you can drop it. If it turns out be needed later on,
we can always add it. Did the board work without it?
Did you try Wifi? We should not add untested features.

> +	// regulator-always-on;
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-wifi-2";
> +};
> +
> +&reg_eldo2 {
> +	regulator-always-on;

This shouldn't be always on. I guess this AXP pin is connected to the
VDD-SATA pin on the SoC, so it just drives the integrated SATA PHY.
Which probably means that this node belong into the SoM .dtsi, as the
connection is on the SoM. You just reference it from the ahci node here.

> +	regulator-min-microvolt =3D <1200000>;
> +	regulator-max-microvolt =3D <1200000>;
> +	regulator-name =3D "vdd1v2-sata";
> +};
> +
> +&reg_eldo3 {
> +	regulator-always-on;

Again, why always on? Do you know where this is connected to?
If this is VCC_PE on the SoC, then I wonder if this should be moved to
the SoM .dtsi, with a range between 1.8V and 3.3V, since those are
valid input voltages for the VCC_PE pin. And then here you overwrite
this with 2.8V, as this is apparently used for the CSI connector on the
board, which seems to work on 2.8V.
But I am not sure if this is too much, and just having this node here
is sufficient.

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
> +&uart3 {

Please add uart3 to the aliases section then.

Cheers,
Andre

> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart3_pg_pins>, <&uart3_rts_cts_pg_pins>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +
> +	bluetooth {
> +		compatible =3D "brcm,bcm43438-bt";
> +		clocks =3D <&ccu CLK_OUTA>;
> +		clock-names =3D "lpo";
> +		vbat-supply =3D <&reg_dldo2>;
> +		vddio-supply =3D <&reg_dldo1>;
> +		device-wakeup-gpios =3D <&pio 6 11 GPIO_ACTIVE_HIGH>; /* PG11 */
> +		/* TODO host wake line connected to PMIC GPIO pins */
> +		shutdown-gpios =3D <&pio 7 12 GPIO_ACTIVE_HIGH>; /* PH12 */
> +		max-speed =3D <1500000>;
> +	};
> +};
> +
> +&usbphy {
> +	usb1_vbus-supply =3D <&reg_vcc5v0>;
> +	usb2_vbus-supply =3D <&reg_vcc5v0>;
> +	status =3D "okay";
> +};

