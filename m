Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7BF2F6086
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:51:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726458AbhANLuH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:50:07 -0500
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:48985 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725982AbhANLuH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:50:07 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 737035C01F2;
        Thu, 14 Jan 2021 06:49:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:49:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=FREZBJoIlNRzpZJftch/bokZeJS
        ab3IUuynSogp9u5A=; b=vDBhbhuv9++s6P05nezBmNgRd64xK8XYNlCjgy2YSx+
        PUQ4N2GKkp6Uz12LKHrhbqtTjFuUBoEVJOVnheWoOjdkGm7fmLn5AfPTyQxl7hi+
        t8+R1GlauaIP6KY9vjplQV0ymYNkOFKXAWqJBPqg3DbWoi7eVM7QSVn4K6kcODZh
        xIkcW0mc90/G2g+Dk/dNASbkTHLiEg6+1Z1XEM1+jcfQ3o5wKSHWV6dv8uevJh+m
        I5GYUnjsBxu/8itnpI37abHJISDZIhIopYTU2j+e4whIKtDEgL29+WgVaQIWaku8
        X7V5plI7JIiGg7/OhbN5E6h4MBRRC/El1rqrqwj/d6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=FREZBJ
        oIlNRzpZJftch/bokZeJSab3IUuynSogp9u5A=; b=hjrWUZ40zChwI4PgUoLDKK
        ThyoIgQf5RHpT/yKFB1QaQc0FK1Z5743Ft1ajYDks0mbwSg88Wbnt8A1NuQAXVdY
        2yMDL0FvBnnYOyu/a4WwW6iLQ1JdBTPCt63DucfPt45kEMTLIQRvnyYVZp7yR39+
        gTxdIOkLrcYwKd3PFI3UM8l/QPaPJ3o2td2RNbuTErNYsKzZwmBjARCbq9DPD1/A
        sigwSTsBA44pfzHkbGZsxZb1G5hJQanyzrIf9r4sAnQyeX56PqE2YKbSbCQbX08n
        kwYZ+HXbM2c8/ySFP7H9IWfLyKx97ddiX065sSSoGHAYQXSZEaJ3mhBSIGab7gGw
        ==
X-ME-Sender: <xms:qy8AYIIzaAnKcNodUqWhcbll4Tuerur5cx3qU-9jmtMW1RMRAvfGuQ>
    <xme:qy8AYILWch8xskJcCPw8yqyeYX9bMO71XKhtV_oR_CAttOyI94q4Pj1dV-1nMq8nJ
    d4G4vbugTePTJh5Ozw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qy8AYIt51gMcWsmtSg9kU2u6G1vhKbWkq0g39RbqvWCqmX_9xupnaQ>
    <xmx:qy8AYFYOjC4kwNFpkJ-tf6Ty4VPyRjxitnMMs6LVXPg9W-_4Es2x3w>
    <xmx:qy8AYPYiD67Ktfs12TVWynixsoDqcg3P6gnuUntRucsoOrqSBmYygg>
    <xmx:rC8AYD4FJ8fPFmLXVTudINmglJhxfEQXDAGhaJvUFXw-mk4SRRKpyA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 03501108005C;
        Thu, 14 Jan 2021 06:48:58 -0500 (EST)
Date:   Thu, 14 Jan 2021 12:48:57 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 3/8] arm64: dts: allwinner: Pine64-LTS: Add status LED
Message-ID: <20210114114857.idkh2ovlhmrdga34@gilmour>
References: <20210113152630.28810-1-andre.przywara@arm.com>
 <20210113152630.28810-4-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zncpnrpe2l6iskad"
Content-Disposition: inline
In-Reply-To: <20210113152630.28810-4-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--zncpnrpe2l6iskad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jan 13, 2021 at 03:26:25PM +0000, Andre Przywara wrote:
> The Pine64-LTS board features a blue status LED on pin PL7.
>=20
> Describe it in the DT.
>=20
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../boot/dts/allwinner/sun50i-a64-pine64-lts.dts      | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/ar=
ch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> index 302e24be0a31..93d271fdbb6c 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> @@ -1,10 +1,21 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  // Copyright (c) 2018 ARM Ltd.
> =20
> +#include <dt-bindings/leds/common.h>
>  #include "sun50i-a64-sopine-baseboard.dts"
> =20
>  / {
>  	model =3D "Pine64 LTS";
>  	compatible =3D "pine64,pine64-lts", "allwinner,sun50i-r18",
>  		     "allwinner,sun50i-a64";
> +
> +	led {
> +		compatible =3D "gpio-leds";
> +
> +		status {
> +			function =3D LED_FUNCTION_STATUS;
> +			color =3D <LED_COLOR_ID_BLUE>;
> +			gpios =3D <&r_pio 0 7 GPIO_ACTIVE_LOW>; /* PL7 */
> +		};

Thanks for fixing the node names, but I guess my comment was a bit too
vague: it's status that needed to be changed, not the upper level one.

I've updated it while applying

Maxime


--zncpnrpe2l6iskad
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYAAvqQAKCRDj7w1vZxhR
xfolAP426HLiUDIsLobSVyNAM0wFe73mLtNGLPj/PSRMCDmVTAD8C7PKK4BXjMVo
NOXkAmIKFSAA52KgiiVxGoOa+2WrygI=
=GjBF
-----END PGP SIGNATURE-----

--zncpnrpe2l6iskad--
