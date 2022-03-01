Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88A354C8C8F
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 14:26:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231616AbiCAN1T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 08:27:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230374AbiCAN1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 08:27:19 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A313D9D044
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 05:26:38 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3F4B961416
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 13:26:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 112BAC340EE;
        Tue,  1 Mar 2022 13:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646141197;
        bh=1DTqbTc4ulkb0fviBXNsAj3qxd0r1QufWdpYuJIk+fg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IL/g5/Lr67CKCze983PhXU7r3WSgt/3c2FqN+IahHY7hEtjJbK3hmMVgRLQ+KYj9w
         BuCvFcnm3kPOtbqxjdF5DeM3jQNiG96/76ZaQFYer74eMo7tyTt4GIdXTGW+mf6Tqa
         BZJ1fWdmZz/jnqT+l0aUjiQgjYezIAUa18c3QsWMHw962VgLhALl2ixTbeNkmltYlS
         AF6ZFg9g9UX9QmDI55cHs39F6clGu48KjisWDRIZ77UR7LUL2rMZu+Eqw2og0oJoer
         L2UDAwWL89DJXt4faq1LXjUR95xrca7JF/eOryOfAqdt3qXZTDKWgUYgayABfo5Txs
         lZTIFxTpdteWw==
Date:   Tue, 1 Mar 2022 13:26:32 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 2/2] ASoC: codecs: Add Awinic AW8738 audio amplifier
 driver
Message-ID: <Yh4fCAE41Sc5AjwL@sirena.org.uk>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-3-stephan@gerhold.net>
 <Yh4VziYJ2M2aenjz@sirena.org.uk>
 <Yh4XOC5+Uam9UMdJ@gerhold.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="OHqBp8PbVqqccFla"
Content-Disposition: inline
In-Reply-To: <Yh4XOC5+Uam9UMdJ@gerhold.net>
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


--OHqBp8PbVqqccFla
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 01, 2022 at 01:53:12PM +0100, Stephan Gerhold wrote:
> On Tue, Mar 01, 2022 at 12:47:10PM +0000, Mark Brown wrote:

> > I only have this patch, nothing else from the rest of the series.
> > What's the story with dependencies?

> Hmm, I definitely sent the whole series to you. Let's wait a bit longer
> to see if it will still arrive, otherwise let me know and I can try to
> send it again.

Yes, it's turned up OK now - wonder what delayed the earlier bits.

--OHqBp8PbVqqccFla
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIeHwgACgkQJNaLcl1U
h9BWeAf/Yxb5JebNr2s6Zb7XhaUYHkIHB4qi6c5jEG/QHKrIYgGQJOmxMfXzJewU
QPMY/0A0rgq598SpBrQQKeyWKy6T74kAbz8vW98zCGG4T3Xk82orhS2q8y5NLewQ
pxFodkNSktD4XhgvzGjMhLmTSROF64Uo0JTIgKZ0VuKN0m4Mio2pH7mYWKxR/Qt0
y9NACNV+PisVMsPSrsPCqABg8MstUBNzBsNkPGr8S3C0elXMusOwB+zcPp1PAbF4
MqJhaqNiJ2Hsuoo+Vi2kcKoXeY9Y7Tqn/GuwR+TjjbRjhOCC6eQLgmC2yzlhp41X
GjS4+8plJi3zJ5kuttHepVQGjPaF7A==
=3Fav
-----END PGP SIGNATURE-----

--OHqBp8PbVqqccFla--
