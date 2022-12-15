Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CD0D64DAA0
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 12:47:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbiLOLrp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 06:47:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbiLOLro (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 06:47:44 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9627915837
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:47:43 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 55F4CB819DC
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 11:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E42C4C433EF;
        Thu, 15 Dec 2022 11:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1671104861;
        bh=8snVgzDkOR9zhOe/egX/KJ3N1HQ0HLrjXTG8drtdyY4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FCBQzN34iw4qBds47R7Lh74FgGK/c1B+JmvJc4AN/oUvQcwD6lsvYiQIdg9LM1v9v
         AebAnCGpKeTuIovJS/mERhVrV6Z4HzL448CQyC/qV923rnnryiwGJB7Qx6Mzeetmk8
         h2SAkPaAaw2ziQ7p3uw9/4XvjZIbLX/WgnawPILtKgkQThsofxKfdRemIdpFAak+nQ
         SFVT/L9lrV11ZutMZ1pU2N2WvSj6aSCdrmUM3kVvGWJE3ZsdKgbJOiHdgOaVzwuvgy
         pRlgHcxKGD2d9wOloX3sgyY/aViPqK5VT2+0lL/BKLNfCWGsdCWso7tg5OjaD6nua6
         h8YCHyeDIprzA==
Date:   Thu, 15 Dec 2022 11:47:35 +0000
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
Message-ID: <Y5sJV2KfX98KoMYZ@sirena.org.uk>
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="QJDUvaOOFQYQAqme"
Content-Disposition: inline
In-Reply-To: <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
X-Cookie: Today is what happened to yesterday.
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--QJDUvaOOFQYQAqme
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 15, 2022 at 12:03:02PM +0100, Geert Uytterhoeven wrote:
> On Wed, Dec 14, 2022 at 2:23 AM Kuninori Morimoto

> > +maintainers:
> > +  - Damien Horsley <Damien.Horsley@imgtec.com>

> For v2, I had planned

>     -+  - Damien Horsley <Damien.Horsley@imgtec.com>
>     ++  - Jaroslav Kysela <perex@perex.cz>
>     ++  - Takashi Iwai <tiwai@suse.com>

> as Damien's address bounces.

I wouldn't do that, I gather the maintainers for DT bindings are
supposed to be people who know and care about the specific binding in
particular.

--QJDUvaOOFQYQAqme
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmObCVYACgkQJNaLcl1U
h9AEtwf/cHHOHd+LiHpcnpC/OdbwGPMWgBNmMYDNu8nAuQ0yM3Ao4e/gRfickAWM
r9dJ+UpAGmA42n1pdk99B42neFVHQZ1iwlBmEjX6SmVAz561RO/dEVIMrHDCegT1
GIxcPEyL3xaikoUqKYrznygcAHdKY2taKVVlHn0cj9QkQGdXaz5jruypmOVLjwQC
6W5Hq7kN0NJ9TWHkanX3T8fkIcA7PkpLjdcDh2i71mjeCdxStN6qenYQ742n29xp
wjSzNWnVzYuTLv4mNKfRUwX8qfxT8WjJAogDN7Ww0HQr0VjRSB3Vx5Pn7RDr0swf
xymy5W2FQyYatqzN6LEJUM5NjKCWGQ==
=GYG/
-----END PGP SIGNATURE-----

--QJDUvaOOFQYQAqme--
