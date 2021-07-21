Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B54133D0D16
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 13:10:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236336AbhGUK3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 06:29:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239703AbhGUKGQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 06:06:16 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7128C0610D2
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 03:44:24 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id c1so1881965pfc.13
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 03:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GXWcsJDXb1A/72l7a2R8Yfuydt9sw0KVY6gwcccRtzw=;
        b=HwJuai+igbPwD/LYxLesQ/+WpH5n2+B+lybbPQ2LEXAm0JuXXBDvz2QkL3Zi60jNPF
         Iz1WTkpHaPPD4gDA1DzM8+gosf00VczPuJVTpssHvQCa486ckwFxLNuyv1D4ngSEZWVv
         QIidHytZ+Q2tnIPpURlojfRB2zmtoJdrBau4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GXWcsJDXb1A/72l7a2R8Yfuydt9sw0KVY6gwcccRtzw=;
        b=b/aQR9T3qTzqmpRnH4u4mRMm3iOUtLHNeqjI2oNWHEJCtbMj4OXRq0yrWUDNf5yOL9
         QQCFzyNa5hSc1AR7htfHTgM3v1tbJbjzaMH9jOb/v4b/1YY+ghfA/+0K3O7yMG9QmJAO
         +l6V8FI4ndi5TNADEmMc0HQJVCsNxhMsn0EA3Dk4LEcb5KRC98zyJfKuWCX6XT48to7p
         UloDoT1qO7XVA0vsjpVbrklc3SxpVkSlAakZaEcg9sX1PZ79/yICgAo9ns7Ii47V751v
         H3ck7j0YqlF5I3naBJucXkhZfXelYAWIuk07gkvsG8zebD8ofL5Th3YrrchrWeTpoS/5
         44Cg==
X-Gm-Message-State: AOAM532v0MYm1a2EqLqH4sRNs/sDlcN3YT2iLW+S7Q23uM3nzhUiyety
        NdC6KebaDNCT8nrhsh+QEJ7Ga8rYk4vFgLwxr/06NQ==
X-Google-Smtp-Source: ABdhPJyqyEkC7KsAlOheOaxaV+RUgvQXOkoIrX81SdGZGtmk+ga72QNgvkh/B2ekHAnq9tVQ9sgHLy2LM1SGELsGw6s=
X-Received: by 2002:a63:8f04:: with SMTP id n4mr34564903pgd.317.1626864264477;
 Wed, 21 Jul 2021 03:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210715121209.31024-1-yong.wu@mediatek.com> <20210715121209.31024-5-yong.wu@mediatek.com>
In-Reply-To: <20210715121209.31024-5-yong.wu@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Wed, 21 Jul 2021 18:44:13 +0800
Message-ID: <CAATdQgB9eKCBvxV8R8jgkAa8Hqdbu4=nc9frMA024PvMnWWTaw@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] memory: mtk-smi: Rename smi_gen to smi_type
To:     Yong Wu <yong.wu@mediatek.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Tomasz Figa <tfiga@chromium.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        iommu@lists.linux-foundation.org, youlin.pei@mediatek.com,
        anan.sun@mediatek.com, ming-fan.chen@mediatek.com,
        yi.kuo@mediatek.com, anthony.huang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 15, 2021 at 8:14 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> Prepare for adding smi sub common. Only rename from smi_gen to smi_type.
> No functional change.
>
> About the current "smi_gen", we have gen1/gen2 that stand for the
> generation number for HW. I plan to add a new type(sub_common), then the
> name "gen" is not prober.
>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

> ---
>  drivers/memory/mtk-smi.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
> index a2213452059d..ff07b14bcd66 100644
> --- a/drivers/memory/mtk-smi.c
> +++ b/drivers/memory/mtk-smi.c
> @@ -55,7 +55,7 @@
>  /* All are MMU0 defaultly. Only specialize mmu1 here. */
>  #define F_MMU1_LARB(larbid)            (0x1 << SMI_BUS_LARB_SHIFT(larbid))
>
> -enum mtk_smi_gen {
> +enum mtk_smi_type {
>         MTK_SMI_GEN1,
>         MTK_SMI_GEN2
>  };
> @@ -68,8 +68,8 @@ static const char * const mtk_smi_common_clks_optional[] = {"gals0", "gals1"};
>  static const char * const mtk_smi_larb_clks_optional[] = {"gals"};
>
>  struct mtk_smi_common_plat {
> -       enum mtk_smi_gen gen;
> -       u32              bus_sel; /* Balance some larbs to enter mmu0 or mmu1 */
> +       enum mtk_smi_type       type;
> +       u32                     bus_sel; /* Balance some larbs to enter mmu0 or mmu1 */
>  };
>
>  struct mtk_smi_larb_gen {
> @@ -402,27 +402,27 @@ static struct platform_driver mtk_smi_larb_driver = {
>  };
>
>  static const struct mtk_smi_common_plat mtk_smi_common_gen1 = {
> -       .gen = MTK_SMI_GEN1,
> +       .type     = MTK_SMI_GEN1,
>  };
>
>  static const struct mtk_smi_common_plat mtk_smi_common_gen2 = {
> -       .gen = MTK_SMI_GEN2,
> +       .type     = MTK_SMI_GEN2,
>  };
>
>  static const struct mtk_smi_common_plat mtk_smi_common_mt6779 = {
> -       .gen            = MTK_SMI_GEN2,
> -       .bus_sel        = F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(4) |
> -                         F_MMU1_LARB(5) | F_MMU1_LARB(6) | F_MMU1_LARB(7),
> +       .type     = MTK_SMI_GEN2,
> +       .bus_sel  = F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(4) |
> +                   F_MMU1_LARB(5) | F_MMU1_LARB(6) | F_MMU1_LARB(7),
>  };
>
>  static const struct mtk_smi_common_plat mtk_smi_common_mt8183 = {
> -       .gen      = MTK_SMI_GEN2,
> +       .type     = MTK_SMI_GEN2,
>         .bus_sel  = F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(5) |
>                     F_MMU1_LARB(7),
>  };
>
>  static const struct mtk_smi_common_plat mtk_smi_common_mt8192 = {
> -       .gen      = MTK_SMI_GEN2,
> +       .type     = MTK_SMI_GEN2,
>         .bus_sel  = F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(5) |
>                     F_MMU1_LARB(6),
>  };
> @@ -483,7 +483,7 @@ static int mtk_smi_common_probe(struct platform_device *pdev)
>          * clock into emi clock domain, but for mtk smi gen2, there's no smi ao
>          * base.
>          */
> -       if (common->plat->gen == MTK_SMI_GEN1) {
> +       if (common->plat->type == MTK_SMI_GEN1) {
>                 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>                 common->smi_ao_base = devm_ioremap_resource(dev, res);
>                 if (IS_ERR(common->smi_ao_base))
> @@ -523,7 +523,7 @@ static int __maybe_unused mtk_smi_common_resume(struct device *dev)
>         if (ret)
>                 return ret;
>
> -       if (common->plat->gen == MTK_SMI_GEN2 && bus_sel)
> +       if (common->plat->type == MTK_SMI_GEN2 && bus_sel)
>                 writel(bus_sel, common->base + SMI_BUS_SEL);
>         return 0;
>  }
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
