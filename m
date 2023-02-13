Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1432694021
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:57:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230014AbjBMI5L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:57:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbjBMI5K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:57:10 -0500
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 861A413D6A
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:56:40 -0800 (PST)
Received: by mail-qv1-f42.google.com with SMTP id l7so3007481qvw.7
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:56:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sM0WJjLf09bIi4cOcTK2bHZSg+aTB9RBwAec2ehjcEA=;
        b=L8ORBDn85Ypyj9Ig9Z/BuO0ix3Mb0jqZ6EUEVdauaRRLVq2GykaDbxZK0T8rJkcyyo
         Ga/WQGjh15Cdv/yp3uh5lIagRcGhinH/gUzulN5Rv8D7RJfI+4tqw5YzG4HfXXTQZR3a
         hQor1LQ/SPL4pEGCBdshg8pFYQ87mMISX9oNjNkmSLP56qFZWZmUjRejXnWNbXZd1yHV
         tMJONK0jPH5nmaSTaXAZUjDDr2URgTyhwBRodREYoq4SHi8TRWKhLt8Xnk3NmJkmCMww
         97GHp+SjGSlAVqqc2OKiJJeAJsvE6nR7udPdhFHopYeldBPO0ZWnzCYBYXgFKpPJt5jw
         R5gw==
X-Gm-Message-State: AO0yUKVMLaamyC/gHrawtO5KBPsXY2tOeCwfKZ01jMW+/69onHIaAEYh
        oz9Hs8Wu1mQ79aJEHm0swGQKh2dvEUWqSg==
X-Google-Smtp-Source: AK7set+X03TwKJHG1RxOMQjHaeHvoFci61iYPWUT0EXBsDdoU/LXMq1P+yeQRFT1hcrtZsfGWGQGTQ==
X-Received: by 2002:a05:6214:2a4e:b0:56b:f6c3:11ee with SMTP id jf14-20020a0562142a4e00b0056bf6c311eemr45561715qvb.2.1676278578014;
        Mon, 13 Feb 2023 00:56:18 -0800 (PST)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id v66-20020a37dc45000000b006fba0a389a4sm9426967qki.88.2023.02.13.00.56.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 00:56:17 -0800 (PST)
Received: by mail-yb1-f171.google.com with SMTP id 139so12086789ybe.3
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:56:17 -0800 (PST)
X-Received: by 2002:a25:9e86:0:b0:8c2:240e:bd05 with SMTP id
 p6-20020a259e86000000b008c2240ebd05mr1013174ybq.359.1676278577138; Mon, 13
 Feb 2023 00:56:17 -0800 (PST)
MIME-Version: 1.0
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com> <87r0uu8g8x.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87r0uu8g8x.wl-kuninori.morimoto.gx@renesas.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Mon, 13 Feb 2023 09:56:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU2_5SO53qs1KVcv7p5O1QP-DWpxVpUhmpFT3MQFKVO5A@mail.gmail.com>
Message-ID: <CAMuHMdU2_5SO53qs1KVcv7p5O1QP-DWpxVpUhmpFT3MQFKVO5A@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: renesas,rsnd.yaml: drop
 "dmas/dma-names" from "rcar_sound,ssi"
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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

Thanks for your patch!

On Mon, Feb 13, 2023 at 3:13 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> SSI is supporting both "PIO mode" and "DMA mode", thus "dmas/dma-names"
> are not mandatory property. Drop these from rcar_sound,ssi's required:.

BTW, do SSIU and DVC support PIO mode?

> This is prepare for Gen4 support. See more details on Link

"This is preparation" or "This prepares"?

> Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87y1p7bpma.wl-kuninori.morimoto.gx@renesas.com/#r
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
