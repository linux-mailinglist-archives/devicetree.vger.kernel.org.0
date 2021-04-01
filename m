Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EB7F351297
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 11:44:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233852AbhDAJoC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 05:44:02 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:36889 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233834AbhDAJn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 05:43:59 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 4C6895C00DD;
        Thu,  1 Apr 2021 05:43:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 01 Apr 2021 05:43:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=CSvswtvfkCSszoMU3CQ2+SPR48e
        s5IUk5BL4LSmUANc=; b=izcHGYdtR8kwPmt5ueG/a4wFMVVGrdtqsbIwQDudwtz
        j9Q3y1bn6WM//X6f0PhSPs2VXppKI1AYh5Lzz/ZT3IiX2OkbWZWgReN+csg/ireA
        03MPuGNpelLxghfjuEfXXuGhOys11CYE2O+Rs6rRzomz3+F8Sb6SzT65QbV+Td6h
        cmjq/JiI4s35zAgSeetx7xQNuLrn2N25wz0WCKqB1+GkaRwzp7saJ0QmeMbf5Egr
        pg/446adq2Q24FtiWlYL4BVryIYE2ZbLCqd59I5modJQBpuJXP+1C4fMAZ4OMH2A
        0XfzsseAt36NDCaIHs1PbyljOa7+qa7ACa9rn3MGhDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=CSvswt
        vfkCSszoMU3CQ2+SPR48es5IUk5BL4LSmUANc=; b=LnzQUWYgmKkztQWB0AQEX3
        3iT0U4F3Wb/ck5Ewn9DtVdkaA3vNxww2zT0chp91x9AzDPkCiMgza/OQzFuLv+Vv
        TnRhTZRKdno9XLVFCMSp1+QF3w2WWhdD9h3G1QFaxt6ReZz0/VdV7qtKcgjNwKWc
        a39vm5y04KySo9YCJ+lJIQVADwI74/a5N6DC4RjStMW4zQXF6XUwrdu+NFVw2eQR
        eVHMqCwe5IpzKw1pCgRLOXxjTGit7JLIJElaPuqD/cWfQ4p3qt7OU8nW7AdGoEXp
        KER1sKNOGa3TpSrG+6QKYJ0JqAIXSBHTnwUFptsadlJgfgJ38p9JLv3vINlqpNwA
        ==
X-ME-Sender: <xms:3pVlYJPEQPaTmAnCtTNQGKnYP_urPV_4RHPmfj9rcmGZ-fNrWmacUg>
    <xme:3pVlYL_gqQOmYxI2JdtapgiuTJYj_9gDSnN01Mj0WxnXJ4BAeaWNZe0e7Qt1NuD7P
    8QsJg6fd2rrVuhZMko>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudeigedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
    gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:3pVlYISjtPiSZJhJ3L-NxXTLFpm12qfXY-oHAWCV63FhoVB6P5snMA>
    <xmx:3pVlYFujZaqOpSSigMgwNe4IumnFj3yax14nV_oHBR-Kp_dajvxTOA>
    <xmx:3pVlYBcUMpxVq1ls05Q9FuSnXQJngcY5RQPloQL9G8vhBVEVFoHcKw>
    <xmx:35VlYKGlrc9m7tSpvEB3aVyXAdxiz02mgZF5wmnuClirYN8NF1Kb7Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id D8E2D108005C;
        Thu,  1 Apr 2021 05:43:57 -0400 (EDT)
Date:   Thu, 1 Apr 2021 11:43:56 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 4/4] ARM: dts: sun8i: r40: add devicetree for Forlinx
 FETA40i-C & OKA40i-C
Message-ID: <20210401094356.zhijxfoihw73ha7k@gilmour>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
 <20210331155616.793550-5-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ijeehcin2fsds2je"
Content-Disposition: inline
In-Reply-To: <20210331155616.793550-5-i.uvarov@cognitivepilot.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ijeehcin2fsds2je
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 31, 2021 at 06:56:16PM +0300, Ivan Uvarov wrote:
> The FETA40i-C is a SoM by Forlinx based on the Allwinner R40/A40i.
>=20
> SoM specifications:
>=20
> - SoC: R40 or A40i
> - PMIC: AXP221S
> - RAM: 1GiB/2GiB DDR3 (dual-rank)
> - eMMC: 8GB,
> - Mates with carrier board via four 80-pin connectors (AXK6F80337YG).
>=20
> OKA40i-C is a carrier board by the same manufacturer for this SoM,
> whose main purpose is as a development board with a wide variety of
> peripherals:
>=20
> - Power: DC5V barrel or USB OTG or 4.2V Lipo battery
> - Video out: HDMI, TV out, LVDS
> - WiFi+Bluetooth: RL-UM02WBS-8723BU-V1.2 (802.11 b/g/n, BT V2.1/3.0/4.0)
> - Ethernet: 10/100Mbps
> - Storage: =B5SD, fullsize SD, eMMC (on SoM), SATA
> - USB: 3 x USB2.0 Host (2 via hub, 1 native), 1 x USB2.0 OTG (micro-B)
> - UART: RS232, RS485, 4 3.3v uarts (of which 2 have RTS/CTS)
> - Other I/O: SPI x2, TWI, SDIO header, GPIO header, JTAG header
> - Mini PCIe slot with sim holder for WLAN modem
> - Smart card holder
> - RTC (RX8010SJ)
> - Two user LEDs
> - Three user buttons (via KeyADC).
>=20
> This patch adds a devicetree for the aforementioned SoM and devboard.
> In order to reflect the modularity of this devboard and simplify adding
> support for future hardware based on the same SoM, the devicetree is spli=
t:
> Everything pertaining to the SoM itself is described in a separate .dtsi
> file, which is included by the devboard's .dts.
>=20
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
>=20
>  3 files changed, 310 insertions(+)
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
> diff --git a/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi b/arch/arm/boot/dts=
/sun8i-r40-feta40i.dtsi
> new file mode 100644
> index 0000000000..265e0fa57a
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
> @@ -0,0 +1,106 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
> +// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:
> +//  Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
> +//  Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> +
> +#include "sun8i-r40.dtsi"
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
> +
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
> +&reg_aldo3 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <3000000>;
> +	regulator-max-microvolt =3D <3000000>;
> +	regulator-name =3D "avcc";
> +};
> +
> +&reg_dcdc1 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-3v3";
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
> +&reg_dldo1 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <3300000>;
> +	regulator-max-microvolt =3D <3300000>;
> +	regulator-name =3D "vcc-wifi-io";
> +};
> +
> +&reg_dldo4 {
> +	regulator-always-on;
> +	regulator-min-microvolt =3D <2500000>;
> +	regulator-max-microvolt =3D <2500000>;
> +	regulator-name =3D "vdd2v5-sata";
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
> diff --git a/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts b/arch/arm/boot/dts=
/sun8i-r40-oka40i-c.dts
> new file mode 100644
> index 0000000000..9305fda8d1
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
> @@ -0,0 +1,203 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
> +// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:
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
> +	compatible =3D "forlinx,oka40i-c", "forlinx,feta40i-c", "allwinner,sun8=
i-r40";
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
> +			color =3D <LED_COLOR_ID_GREEN>;
> +			function =3D LED_FUNCTION_STATUS;
> +		};
> +
> +		led-6 {
> +			gpios =3D <&pio 8 15 GPIO_ACTIVE_LOW>; /* PI15 */
> +			color =3D <LED_COLOR_ID_BLUE>;
> +			function =3D LED_FUNCTION_STATUS;
> +		};

led-5 and led-6? You can start at 0 :)

Looks good otherwise, thanks

Maxime

--ijeehcin2fsds2je
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYGWV3AAKCRDj7w1vZxhR
xeB/AP9TCjvb3gCgk/k2W51Wa+1vA8FyjJkZ6bmTYU6ge09CjgEAs8YsbTggUgUS
gJZrAGH6iFq/FU1jzw5jy5duUAsRygA=
=kBlu
-----END PGP SIGNATURE-----

--ijeehcin2fsds2je--
