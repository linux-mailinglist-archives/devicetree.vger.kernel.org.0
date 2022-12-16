Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B3C764EC47
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 14:50:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiLPNuC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 08:50:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiLPNuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 08:50:00 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09EB31B1C9
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 05:50:00 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A1A326210D
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 13:49:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D45DEC433D2;
        Fri, 16 Dec 2022 13:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1671198599;
        bh=QFMisP15sjuymDRGXQT7IkSyMcDUWNcSig/PMP/Pqe0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OWIO9sX8SOZuiEzTnQgL8kfFK8V1LmakqnbFhx/wqDIZnAmXB+ydnW5QBTiIcEwPS
         9ZcIi3Ar5pAC3KiJYvawuiIo4m5J0hK6C22A2M4Bk/uMiOF6D09nMqLLfV1Kv3t5tC
         2tCOaS5O1GyVzy/jiFKR613Cst4JQhk3jfAmi1POjB7qLY5QnNZzJCpZJQW656dUNo
         EVS7Zmdur9wMjSyHVtPEKWVhI5Dta1H0g21xZzkoO+ERFtmB/4net2U6NhlZAaJkDj
         O0Rhj347V1ZpBcxZ0I58P4vrA8HHQulSv6f059vGPd+xLfdSaFfERNwBUN+B0qfKnw
         noLqEB5jJI0og==
Date:   Fri, 16 Dec 2022 13:49:53 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
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
Message-ID: <Y5x3gQ4yQFTal5WV@sirena.org.uk>
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
 <Y5sJV2KfX98KoMYZ@sirena.org.uk>
 <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
 <Y5sVewc7ItFBZkn4@sirena.org.uk>
 <87iliccjoz.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="B4Ig2C85qvcn2BWz"
Content-Disposition: inline
In-Reply-To: <87iliccjoz.wl-kuninori.morimoto.gx@renesas.com>
X-Cookie: No passing.
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--B4Ig2C85qvcn2BWz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 15, 2022 at 11:48:29PM +0000, Kuninori Morimoto wrote:

> BTH Mark, this patch is included in this patch-set, but it can be
> stand alone patch if other patch-set were accepted.
> Is is possible to post this v2 patch as [1/1] ? or do I need [PATCH v2 11/11] ?

Just posting it as 1/1 is best - for both patch number and series
version the numbering only makes sense within a single series, you can
just drop this patch from v2 of the main series and send it separately
as just a standalone patch.

--B4Ig2C85qvcn2BWz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmOcd4AACgkQJNaLcl1U
h9CRfQf/U/FMNAdDXx65RJpVN9Ys/ENAN4EFqRJkYlf6Zcq2SP9iAC4K0wIXTArP
Y0tHd54bT2HU6unXgYi3iKZGVvrc+eM1kfVkuo4PoaYacDtDTq/U387vuXEE1XZ+
p/Wc5oTf/ZbQw49vbFo3iOQdcVPCEr6CrFCtlyppN7p0bD6kO6VFKm7+/qRB0EdA
qAh9nOrVRHrCBV+nBbT3apynlKRrIFRVIkFmS2EeHbDMZPTuILs/Ucd95VB2xjBn
05LiZ1fA6xCRlHD/KHwFIWRthJCE/3oL2v8cAdWHFhEyeyUxKI//GKiOnnBzEtaj
+To7bYmVaJGmfDVSw+uUoiw0SApLbw==
=lJj3
-----END PGP SIGNATURE-----

--B4Ig2C85qvcn2BWz--
