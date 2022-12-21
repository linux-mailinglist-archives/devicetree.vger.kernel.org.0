Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC475652FD5
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 11:48:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234471AbiLUKsv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 05:48:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234609AbiLUKsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 05:48:21 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17DC81D33D
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 02:48:20 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1p7we2-0006Bl-AA; Wed, 21 Dec 2022 11:48:18 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1p7we1-000lyD-6E; Wed, 21 Dec 2022 11:48:17 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1p7we0-006q0t-CG; Wed, 21 Dec 2022 11:48:16 +0100
Date:   Wed, 21 Dec 2022 11:48:16 +0100
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] drm/imx/lcdc: Implement DRM driver for imx21
Message-ID: <20221221104816.pmlkz7mouzghaqp2@pengutronix.de>
References: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
 <20221216235758.GA88372-robh@kernel.org>
 <20221217183806.bvo5vypm6axycdte@pengutronix.de>
 <20221220181948.GA828243-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="4cazobu63gj5jq32"
Content-Disposition: inline
In-Reply-To: <20221220181948.GA828243-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--4cazobu63gj5jq32
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Tue, Dec 20, 2022 at 12:19:48PM -0600, Rob Herring wrote:
> On Sat, Dec 17, 2022 at 07:38:06PM +0100, Uwe Kleine-K=F6nig wrote:
> > On Fri, Dec 16, 2022 at 05:57:58PM -0600, Rob Herring wrote:
> > > On Fri, Dec 16, 2022 at 06:50:04PM +0100, Uwe Kleine-K=F6nig wrote:
> > > > Hello,
> > > >=20
> > > > Changes since v2:
> > > >=20
> > > >  - added allOf as Krzysztof requested
> > > >  - reworked driver based on Philipp's comments
> > > >    (improved error handling, different selects, moved driver to a s=
ubdirectory,
> > > >    header sorting, drm_err instead of DRM_ERROR, inlined
> > > >    imx_lcdc_check_mode_change, make use of dev_err_probe())
> > > > =20
> > > > Krzysztof also pointed out that we're now having two compatibles fo=
r a
> > > > single hardware. Admittedly this is unusual, but this is the chance=
 that
> > > > the (bad) compatible identifier imx21-fb gets deprecated. The hardw=
are
> > > > is called LCDC and only the linux (framebuffer) driver is called im=
xfb.
> > >=20
> > > The problem is you can't have firmware (with the DTB) that supports=
=20
> > > both. Well, you can if you want to have some firmware setting that=20
> > > selects which one. Otherwise, it's really an OS problem to decide wha=
t=20
> > > to use.=20
> >=20
> > I don't understand what you intend to say here. The same applies if the
> > compatible is the same for both binding alternatives, isn't it?=20
>=20
> Only if you have both nodes in the DT and both enabled. But 2 enabled=20
> nodes at the same address is also a dtc warning, so I was assuming you=20
> didn't do that.

My idea was to use the new compatible in the soc.dtsi, and the old one
in the soc-machine.dts until they are converted. And then eventually
drop the old driver.

> > Do you consider a firmware problem better or an OS problem?
>=20
> The OS created the problem, so they get to keep it. But a PC BIOS is=20
> full of OS compatibility switches, so...
>=20
> In the end, it's the platforms' decision really. I just want what the=20
> implications of having 2 compatibles are to be understood.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--4cazobu63gj5jq32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmOi5G0ACgkQwfwUeK3K
7AkJJwf/bDS07ZY11YVYCJGdtOPg/m483Ob1JEG3Yy74hpRsrRuqTAhzA/eUT1lO
upVb1pGZCRhfWmXRqvkQYZiThcIqA8VNQaZQhBffUBDub/VpwVZHfC7Aze535zpa
rpXTlQKZsO0AGtaV0iXoq+7lTGuYAfNAzb5toxTH/ssCBcr61yyvvy+ujc3dnP53
ffwse3PPt2i6xm6QVMQGYgedV9f3rZw4QieKf5PEdfbx9qCmUFglKvPJGOsEtn1g
CTyWbq50u3MjrvPzdHNMaekIXgSvS2XnwQbal+TzpCUYDkwDyeE4JeDVS5HqnD01
3GSL5szyAK2fzGpzEUbR+rkLJrjIUQ==
=4/GR
-----END PGP SIGNATURE-----

--4cazobu63gj5jq32--
