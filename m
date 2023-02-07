Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 992F868D12A
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 09:00:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjBGIA1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 03:00:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230215AbjBGIA0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 03:00:26 -0500
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EBCB36446
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 00:00:25 -0800 (PST)
Received: by mail-qt1-f169.google.com with SMTP id h24so15862403qtr.0
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 00:00:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mex+jfAmaUpIUDmTe8kPqw4pgJV7GY+mCAfjiClmLdg=;
        b=jNH9uJIoGde8hq+pJJ3WDXptQOOpKHS04UYCJHJeebIdiAfLmysin+5QubvwI800ew
         s6JCxuYfrXl6lRO66olDxoVTt9maeaHtfMxoy539jP75G9bFkHqbdc2RX/O6nSlakfa2
         r0oNiFzo5k/4P04EMAl5IV9lYRheojAJFqnq10s8ubsEQL2DZExRBsRsvhujZdvIP7IF
         ZHNGf/w6qzGBk4K8aUful1Yc0gVDrl7a5Zti+PqsTOA+41m8ygSZbAEYa63C996MSEEd
         KAdiFRFa6lXPhR5a1TPf58bLnK0zySugu3bOaauCb/BWXx4n444UNkGDP2HKuJKrFzQA
         oDpA==
X-Gm-Message-State: AO0yUKXwZQevf/p/gu6uf1MlyetumNi9k40gWl/Jn/sZDD0l0qwG95nR
        kiq28Cf+z28DjNoGanz1GaVSBabfCRZS8w==
X-Google-Smtp-Source: AK7set/5JJQ1JPKc4UvBmUixSKzXhtjo4OMgzh0cerA/6EDues/T9JH0Gw0OH4EYObWSxZu2dlO0RA==
X-Received: by 2002:a05:622a:50c:b0:3b4:5d7f:2805 with SMTP id l12-20020a05622a050c00b003b45d7f2805mr4071917qtx.6.1675756824187;
        Tue, 07 Feb 2023 00:00:24 -0800 (PST)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id e21-20020ac80115000000b003b62e9c82ebsm9084988qtg.48.2023.02.07.00.00.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 00:00:23 -0800 (PST)
Received: by mail-yb1-f178.google.com with SMTP id q4so12834525ybu.7
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 00:00:23 -0800 (PST)
X-Received: by 2002:a25:eb04:0:b0:7b4:6a33:d89f with SMTP id
 d4-20020a25eb04000000b007b46a33d89fmr204752ybs.543.1675756823230; Tue, 07 Feb
 2023 00:00:23 -0800 (PST)
MIME-Version: 1.0
References: <87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Tue, 7 Feb 2023 09:00:11 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXYwW8bk+a+7Fb7DA7kT0DdQyJSGaSnFzdgfWZxpmPHAA@mail.gmail.com>
Message-ID: <CAMuHMdXYwW8bk+a+7Fb7DA7kT0DdQyJSGaSnFzdgfWZxpmPHAA@mail.gmail.com>
Subject: Re: [PATCH RFC 0/2] ASoC: dt-bindings: renesas,rsnd.yaml: adjust to
 R-Car Gen4
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Morimoto-san,

On Tue, Feb 7, 2023 at 2:12 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> This is [RFC] patches.
>
> This patch-set adjust to R-Car Gen4 on renesas,rsnd.yaml.
> It works and no error reported.
> But by this patch, non-Gen4 leaks from "ssi-[0-9]" checking.
> I'm not sure why it happens.

If the logic becomes too complex, you can also split the binding
description in 4 files, one per R-Car generation.
That would lead to lots of duplication, though.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
