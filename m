Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D74836508AC
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 09:43:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231582AbiLSInd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 03:43:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231559AbiLSInc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 03:43:32 -0500
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4E37A1B2
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:43:31 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id a16so7662074qtw.10
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:43:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgqr1KQUZIrn8Gn7BfcDzo56u+39PSrAMufxXVva80U=;
        b=cYev1bZQw+EZEv+DhjcYe9djgKQFrGzLoXdWsEvTeoD0Nz9ZWGh7FbiNExPwqrinp+
         wBloJuDSfAgbsrFEBKg8phBi8qlgpAM8QZq7neJNPO+HANuBvVzA+xeUH1QQARa+0iXO
         B7L7daCZhLw1GjEX73QaWQdBbbEVPBpVCajjLk1grILG58Cbm/TE4RstX64PlGWmcNfY
         bTXrhrUj8HWyiRBPmW/pkOpsFyi5VNUlpG5gPfIXWzJp1LB3UpztX7xDYInr+boxqK8X
         lvBZmnaU7BXLMnQUlNORHYdOG8bEwHdN7M5BJ5GzB24YRwb9L6s/HXCGikD5nsRLjv7F
         mJRg==
X-Gm-Message-State: ANoB5pntQReTpL+n3/gn2OKCYYk+ybj61nmnwJUZhyfMfhhFvroNE4vm
        jQleiD3MrBdVp2W9qtfEt0UbahzX2pyQbA==
X-Google-Smtp-Source: AA0mqf5CRPu2jV30lGsc4kNwmYPkq18D6HDcocEgkfOYqXD5tEr302rJtciQaj5j39kzglgDqMRamg==
X-Received: by 2002:ac8:5292:0:b0:3a7:f183:7f66 with SMTP id s18-20020ac85292000000b003a7f1837f66mr56126261qtn.22.1671439410537;
        Mon, 19 Dec 2022 00:43:30 -0800 (PST)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com. [209.85.219.180])
        by smtp.gmail.com with ESMTPSA id q20-20020a37f714000000b006cec8001bf4sm6561817qkj.26.2022.12.19.00.43.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 00:43:30 -0800 (PST)
Received: by mail-yb1-f180.google.com with SMTP id o127so8668259yba.5
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:43:29 -0800 (PST)
X-Received: by 2002:a25:9:0:b0:6f9:29ef:a5ee with SMTP id 9-20020a250009000000b006f929efa5eemr40115537yba.380.1671439409777;
 Mon, 19 Dec 2022 00:43:29 -0800 (PST)
MIME-Version: 1.0
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
 <Y5sJV2KfX98KoMYZ@sirena.org.uk> <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
 <20221216163919.GA2863056-robh@kernel.org>
In-Reply-To: <20221216163919.GA2863056-robh@kernel.org>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Mon, 19 Dec 2022 09:43:18 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWEbVqD3z69-nJe9ST35_S4AZSJLrYqC3f=F+VONSPn0Q@mail.gmail.com>
Message-ID: <CAMuHMdWEbVqD3z69-nJe9ST35_S4AZSJLrYqC3f=F+VONSPn0Q@mail.gmail.com>
Subject: Re: [PATCH 06/11] ASoC: dt-bindings: ti,pcm3168a: Convert to json-schema
To:     Rob Herring <robh@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Mohan Kumar <mkumard@nvidia.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

CC Peter

On Fri, Dec 16, 2022 at 5:39 PM Rob Herring <robh@kernel.org> wrote:
> On Thu, Dec 15, 2022 at 01:10:44PM +0100, Geert Uytterhoeven wrote:
> > On Thu, Dec 15, 2022 at 12:47 PM Mark Brown <broonie@kernel.org> wrote:
> > > On Thu, Dec 15, 2022 at 12:03:02PM +0100, Geert Uytterhoeven wrote:
> > > > On Wed, Dec 14, 2022 at 2:23 AM Kuninori Morimoto
> > > > > +maintainers:
> > > > > +  - Damien Horsley <Damien.Horsley@imgtec.com>
> > >
> > > > For v2, I had planned
> > >
> > > >     -+  - Damien Horsley <Damien.Horsley@imgtec.com>
> > > >     ++  - Jaroslav Kysela <perex@perex.cz>
> > > >     ++  - Takashi Iwai <tiwai@suse.com>
> > >
> > > > as Damien's address bounces.
> > >
> > > I wouldn't do that, I gather the maintainers for DT bindings are
> > > supposed to be people who know and care about the specific binding in
> > > particular.
> >
> > Sure.  But how can they (still) care, if we cannot reach them?
> > There's no email message from Damien to be found during the past
> > 7 years.
>
> Then put someone that would care if the binding is deleted. As this is
> used on Renesas board(s), I can think of a few candidates.

Or perhaps someone from TI? ;-)
This is a TI component, and also used on a TI K3 board...

/me weaseling out...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
