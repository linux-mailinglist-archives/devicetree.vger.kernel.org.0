Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7286057B192
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 09:18:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiGTHSv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 03:18:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiGTHSv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 03:18:51 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A132566BB3
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:18:50 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1oE3yp-0001cx-Bh; Wed, 20 Jul 2022 09:18:47 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1oE3yl-0024QQ-TS; Wed, 20 Jul 2022 09:18:43 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1oE3yk-006KrZ-UB; Wed, 20 Jul 2022 09:18:42 +0200
Date:   Wed, 20 Jul 2022 09:18:34 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] ARM: dts: stm32mp15x: Add timer interrupts
Message-ID: <20220720071834.augn2mtytqzqcixo@pengutronix.de>
References: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
 <20220519162838.695404-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ltqjj27tuoy3n3jq"
Content-Disposition: inline
In-Reply-To: <20220519162838.695404-2-u.kleine-koenig@pengutronix.de>
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


--ltqjj27tuoy3n3jq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, May 19, 2022 at 06:28:38PM +0200, Uwe Kleine-K=F6nig wrote:
> The timer units in the stm32mp15x CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones. Add the irqs
> to the timer units on stm32mp15x.
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

This patch wasn't picked up yet (at least nobody told to have done it
and it's not in next). Is there a problem other than no maintainer time?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ltqjj27tuoy3n3jq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLXrEcACgkQwfwUeK3K
7Ang7gf/Rd5W5Jg4hMwhnAke3rNUDJnYzTaAWUL1IKCO8ZYgddNv1gojlRjoTSm6
GVti+ACsAd+34xDdLQ9GDJ1JgvM4nlrg5HvGjmtMe9SIM/fVQNzlezA3bp5Q0zW9
US94zB9DlTEGY1T1YEPrUw6//gJ/IQ7wZPlIe8dsZbsze7AIWOcbLlPYRZE4GUBo
MjjC23hL0+GPVDrRF8sxIybxAlq7szjqICgCsmemw7KH1ooF9tFLMOh5jgg0JxJE
5RCjaJTVinzp3Ysuxx8m8hnxgBbkXMsfmw5rwqK1mGZZJMxUk8NRQEaGj+4HFSxH
CCoxbujOBFCCCw047z8X2MIB2PDnFg==
=ijww
-----END PGP SIGNATURE-----

--ltqjj27tuoy3n3jq--
