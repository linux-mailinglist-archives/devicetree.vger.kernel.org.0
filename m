Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDF1471F43E
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 22:55:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231691AbjFAUzm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 16:55:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229693AbjFAUzm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 16:55:42 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCF9899
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 13:55:40 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1q4pKE-0006OD-Nu; Thu, 01 Jun 2023 22:55:14 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1q4pKD-004Qx6-1R; Thu, 01 Jun 2023 22:55:13 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1q4pKC-00AGQU-E6; Thu, 01 Jun 2023 22:55:12 +0200
Date:   Thu, 1 Jun 2023 22:55:09 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aurelien Jarno <aurelien@aurel32.net>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm*/dts: Enable symbols for rpi device trees
Message-ID: <20230601205509.j6zqdlh4kld6xini@pengutronix.de>
References: <20230530175624.2360218-1-u.kleine-koenig@pengutronix.de>
 <20230601140214.i4yvya763sotyjz7@pengutronix.de>
 <20230601-rake-calamari-eda0c88bd9bf@wendy>
 <d47958c6-eec6-badd-8924-62807461546f@gmail.com>
 <ee304442-b8bf-ef9e-e10e-64ec4daf8ba1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="l6qwe5efllahwmee"
Content-Disposition: inline
In-Reply-To: <ee304442-b8bf-ef9e-e10e-64ec4daf8ba1@gmail.com>
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


--l6qwe5efllahwmee
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Florian,

On Thu, Jun 01, 2023 at 10:40:07AM -0700, Florian Fainelli wrote:
> On 6/1/23 08:37, Florian Fainelli wrote:
> > On 6/1/2023 7:13 AM, Conor Dooley wrote:
> > > On Thu, Jun 01, 2023 at 04:02:14PM +0200, Uwe Kleine-K=F6nig wrote:
> > > > On Tue, May 30, 2023 at 07:56:22PM +0200, Uwe Kleine-K=F6nig wrote:
> > > > > based on an earlier submission by Aurelien Jarno, I rebased
> > > > > and slightly
> > > > > simplified the patches.
> > > > >=20
> > > > > There was some related irc conversion in #armlinux. Quoting
> > > > > the relevant
> > > > > parts:
> > > > >=20
> > > > > 1685078851< ukleinek> arnd, [florian]: Who would pick up https://=
lore.kernel.org/linux-arm-kernel/20220410225940.135744-1-aurelien@aurel32.n=
et
> > > > > ?
> > > > > 1685078920< ukleinek> arnd, [florian]: If there is an
> > > > > agreement in general that this is a good idea, I can
> > > > > coordinate with Aurelien that for arm64 there is a v2 with
> > > > > the simpler approach I pointed out.
> > > > > 1685083481< arnd> ukleinek: I have no objections to this, if
> > > > > [florian] wants to pick it up and send me for 6.5.
> > > > > 1685083809< arnd> robher: any comments on this one?
> > > > > 1685466520 < [florian]> ukleinek: I was hoping we would get
> > > > > an Ack for robher before picking it up in the brcm soc tree,
> > > > > don't want to ruffle any feathers unnecessarily
> > > > >=20
> > > > > So it seems to start a beneficial chain reaction, only Rob's Ack =
is
> > > > > needed.
> > > >=20
> > > > Not sure this might help, but as Rob seems to be away for mail, I'll
> > > > try: arch/arm64/boot/dts/nvidia/Makefile and
> > > > arch/arm64/boot/dts/ti/Makefile also make use of -@. So this patch =
at
> > > > least isn't a completely new thing and maybe Florian might dare to =
take
> > > > this patch even without Rob's explicit consent?!
> > >=20
> > > FWIW you can have mine, unless it is explicitly Rob's you want Floria=
n.
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >=20
> > OK, I will take yours and queue those up!
>=20
> Applied both with Conor's ack.

Thanks to all people involved here. I'm really glad this is accepted
now, it will make using dtbos in Debian quite a bit simpler.

> Uwe, please copy
> bcm-kernel-feedback-list@broadcom.com next time, so the patches show up in
> our patchwork and make my life a tad easier ;)

You could be relatively sure I will do that, if the MAINTAINERS file
gets modified such that

	scripts/get_maintainer.pl -f arch/arm64/boot/dts/broadcom/Makefile

includes this address. I took a quick look, but it wasn't obvious to me
which entry should be expanded accordingly. (But I'll try to remember
anyhow.)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--l6qwe5efllahwmee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmR5BawACgkQj4D7WH0S
/k7AIwf8ClhxtJL/z2/8kEQmY173TkWMBHtz9WD2xWRKQpeJRD0vuzYLRxJvojWt
7gsLJviJOdwgZ1LruT8FOq/auD3zLN3DjIY70963TpfU84l+8HOqy+o3Gpx46wS2
jDu7NRTnpEjCWCX9kVER8bHDTiHSAv2ofBPHFeUtu3DRB7E/5dgK3pHhor6VyW15
3ZgiSqhUjTTQ6+LWXLSBacSutqO0ySnKdchADOkzYZ+AtNon8XB98ro6J6CQpiUh
fpNBuxsviz7K200Up/Uzx1cM/biDHtRlb89YT4w0EOLuVNOQnAuFu3a3lof65wy8
Ggz+RyNmiRn1ytMUGRPU6aQpogJ18g==
=/j7w
-----END PGP SIGNATURE-----

--l6qwe5efllahwmee--
