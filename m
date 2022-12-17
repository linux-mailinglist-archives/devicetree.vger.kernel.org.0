Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E826064FB95
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 19:38:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229624AbiLQSiT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Dec 2022 13:38:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiLQSiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Dec 2022 13:38:19 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92845281
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 10:38:17 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1p6c4c-0002Zx-A4; Sat, 17 Dec 2022 19:38:14 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1p6c4Z-005FEd-4z; Sat, 17 Dec 2022 19:38:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1p6c4Z-005tG6-3s; Sat, 17 Dec 2022 19:38:11 +0100
Date:   Sat, 17 Dec 2022 19:38:06 +0100
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] drm/imx/lcdc: Implement DRM driver for imx21
Message-ID: <20221217183806.bvo5vypm6axycdte@pengutronix.de>
References: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
 <20221216235758.GA88372-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="q2u25vyd556sobl5"
Content-Disposition: inline
In-Reply-To: <20221216235758.GA88372-robh@kernel.org>
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


--q2u25vyd556sobl5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 16, 2022 at 05:57:58PM -0600, Rob Herring wrote:
> On Fri, Dec 16, 2022 at 06:50:04PM +0100, Uwe Kleine-K=F6nig wrote:
> > Hello,
> >=20
> > Changes since v2:
> >=20
> >  - added allOf as Krzysztof requested
> >  - reworked driver based on Philipp's comments
> >    (improved error handling, different selects, moved driver to a subdi=
rectory,
> >    header sorting, drm_err instead of DRM_ERROR, inlined
> >    imx_lcdc_check_mode_change, make use of dev_err_probe())
> > =20
> > Krzysztof also pointed out that we're now having two compatibles for a
> > single hardware. Admittedly this is unusual, but this is the chance that
> > the (bad) compatible identifier imx21-fb gets deprecated. The hardware
> > is called LCDC and only the linux (framebuffer) driver is called imxfb.
>=20
> The problem is you can't have firmware (with the DTB) that supports=20
> both. Well, you can if you want to have some firmware setting that=20
> selects which one. Otherwise, it's really an OS problem to decide what=20
> to use.=20

I don't understand what you intend to say here. The same applies if the
compatible is the same for both binding alternatives, isn't it? Do you
consider a firmware problem better or an OS problem?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--q2u25vyd556sobl5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmOeDIwACgkQwfwUeK3K
7AlIUQgAg24Wp5qaDVZinPOUhU3yor5qWrUl7VQeNiY1eUq8fVJGbkSjM7rOA3lc
pldAThh4DuYhR4vmnoK8NJYvc+IFc36BoohLO6qCGAVIMR8vsPbslzDk+U6JuubP
Xpn7P92Yrtn9BjrFLDgk0okGiic3Z5fEqGaBTC0QAQjfOqo1CRJ4Ac/sI1Wp8OpM
fey+UMiFXal6hragjzFHq64cV0Qws9vwPVWRMZ2/8SXBaGtHuWUvv0N/LTnmBnJm
PRoeqWQSuTggOEpZV9TQVjBMOfxFyPkYANQ1PpsnBTOi8TVqIeyL7qI3oeZzrtbG
vEjsLpR5kCPsaoQxKHmDin/BfA1YOQ==
=BqGT
-----END PGP SIGNATURE-----

--q2u25vyd556sobl5--
