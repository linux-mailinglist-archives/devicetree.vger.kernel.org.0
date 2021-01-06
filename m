Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88C572EC08E
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:41:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727021AbhAFPkE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:40:04 -0500
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:40733 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726768AbhAFPkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 10:40:04 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 134B85C0150;
        Wed,  6 Jan 2021 10:39:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 06 Jan 2021 10:39:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=PTbVw73PjTAb9XZiwhqp5dK1S0d
        8tEthYPhYAP26ERQ=; b=O6tOhYt6QGg8yh43bxpOZJK44MvZJJ+A/ERr+W5b2lk
        7Ayov/xf3cWybdV4vzCvJK6xf+USbZtKPRUyHik0FBjrVD2YFiWS1zURnayO7bgF
        BxnjbMDz2Yo8JKdk9OIcY3josoCioZlsniBE8i9Pv9I+7w34FmTiG4A04T5Zle2/
        eE9DVVrspFAeXcM1nzHUb3rPoZ4YAGDtz0iqn+g55rgLzSFudq2f285nS1s7nnz4
        gTHGpgIhsaj8GSft/nDzXDIaJZ+lZjnFAfp5cs+m12A68H8aHoxftU1NJVyrkHnB
        DMrmSkQGZgt76Ltc2xpIM6Poc9ZM5iW7DGjeX+cg1hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=PTbVw7
        3PjTAb9XZiwhqp5dK1S0d8tEthYPhYAP26ERQ=; b=AgjznS29SDZ9EOoqeY+RtT
        G4bzyCPdpVpT9uG6jzKnh53tRrxqBD+2QyYIwb00xsSicW57k8ZSfEYOQxPsyL7B
        XRh9XWGG+fBDUY6XoaGB9VuqYUK4AlfPmRzbDsldahb54V36kG+9bTrRrhYvl9+b
        AryLZDxiOPOJP0wnzno7p/gn5q/p6uMi8HWmImyjN/xmruCUDQf9zk02x58dvOYk
        eq87ABTgaxJQRe2JRVRtFYGyM9IZf97zWn/iNzLKxSF26DtffmeqeSfBYSsbM6EO
        i0Lb00OkcACRX2MfSIn0WGO3pbPoLPkBgRCCzZQAuAZ83EVJ6RuxJt1csptVOyOQ
        ==
X-ME-Sender: <xms:pNn1X3jXCLMdv1Ecc_7eGi1569u0dkKoJl-cjHr-RwtEuz7ga0rbgQ>
    <xme:pNn1X0Cq7yYvlKkWrWq1qd69jtoiAfMdAGt4lvdbPtIpfKh5t8eijlKzShpwcvYiG
    y3cr6jtcFDboLDpQe0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdefledgjedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
    gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:pNn1X3FVYVEGTGK6PzBkFQCpLoiuxSCXa8doc-xmLHa9oX97vsza-g>
    <xmx:pNn1X0RTRCC6vA5tZFYXy_lqmdDMTbq2PpyHzjoK747jioqtC77LVQ>
    <xmx:pNn1X0xQ2hZfitDXmLgNjDVgo3_QgVdRLFTwc3eqasPngHMpkqZabg>
    <xmx:ptn1X_-ayhXSFvh6NRNuE0Mic34XylmWGGrhvMg16R9WvCXajC59WQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 923FA24005A;
        Wed,  6 Jan 2021 10:39:16 -0500 (EST)
Date:   Wed, 6 Jan 2021 16:39:15 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Pavel =?utf-8?B?TMO2Ymw=?= <pavel@loebl.cz>
Cc:     Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: sun8i: h2+: add support for Banana Pi P2 Zero
 board
Message-ID: <20210106153915.er5fpqwquksdaaql@gilmour>
References: <20201216070936.499973-1-pavel@loebl.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nthmuxth4uylkydu"
Content-Disposition: inline
In-Reply-To: <20201216070936.499973-1-pavel@loebl.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--nthmuxth4uylkydu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 16, 2020 at 08:09:36AM +0100, Pavel L=F6bl wrote:
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

You should name that file sun8i-h2-plus-bananapi-p2-zero-v1.1 (and the
compatible) to avoid any confusion

> Signed-off-by: Pavel L=F6bl <pavel@loebl.cz>
> ---
>  .../dts/sun8i-h2-plus-bananapi-p2-zero.dts    | 195 ++++++++++++++++++
>  1 file changed, 195 insertions(+)
>  create mode 100644 arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero.dts
>=20
> diff --git a/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero.dts b/arch/=
arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero.dts
> new file mode 100644
> index 000000000000..431108bff68e
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero.dts
> @@ -0,0 +1,195 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2020 Pavel L=F6bl <pavel@loebl.cz>
> + *
> + * Based on sun8i-h2-plus-bananapi-m2-zero.dts, which is:
> + *   Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> + */
> +
> +/dts-v1/;
> +#include "sun8i-h3.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model =3D "Banana Pi BPI-P2-Zero";
> +	compatible =3D "sinovoip,bpi-p2-zero", "allwinner,sun8i-h2-plus";

This compatible should be documented in
Documentation/devicetree/bindings/arm/sunxi.yaml

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
> +		pwr_led {

The name of that node should be led

> +			label =3D "power-led";

Labels are deprecated, you should be using function and color instead.

> +			gpios =3D <&r_pio 0 10 GPIO_ACTIVE_LOW>; /* PL10 */
> +			default-state =3D "on";
> +		};
> +	};
> +
> +	gpio_keys {

underscores are not valid in node names

> +		compatible =3D "gpio-keys";
> +
> +		pwr_key {

Same thing here

> +			label =3D "power-key";
> +			linux,code =3D <KEY_POWER>;
> +			gpios =3D <&r_pio 0 3 GPIO_ACTIVE_LOW>;  /* PL3 */
> +			wakeup-source;
> +		};
> +	};
> +
> +	reg_vcc_5v: reg-vcc-5v {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "usb1-vbus";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		regulator-boot-on;
> +	};
> +
> +	reg_vcc_1v2: reg-vcc-1v2 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc-1v2";
> +		regulator-type =3D "voltage";
> +		regulator-min-microvolt =3D <1200000>;
> +		regulator-max-microvolt =3D <1200000>;
> +		regulator-boot-on;
> +		vin-supply =3D <&reg_vcc_5v>;
> +	};
> +
> +	reg_vcc_3v3: reg-vcc-3v3 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc-3v3";
> +		regulator-type =3D "voltage";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-boot-on;
> +		vin-supply =3D <&reg_vcc_5v>;
> +	};
> +
> +	reg_vdd_cpux: vdd-cpux-regulator {
> +		compatible =3D "regulator-gpio";
> +		regulator-name =3D "vdd-cpux";
> +		regulator-type =3D "voltage";
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-min-microvolt =3D <1100000>;
> +		regulator-max-microvolt =3D <1300000>;
> +		regulator-ramp-delay =3D <50>; /* 4ms */
> +
> +		gpios =3D <&r_pio 0 1 GPIO_ACTIVE_HIGH>; /* PL1 */
> +		enable-active-high;
> +		gpios-states =3D <0x1>;
> +		states =3D <1100000 0>, <1300000 1>;
> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {

Same thing here

Looks good otherwise, thanks!
Maxime

--nthmuxth4uylkydu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/XZowAKCRDj7w1vZxhR
xYpqAP9oeFWok8a6P7FiXPBNBBm/OsjKzuMVSwJJqLNvQf62NgD+Ik8gIulMVIH+
9SMB/fKRW9DoZ2szRXCiLH0tusvbQgg=
=MvDY
-----END PGP SIGNATURE-----

--nthmuxth4uylkydu--
