Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC15238FF4C
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 12:33:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232596AbhEYKe2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 06:34:28 -0400
Received: from mail-ua1-f54.google.com ([209.85.222.54]:44622 "EHLO
        mail-ua1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232220AbhEYKcw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 06:32:52 -0400
Received: by mail-ua1-f54.google.com with SMTP id 68so2366602uao.11
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 03:31:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=caJKpR22UE+yWdNX3qHv38WZNk5LVcxR9KLK7ev4RjQ=;
        b=qbvjkoC6XlBDQffJJnOJdVuoqibNOvaJ/o55B4KDzeVTgUXOahVe95N/776OIIRp8L
         ogj9eF66jQzwv1NE5EUbk5PzMgLWb8uHVMFqlj9E4+qbNqL2zzoHoW+QeEtl+1JYhYI+
         XDjZVPpUqhF3px97reV9CFPd08QfOl4SrE/bZu1G3WxUtcbsztiy+V/YpH5+j0/YP9dR
         vBR5f3bKCad7aj7omAljpEw4fQsnuumBn3BK9lGFLQJPnSvQOZEyKFPZFQKAOqqzX1LT
         ode7EdGBcc7n5tbQe9D6NwcZIfFe8PDiKoHQtWUyxaWzzWgeCuOn2RSv4egDmkKen+rQ
         ZK0g==
X-Gm-Message-State: AOAM531QX6xlXGbtnMEIgcUOLvp7/vA9AS2MTvWmnToaBpz5rCup8vSn
        S1qayGtxPQ13VUXSOuCatRrEy4IU2bscRRaCbZbblCUna3M=
X-Google-Smtp-Source: ABdhPJwblKYwm9RJW3XSVKWE+5kVk7eMvDJLF/P2KKmUb0AT/32MauXQN1zZLxKBYw6+qox7pESabyebTfYSEjgBWcc=
X-Received: by 2002:ab0:7705:: with SMTP id z5mr25244439uaq.2.1621938679481;
 Tue, 25 May 2021 03:31:19 -0700 (PDT)
MIME-Version: 1.0
References: <87y2c4oe3y.wl-kuninori.morimoto.gx@renesas.com> <87tumsoe2p.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87tumsoe2p.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Tue, 25 May 2021 12:31:08 +0200
Message-ID: <CAMuHMdXLYvEBE0bVk=8D+GkuaHRUvdTayCQPqTYAkPJEaW8MDQ@mail.gmail.com>
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

On Mon, May 24, 2021 at 8:12 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> Some Renesas SoC doesn't have full CLOCKIN.
> This patch add null_clk, and accepts it.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch, which is now commit d6956a7dde6fbf84 ("ASoC:
rsnd: add null CLOCKIN support") in asoc/for-next.

]> --- a/sound/soc/sh/rcar/adg.c
> +++ b/sound/soc/sh/rcar/adg.c
> @@ -389,6 +389,30 @@ void rsnd_adg_clk_control(struct rsnd_priv *priv, int enable)
>         }
>  }
>
> +#define NULL_CLK "rsnd_adg_null"
> +static struct clk *rsnd_adg_null_clk_get(struct rsnd_priv *priv)
> +{
> +       static struct clk_hw *hw;
> +       struct device *dev = rsnd_priv_to_dev(priv);
> +
> +       if (!hw) {
> +               struct clk_hw *_hw;
> +               int ret;
> +
> +               _hw = clk_hw_register_fixed_rate_with_accuracy(dev, NULL_CLK, NULL, 0, 0, 0);
> +               if (IS_ERR(_hw))
> +                       return NULL;
> +
> +               ret = of_clk_add_hw_provider(dev->of_node, of_clk_hw_simple_get, _hw);

I'm not such a big fan of creating dummy clocks.
And what if a future SoC lacks two CLOCKIN pins? Then you'll try to
register a second dummy clock with the same name, which will fail,
presumably?

> +               if (ret < 0)
> +                       clk_hw_unregister_fixed_rate(_hw);
> +
> +               hw = _hw;
> +       }
> +
> +       return clk_hw_get_clk(hw, NULL_CLK);
> +}
> +
>  static void rsnd_adg_get_clkin(struct rsnd_priv *priv,
>                                struct rsnd_adg *adg)
>  {
> @@ -398,7 +422,12 @@ static void rsnd_adg_get_clkin(struct rsnd_priv *priv,
>         for (i = 0; i < CLKMAX; i++) {
>                 struct clk *clk = devm_clk_get(dev, clk_name[i]);
>
> -               adg->clk[i] = IS_ERR(clk) ? NULL : clk;
> +               if (IS_ERR(clk))
> +                       clk = rsnd_adg_null_clk_get(priv);

This should only be done when the clock does not exist, not in case
of other errors (e.g. -EPROBE_DEFER, which isn't handled yet)?

As devm_clk_get_optional() already checks for existence, you could use:

    struct clk *clk = devm_clk_get_optional(dev, clk_name[i]);
    if (!clk)
            clk = rsnd_adg_null_clk_get(priv);

But in light of the above (avoiding dummy clocks), it might be more
robust to make sure all code can handle adg->clk[i] = NULL?

> +               if (IS_ERR(clk))
> +                       dev_err(dev, "no adg clock (%s)\n", clk_name[i]);
> +
> +               adg->clk[i] = clk;
>         }
>  }

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
