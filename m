Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBD383D0EEB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 14:49:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234222AbhGUL7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 07:59:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234304AbhGUL7K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 07:59:10 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F50DC061768
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 05:39:42 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id jx7-20020a17090b46c7b02901757deaf2c8so964518pjb.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 05:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QEkEthW7CKgy/or0VKIC3NeiSwizxj3OuVxfIG0VkUM=;
        b=HSwP1Zll/dPKdP3vrbbcEcVkhx/jcMPX3H7ajHXoSwKOPW+SuuBbZWuMjK5d0IvNt6
         bUWR+IarJUShSq8/4Y4ZqPCNqV+Nb9C/YIRUJqW2jpOs8ycmClELT6yzWkawxONQWZYG
         NDq/jPElYJ19nDgdHBtVsnlcLc+P6LA8juEuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QEkEthW7CKgy/or0VKIC3NeiSwizxj3OuVxfIG0VkUM=;
        b=EWvrv/Wl0dCH7ylWpJl6lNe/RVmYWsbSrYzqKZ9zrWkYzLiHCq0ET4lX1ClkY0qAW2
         gc6ZGwlF4A4gkB2oagL6T8rD2LTxYXUzbOozNJEADqyvGuwitcEhKAxJ74ALGT/kd5CH
         uhvZjDcbsbcusAagSSkv6YJ4uAPy7OyQDgkZ7Srp2zrQb7Htac60d/H6jBNJc/r6lznW
         gLCt9GH+Rip7SnKATFzHSkRVr8MhmVUJ4jGRooXM6H3pEIRqALcipSung1HZOrbJ4oe0
         iLjifJfhya1Z7gTlyupPFzht3twe3gWIrWLalkQmSJqR1s7D7UPDjdoyf/vPJ36TS+AI
         u+Kw==
X-Gm-Message-State: AOAM5303FAJskLIkiPsJmdoTF92zkAVbeT4enI2N5Q4OpG9Xn+xKIVEx
        kQd807ymSCt2izdgwhoH8vdBIKKi0WkEJdBBgydU7w==
X-Google-Smtp-Source: ABdhPJyTnNfx5pORTNjVkzxDDgtUXvJakKiVASRPKj5kfSEKa5DHdCM0Rau3Ti5Cohe2pje9E1RCRyGbz9nE8qdnWDg=
X-Received: by 2002:a17:903:22d0:b029:12b:1215:5e73 with SMTP id
 y16-20020a17090322d0b029012b12155e73mr27536794plg.60.1626871181882; Wed, 21
 Jul 2021 05:39:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210715121209.31024-1-yong.wu@mediatek.com> <20210715121209.31024-10-yong.wu@mediatek.com>
In-Reply-To: <20210715121209.31024-10-yong.wu@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Wed, 21 Jul 2021 20:39:31 +0800
Message-ID: <CAATdQgCwWDp9D-aFHNGVvOuojJeYH=yAq+tce4vUbQ=kiYa59w@mail.gmail.com>
Subject: Re: [PATCH v2 09/11] memory: mtk-smi: mt8195: Add smi support
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

On Thu, Jul 15, 2021 at 8:22 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> MT8195 has two smi-common, their IP are the same. Only the larbs that
> connect with the smi-common are different. thus the bus_sel are different
> for the two smi-common.
>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

> ---
>  drivers/memory/mtk-smi.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
> index e5a34b3952a0..3c288716a378 100644
> --- a/drivers/memory/mtk-smi.c
> +++ b/drivers/memory/mtk-smi.c
> @@ -250,6 +250,10 @@ static const struct mtk_smi_larb_gen mtk_smi_larb_mt8192 = {
>         .config_port                = mtk_smi_larb_config_port_gen2_general,
>  };
>
> +static const struct mtk_smi_larb_gen mtk_smi_larb_mt8195 = {
> +       .config_port                = mtk_smi_larb_config_port_gen2_general,
> +};
> +
>  static const struct of_device_id mtk_smi_larb_of_ids[] = {
>         {.compatible = "mediatek,mt2701-smi-larb", .data = &mtk_smi_larb_mt2701},
>         {.compatible = "mediatek,mt2712-smi-larb", .data = &mtk_smi_larb_mt2712},
> @@ -258,6 +262,7 @@ static const struct of_device_id mtk_smi_larb_of_ids[] = {
>         {.compatible = "mediatek,mt8173-smi-larb", .data = &mtk_smi_larb_mt8173},
>         {.compatible = "mediatek,mt8183-smi-larb", .data = &mtk_smi_larb_mt8183},
>         {.compatible = "mediatek,mt8192-smi-larb", .data = &mtk_smi_larb_mt8192},
> +       {.compatible = "mediatek,mt8195-smi-larb", .data = &mtk_smi_larb_mt8195},
>         {}
>  };
>
> @@ -430,6 +435,21 @@ static const struct mtk_smi_common_plat mtk_smi_common_mt8192 = {
>                     F_MMU1_LARB(6),
>  };
>
> +static const struct mtk_smi_common_plat mtk_smi_common_mt8195_vdo = {
> +       .type     = MTK_SMI_GEN2,
> +       .bus_sel  = F_MMU1_LARB(1) | F_MMU1_LARB(3) | F_MMU1_LARB(5) |
> +                   F_MMU1_LARB(7),
> +};
> +
> +static const struct mtk_smi_common_plat mtk_smi_common_mt8195_vpp = {
> +       .type     = MTK_SMI_GEN2,
> +       .bus_sel  = F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(7),
> +};
> +
> +static const struct mtk_smi_common_plat mtk_smi_sub_common_mt8195 = {
> +       .type     = MTK_SMI_GEN2_SUB_COMM,
> +};
> +
>  static const struct of_device_id mtk_smi_common_of_ids[] = {
>         {.compatible = "mediatek,mt2701-smi-common", .data = &mtk_smi_common_gen1},
>         {.compatible = "mediatek,mt2712-smi-common", .data = &mtk_smi_common_gen2},
> @@ -438,6 +458,9 @@ static const struct of_device_id mtk_smi_common_of_ids[] = {
>         {.compatible = "mediatek,mt8173-smi-common", .data = &mtk_smi_common_gen2},
>         {.compatible = "mediatek,mt8183-smi-common", .data = &mtk_smi_common_mt8183},
>         {.compatible = "mediatek,mt8192-smi-common", .data = &mtk_smi_common_mt8192},
> +       {.compatible = "mediatek,mt8195-smi-common-vdo", .data = &mtk_smi_common_mt8195_vdo},
> +       {.compatible = "mediatek,mt8195-smi-common-vpp", .data = &mtk_smi_common_mt8195_vpp},
> +       {.compatible = "mediatek,mt8195-smi-sub-common", .data = &mtk_smi_sub_common_mt8195},
>         {}
>  };
>
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
