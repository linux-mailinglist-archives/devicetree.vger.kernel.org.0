Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A09C586725
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 11:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230291AbiHAJxT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 05:53:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230011AbiHAJxT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 05:53:19 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEB6123BEB
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 02:53:17 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1oIS6s-0004hI-8S; Mon, 01 Aug 2022 11:53:14 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1oIS6n-0015FE-Mm; Mon, 01 Aug 2022 11:53:09 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1oIS6m-008sfF-Ts; Mon, 01 Aug 2022 11:53:08 +0200
Date:   Mon, 1 Aug 2022 11:53:08 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] ARM: dts: stm32mp15x: Add timer interrupts
Message-ID: <20220801095308.5ueokezguhfcug3u@pengutronix.de>
References: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
 <20220519162838.695404-2-u.kleine-koenig@pengutronix.de>
 <20220720071834.augn2mtytqzqcixo@pengutronix.de>
 <dcb245b7-1d2f-0f90-8be8-26688d184b5a@foss.st.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7hotrbs4sofjpxj5"
Content-Disposition: inline
In-Reply-To: <dcb245b7-1d2f-0f90-8be8-26688d184b5a@foss.st.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7hotrbs4sofjpxj5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 01, 2022 at 10:44:28AM +0200, Alexandre TORGUE wrote:
> Hi Uwe
>=20
> On 7/20/22 09:18, Uwe Kleine-K=F6nig wrote:
> > Hello,
> >=20
> > On Thu, May 19, 2022 at 06:28:38PM +0200, Uwe Kleine-K=F6nig wrote:
> > > The timer units in the stm32mp15x CPUs have interrupts, depending on =
the
> > > timer flavour either one "global" or four dedicated ones. Add the irqs
> > > to the timer units on stm32mp15x.
> > >=20
> > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >=20
> > This patch wasn't picked up yet (at least nobody told to have done it
> > and it's not in next). Is there a problem other than no maintainer time?
> >=20
> > Best regards
> > Uwe
> >=20
>=20
> I was waiting for a review from Rob or Krzysztof on bindings patch [1]. L=
et
> me know if I missed it.

You did:

Patch #1 was reviewed by Rob and taken by Lee, currently waiting in
'for-mfd-next' of
git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git as
9875ab53c8ae ("dt-bindings: mfd: stm32-timers: Document how to specify
interrupts").

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7hotrbs4sofjpxj5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLnooEACgkQwfwUeK3K
7AlU/AgAjqa6m/0TKaSky7vYt2mg7zvAwJ4UG4IqrDCYHWBcyecI6t5xElhT8rGj
NYKsNDP6XPjZdEnEF3mW9Tp9/V70bElnLRWmWAIru/rXvE0jOwOcHJMUBbBxt5uc
vYdi6gz6dxHSJDsRfTggTr1/Fu5K9zlQzs9/cH5Z+98Jv+fnG1dF5VfZUtsF15d9
bqBy5kZSmbJWInno+xm6iUyaNPJ/IimdmbQwoOrfFmDVeUNy0xBh+gaTkn2uRcev
8vU093jpk61ykkGVr/Azd+Ss+jtz0uKC8jWrMlu4FbPF4q9abD/TwnzqGrqFQNcu
8aWjt8onbjzAd7zhjrRfGDn6vPD8dQ==
=sd16
-----END PGP SIGNATURE-----

--7hotrbs4sofjpxj5--
