Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D260334B95B
	for <lists+devicetree@lfdr.de>; Sat, 27 Mar 2021 21:46:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230114AbhC0Upi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Mar 2021 16:45:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230002AbhC0UpJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Mar 2021 16:45:09 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B41FC0613B1
        for <devicetree@vger.kernel.org>; Sat, 27 Mar 2021 13:45:09 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1lQFnu-0007ZE-Cx; Sat, 27 Mar 2021 21:45:06 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1lQFnr-00030n-CE; Sat, 27 Mar 2021 21:45:03 +0100
Date:   Sat, 27 Mar 2021 21:45:03 +0100
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: imx8mp-evk: Add i2c bus driving the PMIC
Message-ID: <20210327204503.ewn3sqzg2fv7fj3n@pengutronix.de>
References: <20210326142459.30679-1-u.kleine-koenig@pengutronix.de>
 <CAOMZO5DXgZeEk3sA-ZFpDPLn8oGf+RNSY0OWNe5pyzHGhOpaNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="57xfzssoiotnvxgk"
Content-Disposition: inline
In-Reply-To: <CAOMZO5DXgZeEk3sA-ZFpDPLn8oGf+RNSY0OWNe5pyzHGhOpaNQ@mail.gmail.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--57xfzssoiotnvxgk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Fabio,

On Fri, Mar 26, 2021 at 03:26:25PM -0300, Fabio Estevam wrote:
> On Fri, Mar 26, 2021 at 11:25 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > There is no binding and driver for the PMIC itself, but making the bus
>=20
> What about the commit below that landed in kernel 5.9?
>=20
> commit 0935ff5f1f0a44f66a13e075ed49f97ad99d2fdc
> Author: Robin Gong <yibin.gong@nxp.com>
> Date:   Sat Jul 4 00:19:35 2020 +0800
>=20
>     regulator: pca9450: add pca9450 pmic driver
>=20
>     Add NXP pca9450 pmic driver.
>=20
>     Signed-off-by: Robin Gong <yibin.gong@nxp.com>
>     Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>     Link: https://lore.kernel.org/r/1593793178-9737-2-git-send-email-yibi=
n.gong@nxp.com
>     Signed-off-by: Mark Brown <broonie@kernel.org>

Hmm, now that you wrote that my git grep also finds it. How did you do
that? :-)

I will respin the patch and also add the pmic as an i2c device.

Thanks and best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--57xfzssoiotnvxgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmBfmUwACgkQwfwUeK3K
7AmO8gf/YufDUnUmhFzMDaJcqzCOZdF+yWpdCOhho4F1cE13pr0+5xBbvirePcUg
ueel0zPkI5IoEwpkVZQulbHXK52NYl0PKu17k5ay6tKHkMj2awJBoR6kfn3RpOJ/
f1xriBcfrpyYRYeTzF0QeFC/EnIHm+5s/UYZBdAWPdyJc/gd1p6IfOkSd33XZWA7
xm0THSQOoP0lTJtZCJ06KEXefk8s6g+4iwEut7FB0CFP4HGsYv86XQQUnZKRG5Xs
CI+FVGkE817cAAzMFaKxlAAWOiislZU9afJxUxIbM/zE5Us0zpR75hBXptEDdvcL
03crFVw8K7PC4mYlobO3ANjgkLQNow==
=6R1S
-----END PGP SIGNATURE-----

--57xfzssoiotnvxgk--
