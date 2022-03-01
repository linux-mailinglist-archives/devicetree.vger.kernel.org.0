Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 028B74C8D48
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 15:06:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235113AbiCAOGo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 09:06:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235158AbiCAOGo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 09:06:44 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A06E3692A7
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 06:06:02 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3D19F6152E
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 14:06:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06176C340EE;
        Tue,  1 Mar 2022 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646143561;
        bh=04NEQj+QzMV3JzBvJ4Q1nfcFLj9lFdSx3Ms0+VTMWb8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=j5Yf7zwlcGR/8sam7I9mKKloSaJlok3+aubkekyhbx1qytvA/fd0A+eJEg7INQ3Pz
         3nc6/vrGBoqJKfnHQHOpOoCwrAn9xcwGk/JI0sLdxz4eF8waJ5r2yaO5Ws5ocyzWcn
         8DhSQ5Hge5LSLZR3IC2453bL3kyQ6tEEodKlxNSxxf6vWF3ixD1AH/w+Lluj2+EMei
         6vXIvc5etATJpPS+PFw1E37fgIz6unBNscOHYKwlIiNp3bJTrOg8h0+aHmPxuLYqQV
         WFK831RYsEm5/VZPhKvYOZqY9I1ClaRAP9e6yNGJXeC4hCmIBReaSxX+Qq3Bx6O7Km
         qHGBfKb5Qr3sg==
Date:   Tue, 1 Mar 2022 14:05:56 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: Add schema for "awinic,aw8738"
Message-ID: <Yh4oRBb2uHf+NvXz@sirena.org.uk>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-2-stephan@gerhold.net>
 <Yh4hYVJFZJBYp3d9@sirena.org.uk>
 <Yh4lfjsDR4qqnc8Y@gerhold.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Rx93jjjGeYy76A0C"
Content-Disposition: inline
In-Reply-To: <Yh4lfjsDR4qqnc8Y@gerhold.net>
X-Cookie: You have a message from the operator.
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Rx93jjjGeYy76A0C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 01, 2022 at 02:54:06PM +0100, Stephan Gerhold wrote:
> On Tue, Mar 01, 2022 at 01:36:33PM +0000, Mark Brown wrote:
> > On Tue, Mar 01, 2022 at 01:37:41PM +0100, Stephan Gerhold wrote:

> > > +  awinic,mode:
> > > +    description: Amplifier mode (number of pulses for one-wire pulse control)
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    minimum: 1

> > No maximum?

> I wasn't sure if we really want to maintain maxima for several different
> Awinic part numbers here. For the AW8738 the maximum is 7, for the
> AW87318 (note the additional 1 in the name) it would be 10. The driver
> part would be identical for both.

> ... But it's probably cleaner to have the schema check for the real
> maximum of the selected compatible. I will add a "maximum" in v2.

Even if it's just a maximum for any of the supported chips it'd still be
something.

> > > +  sound-name-prefix: true

> > While it's very likely that someone will want to use this it shouldn't
> > be *mandatory* that they do so, there may be no other controls for it to
> > collide with (eg, if none of the other components in the audio path have
> > controls).

> This line just enables the "sound-name-prefix" from the included
> name-prefix.yaml. It's not listed in "required" so it's actually
> already optional.

Of, that's a really confusing way of importing things.

--Rx93jjjGeYy76A0C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIeKEMACgkQJNaLcl1U
h9C/KAf9Gt7awV5WuAyBSjuvdohK/UvqC8PXq0zg84VbkYtjydMMLNZVq5Do/tvY
SgrFFonq2RQJJJ123aSYkDWo4ySAJostbq+r/AXq+laboOOMrObTWZms21rvYI/C
oOE6b2B2lA+R7TaDrzRX9K275tdctZeeisuFwNqLVchIlcnKlWTZsI9Bq/3et7Gy
jtGJ0i9ZfvWwCFKMtV1THWgPutuohATHotqadP8j+ruCVJLX16hwDpEXzcD3/4wc
jOkPheO7cAzUQFquJkewNUBvSURxugPktwAA39VUkCFxzW5rnxDXJoTB7EGbPatB
1BPXQgh25ltoFHe9ykFNxa/NUUqj4A==
=tzMw
-----END PGP SIGNATURE-----

--Rx93jjjGeYy76A0C--
