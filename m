Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 389B35812F4
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 14:16:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233437AbiGZMQF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 08:16:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232573AbiGZMQE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 08:16:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47B80A450
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:16:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DB7CE6150B
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 12:16:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C400C341C0;
        Tue, 26 Jul 2022 12:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658837763;
        bh=2hYOtlIjA3jFUTkeNPkT4Ri7JN+wnxD604HkdeDvrY4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=W61hB1hbtPPn0baULjithHia2M6W4NJFJEx6HCA/h+Hl3gDMepE7DfgDeIb9V2f6k
         YghRv/PUEqemS7+qC3/zWlusGALvOEUxpSmuo60/sFGiyOhEbhwgazbUszcist2z3c
         +Uj3Lx7cPImNYGbAFEIjKl6riXQctmMdnAsa1dRdH81LSsWey2V5jzmkyMm9gL4cN7
         2Gv7QhlQfBgN2fZvfTLSR9033Zp9pngj+kCuI6qXA2Co+XwJeN4+LCMKL4vF8Fce0R
         yiIKrdPqMhvac128n5gj5sSZ6dFeIZmG4T/SVl5gNEDu/1HZHZ01G53dy90qvDHG+M
         Sm/mla02hA3Ww==
Date:   Tue, 26 Jul 2022 13:15:57 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>
Cc:     alsa-devel@alsa-project.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, devicetree@vger.kernel.org, robh@kernel.org,
        ckeepax@opensource.cirrus.com
Subject: Re: [PATCH v2 1/2] ASoC: codecs: add support for ES8326
Message-ID: <Yt/a/c6DBnu7gQxE@sirena.org.uk>
References: <20220726092058.GG92394@ediswmail.ad.cirrus.com>
 <20220726120523.127134-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="iwxJLXs8OWc9T/dN"
Content-Disposition: inline
In-Reply-To: <20220726120523.127134-1-zhuning0077@gmail.com>
X-Cookie: So this is it.  We're going to die.
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--iwxJLXs8OWc9T/dN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 26, 2022 at 08:05:23PM +0800, Zhu Ning wrote:
> >> +	.use_pmdown_time	=3D 1,
> >> +	.endianness		=3D 1,
> >> +	.non_legacy_dai_naming	=3D 1,
> >
> >The non_legacy_dai_naming flag has been removed, you will get
> >this behaviour by default now.

> Do I need .use_pmdown_time? Is it now enabled by default?=20

That's still there.  You can see what flags are available (and test that
your code builds) using current git.

--iwxJLXs8OWc9T/dN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLf2v0ACgkQJNaLcl1U
h9C1Lgf/cFPsZWG93kSw9rO8VWyEa4N52PcKRRnt3Yv74R/Yz0yAUQB3RDkujq4q
8UStggzC8apPaD838nEOTI5Tt9DDdiau686OXvC0WEM+YuP8baQJQvIhRBMF9/aN
vUh/UuProRsoaCJVlG2grZYrf7BliC45wnkjwdeFtV0L2bz7nqAkU4P80UNSz7HZ
X7GIYF96vqS7RrexYf22eLqjZhJNNfgTLvTqaPxuN7kQrPnbJwkQNwZghNXsDu4M
dLqPdlKpT08JSwUUCZr03/beMOaT490IqO9X+6lyGPoghYqeDVDhZQkHEkhnbrGv
ovjbzEuba4K07Ixzw0SEFRRU4At7WQ==
=IhXr
-----END PGP SIGNATURE-----

--iwxJLXs8OWc9T/dN--
