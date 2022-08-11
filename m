Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6026F58F9BA
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 11:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234905AbiHKJHZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 05:07:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234307AbiHKJHY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 05:07:24 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB0F16E2E1
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 02:07:20 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id w19so32412834ejc.7
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 02:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=AMPkpS8XZ9CZD7YiSg9zmbD0TWPYAuMvL4cZq8GvvrE=;
        b=62a0C5PIahTCbPIksLIFFasCo8TkJnD0NrXBn75/X87Qr/o+/1NPhqnBEbWnu5Wcdk
         lRYIYl5fXk0Dw9eEbPB1bObIWPebpURMO/843tj5b1d96igg9QQGJREzgVkUEQBd48r1
         kxKpJKprjM5cQJlGQYHR2VbK+7+9No/cw7W3kOJZb+hNVit8SW9PG6zuwzPCxel/IOlU
         x4Lj9TjdZwOgBZJn24Ou+97ylNvzLEaRNuj+hDRyPzdMqUWlkbPsCq/VA1u/yB0TsI/s
         EbDs0yBi+n5roSPaQhaT3pbbdy0H7oramsx+uZ7R9vaKvyP1zLu85dJVZhVje0elW2YR
         HHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=AMPkpS8XZ9CZD7YiSg9zmbD0TWPYAuMvL4cZq8GvvrE=;
        b=pN4b3K2lQraeNh4BSJJzCWtrfKvT68i+nf0wOvlEERi1ioFd5QoPa/zIxoeLFbD9oX
         2U/uacgegrJaUPYbIs/d/82TEIXkBSxgiNhzK3oizL7OgwKkoBRo8QR75nVnqyaVX+NE
         XDm1GIPVKsFoIZm8N812BOxY+xJEh91DyoRaM5xI55i7DkWuxVCkFKQlZFkj6ULy/Okc
         QCMQFL8e6XcDxIImPazcm3C+LABFzLZ84SD/yXm87qclkNNAxBG3UlIjHhox+4pmqkcJ
         ifbHmDw5TidVyiai31GegcsiBWoYwUeyluK5yX1ICWlJhcOkoNK31fUFL/GvpJIIo550
         IOgA==
X-Gm-Message-State: ACgBeo1XVIdrn8QRZ4Iw4rDvF+U2NhTGX8Yny6T5WaMOsIcExBU3tH0Z
        aop1CwZkQm2uaOfDcnaWpFRx4A==
X-Google-Smtp-Source: AA6agR6FPq1KkD0ldPcxaEg0KRXTEf6/cyaUQQuox6k2VfpKYxcf47DjxelzwSrXqEQDqVxug6WiiA==
X-Received: by 2002:a17:907:763c:b0:730:c378:b860 with SMTP id jy28-20020a170907763c00b00730c378b860mr22547616ejc.97.1660208839498;
        Thu, 11 Aug 2022 02:07:19 -0700 (PDT)
Received: from blmsp ([2001:4090:a243:8036:200c:a862:4253:884])
        by smtp.gmail.com with ESMTPSA id m26-20020aa7c2da000000b0043c0fbdcd8esm8876699edp.70.2022.08.11.02.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 02:07:18 -0700 (PDT)
Date:   Thu, 11 Aug 2022 11:07:18 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Fabien Parent <parent.f@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH v3 4/4] clk: mediatek: add driver for MT8365 SoC
Message-ID: <20220811090718.spieeqcb5ogknlfc@blmsp>
References: <20220811084433.2598575-1-msp@baylibre.com>
 <20220811084433.2598575-5-msp@baylibre.com>
 <dc7a4f78-4244-7425-a1c2-509172ec97de@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <dc7a4f78-4244-7425-a1c2-509172ec97de@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Thu, Aug 11, 2022 at 11:53:19AM +0300, Krzysztof Kozlowski wrote:
> On 11/08/2022 11:44, Markus Schneider-Pargmann wrote:
> > From: Fabien Parent <fparent@baylibre.com>
> > 
> > Add clock drivers for MT8365 SoC.
> > 
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> > 
> > Notes:
> >     Changes in v3:
> >     - Changed all Kconfig options to be tristate
> >     - Do not depend on ARM64
> >     - Fix order of frees on probe errors.
> >     - Use mtk_clk_register_gates_with_dev
> >     - Fixed null clocks
> >     - Removed clk26m_ck
> >     - Use MUX_GATE_CLR_SET_UPD instead of custom MT8365_MUX_CLR_SET_UPD
> >     - Use devm_clk_hw_register_mux for top_misc_muxes
> >     - Use devm_clk_hw_register_gate for peri_clks and top_clks
> >     - Fix checkpatch warnings
> >     - Add missing MODULE_LICENSEs in all files
> > 
> >  drivers/clk/mediatek/Kconfig                  |   50 +
> >  drivers/clk/mediatek/Makefile                 |    7 +
> >  drivers/clk/mediatek/clk-mt8365-apu.c         |   55 +
> >  drivers/clk/mediatek/clk-mt8365-cam.c         |   57 +
> >  drivers/clk/mediatek/clk-mt8365-mfg.c         |   63 +
> >  drivers/clk/mediatek/clk-mt8365-mm.c          |  112 ++
> >  drivers/clk/mediatek/clk-mt8365-vdec.c        |   63 +
> >  drivers/clk/mediatek/clk-mt8365-venc.c        |   52 +
> >  drivers/clk/mediatek/clk-mt8365.c             | 1155 +++++++++++++++++
> >  .../dt-bindings/clock/mediatek,mt8365-clk.h   |  179 ++-
> 
> No, bindings are always separate.

Of course, I screwed up my rebasing here, sorry. Fixed for v4.

Best,
Markus
