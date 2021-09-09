Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94E5F40468A
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 09:50:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbhIIHvW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 03:51:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbhIIHvV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Sep 2021 03:51:21 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BC6CC061575
        for <devicetree@vger.kernel.org>; Thu,  9 Sep 2021 00:50:12 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mOEow-00026M-L0; Thu, 09 Sep 2021 09:50:06 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mOEov-00079t-Bq; Thu, 09 Sep 2021 09:50:05 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mOEov-0005KO-AE; Thu, 09 Sep 2021 09:50:05 +0200
Date:   Thu, 9 Sep 2021 09:50:05 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: Re: [PATCH] ARM: dts: armada-{370,xp}: drop "marvell,orion-spi" from
 SPI controllers
Message-ID: <20210909075005.fxy4vfarrvnmr6ez@pengutronix.de>
References: <20161207152109.17545-1-uwe@kleine-koenig.org>
 <87eg1jhi4l.fsf@free-electrons.com>
 <20161207154145.yr2iua73xnoyjsse@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="34r7idygry2toucy"
Content-Disposition: inline
In-Reply-To: <20161207154145.yr2iua73xnoyjsse@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--34r7idygry2toucy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Dec 07, 2016 at 04:41:45PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello Gregory,
>=20
> On Wed, Dec 07, 2016 at 04:30:02PM +0100, Gregory CLEMENT wrote:
> >  On mer., d=E9c. 07 2016, Uwe Kleine-K=F6nig <uwe@kleine-koenig.org> wr=
ote:
> >=20
> > > From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > >
> > > The SPI controllers on Armada 370 and XP differ from the original Ori=
on
> > > SPI controllers (at least) in the configuration of the baud rate. So
> > > it's wrong to claim compatibility which results in bogus baud rates.
> >=20
> > Until two years ago with the commits
> > df59fa7f4bca9658b75f0f5fee225b3a057475c5 and
> > 4dacccfac69494ba70248b134352f299171c41b7
> > we used "marvell,orion-spi" compatible on Armada XP and Armada 370
> > without any problem.
> >=20
> > The new compatible "marvell,armada-xp-spi" and "marvell,armada-xp-spi"
> > allows to have more choice for the baudrate for a given clock but it is
> > not true that Armada 370 and Armada XP are not compatible with
> > "marvell,orion-spi".
>=20
> The issue I was faced with that made me create this patch is that in
> barebox no special case for 370/XP was active. The result was that a
> device that could be operated at 60 MHz only got a clock of 11 MHz and
> the driver assumed it configured 41.666 MHz. I didn't check if the same
> can happen in the opposite direction (or if there are other important
> incompatibilities) but still I'd say this is a bug with my patch being
> the obvious fix.

I just found this patch in an old branch and wonder what do to with it.
It still applies fine at least.

(If the original patch already disappeared from your inbox, it can be
found at https://lore.kernel.org/r/20161207152109.17545-1-uwe@kleine-koenig=
=2Eorg/ )

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--34r7idygry2toucy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmE5vKoACgkQwfwUeK3K
7AmREgf/ZxDuWTyugvY5XoQ9RTCGvZsfeIfXE28DjDWcSMVB7nl7ejcCiJH/mgec
64SeDWY5fHQqA+O78F0XaxlE6xp3grf8Z+MXT4YvXjCEx+nsDwpHcXd2yfa+3RhB
sinxDSA1gb2uxISaaqz6f/kiGYPvYK3s/v8+9eJYOSYMKDpcGvr4EbpDh2o4VJzV
cKCPBKxt7OtKIovPdYZeKnrFBLocEXZQxp46wpCLGWNOTYtwfEyvHghYdBZDyNPj
K8w5EODNFZp8kpC9/vQYYF0smZdIhnvqFp37kv+lYoDWBZ5OQvabPw3xq+tr5o1w
zxHc7rnqKGvQee+Gvz+azek2E1qchQ==
=jM/M
-----END PGP SIGNATURE-----

--34r7idygry2toucy--
