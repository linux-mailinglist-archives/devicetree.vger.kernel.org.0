Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 813CE645B1A
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 14:39:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229573AbiLGNi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 08:38:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbiLGNiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 08:38:55 -0500
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8D8829C9F
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 05:38:53 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id s11so8165700ybe.2
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 05:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+GXkP58FsgYtEtV2kltJdQIO7NbuSAa5+nIq85bqPZc=;
        b=VV1HQQXIg4IQoL/RTe8WTrB4W1JmiXDCo19eUo8d4rajcTHkrDsI5eLFjOY8ySkRmq
         5+y5sDmoGbPTBHNlac4cxxD5rVcpmGaO6FeJ1wNsxxaIMo6tLWEFhrU9KSUCSPWmaHvS
         ODgFs2lGeFgYlPY+wWNt45cF2srmGSOZ+OhJjsE0Gug/Pi8fW3FdTgY7lMz9CWq++YXV
         LenGjA8X+TV8+k3iI0BQR6Alz3VY3ItruQgLyBfTuubLtf6/tyvDW9w4pQZuPB32Dqzc
         PbCcYG6C20dUXqknwfagM9fckxA4vUqZ/ZYVEkl6lmDQWfw8U/Hjszgi/6azC7UL0ZLS
         LATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+GXkP58FsgYtEtV2kltJdQIO7NbuSAa5+nIq85bqPZc=;
        b=ydV4HOR6BZkPGF7eHugfBIrIrqNqTSJXbZOrlrgiipMiUNMaIAyP9FyksU6/GAit5G
         6tbriRBajJEl5WPNbI2+h4ng9e/KHnjAtKyRZ+d7sftvrcUZQObRBRWiG+CgC89+Jl3G
         Ggk7rw8qC9NgbNFskNgztmZikCDNqTp/XobFSUJpfba9htgcocbhauC20+sG2dnPkgIb
         fDEoZLQislmQimhxsf1vCKv0/DlaqMouJauJfU1Oslsou5ryV5DNgX3q29Musz1QLLv+
         9j7SM0ZryI1DTat1xHcHj1cOV6BzEzmkibnZmYJjoRd7nZPtxvgYobB3mTETE2mErorJ
         NH0w==
X-Gm-Message-State: ANoB5pl6OlWf2CnB6z1JwSUd/6LpMbTyyDL/NVZNT2Kvg5syXgnDIMDJ
        w6ouen8fHAwvs0fVYzcYuM9oHaaBERM71KQPFiLgeg==
X-Google-Smtp-Source: AA0mqf4I6ian1m6Wk2VTDE1G5nDA4SclhjAbtbpN52dNRHMyOMowzcjMfWb+j7vOLzrlsDSmYyH8p0ZYy9K2Uidtt/g=
X-Received: by 2002:a25:1843:0:b0:6dc:b9ec:7c87 with SMTP id
 64-20020a251843000000b006dcb9ec7c87mr70316385yby.322.1670420333032; Wed, 07
 Dec 2022 05:38:53 -0800 (PST)
MIME-Version: 1.0
References: <20221205105931.410686-1-vadym.kochan@plvision.eu> <20221205105931.410686-4-vadym.kochan@plvision.eu>
In-Reply-To: <20221205105931.410686-4-vadym.kochan@plvision.eu>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 7 Dec 2022 14:40:09 +0100
Message-ID: <CACRpkdaXQqrCEqu9HTMZMMWbnkQxXEmoJNtiH-HENZWeDqjqTw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] mmc: xenon: Fix 2G limitation on AC5 SoC
To:     Vadym Kochan <vadym.kochan@plvision.eu>
Cc:     Hu Ziji <huziji@marvell.com>, Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Elad Nachman <enachman@marvell.com>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 5, 2022 at 12:00 PM Vadym Kochan <vadym.kochan@plvision.eu> wrote:

> There is a limitation on AC5 SoC that mmc controller
> can't have DMA access over 2G memory,

That sounds like a pretty common problem when someone
uses a 32bit address register in their DMA controller, or
the integration engineer not connecting all address lines... :/

>  so use SDMA with a bounce buffer. Swiotlb can't help because
> on arm64 arch it reserves memblock's at the end of the memory.

OK

This:

> Additionally set mask to 34 bit since on AC5 SoC RAM starts
> at 0x2_00000000.
(...)
> +static int xenon_set_dma_mask(struct sdhci_host *host)
> +{
> +       struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +       struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
> +       struct mmc_host *mmc = host->mmc;
> +       struct device *dev = mmc_dev(mmc);
> +
> +       if (priv->hw_version == XENON_AC5) {
> +               host->flags &= ~SDHCI_USE_64_BIT_DMA;
> +
> +               return dma_set_mask_and_coherent(dev, DMA_BIT_MASK(34));
> +       }
> +
> +       return sdhci_set_dma_mask(host);
> +}
(...)
> +       .set_dma_mask           = xenon_set_dma_mask,

I don't know if is so good to assume the size and location of the
SoC RAM like you do, that looks really fragile.

Can't you check what physical RAM Linux actually think
it has and where? You partly check it with meminfo below.

> +static int xenon_ac5_probe(struct sdhci_host *host)
> +{
> +       struct sysinfo si;
> +
> +       si_meminfo(&si);
> +
> +       if ((si.totalram * si.mem_unit) > SZ_2G)

This looks like a bug since you mention that the RAM does
not start at 0x00000000 this means if the memory is
2G it will partly be at physical addresses above 2G....

> +               host->quirks |= SDHCI_QUIRK_BROKEN_ADMA;
> +
> +       return 0;
> +}

Here you check how big the RAM is using meminfo (if the
bug is fixed).

But is this really a good solution? ADMA still works on the lower
2GB does it not?

What you want is a new quirk that bounces only when you
go above SZ_4G.

There *is* SDHCI_QUIRK_32BIT_DMA_ADDR have you
tried this? A 32bit DMA address is literally 4GB.
I think all you need to do is set this flag for xenon.

Yours,
Linus Walleij
