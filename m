Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D749696C0D
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 18:52:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjBNRwz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 12:52:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229648AbjBNRwy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 12:52:54 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3633358E
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 09:52:52 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5FBF0617D8
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 17:52:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FDF7C433EF;
        Tue, 14 Feb 2023 17:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1676397171;
        bh=Zeo8UXVInS7xrfeXu4q8HAWOdIVPkWxnAA1bvkL3OQA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SREMqWDzKOxX6+lJ9Ovd6n1U+xgLFm8KxVVcwBv+gfPSQZb8JMeiHTzrrEBFzuWsb
         Hynegxp4tUaZG/wz0Rnshbaed9pup5Z7LWZ2DrAiDgO9KWZmoycd/kPfxJdzVbIJC3
         i9dPKkaMCo/4yUo4gNjwdJDiQbLYjznpkLsovV2UworTO6W0+LoCmmVmmQNV7WHHkz
         UeaRYxSOH7qEke3JsbXHZ+Y67GbZOHttsCrRjQisYM1Iu2PJzd+hpWQj/FDc5q23hT
         5XGuLGqDwnjBZjC+8Wx+2zMEJuKifBVgvuIcPGEKA53/uKjEXLVwQfY67UHJmiwIBz
         eS7sykb/LyRVA==
Date:   Tue, 14 Feb 2023 17:52:48 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>,
        Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car
 Gen4 support
Message-ID: <Y+vKcGic3sC7+3I/@sirena.org.uk>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
 <87sffa8g99.wl-kuninori.morimoto.gx@renesas.com>
 <9aa09940-91cf-32ba-34f4-a57c9e9965bc@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5nTrF0kECEthPNCz"
Content-Disposition: inline
In-Reply-To: <9aa09940-91cf-32ba-34f4-a57c9e9965bc@linaro.org>
X-Cookie: Serving suggestion.
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--5nTrF0kECEthPNCz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 13, 2023 at 09:58:15AM +0100, Krzysztof Kozlowski wrote:
> On 13/02/2023 03:13, Kuninori Morimoto wrote:

> >    clock-names:
> >      description: List of necessary clock names.
> > -    minItems: 1
> > -    maxItems: 31

> Not much of an improvement here. We asked to keep the constraints here.
> I gave you the reference how it should look like. Why did you decide to
> do it differently than what I linked?

Krzysztof, please take more time to explain what issues you're
seeing, what you want people to do and why.  I'm having a hard
time identifying what the issue is here - AFAICT when you talk
about the example you linked you're referring to:

  https://elixir.bootlin.com/linux/v5.19-rc6/source/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml#L57

which as far as I can tell looks like what Morimoto-san is trying
to accomplish here.  I can't tell what the issue you're raising
is, let alone if it's something important or just a stylistic
nit.

--5nTrF0kECEthPNCz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmPrymMACgkQJNaLcl1U
h9A+Qwf+LKrLSI8QSlSdFzWPGZ9mTjWdiSl4gRMe+G25PrnwyX3F7+Ef1AJlb8oo
SpuW44cGteAL4d9a2mQ286jYRkTHUwb4E2cxI/CH8in9arTTX2yAr3zjfJyclUZK
8sb6dx6bjTVuDtFlw2O+Ngqop01RII2syp7js/XTgd+NPW6EUOQS9ayfK716Ro2K
ZgXRZHQoX0iY+W8/7u1dxsJJ2wMwy1/6lnMDI6UYSlsNATKjVQnbG5Jrw6eIpB8J
r0XOVpw26qzfLrRmRWClYEYiBWCFX7ywvamtm2HEIsTeYkGPKXlcFAYielX55F1U
eulvhcB/jaXzOWq97yhakI9YOUhLgg==
=4rgB
-----END PGP SIGNATURE-----

--5nTrF0kECEthPNCz--
