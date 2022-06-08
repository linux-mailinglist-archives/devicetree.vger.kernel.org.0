Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56271542E57
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 12:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236797AbiFHKuh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 06:50:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237628AbiFHKua (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 06:50:30 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64BB21E2269
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 03:50:29 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1nytGd-0001nt-Lb; Wed, 08 Jun 2022 12:50:27 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nytGd-007APG-Hm; Wed, 08 Jun 2022 12:50:26 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nytGb-00ExQg-GN; Wed, 08 Jun 2022 12:50:25 +0200
Date:   Wed, 8 Jun 2022 12:50:25 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     nicolas saenz julienne <nsaenz@kernel.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH] arm: bcm2711-rpi-4-b: Add gpio offsets to line name array
Message-ID: <20220608105025.zz4luujitqxglyok@pengutronix.de>
References: <20211130161147.317653-1-u.kleine-koenig@pengutronix.de>
 <3dd6940acac27e5577b54ded8f2d472bbb6f7733.camel@kernel.org>
 <bc412de6-1f77-b8ba-fdff-af27c47c8e30@gmail.com>
 <921ec5ea67b6d343647a28b57b78923e5678d59b.camel@kernel.org>
 <20220608071349.uflbfojuf3e65k5y@pengutronix.de>
 <a9113658-4267-fe36-a9f5-36c142ab0e0c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="okjqcwl3a5cgd5p7"
Content-Disposition: inline
In-Reply-To: <a9113658-4267-fe36-a9f5-36c142ab0e0c@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--okjqcwl3a5cgd5p7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 08, 2022 at 10:13:20AM +0200, Florian Fainelli wrote:
>=20
>=20
> On 6/8/2022 9:13 AM, Uwe Kleine-K=F6nig wrote:
> > Hello Nicolas,
> >=20
> > On Thu, Dec 02, 2021 at 09:21:53AM +0100, nicolas saenz julienne wrote:
> > > On Wed, 2021-12-01 at 14:16 -0800, Florian Fainelli wrote:
> > > > On 12/1/21 3:40 AM, nicolas saenz julienne wrote:
> > > > > On Tue, 2021-11-30 at 17:11 +0100, Uwe Kleine-K=F6nig wrote:
> > > > > > this helps human readers considerably to determine the line nam=
e for a
> > > > > > given offset or vice versa.
> > > > > >=20
> > > > > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.=
de>
> > > > > > ---
> > > > >=20
> > > > > Applied for next.
> > > >=20
> > > > Subject should be:
> > > >=20
> > > > ARM: dts: bcm2711-rpi-4-b: Add gpio offsets to line name array
> > > >=20
> > > > Can you fix that up before sending this to me as a pull request? Th=
anks
> > >=20
> > > Done, thanks for catching that one.
> >=20
> > This patch is in next since 2021-12-16 as ce94980d2970, but didn't hit
> > mainline yet. What's wrong here?
>=20
> It's there:
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D5e8c1bf1a0a5c728cee2b6c2162348a9dfddf1bf

Thanks, so it's just that the for-next branch in
git://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git needs
a rebase.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--okjqcwl3a5cgd5p7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmKgfu4ACgkQwfwUeK3K
7AkIwQf8DAYTlmYthwjWifMim1CvWuHN1lqD5mRHmkhBFPTgXdOnqjpEW+2ZdXSp
VcPagLEa8pgUAIqzJ83Jp91cpvsmRG4QWYBsxfsppqPiroXCNNBYq70r8R55GevK
/lzcGG3NCxeeZuGJirHLy2MZOWEwdw+6xNqKl5P7uTB8oW9J6zUGVHUDrIpoRp5z
byDwdFFrCcNUrztycHNoRvjmKyMeg7pwDmLeYdnUbv/WCXQh/X9gnBwbOK8CzzLP
MuIIShrm982v4HbIDf7W9xFwmzyI1USkVXBDLXUjqu1vihTvPMEOiN8VT8u3hqGC
e0cvW/T0Nchp5r7ak9k4HjG67Kw2qg==
=Mz+Q
-----END PGP SIGNATURE-----

--okjqcwl3a5cgd5p7--
