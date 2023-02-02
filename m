Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 706346877F4
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 09:54:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232024AbjBBIyG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 03:54:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232171AbjBBIyD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 03:54:03 -0500
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1203E193E4
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 00:53:42 -0800 (PST)
Received: by mail-qt1-f177.google.com with SMTP id bb40so1159751qtb.2
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 00:53:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RbRNzSOCTkb85xcFH4UljrdPnfMc38Sjfdj2ACsM8nw=;
        b=7NLjM8hdI0ZydUFX7S7rLB7o9xaculpUN4bSmC/fQtR2nhCRasOP3UX1IX4ImlVUCe
         mUSMroWCV85N8cOGR4zeaBmeNBF/hyP8iioxrwvDZ/9+oLH6MuLAvrMsPD1QMjQGec8F
         kG3kLwRZqi7lqLZGB0WLUc03AeUOL7dL7XfZnNVMvTDAKspPL9gsuMQzM/HrDuV/GpHa
         M12oIHh7THlfbVH/m9h5ys3paMVtXlbIa+p5AudOWkyBx657g+PH2dQoMM/BLYHsT9zi
         g4SdvHGGTfjAF3tqdlE1/CichSxNA7zbo+kvXrSImu2S+wPLEVd8BQfjDQvFx9PaJ204
         /dUQ==
X-Gm-Message-State: AO0yUKWLJ4SreWguhFzTWdav2ZqNZQE+Kd5YEO9TPETSqOSmo6Yws8VB
        FHVGr0mCekjVk8BBorzlimQLV70di3ZUdA==
X-Google-Smtp-Source: AK7set//ut/oO6f2GYsqMNyY1AdEOJGyOg3SMA5STiZQdvFfZlDQgHPPtfxJecjS5h/zkoFxGcwfkg==
X-Received: by 2002:ac8:5f8f:0:b0:3b8:58d0:b4d5 with SMTP id j15-20020ac85f8f000000b003b858d0b4d5mr10161720qta.0.1675328021114;
        Thu, 02 Feb 2023 00:53:41 -0800 (PST)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id e4-20020ac84904000000b003b84d549ca8sm5469141qtq.10.2023.02.02.00.53.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 00:53:40 -0800 (PST)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-4a263c4ddbaso18189067b3.0
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 00:53:40 -0800 (PST)
X-Received: by 2002:a81:ac17:0:b0:51d:f0a4:64dc with SMTP id
 k23-20020a81ac17000000b0051df0a464dcmr558493ywh.384.1675328020617; Thu, 02
 Feb 2023 00:53:40 -0800 (PST)
MIME-Version: 1.0
References: <87a61y6t8e.wl-kuninori.morimoto.gx@renesas.com> <87pmau5ejk.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87pmau5ejk.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Thu, 2 Feb 2023 09:53:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW_QHmODAKvn_GwHHUWw-=z4Tdq0NkhdK2u2piG_YgB-Q@mail.gmail.com>
Message-ID: <CAMuHMdW_QHmODAKvn_GwHHUWw-=z4Tdq0NkhdK2u2piG_YgB-Q@mail.gmail.com>
Subject: Re: [PATCH 14/15] ASoC: dt-bindings: renesas: add R8A779G0 V4H
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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

On Wed, Feb 1, 2023 at 3:11 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> Document R-Car V4H (R8A779G0), and R-Car Gen4 SoC bindings.
>
> Link: https://lore.kernel.org/r/87zga6t5r4.wl-kuninori.morimoto.gx@renesas.com
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch, which is now commit f76fec606d07b43d ("ASoC:
dt-bindings: renesas: add R8A779G0 V4H") in sound-asoc/for-next

> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -46,6 +46,10 @@ properties:
>                - renesas,rcar_sound-r8a77990  # R-Car E3
>                - renesas,rcar_sound-r8a77995  # R-Car D3
>            - const: renesas,rcar_sound-gen3
> +      # for Gen4 SoC
> +      - items:
> +          - const: renesas,rcar_sound-r8a779g0  # R-Car V4H
> +          - const: renesas,rcar_sound-gen4
>        # for Generic
>        - enum:
>            - renesas,rcar_sound-gen1

I think you forgot to update the reg-names section below, as it
doesn't match its user in
https://lore.kernel.org/all/877cx0anfe.wl-kuninori.morimoto.gx@renesas.com

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
