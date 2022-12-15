Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 854C164D9FC
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 12:04:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbiLOLD6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 06:03:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230164AbiLOLDZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 06:03:25 -0500
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAFC1DE9E
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:03:15 -0800 (PST)
Received: by mail-qt1-f176.google.com with SMTP id jr11so4806342qtb.7
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:03:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W1J3eIm7gN+a7l7I5FPtNe9iMuDw4N0S5iQn7zeIcKY=;
        b=7l0qGul556DHfHDZWyzMi9UpGy7nMiDhmU1YjIZ3nV1LnLAdXTOgCWsxU3LFYOYiBf
         sIa6vgqw/3U9nFn0cn5Kmvgqwrn1eAweGKkAAnotpwguP1RIlA+4YElQaelskTfjxjrE
         9A+90vmk/DAx181185vPUlMy0ZApPU3gp2nq2fV1jdQPKbsTgKAxsQCQN0ebdsa08z5R
         A4UhIVGi61xP51dzv6pAEzi+Oob2Zz6kAprMYtXAJdUx24OtHYRrfTYcQpfy47mivbcp
         7VPDJUnOBdzN570azSW7Exod77P1WkcX26UYZtcLEDSuvwzO4sPf+Nf0XoXQBkgs4pCB
         ZyFg==
X-Gm-Message-State: ANoB5pmF7XinZ9HthLBra6rRapCXLTq6jpfyOzoZrPIoBwAW38LUI463
        lu1tMWv9h/3RCI/ET9zSPl98Y2juBGTRng==
X-Google-Smtp-Source: AA0mqf76w4tmY0LIaW0QHLO7JpoynqL0Y9CCWZVYmcbzclC3FWJDzxvPtMQq9z0DgubGT6E7a3LEfQ==
X-Received: by 2002:a05:622a:249:b0:3a5:7967:e652 with SMTP id c9-20020a05622a024900b003a57967e652mr53389035qtx.68.1671102194301;
        Thu, 15 Dec 2022 03:03:14 -0800 (PST)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id i4-20020ac860c4000000b003a7ee9613a6sm3234140qtm.25.2022.12.15.03.03.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 03:03:13 -0800 (PST)
Received: by mail-yb1-f177.google.com with SMTP id y135so2993746yby.12
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:03:13 -0800 (PST)
X-Received: by 2002:a25:9:0:b0:6f9:29ef:a5ee with SMTP id 9-20020a250009000000b006f929efa5eemr39090062yba.380.1671102193696;
 Thu, 15 Dec 2022 03:03:13 -0800 (PST)
MIME-Version: 1.0
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com> <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Thu, 15 Dec 2022 12:03:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
Message-ID: <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
Subject: Re: [PATCH 06/11] ASoC: dt-bindings: ti,pcm3168a: Convert to json-schema
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
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
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Morimoto-san,

On Wed, Dec 14, 2022 at 2:23 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Convert the Texas Instruments PCM3168A Audio Codec Device Tree binding
> documentation to json-schema.
>
> Add missing properties.
> Drop unneeded pinctrl properties from example.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch!

You forgot to list the changes you made to my patch:
  - Refer to audio-graph-port.yaml instead of describing ports and
    port@[01] subnodes explicitly.

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
> @@ -0,0 +1,100 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/ti,pcm3168a.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments PCM3168A Audio Codec
> +
> +maintainers:
> +  - Damien Horsley <Damien.Horsley@imgtec.com>

For v2, I had planned

    -+  - Damien Horsley <Damien.Horsley@imgtec.com>
    ++  - Jaroslav Kysela <perex@perex.cz>
    ++  - Takashi Iwai <tiwai@suse.com>

as Damien's address bounces.

Or perhaps you want to become the maintainer?

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
