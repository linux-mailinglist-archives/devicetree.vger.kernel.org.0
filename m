Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4596C49FFD4
	for <lists+devicetree@lfdr.de>; Fri, 28 Jan 2022 18:58:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350440AbiA1R6n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jan 2022 12:58:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345382AbiA1R6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jan 2022 12:58:37 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35502C061714
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 09:58:37 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1nDVW7-0007CF-Gp; Fri, 28 Jan 2022 18:58:35 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nDVW6-00D2qh-C8; Fri, 28 Jan 2022 18:58:33 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nDVW4-0020eJ-Pc; Fri, 28 Jan 2022 18:58:32 +0100
Date:   Fri, 28 Jan 2022 18:58:29 +0100
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Shawn Guo <shawnguo@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: imx: Add fsl,imx21-lcdc docs
Message-ID: <20220128175829.vjm66rs7eu7pk2my@pengutronix.de>
References: <20220128105849.368438-1-u.kleine-koenig@pengutronix.de>
 <20220128105849.368438-2-u.kleine-koenig@pengutronix.de>
 <CAL_JsqJjTf2zY-n69Ozh+S1gSi5Eoa5T44Qnq9RPNgJWDLmzKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wwvqn6rq4f3zbpyi"
Content-Disposition: inline
In-Reply-To: <CAL_JsqJjTf2zY-n69Ozh+S1gSi5Eoa5T44Qnq9RPNgJWDLmzKQ@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wwvqn6rq4f3zbpyi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Fri, Jan 28, 2022 at 07:04:10AM -0600, Rob Herring wrote:
> On Fri, Jan 28, 2022 at 4:59 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > From: Marian Cichy <m.cichy@pengutronix.de>
> >
> > This files documents the device tree for the new imx21-lcdc DRM driver.
>=20
> No, bindings document h/w and the h/w has not changed. We already have
> a binding for the LCDC.

Just to be sure we're talking about the same thing: You're refering to
Documentation/devicetree/bindings/display/imx/fsl,imx-fb.txt, right?

I'm unsure what to do now. Should the two different bindings just be
described in the same file? Should I stick to fsl,imx21-fb even for the
new binding? (The hardware unit is named LCDC, so the name chosen here
is the better one.) Please advise.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--wwvqn6rq4f3zbpyi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmH0LsIACgkQwfwUeK3K
7AkeEQf+LMan8puPvkLgFbK2uCYcIz0Dyw3DbTqzJHleg7llPDdKNntuorWhMdRj
HRZ/+EDA1lXkPaveSASiha8ew1KPAZ+H2wFDXsBPjRC38U0FdTi7+6G9TwQ4/AUw
BPXEx2Mxee2s8gMbFxjg6xUyhxo4Bf4VNvJw/JDV8g3CYLpRKMcoM1yAbQ9ElLaO
7hhrUZoIKOEUd8QLFSsFhMlWr/ThWmJoIARW7JXmVcrbrYulsPgDruMG3MiohiXw
zHnvBFHqSNVzbZm/9fMwxQQVF55ya5LwukyBQgzMccqOcSf5gOpwW45N/KPQYD4s
sxpX/6nsdpFVZ0gM/l3IAJrkWps/zA==
=/3WU
-----END PGP SIGNATURE-----

--wwvqn6rq4f3zbpyi--
