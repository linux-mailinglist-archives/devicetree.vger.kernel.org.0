Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D28BB3CD073
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 11:18:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235151AbhGSIhC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 04:37:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235031AbhGSIhC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 04:37:02 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D291C061574
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 01:18:46 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mkl@pengutronix.de>)
        id 1m5OwZ-0003Gr-Tl; Mon, 19 Jul 2021 10:48:07 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:10de:1819:f26:196])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (Client did not present a certificate)
        (Authenticated sender: mkl-all@blackshift.org)
        by smtp.blackshift.org (Postfix) with ESMTPSA id 8CC09651DD3;
        Mon, 19 Jul 2021 08:48:06 +0000 (UTC)
Date:   Mon, 19 Jul 2021 10:48:05 +0200
From:   Marc Kleine-Budde <mkl@pengutronix.de>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH V3] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
Message-ID: <20210719084805.3scvjx2duimliugf@pengutronix.de>
References: <20210719073437.32078-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lm6b7ddvvno7u2ve"
Content-Disposition: inline
In-Reply-To: <20210719073437.32078-1-qiangqing.zhang@nxp.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--lm6b7ddvvno7u2ve
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 19.07.2021 15:34:37, Joakim Zhang wrote:
> FlexCAN on i.MX8MP is not derived from i.MX6Q, instead reuses from
> i.MX8QM with extra ECC added and default is enabled, so that the FlexCAN
> would be put into freeze mode without FLEXCAN_QUIRK_DISABLE_MECR quirk.
>=20
> This patch removes "fsl,imx6q-flexcan" fallback compatible string since
> it's not compatible with the i.MX6Q.
>=20
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied to linux-can/testing.

thanks,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--lm6b7ddvvno7u2ve
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmD1PEIACgkQqclaivrt
76k3CQgAhljYUshiB6uJbpsVcwKi0rbQYCFPkMHbOFnSX/Trck3O/omwfemFmLWM
O1a5Us6lX5C0twhlvhUA8/LIU2aszqB2s3OoZNpAcqtarLr5nnkrS4swiEb2/5N9
zAQEP00XVeA3b7iB8OqcsZxiFnl1LVk8Hq+SwLBb3maf8RKFVsD/Gzi5iQ0/nOFt
iINEBDA2hhIF/TNlAlO1wAcV+ArqkmUDoDXDBlwm9X6JAQo7UXVn5wLvadRDw9RV
dhbD6foBkgljgiAEcP6/I5+wUu447XsY7vkxUtjAdyiDJDUt2WpK6YRuTEGGUJ36
49Btbw32Telcd4n3U8HhxfelaLcJMQ==
=AHGH
-----END PGP SIGNATURE-----

--lm6b7ddvvno7u2ve--
