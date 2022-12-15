Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66F7D64DB5F
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 13:40:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbiLOMka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 07:40:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229899AbiLOMkL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 07:40:11 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5F5C2F673
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 04:39:29 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5B14761D7D
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 12:39:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81630C433EF;
        Thu, 15 Dec 2022 12:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1671107968;
        bh=U9NtNlqryxVKKy+CkPYgv3kx1LVUpLwfsFY1Xqn7gWc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ds5pykkcphu6gMoVoZj19lvnV5JhS+WGjNxIvWai5vDPam78gWCoQdY+NYJujww64
         oAPnyboo35qbfhazSA6DhxWfB4ENCjj/wPRkeLfLT9Nl7hkzo7JvaGVNKYUkohMSQN
         FSsCd0UzCbVb4p+7jhTcZ4SGySj+Yly3U8dejeS0s14DEBhAnL7CR1wpyalJ7Az9q8
         Fg0AuJpzbzPxi+CPSxqQMLuTd/AD0eT3SiJnlW63bgOgf05cxoYcF7q6o+Qp38bF/i
         gsZHbg8PCwVgJam4QR5ZjQHfXlLQsL7dP9F4342HSAH6wtNDY8ASKJ03WhttRmiFhN
         zi9u3gVKnr0uA==
Date:   Thu, 15 Dec 2022 12:39:23 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Mohan Kumar <mkumard@nvidia.com>
Subject: Re: [PATCH 06/11] ASoC: dt-bindings: ti,pcm3168a: Convert to
 json-schema
Message-ID: <Y5sVewc7ItFBZkn4@sirena.org.uk>
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
 <Y5sJV2KfX98KoMYZ@sirena.org.uk>
 <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Ii5OG8Rj0a5fA7tv"
Content-Disposition: inline
In-Reply-To: <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
X-Cookie: Today is what happened to yesterday.
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Ii5OG8Rj0a5fA7tv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 15, 2022 at 01:10:44PM +0100, Geert Uytterhoeven wrote:
> On Thu, Dec 15, 2022 at 12:47 PM Mark Brown <broonie@kernel.org> wrote:

> > I wouldn't do that, I gather the maintainers for DT bindings are
> > supposed to be people who know and care about the specific binding in
> > particular.

> Sure.  But how can they (still) care, if we cannot reach them?
> There's no email message from Damien to be found during the past
> 7 years.

The most sensible thing seems to be to allow bindings with no maintainer
TBH.

--Ii5OG8Rj0a5fA7tv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmObFXoACgkQJNaLcl1U
h9BTfgf/ebWabKO2Bgc6GL1+Kakz/qNto5vytkLfc52MvuYL5WFYu1dfqYbyQ9jg
TRZBG7YdcdCMa8ZIlRdygIiWkltdYcJ5K2bCqxMWV5JfGBlA+vGc7o0omua1QG3y
snOmxdAckqn6KbF5rVERNFpiSN/C6hsh3UoO8uXrzs84Msn4a06/lDiNwEe66Knm
kRiC7K6T7pIA4vTZsESLoa/NFDpfTRTcchyBz0t57cFnd4+2O3JlPW2fYNe7xsw6
Md+ew3XApoq1afIPDfDuGjYb61WxbWM2JSDITC4Osk3eQBi8KNmphpIzyllmwqAc
G02hikQ7He9SFagvBpXcGTQ1Q7BmOw==
=3PdK
-----END PGP SIGNATURE-----

--Ii5OG8Rj0a5fA7tv--
