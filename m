Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 064D9691976
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 09:01:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231268AbjBJIBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 03:01:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230484AbjBJIBQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 03:01:16 -0500
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A3C57AE3D
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:01:15 -0800 (PST)
Received: by mail-qt1-f171.google.com with SMTP id ch10so3807164qtb.11
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:01:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kI8PQ2ugfDhm2FkPLEtWMsmZfNCcA7o5O0RvlqX8c74=;
        b=wNudya1Wv5lmAN5n9qQy3M6Q2Fb1wB9sZ62JHPGicXfvxrGzEyzf2k63LiA3t3cAkq
         bdM4Z1nttb7Y+Pf0e/a48LYdzPIYY9SFp+geqH+7PS+qr3GckxVcesgZShDrGYzI4dEw
         b0k/0nh4Q8LaIMCWCi982yK+bbemeQUsMCA/BlWe+96aztMufDUyQ9d5M/jS4kvuBUQH
         88AkftQdE6iGxCVIN6B8HwCoWCpBV3jZj2mZXqgK5O+3iJdTXVHjlHOSWhJB6iXDhS8O
         GsH5vTC8cmKSonGshtT4KjKmh/izbVILUBTPB9Ub6O/tPajyGKt+O1KMqr45/DO3S8Bc
         xcfg==
X-Gm-Message-State: AO0yUKV5406/VV4wzvAwoES6GQRm3+wp7p+2kPfUKi2SwccdGDx1/xaJ
        wNhk1xr0Dzp6wk2Jnr3NyE228CL+2bSCFdXz
X-Google-Smtp-Source: AK7set8ogJgE4X2qz1z34uI3BxBFVQN7H+5L3DD2biMtaAb5e34VCTMT5332aQFmLMN9YKqpffP41Q==
X-Received: by 2002:ac8:5e54:0:b0:3bb:88e2:7625 with SMTP id i20-20020ac85e54000000b003bb88e27625mr6552235qtx.24.1676016074102;
        Fri, 10 Feb 2023 00:01:14 -0800 (PST)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id a7-20020ac86107000000b003ba11bfe4fcsm2938795qtm.28.2023.02.10.00.01.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 00:01:13 -0800 (PST)
Received: by mail-yb1-f179.google.com with SMTP id x4so5463269ybp.1
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:01:13 -0800 (PST)
X-Received: by 2002:a5b:24c:0:b0:87a:68fd:181a with SMTP id
 g12-20020a5b024c000000b0087a68fd181amr1746337ybp.36.1676016073446; Fri, 10
 Feb 2023 00:01:13 -0800 (PST)
MIME-Version: 1.0
References: <87y1p7bpma.wl-kuninori.morimoto.gx@renesas.com>
 <87v8kbbpl4.wl-kuninori.morimoto.gx@renesas.com> <072724aa-2bf3-32a6-dee8-e74c74b01019@linaro.org>
 <87fsbe1i9e.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87fsbe1i9e.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Fri, 10 Feb 2023 09:00:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVOgnxSkAyy_3MGYeQyRcsr5aM00qSfhrXTMBLy1aa7yA@mail.gmail.com>
Message-ID: <CAMuHMdVOgnxSkAyy_3MGYeQyRcsr5aM00qSfhrXTMBLy1aa7yA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car
 Gen4 support
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Morimoto-san,

On Fri, Feb 10, 2023 at 1:22 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > > From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > >
> > > There are no compatible for "reg/reg-names" and "clock-name"
> > > between previous R-Car series and R-Car Gen4.
> > >
> > > "reg/reg-names" needs 3 categorize (for Gen1, for Gen2/Gen3, for Gen4),
> > > therefore, use 3 if-then to avoid nested if-then-else.
> > >
> > > Move "clock-name" property to under allOf to use if-then-else.
> (snip)
> > > -  clock-names:
> > > -    description: List of necessary clock names.
> > > -    minItems: 1
> > > -    maxItems: 31
> >
> > No improvements here. Your argument that you need to remove it to
> > customize is not correct.
>
> ???
>
>         Move "clock-name" property to under allOf to use if-then-else.
>         ^^^^
>
> "move", not "remove".

The point is that you did remove the common

      clock-names:
        description: List of necessary clock names.

from the top level, and added two copies of it under if/then/else.

Please keep common stuff as high up in the hierarchy as possible,
to avoid the need for duplication.
In this case, that means:
  - Keep the description at the top level,
  - Put only {min,max}Items and items under if/then/else.

I hope my explanation helps.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
