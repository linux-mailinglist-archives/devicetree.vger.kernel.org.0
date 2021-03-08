Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29141330B08
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 11:25:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbhCHKZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 05:25:05 -0500
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:52107 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230169AbhCHKYc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 05:24:32 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 118D9203A;
        Mon,  8 Mar 2021 05:24:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 08 Mar 2021 05:24:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=vXNiMiHE83uglnwOB1FRjg6v8DO
        Wfur24VpYwPInWak=; b=gcYdcfabqpaD8hgdMKMbrwFE2gcdBE3otE/25o3VUxH
        I0JLCVcxQ/Xm+KQhktjUgGyb0CeDrTe0sdjHguDWYOGfLAFTp0MhbDX0+yM46p3A
        vumWxmwCPkJTrg8HECvFlH9CERGaNvMmtKnOvWusP13hrDovJfAUsvQqvfK1xnyE
        3GxainzOtBRKghACzpLA27nGmvqU5LUWRfnzVjRI/OBnFizbAne3ZrboQOKWwdle
        dA3JrEGKTgnSXmLRdXXvM6atBIaa3pxpJ/r6zZbBK3K3qM7b3bE2fTuh+PmhIEr8
        Atkxq+BvdT8gnuoPoWGeG7x9tlVsHI5+87XUgTMtZvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=vXNiMi
        HE83uglnwOB1FRjg6v8DOWfur24VpYwPInWak=; b=uDlDeG+3mDpH7hkWXCzUbY
        mC4xTrxBAeKrbxssI3SSS9wWT276Wouh4FuNUu+MX9cD9bqqJSe8Lu94Afarow/Z
        Zm3v0MZtj5RkMUn0ZNS2SDOG9izdgsLyLkvtULg80jVITEzgGX7MwxAGr0RChg8M
        X5VNdZlzEphKgtLY2hTiCCRpS2xFZ4K6rIGzowDuTddRbfpjNmYltD/VU/9qqekU
        74Cp/6fNcDGrqx3Cs2oCVmMkkxxijNy67KnJQOAjUV0S9L82bnZieNrdcbVSx5kd
        Wcqe6ofXc7vPNhRnO3g+elgDhKZv9F37HK0L6XnPymeMKPfD/KQ9G4PYyWAOha5A
        ==
X-ME-Sender: <xms:VvtFYCarPysf1Op1hVrLW4XZhXPh5hetExE3UlkLP3Kz0HdhxOOFQA>
    <xme:VvtFYFYf3qAWI1vhqs6A78taRmZRTmkMGa284W_DKFq50cQumSIlMsWV2Wh_syUI3
    RnSNnCMpg1pZA7iMNs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudduvddguddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
    gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:VvtFYM_zYn2t05QjbvpBqQp979ceggvjdAJK7UlsIqaiewyxHn-2Pw>
    <xmx:VvtFYEo15dN-upln4t03_PEQeaMVFFK3STiBLlvS9riU3OcI8meR8w>
    <xmx:VvtFYNrw865F7JbrIIG4VhF3AUOSnZkDC8b3BK0M3HslzWapJY54nQ>
    <xmx:V_tFYODfrXG7Sbhju_hOxbxQoaaWwi_xe23-7FqkwTXXAN6dbKzWfw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 5205124005C;
        Mon,  8 Mar 2021 05:24:22 -0500 (EST)
Date:   Mon, 8 Mar 2021 11:24:19 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Pavel =?utf-8?B?TMO2Ymw=?= <pavel@loebl.cz>
Cc:     Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2] ARM: dts: sun8i: h2+: add support for Banana Pi P2
 Zero board
Message-ID: <20210308102419.y6gbkwqv6sdtluvn@gilmour>
References: <20210106153915.er5fpqwquksdaaql@gilmour>
 <20210305084053.3514231-1-pavel@loebl.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3cftzldy5vudb35o"
Content-Disposition: inline
In-Reply-To: <20210305084053.3514231-1-pavel@loebl.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--3cftzldy5vudb35o
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi

On Fri, Mar 05, 2021 at 09:40:53AM +0100, Pavel L=F6bl wrote:
> Banana Pi P2 Zero is H2+-based board by Sinovoip internally
> similar to Banana Pi M2 Zero.
>=20
> It features:
> - Allwinner H2+, Quad-core Cortex-A7
> - 512MB DDR3 SDRAM
> - 8G eMMC flash
> - MicroSD card slot
> - 100M LAN
> - WiFi (AP6212) & Bluetooth onboard (SDIO + UART)
> - Micro USB OTG port
> - Micro USB connector (power only)
> - Mini HDMI
> - 40 PIN GPIO includes UART, SPI, I2C, IO etc.
> - GPIO-connected key and LED
> - CSI connector
> - IEEE 802.3af PoE standard PoE module support (optional)
>=20
> This adds support for v1.1 revision. There was also v1.0 available
> which has different SDcard CD polarity and Ethernet port LEDs
> disconnected in layout.
>=20
> Signed-off-by: Pavel L=F6bl <pavel@loebl.cz>
> ---
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  .../sun8i-h2-plus-bananapi-p2-zero-v1.1.dts   | 197 ++++++++++++++++++
>  3 files changed, 203 insertions(+)
>  create mode 100644 arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero-v1.1=
=2Edts
>=20
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documenta=
tion/devicetree/bindings/arm/sunxi.yaml
> index 6db32fbf813f..3accfa23cbad 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -136,6 +136,11 @@ properties:
>            - const: sinovoip,bananapi-m64
>            - const: allwinner,sun50i-a64
> =20
> +      - description: Banana Pi P2 Zero

We should mention the version in the description, and BananaPi is
written without the space in all the other boards

> +        items:
> +          - const: sinovoip,bpi-p2-zero-v1.1

The boards are fairly inconsistent here, but we should rather use
bananapi instead of an abbreviation.

And I guess we should also have a compatible without the version if the
two boards are similar?

> +          - const: allwinner,sun8i-h2-plus
> +
>        - description: BananaPro
>          items:
>            - const: lemaker,bananapro
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 3d1ea0b25168..26c1fd13375a 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1190,6 +1190,7 @@ dtb-$(CONFIG_MACH_SUN8I) +=3D \
>  	sun8i-a83t-cubietruck-plus.dtb \
>  	sun8i-a83t-tbs-a711.dtb \
>  	sun8i-h2-plus-bananapi-m2-zero.dtb \
> +	sun8i-h2-plus-bananapi-p2-zero-v1.1.dtb \
>  	sun8i-h2-plus-libretech-all-h3-cc.dtb \
>  	sun8i-h2-plus-orangepi-r1.dtb \
>  	sun8i-h2-plus-orangepi-zero.dtb \
> diff --git a/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts b/=
arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
> new file mode 100644
> index 000000000000..7297183af3af
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
> @@ -0,0 +1,197 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2021 Pavel L=F6bl <pavel@xxxxxxxx>
> + *
> + * Based on sun8i-h2-plus-bananapi-m2-zero.dts, which is:
> + *   Copyright (C) 2017 Icenowy Zheng <icenowy@xxxxxxx>
> + */
> +
> +/dts-v1/;
> +#include "sun8i-h3.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model =3D "Banana Pi BPI-P2-Zero v1.1";
> +	compatible =3D "sinovoip,bpi-p2-zero-v1.1", "allwinner,sun8i-h2-plus";
> +
> +	aliases {
> +		serial0 =3D &uart0;
> +		serial1 =3D &uart1;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led {
> +			function =3D LED_FUNCTION_POWER;
> +			color =3D <LED_COLOR_ID_RED>;
> +			gpios =3D <&r_pio 0 10 GPIO_ACTIVE_LOW>; /* PL10 */
> +			default-state =3D "on";
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +
> +		power {
> +			label =3D "power";

iirc if there's no label it will use the node name (which is the same
here).

Maxime

--3cftzldy5vudb35o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYEX7UwAKCRDj7w1vZxhR
xYHqAP9BnEtE9+H1iuP+obVqFmAAHl0RHU5iO3AWRQURedyvqQEAvoKTNtyvBVFK
o1S7sH5ixxQo03TeFLxIAVYgAINZcgY=
=Qi54
-----END PGP SIGNATURE-----

--3cftzldy5vudb35o--
