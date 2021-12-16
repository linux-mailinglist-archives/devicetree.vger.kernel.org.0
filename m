Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07A184772B1
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 14:07:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237294AbhLPNH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 08:07:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234696AbhLPNH3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 08:07:29 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25D42C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 05:07:29 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxqTn-000443-EX; Thu, 16 Dec 2021 14:07:27 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxqTm-004r7E-CV; Thu, 16 Dec 2021 14:07:25 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxqTk-0004pe-Nu; Thu, 16 Dec 2021 14:07:24 +0100
Date:   Thu, 16 Dec 2021 14:07:24 +0100
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        "moderated list:ARM/STM32 ARCHITECTURE" 
        <linux-stm32@st-md-mailman.stormreply.com>
Subject: Re: [PATCH] ARM: dts: stm32: Add timer interrupts
Message-ID: <20211216130724.qhragmcgtgvgwghq@pengutronix.de>
References: <20211215152535.41200-1-u.kleine-koenig@pengutronix.de>
 <CAL_JsqKW3XJ6n5CLg_BNEaASkUnXLM=J_XZW8M6i7sGPuZ8_9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jhcaijwvjxwchgmv"
Content-Disposition: inline
In-Reply-To: <CAL_JsqKW3XJ6n5CLg_BNEaASkUnXLM=J_XZW8M6i7sGPuZ8_9A@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--jhcaijwvjxwchgmv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Wed, Dec 15, 2021 at 06:49:33PM -0600, Rob Herring wrote:
> > diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml=
 b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> > index 10b330d42901..5e4214d1613b 100644
> > --- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> > @@ -46,6 +46,19 @@ properties:
> >      minItems: 1
> >      maxItems: 7
> >
> > +  interrupts:
> > +    maxItems: 4
>=20
> Please test this against your dts change. It will fail.

I thought I did. Probably I missed the error message in the noise ...

> You need a 'minItems: 1' otherwise 4 interrupts are always required.

Will address your feedback in a v3. (I sent a v2 already that still
suffers from the issues you pointed out.)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--jhcaijwvjxwchgmv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmG7OgkACgkQwfwUeK3K
7AnibgfzB3/gD2BwmKgOmJcvAR4QPHR88UgN0Z6Ru8KvgvK7xa2GJG2vz/YTHeNM
L6JKso+pJYelRYjEZlD9f3cExmphoDUCHtRun/wTyPtDebOh+Jj5moFmBNGlK7h+
zRpztk7ZERGLbJA4udGQ8JTtE6ualFH8i6/P9ZQQs6HzlnV0ylLPrO0jpJ2ma0+R
BlkVOYBI5XKEON7bmoTzhJdwKeFR+WvbiB3wNYea7vF+dpov5w2ZSxHPqPoxHF1z
kM2XY2wxBcq+A42ITWrlgc6phIsTIUN9WLlikd/+vk4NWhlfFoqDI11XL1lpsss+
ZbnUwITPw6N0sJ1A1bSOEP/MtpKM
=AtDJ
-----END PGP SIGNATURE-----

--jhcaijwvjxwchgmv--
