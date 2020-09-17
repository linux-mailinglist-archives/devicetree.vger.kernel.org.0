Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A032626D89D
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 12:15:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726552AbgIQKP2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 06:15:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726545AbgIQKP1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 06:15:27 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EB7DC06174A
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 03:15:27 -0700 (PDT)
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1kIqwk-0000t4-Ez; Thu, 17 Sep 2020 12:15:22 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <ukl@pengutronix.de>)
        id 1kIqwk-0000Qe-4d; Thu, 17 Sep 2020 12:15:22 +0200
Date:   Thu, 17 Sep 2020 12:15:21 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH] scripts/dtc: Don't overwrite HOST_EXTRACFLAGS passed on
 command line
Message-ID: <20200917101521.hrma3emsew4p7evs@pengutronix.de>
References: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hh7qh7c4vkq3zzk6"
Content-Disposition: inline
In-Reply-To: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--hh7qh7c4vkq3zzk6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 17, 2020 at 11:40:24AM +0200, Uwe Kleine-K=F6nig wrote:
> This fixes building with
>=20
> 	$ make HOST_EXTRACFLAGS=3D-g

I got this wrong, this above is still broken (as +=3D doesn't work for
variables set on the commandline), please fixup to:

	$ env HOST_EXTRACFLAGS=3D-g make

(or make me resend).

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--hh7qh7c4vkq3zzk6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl9jNzcACgkQwfwUeK3K
7Almlwf/bJ424KieyewXQiCAgO73ZXUsgRs5J1jnvEhbFB71sIAt23N6nQK9UWEK
fUI4zpQxB33K25MvLMCMP4tvVyNq8P/6g6C70NGoae4CdZFcVE7rxY94uxg4PfoJ
lrkAfBal+VW/PFoM5alHFDJMgq1bSJQ/F3DVqJvqw3Ms+vi3W5OrfrasDVwa4ydA
5Buui+2d8Xw4C16zNQq8D4n9cZoUl7cPCU+NWCW933sS1kC0qsnltdhpyq3s+y9D
L+XajpZ63NaQ3hNXcLsMZMZoC0zRQ7/1Khc96Or2BWwMg5BJ29GHGR03wGqmPhTw
ZeDhWPV6QctkPqVto0HiZddaicCj8A==
=7E37
-----END PGP SIGNATURE-----

--hh7qh7c4vkq3zzk6--
