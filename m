Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11FED3BE917
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 15:54:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231516AbhGGN5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 09:57:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbhGGN5U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 09:57:20 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3584CC061574
        for <devicetree@vger.kernel.org>; Wed,  7 Jul 2021 06:54:40 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1m180c-0002JU-DF; Wed, 07 Jul 2021 15:54:38 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1m180b-0002X4-NJ; Wed, 07 Jul 2021 15:54:37 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1m180b-0005tg-M0; Wed, 07 Jul 2021 15:54:37 +0200
Date:   Wed, 7 Jul 2021 15:54:37 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: freescale/imx8mp-evk.dts: reorder nodes
 alphabetically
Message-ID: <20210707135437.p25nkjaw6vhqyxzb@pengutronix.de>
References: <20210707105309.1693138-1-u.kleine-koenig@pengutronix.de>
 <800ac3ca-e3a0-8d6c-5164-af804c6b2d4d@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="l6rfnymzmftvtdni"
Content-Disposition: inline
In-Reply-To: <800ac3ca-e3a0-8d6c-5164-af804c6b2d4d@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--l6rfnymzmftvtdni
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Ahmad,

On Wed, Jul 07, 2021 at 01:06:19PM +0200, Ahmad Fatoum wrote:
> On 07.07.21 12:53, Uwe Kleine-K=F6nig wrote:
> > The nodes after the root nodes are supposed to be ordered
> > alphabetically. So move &flexcan1, &flexcan2 and &pinctrl to their
> > proper place.
>=20
> At least for i.MX, it seems to be convention to have iomuxc at the end
> of the file.

Oh, that's news to me. Looking at next/master and the output of

$ for f in $(git grep -l \&iomux arch/arm/boot/dts/imx* arch/arm64/boot/dts=
/freescale/*); do awk '/^&/ { handle =3D $1; } END { if ( handle =3D=3D "&i=
omuxc" ) { print "end" } else { print "middle" } }' "$f"; done | sort | uni=
q -c
    158 end
    143 middle

(i.e. among the files that have a &iomux node, iomuxc is at the end for
158, and for 143 is isn't)

So that convention is either new or not very binding.

Note: In the end case there are a few (e.g.
arch/arm/boot/dts/imx6qdl-pico-dwarf.dtsi and
arch/arm/boot/dts/imx6qdl-pico-pi.dtsi) where iomuxc is at the end and
the file is sorted.

> I'd not reorder it, file is easier to browse when it's not in the
> middle.

Seems to be subjective :-)
I would consider it easier to browse if each pinmux define would be near
the device node that makes use of it, but iomuxc being at the end
doesn't have an advantage for me.

I don't feel like resending to only fix the flexcan ordering.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--l6rfnymzmftvtdni
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDlshoACgkQwfwUeK3K
7AnznQf9EiG1fYgCrTnLWq2vSnwYr05IR0VABi22DbU+F9qv1wbdPYUM52Psv+Iy
VtC1tCkBSSD49jHM3CYMjHsVY0jbVLI6GJIHFn7reh9pEE2hGi5LtaLV9AsMBFks
IK6vcOfxTjmk0i41u1ZZshLJxx8UPo6aF5ok9lH35OfO3Ew4S5vjRQ7NosCm3nCY
EMRbxfCklwALN2cdFJskHbG1YYExg8sVtCc28+Gg7X+uayKIr1CHvU0u3yL/mn0R
QE2xsJkjqzu9Es0p7UY48OURYYJGO57v+IrJDT3yCRtRIg8bcb37eBVp6uizTwtx
9LXwB9jbPIJRWw+aZ+sLsDmQu4rCMA==
=+EU+
-----END PGP SIGNATURE-----

--l6rfnymzmftvtdni--
