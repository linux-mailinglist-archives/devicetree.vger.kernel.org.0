Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 675C761F658
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 15:42:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232209AbiKGOlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 09:41:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232402AbiKGOls (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 09:41:48 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B39CD1D656
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 06:41:32 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id k19so16601832lji.2
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 06:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kmZJjcyK8nxBYdkGyjF9BBYtQhsKTKXX/XHgXHfVxFQ=;
        b=U1adVyNOAbOtB7LzITQqX+3NVUCD7hjijSzI/YHO7Rr5osXA9MHZaq6HCqJm+6HOsd
         fJ0ys8uvAM/DHnbHHSTIk7+IrHs0ykceAZnbCNalyMPTjX5V0QSFVrfDnqsHiyZXVh7v
         xS76OH44LE4SOvIqhvtz4JcIew6uCLD+fjCy8iCwwo3tsgl5PIuVNZofJHC1aYnEYJXE
         0XMka9P59kkmELC5diVPEBztOC7sT7XY8SbiwvhDewSyIpJ9Lj95VhVT+42KmMiEjuT6
         Wgj/v227ic5IahOtxJlSZVfx5uKNgE3Pdar4ogOMdGAQtsAHGlHZnhJZLBYIO31EZPz5
         3FpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kmZJjcyK8nxBYdkGyjF9BBYtQhsKTKXX/XHgXHfVxFQ=;
        b=6p86F/iL6d1dbXl1nkwiVM2afO2XpAKGLC5EZHIS5tCpHq3RkbqqNKiL2uFPLuxCd7
         G7hDv3ns8e+H/O0OSL9rUmwEpWHAw5q0s4mBk+JqbxnpEpNiWScpc7bUgqpgFf6omPCb
         QJc0e4XkKE7Z6dGNPfP3lvfF4wb10uaFhpOgTPIKusMWdatil99bv1BV58XxQTmU6CNm
         Vur0VGN0fWSfKL1/k91L+4blaNnJ3TPemQJLJBKMrD7TBHZ1zBAKKBVEUqVocZE2bAi/
         VTwYUJJ3ATiLpv9Om6m0jmrT2LhGLHd8eQrKY5/npaV1OxSBWNaz5LGXk+SKaqhosxTB
         cNSA==
X-Gm-Message-State: ACrzQf3oNNfSLGG+U36RA1vSdNAucmBePQspbqEp9BkkJHkk3ahJsiGA
        6tTWGjArPD4M3YeDYyJoICPEt+qncBmUubKtc5iVJA==
X-Google-Smtp-Source: AMsMyM4ifBzOc5epJWnolpwJB7I8Uu7REkrSM32h9Wi0RNR6YarRrxj3LMKdHch3+Mq/MvaFZCjO8+SeHm/lb2cNC1M=
X-Received: by 2002:a2e:a58e:0:b0:277:774a:92f5 with SMTP id
 m14-20020a2ea58e000000b00277774a92f5mr9046538ljp.224.1667832090776; Mon, 07
 Nov 2022 06:41:30 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 7 Nov 2022 14:41:30 +0000
From:   Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v3-0-a803f2660127@baylibre.com> <20220919-v3-1-a803f2660127@baylibre.com>
 <96d0f2d2-24b9-0838-4538-7d70c01ddace@collabora.com>
In-Reply-To: <96d0f2d2-24b9-0838-4538-7d70c01ddace@collabora.com>
MIME-Version: 1.0
Date:   Mon, 7 Nov 2022 14:41:29 +0000
Message-ID: <CABnWg9uwqyMpknrnR0nNuNLNtO81XQP=kJ8quLEaC2WzawFgzQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/12] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Jitao shi <jitao.shi@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        mac.shen@mediatek.com, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Nov 2022 12:20, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 04/11/22 15:09, Guillaume Ranquet ha scritto:
>> Add a compatible for the HDMI PHY on MT8195
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>
>Ack and R-b tags go after your S-o-b.
>
>Apart from that:
>Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>
>
>
>

Hi Angelo,

Thx for your review.
I'm not exactly sure what to do here as I'm using b4 trailers to
collect Acked-by and Reviewed-by

And there's an ongoing discussion about that topic on the tools
mailing list [1], it seems there's
no agreement on what to do with trailers ordering.
I'll keep using b4 trailers for now as for me this is the sane thing to do.
I'll update the ordering if I see concensus on that discussion.

Thx,
Guillaume.

---

[1] https://lore.kernel.org/tools/20221031165842.vxr4kp6h7qnkc53l@meerkat.local
