Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23CC264DAE5
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 13:11:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbiLOMLA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 07:11:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiLOMK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 07:10:59 -0500
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E191D2E6A6
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 04:10:57 -0800 (PST)
Received: by mail-qt1-f177.google.com with SMTP id j16so4946512qtv.4
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 04:10:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P/OeO6ueKYZuyqeE/c8Fq+ZWrr/NvMBspPnEdXrqTO8=;
        b=SaGRmAIJzEqjMgAc2i0QEb5UvO3XQcUYtoSoYy285QIZ+wrPr47tRU1DF0G2gEPPX6
         633q0CwtdG6lk990nuPaVV00j9i4NQo/ZXi5zfu64up4/G+C7UAVK5ME4BfdZIzc2upM
         4SmZ/peJKZ5EGDl6RVBWC3xjyKoCZTAZXQX2KzN+95HlWlNQ6e548HJI7rvC997aPiOi
         lg53U6YbO9jqy4QDx+pQjDQHWsYvlzmpl8ZNooZNPUPhGnk5SxZ+ZR6W39Xyav2EKWtQ
         W/8npHxJ+xSU/enVQsEixKbjVBxIeuhbC/ZZ8NAtuLzDIiNdO/S56fnOqGAX2PxEi/Ev
         gimA==
X-Gm-Message-State: ANoB5pnqD7Ny6VlrihBp1KV/kWvwdF4vtTIjhrLAgKJRaSSviOxxOuj7
        ezqD6qwvDC7+petSAyeAFpcYFMwil2gH4w==
X-Google-Smtp-Source: AA0mqf5E8nRUO2Hz0+TXT6Ey4d7brr7YErHapN4k0fC9Z+Ml/Lzu140OENsEr2qlS1BqcfU8ZHpydQ==
X-Received: by 2002:ac8:58ca:0:b0:3a8:a8e:c0e0 with SMTP id u10-20020ac858ca000000b003a80a8ec0e0mr43513744qta.8.1671106256916;
        Thu, 15 Dec 2022 04:10:56 -0800 (PST)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id d18-20020ac84e32000000b0039cc82a319asm3269013qtw.76.2022.12.15.04.10.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 04:10:56 -0800 (PST)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-3b5d9050e48so38385217b3.2
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 04:10:55 -0800 (PST)
X-Received: by 2002:a0d:cb4c:0:b0:38e:e541:d8ca with SMTP id
 n73-20020a0dcb4c000000b0038ee541d8camr23952529ywd.283.1671106255188; Thu, 15
 Dec 2022 04:10:55 -0800 (PST)
MIME-Version: 1.0
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
 <Y5sJV2KfX98KoMYZ@sirena.org.uk>
In-Reply-To: <Y5sJV2KfX98KoMYZ@sirena.org.uk>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Thu, 15 Dec 2022 13:10:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
Message-ID: <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
Subject: Re: [PATCH 06/11] ASoC: dt-bindings: ti,pcm3168a: Convert to json-schema
To:     Mark Brown <broonie@kernel.org>
Cc:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Mohan Kumar <mkumard@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

On Thu, Dec 15, 2022 at 12:47 PM Mark Brown <broonie@kernel.org> wrote:
> On Thu, Dec 15, 2022 at 12:03:02PM +0100, Geert Uytterhoeven wrote:
> > On Wed, Dec 14, 2022 at 2:23 AM Kuninori Morimoto
> > > +maintainers:
> > > +  - Damien Horsley <Damien.Horsley@imgtec.com>
>
> > For v2, I had planned
>
> >     -+  - Damien Horsley <Damien.Horsley@imgtec.com>
> >     ++  - Jaroslav Kysela <perex@perex.cz>
> >     ++  - Takashi Iwai <tiwai@suse.com>
>
> > as Damien's address bounces.
>
> I wouldn't do that, I gather the maintainers for DT bindings are
> supposed to be people who know and care about the specific binding in
> particular.

Sure.  But how can they (still) care, if we cannot reach them?
There's no email message from Damien to be found during the past
7 years.


Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
