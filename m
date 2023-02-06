Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7917168B5C5
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 07:50:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbjBFGuN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 01:50:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjBFGuM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 01:50:12 -0500
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A347B745
        for <devicetree@vger.kernel.org>; Sun,  5 Feb 2023 22:50:11 -0800 (PST)
Received: by mail-qt1-f174.google.com with SMTP id f10so11826346qtv.1
        for <devicetree@vger.kernel.org>; Sun, 05 Feb 2023 22:50:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K3CzclB8/eZsMkMoV4mMOQY2qhDIrhVs5iADbEvdkfc=;
        b=uTul6/Yl1mcVkYf1TdTGEbz5yB0q7A+Jsa+PXBizlG14n4oG1CwH01g/chE3qgKXUI
         r++e42Jv5Z2jjmuFPj1iLn8E/Hu50vtUzG2Fyv2L2botwsfH1YUKqXFijMAQ6Ijh/HSR
         OQDKvRKaZL/Gyqvw/cAMfIjqBRUOVmkQLKVy4yK4CoT7MyJHlI+ZYKzHrc5zeR301pFn
         Hl3xNEGo/aRCWA7CyamV2E8vIMMX+TLnMS21YdR9l4wUz0nS37w7Ox6j3i0YmHfbO0iK
         DXbgerKTn0h6LHYG3bF10F9EFUhVIt+TIn6UC5bl9AeBGOSiulQFN27qm19EHVldFG7y
         iDww==
X-Gm-Message-State: AO0yUKWm2TUcmR6eIlAGVu3qnPCov16zTM+M4hLRUQBLfrM0dw9bltJA
        XS6JLbaVqiq5HBQHPCbh3MxXMQHR5aFQeg==
X-Google-Smtp-Source: AK7set9NkvywEOAwaunPP5fBQ6DDk/i5h+UbyNefV097uvWI70PIArDXqgEIEGrbC3zbT0Qb/MKgLA==
X-Received: by 2002:ac8:57d6:0:b0:3b8:6bd7:6057 with SMTP id w22-20020ac857d6000000b003b86bd76057mr35949261qta.68.1675666209892;
        Sun, 05 Feb 2023 22:50:09 -0800 (PST)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id e21-20020ac80115000000b003b62e9c82ebsm6808244qtg.48.2023.02.05.22.50.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 22:50:09 -0800 (PST)
Received: by mail-yb1-f178.google.com with SMTP id 23so5996394ybf.10
        for <devicetree@vger.kernel.org>; Sun, 05 Feb 2023 22:50:09 -0800 (PST)
X-Received: by 2002:a5b:2c1:0:b0:89c:b633:73a6 with SMTP id
 h1-20020a5b02c1000000b0089cb63373a6mr126962ybp.365.1675666209120; Sun, 05 Feb
 2023 22:50:09 -0800 (PST)
MIME-Version: 1.0
References: <87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com>
 <46974ae7-5f7f-8fc1-4ea8-fe77b58f5bfb@linaro.org> <87k00vqzw2.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87k00vqzw2.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Mon, 6 Feb 2023 07:49:57 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVFy62v8WC3H6f5NggTdJsk=2FmJqUR8L3XkT3jcKUj5A@mail.gmail.com>
Message-ID: <CAMuHMdVFy62v8WC3H6f5NggTdJsk=2FmJqUR8L3XkT3jcKUj5A@mail.gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: renesas: adjust to R-Car Gen4
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
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

On Mon, Feb 6, 2023 at 4:03 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > > The "required" with if - then - else on "rcar_sound,ssi" is
> > > always match to "then" even though it is checking "renesas,rcar_sound-gen4" or not.
> > > Why ?? Is it my fault ??
>
> I'm not sure why but some "if - then - else" doesn't work correctly for me.
> One concern is that it is under "patternProperties".
> Non "patternProperties" case is works well.
>
> This is just sample case.
> In below case, only gen4 case requires "foo/bar" if my understanding was correct.
> But I get error "foo/bar are required" on *all* compatible.
>
> It is my fault ?
>
> --- sample -----------
>   rcar_sound,ssi:
>     ...
>     patternProperties:
>       "^ssi-[0-9]$":
>         ...
>         allOf:
>           - if:
>               properties:
>                 compatible:
>                   contains:
> =>                  const: renesas,rcar_sound-gen4
>             then:
>               required:
> =>              - foo
> =>              - bar

As it is under patternProperties, the "if: properties" applies to the
properties under the ssi node, where you do not have any compatible
value (and definitely not the "renesas,rcar_sound-gen4" value, which
belongs to the _parent_ of the ssi node).

So I think the only solution is to move the "if" up, and thus duplicate
the ssi node description:

    if:
        properties:
            compatible:
                contains:
                    const: renesas,rcar_sound-gen4
    then:
        patternProperties:
            "^ssi-[0-9]$":
                ...
    else:
        patternProperties:
            "^ssi-[0-9]$":
                ...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
