Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E16522799E2
	for <lists+devicetree@lfdr.de>; Sat, 26 Sep 2020 15:56:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728861AbgIZN4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Sep 2020 09:56:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729424AbgIZNz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Sep 2020 09:55:58 -0400
X-Greylist: delayed 58541 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 26 Sep 2020 06:55:55 PDT
Received: from antares.kleine-koenig.org (antares.kleine-koenig.org [IPv6:2a01:4f8:c0c:3a97::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E977C0613DC
        for <devicetree@vger.kernel.org>; Sat, 26 Sep 2020 06:55:55 -0700 (PDT)
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id 9BFC7A39DCD; Sat, 26 Sep 2020 15:55:53 +0200 (CEST)
Date:   Sat, 26 Sep 2020 15:55:53 +0200
From:   Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Aditya Prayoga <aditya@kobol.io>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for Kobol's
 Helios64
Message-ID: <20200926135553.GA17434@taurus.defre.kleine-koenig.org>
References: <20200925214003.27186-1-uwe@kleine-koenig.org>
 <20200925214003.27186-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline
In-Reply-To: <20200925214003.27186-2-uwe@kleine-koenig.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Sep 25, 2020 at 11:40:03PM +0200, Uwe Kleine-K=F6nig wrote:
> The hardware is described in detail on Kobol's wiki at
> https://wiki.kobol.io/helios64/intro/.
>=20
> Up to now the following peripherals are working:
>=20
>  - UART
>  - Micro-SD card
>  - eMMC
>  - ethernet port 1
>  - status LED
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

One important thing I forgot to mention here is: This devicetree is a
stripped down version of the helios64 support included in Armbian that
was written by Aditya Prayoga. The original has a line

	Copyright (c) 2020 Aditya Prayoga (aditya@kobol.io)

where I was unsure if I should drop it or not. @Aditya: Please advise if
you want this included, then I take care of that for v2.

Best regards
Uwe

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl9vSGYACgkQwfwUeK3K
7Akf5Af7BeH2edt/oxPA8XZZP1X3d1ZpsSexaIpsU8sz46JRE+LMcrhmeiKuIUMy
VZSCqsrA/FCF2js9ucHtTIUZCxcu1J2gFipBuEgYxqvvfCzWjOYz/YbgjI67iNGH
gBpeMg6juqEIX7U6UBAUiiyW53ARovcqqE6ofkoGZWVvbFib7nLcklsGeAavbrhZ
19hVEmYXN61xGs2IpZ1hQwFA8QCWvpAdNqySrIB2r1VMfob20vzKkpaDP3RJp9qQ
tEI77uduqRJXIGN6WOSG4eoOnlqdF/Vv38uQKFUpxbUaBZjQ6vMNoMmrvwxOG0lC
qFjQiZ4MvbKFJSCrBS8NiHgNhjLOLw==
=G0Tn
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--
