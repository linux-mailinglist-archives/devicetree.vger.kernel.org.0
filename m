Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06CF85BFCA2
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 12:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbiIUK4M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 06:56:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbiIUK4L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 06:56:11 -0400
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFDAB8E0E4
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 03:56:10 -0700 (PDT)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
        id BC5B71C0001; Wed, 21 Sep 2022 12:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
        t=1663757769;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=RZ510Miqi1t8ZvGMjGG267D8gsXmhJ29AGfIlli8t78=;
        b=cmbNygxyhPXTArqehTaax/BBhnBuw75nTPfQOC3xRdpz2XKs4x1enUpYa1duDbUReY0Wuc
        kwgNnozWJzG/yBE3JkM3V0QaJi8brNorYdtMcvBBozn/szSRpG1Ec8vfWBE2lcLqs7QF0G
        IvqITzyxVJiInXzsFe1f0brpJKKq3OQ=
Date:   Wed, 21 Sep 2022 12:56:09 +0200
From:   Pavel Machek <pavel@ucw.cz>
To:     Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: leds: Document mmc trigger
Message-ID: <20220921105609.GB22654@duo.ucw.cz>
References: <20220217174357.13427-1-marex@denx.de>
 <YhgHWMU/aV8MLBq+@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
        protocol="application/pgp-signature"; boundary="WYTEVAkct0FjGQmd"
Content-Disposition: inline
In-Reply-To: <YhgHWMU/aV8MLBq+@robh.at.kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--WYTEVAkct0FjGQmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 2022-02-24 16:31:52, Rob Herring wrote:
> On Thu, 17 Feb 2022 18:43:57 +0100, Marek Vasut wrote:
> > The mmc subsystem supports triggering leds on card activity, document
> > the trigger value here. The value is a pattern in this case.
> >=20
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
> > Cc: Pavel Machek <pavel@ucw.cz>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > To: linux-leds@vger.kernel.org
> > ---
> > V2: Rebase on next-20220217
> > ---
> >  .../devicetree/bindings/leds/common.yaml      | 39 ++++++++++---------
> >  1 file changed, 21 insertions(+), 18 deletions(-)
> >=20
>=20
> Reviewed-by: Rob Herring <robh@ke

Thanks, applied.

best regards,
							Pavel
--=20
People of Russia, stop Putin before his war on Ukraine escalates.

--WYTEVAkct0FjGQmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCYyrtyQAKCRAw5/Bqldv6
8hbNAKCw8a/vtzNckXoFYURpWSr5DN896gCeMUUzkfBp+RIOzoUjyYla3Ij6SrY=
=vkGG
-----END PGP SIGNATURE-----

--WYTEVAkct0FjGQmd--
