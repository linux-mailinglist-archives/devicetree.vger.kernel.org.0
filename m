Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93EF42CCFBE
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 07:47:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728261AbgLCGqP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 01:46:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726405AbgLCGqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 01:46:15 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 002D8C061A4F
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 22:45:34 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1kkiMp-0006mI-CC; Thu, 03 Dec 2020 07:45:27 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1kkiMo-0000SC-Mw; Thu, 03 Dec 2020 07:45:26 +0100
Date:   Thu, 3 Dec 2020 07:45:23 +0100
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: fix pwms for
 lcd-backlight
Message-ID: <20201203064523.4dfwq4bwi447nahs@pengutronix.de>
References: <20201202180558.14541-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fjowdz5ohfdwgsck"
Content-Disposition: inline
In-Reply-To: <20201202180558.14541-1-m.felsch@pengutronix.de>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--fjowdz5ohfdwgsck
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Dec 02, 2020 at 07:05:58PM +0100, Marco Felsch wrote:
> The pwms property have to specify the no-/inverted flag since
> commit fa28d8212ede ("ARM: dts: imx: default to #pwm-cells =3D <3>
> in the SoC dtsi files").
>=20
> Fixes: fa28d8212ede ("ARM: dts: imx: default to #pwm-cells =3D <3> in the=
 SoC dtsi files")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Yeah, I missed this because this .dtsi isn't used in any .dts.

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--fjowdz5ohfdwgsck
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/IiYAACgkQwfwUeK3K
7Ak+6gf/XGpjPWFFD8fFcUk0FmWxJTClKK1fQW9ZZhAg7/J0TcD0TihtfYqITiaU
zJ+bvQsx4rtmHix3MzVrBJhaofdV+QGFtfzLj+EGEc5DudazfWH/0BdI6vkVnYsy
UPtz44yLs4fxul4hZi1COAzFJXUdMdmW3o5Mqw/DQ4kOQbI1MKB9i4jIdKZADxCI
oVLhAKmwBnKp8Gmt8h+1sI7jSpPdZWmesQbcjPnUWVVu+OhKKft/5gpbKi5t43DS
9MeN7FWITsEJp/GMjlZZggX3SPofAQ49BIRRpM/ocmPU8T1w6TN62U+PB+qhd6pS
vz78EJGprYQn/430KJZExH+/Icz9ow==
=4UJ5
-----END PGP SIGNATURE-----

--fjowdz5ohfdwgsck--
