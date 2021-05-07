Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0B0D376318
	for <lists+devicetree@lfdr.de>; Fri,  7 May 2021 11:49:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235472AbhEGJug (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 May 2021 05:50:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235284AbhEGJug (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 May 2021 05:50:36 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71951C061574
        for <devicetree@vger.kernel.org>; Fri,  7 May 2021 02:49:36 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1lex70-0004vV-9R; Fri, 07 May 2021 11:49:34 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1lex6z-00086j-BS; Fri, 07 May 2021 11:49:33 +0200
Date:   Fri, 7 May 2021 11:49:33 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx25-pinfunc: Fix gpio function name for pads
 GPIO_[A-F]
Message-ID: <20210507094933.dxtwm7vnr6ijqtup@pengutronix.de>
References: <20200810084725.16112-1-u.kleine-koenig@pengutronix.de>
 <20200822125611.GB30094@dragon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zbspnzgd6pmnh75a"
Content-Disposition: inline
In-Reply-To: <20200822125611.GB30094@dragon>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--zbspnzgd6pmnh75a
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Shawn,

digging through my mailbox of unarchived mails I found this patch.

On Sat, Aug 22, 2020 at 08:56:12PM +0800, Shawn Guo wrote:
> On Mon, Aug 10, 2020 at 10:47:25AM +0200, Uwe Kleine-K=F6nig wrote:
> > The pinfunc definitions used GPIO_A as function instead of GPIO_1_0 as
>=20
> Is this how i.MX25 RM names the function?

The reference manual (Rev. 2; 01/2011) doesn't give a name. The relevant
description for the GPIO_A pad reads:

	MUX Mode Select Field. Select 1 of 7 iomux modes to be used for pad: GPIO_=
A.

	000: Select mux mode: ALT0 mux port: GPIO[0] of instance: gpio1.
	...

So I'd say: GPIO_A is the pad name (only) and the function is better
named GPIO_1_0.

Best regards
Uwe
=20
> > done for all the other pins with GPIO functionality. Fix for consistenc=
y.
> >=20
> > There are no mainline users that needs adaption.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  arch/arm/boot/dts/imx25-pinfunc.h | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >=20
> > diff --git a/arch/arm/boot/dts/imx25-pinfunc.h b/arch/arm/boot/dts/imx2=
5-pinfunc.h
> > index e14140e62b9b..55948e668410 100644
> > --- a/arch/arm/boot/dts/imx25-pinfunc.h
> > +++ b/arch/arm/boot/dts/imx25-pinfunc.h
> > @@ -563,15 +563,15 @@
> >  #define MX25_PAD_DE_B__DE_B			0x1f0 0x3ec 0x000 0x00 0x000
> >  #define MX25_PAD_DE_B__GPIO_2_20		0x1f0 0x3ec 0x000 0x05 0x000
> > =20
> > -#define MX25_PAD_GPIO_A__GPIO_A			0x1f4 0x3f0 0x000 0x00 0x000
> > +#define MX25_PAD_GPIO_A__GPIO_1_0		0x1f4 0x3f0 0x000 0x00 0x000
> >  #define MX25_PAD_GPIO_A__CAN1_TX		0x1f4 0x3f0 0x000 0x06 0x000
> >  #define MX25_PAD_GPIO_A__USBOTG_PWR		0x1f4 0x3f0 0x000 0x02 0x000
> > [...]

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--zbspnzgd6pmnh75a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmCVDSoACgkQwfwUeK3K
7AkApwgAn12g8QeRMddUkSPCxBVJehN5K7AL4QSF174HdZQi/9QCMoyHe/ymylSt
bJo1MRCpaH3/Y997Ryu7d8Y17974vQ6X16sF02c7tA17gOdJrnUTzawn1fg4xM35
Y3HMZuNBPNWMfGeiEqgFnqiusIMtTEshOcPmx+nV9E+1xZLoLGqylWEu0cXDKMkp
hVO6e8xtq0M9XiVVuZwXkNDNzxXpXgJsoqeMk24TkA4q6rLQCTcIJ9kzXqfOi4+V
/S15rd1h/xAbZv29w0r0IGg3z5IUOc2TX3rZiEL21QvC2x5p8cf1Dhr8kuIncQxI
V/2DP//rhCvh+KgzEgTOnitdKcVI3A==
=d9GS
-----END PGP SIGNATURE-----

--zbspnzgd6pmnh75a--
