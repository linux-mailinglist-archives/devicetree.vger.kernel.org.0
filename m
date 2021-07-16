Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 406F43CBB5F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 19:48:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231249AbhGPRuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 13:50:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231137AbhGPRuw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 13:50:52 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84FAAC06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 10:47:57 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1m4RwH-0003Mj-BO; Fri, 16 Jul 2021 19:47:53 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1m4RwG-0000Tf-EO; Fri, 16 Jul 2021 19:47:52 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1m4RwG-0001bb-DU; Fri, 16 Jul 2021 19:47:52 +0200
Date:   Fri, 16 Jul 2021 19:47:52 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        mkl@pengutronix.de, aisheng.dong@nxp.com,
        devicetree@vger.kernel.org, festevam@gmail.com, linux-imx@nxp.com,
        kernel@pengutronix.de
Subject: Re: [PATCH V2] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
Message-ID: <20210716174752.tcjjqghoxfxqqp2f@pengutronix.de>
References: <20210716100414.12840-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="26xo7frbnim5zmqr"
Content-Disposition: inline
In-Reply-To: <20210716100414.12840-1-qiangqing.zhang@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--26xo7frbnim5zmqr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 16, 2021 at 06:04:14PM +0800, Joakim Zhang wrote:
> FlexCAN on i.MX8MP is not derived from i.MX6Q, instead resues from

s/resues/reuses/ I guess

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--26xo7frbnim5zmqr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDxxkUACgkQwfwUeK3K
7AkTrAf6AoD1Aac2Cjhnue+J+YTa/aufLrdehhlfJLfun7chcqXdEp5Hix7DVq+p
AXIUPGOIU/hTR+WIKWPdGilioVMC11W9lG49uL2nEuRYv/++kEQuECKmFUeR5pWG
rYwNIigF3Xpysk8AReHUpaqlB91DFpQ0p++loQ9KB+Xitz/i85CYzWM4SdVh/9Rc
wNU6KLbJP16HWmwCGnyocfpwuLSzH8WAqwHwJeLkGRQPJ2X8LBqq1gSMpNhXazBl
ndp5ENucIkUPy/oECx3lFBR+bEkujuG6s5ZCc8Tpqr54puLJw8L2GGuZexUqspxf
pxNiCvSwlu6h5cQNYTwiu9LOjObHeA==
=P7d9
-----END PGP SIGNATURE-----

--26xo7frbnim5zmqr--
