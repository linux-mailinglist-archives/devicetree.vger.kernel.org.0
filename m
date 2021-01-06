Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4D8B2EC0C6
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 17:03:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727134AbhAFQCV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 11:02:21 -0500
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:58413 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725925AbhAFQCV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 11:02:21 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id ED5C25C0032;
        Wed,  6 Jan 2021 11:01:34 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 06 Jan 2021 11:01:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=Ro7u8km8dNjBTGeXwqG+yIyxKUi
        3p3pFGi7jtUDxThs=; b=HAZM2aop8NS49fn62Gj+rfxRXDNlNLPtkx0osY3EOiy
        IXXH9tVahFpeNaJ6ptTUGDpDQrhBq58CrZM0ssbGdRnH8LLY/pEY3uDxpbNH7XKc
        S1A0gUUbt+KEWFvMKv45JNLVt2D2W43x9OnrhLspKDyeMe2xnEYQomIzHE6YV9he
        +BlVSWWtrdKYqPVgswTJGVefiDHhFH3ZDOGNtRfouSJcUycRTcff5OlJzQrhvL2d
        082114geCcpid9dL4mUrvVo2cI0Uwbm2W70dW4M7/JftLLlJjPBw0KEa3zrWrhHR
        KtqWcrdI7VrU4gDS3qzXKkEAP9Bq/5TGoIEYtW2Kafw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Ro7u8k
        m8dNjBTGeXwqG+yIyxKUi3p3pFGi7jtUDxThs=; b=EmJpA0mVrKfBPcuZ5JMYXE
        bI1MXjLSCIYXJDDqTOpjMMEeVJx7KJCch32RI149uMqfF3b11ujxSpKlXKYfDrol
        JeylWJ+PUQucIxT1poKYQ6AkHJCOHWmBdnZFYYc9GSHRgV3P0CZJdjoN6hWdbeat
        TjABW51NJb7MY774j1EiwPq4WS5ptkRVt2C5vx3n+ubrnU0JdN2UPYPKtzXXsB9J
        twwI1MBUJD09jLe1sKaTDMPtu0rO+ulLyC86ml/CONjO00htKI3Ljn7pSzYv2aWa
        w/bhg42ARtbRlqTrIvzmUs8AGfo0TfFq85kl+JoQOG+Hjm2kU4zfq3WN1Ljfxkvg
        ==
X-ME-Sender: <xms:3d71XzYJ-MFVDKSh5fgN-w3v70xtz6CBLR4ggUfoYcelkEZgeWyZtw>
    <xme:3d71X72l620Ye8lH_IdBy9v03oGLejNsykizvpjzsmdDOFyvRICb5x3Nv4AExjbYw
    Gvl4ln1o6pR5NfgRvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdefledgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:3d71X1itD4Me5d9Hj4x0VXh7N1WkB1Z-BUSC6eJFUBbb8voo_HeFHQ>
    <xmx:3d71X_bxdIgecF1k6X7wnJs6zJOYRqQY4BOA_NVjRmebWmjDtF3liA>
    <xmx:3d71X1TwIqnPYbpe7aA24Cem84h6m5NmYNjAW8EmIpke0wiBPHZFVQ>
    <xmx:3t71X_T4uUFpCupnSNHDa3xGriHXUOhbsrfiyO30LGghKhNuuntofw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 08DDD240057;
        Wed,  6 Jan 2021 11:01:32 -0500 (EST)
Date:   Wed, 6 Jan 2021 17:01:30 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH 2/7] arm64: dts: allwinner: Pine64-LTS: Add status LED
Message-ID: <20210106160130.xjgsh3kb5xy3z63m@gilmour>
References: <20210106150525.15403-1-andre.przywara@arm.com>
 <20210106150525.15403-3-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5xzxya7l4d3ybad2"
Content-Disposition: inline
In-Reply-To: <20210106150525.15403-3-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--5xzxya7l4d3ybad2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 06, 2021 at 03:05:20PM +0000, Andre Przywara wrote:
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
> index 302e24be0a31..55bf4a0fc31c 100644
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
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		status {

In addition to Chen-Yu comments, the node name should be led

Maxime

--5xzxya7l4d3ybad2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/Xe2gAKCRDj7w1vZxhR
xTIxAQCUMMa6tpcZiP896p3BqhjxfcKiplMm8tS3Ie8eGf3XsQD/Q/Gw6O+Tgi9u
aK7SKmoD9dsg3BjVHlM1/HuEkgcGlQM=
=FZyz
-----END PGP SIGNATURE-----

--5xzxya7l4d3ybad2--
