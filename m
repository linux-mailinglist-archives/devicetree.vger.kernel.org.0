Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECABD39111E
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 08:59:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232861AbhEZHAx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 03:00:53 -0400
Received: from mail-ua1-f53.google.com ([209.85.222.53]:46691 "EHLO
        mail-ua1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232959AbhEZHAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 03:00:51 -0400
Received: by mail-ua1-f53.google.com with SMTP id h26so199219uab.13
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 23:59:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rbIgMpemtTHbO3qkKfLpmSkVH9ZxGhJc4CNxNEzF53c=;
        b=l7cnJlQuYHf8LbhNJBB1TdKJEHi/8xG/Fp6fs0pK2e6CK1wnHF753G9wzQgBNtSAk9
         81pjTSjGA/i8oz+zTuH9gMb/5M9YiRP0lvVzvY8iSl7m/24/jbZ0f2L45RUWgfVjjOkg
         uKWMJInU1ztR3AQVvL0xE127v1MNVLPEdZkqJI9n8GWll5o46IMgX2NHJWUp8trJqyiI
         sSvSI3+CmqdnWDoh2zJjSHmL4IrqTh3sKfrs4e0fOusvQRcu6CS4Em9MG+GmgKV1iaVs
         YnSDsoG53yyBLbdHHQLDaN04itD051VKDnKZyGak2bAVIK/wEKofIKjfDjrwbc3Jno9X
         1wKQ==
X-Gm-Message-State: AOAM530rbxzlP0zQmre0yEvnxzjCrssl37aNrr3T9NJW0u8NPkXKuqff
        FWm5SqkreypM8UhpmOys2cM+sd/HG0TU522O07yRFuzjeMQ=
X-Google-Smtp-Source: ABdhPJyr2DwGlAerbBy+44CDrneQvQVFvTmw9Cq5QMkNCZYkuk62lkiswIekqmvB9MCX0AIWQ4asPIizvWD4iBpX3nw=
X-Received: by 2002:ab0:6584:: with SMTP id v4mr3714762uam.100.1622012345211;
 Tue, 25 May 2021 23:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <87y2c4oe3y.wl-kuninori.morimoto.gx@renesas.com>
 <87tumsoe2p.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdXLYvEBE0bVk=8D+GkuaHRUvdTayCQPqTYAkPJEaW8MDQ@mail.gmail.com>
 <87zgwimnuu.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87zgwimnuu.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Wed, 26 May 2021 08:58:53 +0200
Message-ID: <CAMuHMdVhnKeztftOJEZhSg8bXArzUDXAmHSMPVfbMamV3ihw+g@mail.gmail.com>
Subject: Re: [PATCH 3/3] ASoC: rsnd: add null CLOCKIN support
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Morimoto-san,

On Wed, May 26, 2021 at 12:48 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > I'm not such a big fan of creating dummy clocks.
> > And what if a future SoC lacks two CLOCKIN pins? Then you'll try to
> > register a second dummy clock with the same name, which will fail,
> > presumably?
>
> I think current code will reuse same null_clk for these.

Oh right, I missed the static clk_hw pointer.
What if you unload the snd-soc-rcar.ko module?

> > This should only be done when the clock does not exist, not in case
> > of other errors (e.g. -EPROBE_DEFER, which isn't handled yet)?
> >
> > As devm_clk_get_optional() already checks for existence, you could use:
> >
> >     struct clk *clk = devm_clk_get_optional(dev, clk_name[i]);
> >     if (!clk)
> >             clk = rsnd_adg_null_clk_get(priv);
>
> Ah, indeed.
> Thanks. I will fix it.
>
> > But in light of the above (avoiding dummy clocks), it might be more
> > robust to make sure all code can handle adg->clk[i] = NULL?
>
> The reason why I don't use adg->clk[i] = NULL is it is using this macro
>
>         #define for_each_rsnd_clk(pos, adg, i)          \
>                 for (i = 0;                             \
>                      (i < CLKMAX) &&                    \
>                      ((pos) = adg->clk[i]);             \
>                      i++)
>
> The loop will stop at (A) if it was
>
>         adg->clk[0] = audio_clk_a;
>         adg->clk[1] = audio_clk_b;
> (A)     adg->clk[2] = NULL
>         adg->clk[3] = audio_clk_i;

If you use this macro everywhere, that is easily handled by the
following variant:

    #define for_each_rsnd_clk(pos, adg, i)          \
            for (i = 0; (pos) = adg->clk[i], i < CLKMAX; i++)            \
                    if (pos) {                      \
                            continue;               \
                    } else

There are several existing examples of such a construct.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
