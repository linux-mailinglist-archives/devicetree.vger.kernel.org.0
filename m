Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C777E392890
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 09:30:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbhE0HcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 03:32:25 -0400
Received: from mail-ua1-f49.google.com ([209.85.222.49]:46855 "EHLO
        mail-ua1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229648AbhE0HcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 03:32:24 -0400
Received: by mail-ua1-f49.google.com with SMTP id p1so107291uam.13
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:30:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EvrU3N0dLKeUqogIkRKclMoApsA1KzYSSz1Wf5vnn0c=;
        b=ol1ajoaRnpOzbfGuJon/YsaKhdated6feGp6PcQBqcX1i0CAZ7QAX5KgdyNs+Ynane
         X1EwX3YbDkjpPL79owHMVAYQlyr3D6xsWc7NgRdbS4ZO4qPTCgGPCEgOU+fvgaYJRZAP
         0YcNcmdzMwPcOsrYCfOlw4tbbjRHUmjMqyZ46Nsz3Zv3O32b/teZCy1OZZK6YRqVDgVX
         cEAYKGNiQqDSYKVHmwEjfFPF3pqkV+L9rQFpkhS1Rq95WC3+No8Xd4qhKGIvlXaC5kp+
         g+VFI9AXmySUFGX1dJdDixcBeQ/mj9mN5hf4Hfv00Sz+MmWeQdTXEyM8b9MRH1HAx/mK
         YMGQ==
X-Gm-Message-State: AOAM531mYOyamiPAmeYft0JCBzbiS1J72iguIPebDkQukHE3xpQ8LI/7
        aQAhIf92Ur2eXift7B5rqsKTcmKDvNq8j2AbUYQ=
X-Google-Smtp-Source: ABdhPJxpPqoA3XiGadQBpZjcG0ZK1ngJike7pnf69xbSYNyq0SWXZ3O75cFr36NOa5aj/X2H8g9Ai5e/K0dW1/LEDpY=
X-Received: by 2002:ab0:6584:: with SMTP id v4mr1103280uam.100.1622100650604;
 Thu, 27 May 2021 00:30:50 -0700 (PDT)
MIME-Version: 1.0
References: <87y2c4oe3y.wl-kuninori.morimoto.gx@renesas.com>
 <87tumsoe2p.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdXLYvEBE0bVk=8D+GkuaHRUvdTayCQPqTYAkPJEaW8MDQ@mail.gmail.com>
 <87zgwimnuu.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdVhnKeztftOJEZhSg8bXArzUDXAmHSMPVfbMamV3ihw+g@mail.gmail.com>
 <87o8cxm9pg.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87o8cxm9pg.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Thu, 27 May 2021 09:30:38 +0200
Message-ID: <CAMuHMdUxAOeceORSpmiPAc6Tg=jpm2FTaLjVBVt+oiyWd68wCQ@mail.gmail.com>
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

On Thu, May 27, 2021 at 12:06 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > Oh right, I missed the static clk_hw pointer.
> > What if you unload the snd-soc-rcar.ko module?
>
> Hmm.. indeed.
> It needs something..
> Thank you for poining it.
>
> >     #define for_each_rsnd_clk(pos, adg, i)          \
> >             for (i = 0; (pos) = adg->clk[i], i < CLKMAX; i++)            \
> >                     if (pos) {                      \
> >                             continue;               \
> >                     } else
>
> Wow!! I didn't know this technique.
> Indeed it can use NULL pointer.
>
> But, I want to avoid "if (pos) else" code as much as possible,
> and keep simple code.
> It can handle all clk case without thinking it if it has null_clk.
>
> Why you don't want null_clk ??

It adds a dummy object, which needs to be cleaned up.  Basically you
are trading a simple NULL pointer check for a zero clock rate check
deeper inside the driver, with the additional burden of needing to
take care of the dummy clock's life cycle.

Note that most clk_*() calls happily operate on a NULL pointer, and
just return success.  This includes clk_get_rate(), which returns
a zero rate.

Mark might have a different view, though, due to his experience with
dummy regulators?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
