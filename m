Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 407AA77491F
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229621AbjHHTsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232579AbjHHSVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:21:36 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECAF68F033
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 10:31:53 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-3a77ddccb2bso62303b6e.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 10:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691515913; x=1692120713;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FlU7scLqRKsODrrT7JE5RR1BiFxNDrNBXo425TuEI+s=;
        b=dHfK+nAsACj1xhO3Fq8YaqrvE4y64ymXsjeBtYwDMbS56+ANAsMHocm8Yu9H/P0PHz
         bC4PK/SCnr0YfGCGdVYeIJu0u0aZSClaLVTsI7KlInfm8aKOB7fJlkaYFTKVNApw8BG7
         Uhj6hPZcm9AYqTV2Xup7APcvwzwKHzyvG7FYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691515913; x=1692120713;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FlU7scLqRKsODrrT7JE5RR1BiFxNDrNBXo425TuEI+s=;
        b=K+tLn8AoFZbNi7kCDw3ZAyM1dPExklVX9skEdKmn4CF1nSu4kUUkqIez77CBAxqRDb
         hUjBMGeSwiKX6+hDaQCF9a7GgeenVMMKB2gakxRvVShqbmGOSgS3mLITAhpPMtrGmnlH
         8vL1IsHCkkoyDzLoF1jBLCRzXVFHD9g8olz2wckJdIKRJYCIileUe4cd975c0RFImkGg
         zNAdDLshHhJlEvPvoa6zLV7orji+W3lUEL9PJXXY87/34tpa3pYhLZyC+MCFt1gvQMfc
         FhQzCYa9FtVoFY+90I8F4sGwrXEEmV682bBJAU+VPlmEAOVLI1EgG60kAJXd401beQCk
         Rp/Q==
X-Gm-Message-State: AOJu0YzymwjjS/OzhQgvkgy5BCFj7/QQivX+POo0/aD8x1il4HsUR1jd
        RasfmEJPsKmTMsa75KSwAN2uVsenOJ2gLqubRfT+jRsQ5HxQwIu7AGs=
X-Google-Smtp-Source: AGHT+IEr8X47lVReRVYsjp1wSOdOsFnN16mPRCPrPqN5OO+ugWEzrX8jUAOCzwnG2RrMSH4A34icSl5w/oEXgGIufgU=
X-Received: by 2002:a67:e3ab:0:b0:443:5ddf:4f5b with SMTP id
 j11-20020a67e3ab000000b004435ddf4f5bmr3210522vsm.11.1691488450968; Tue, 08
 Aug 2023 02:54:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230602090227.7264-1-yong.wu@mediatek.com> <20230602090227.7264-6-yong.wu@mediatek.com>
In-Reply-To: <20230602090227.7264-6-yong.wu@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 8 Aug 2023 17:53:59 +0800
Message-ID: <CAGXv+5EKwvn-axETPcuxTpxRkUGLroymeDYL+kr4QW8duAymmQ@mail.gmail.com>
Subject: Re: [PATCH v12 5/7] iommu/mediatek: Add MT8188 IOMMU Support
To:     Yong Wu <yong.wu@mediatek.com>
Cc:     Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, iommu@lists.linux.dev,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        mingyuan.ma@mediatek.com, yf.wang@mediatek.com,
        jianjiao.zeng@mediatek.com, chengci.xu@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
        DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 2, 2023 at 5:04=E2=80=AFPM Yong Wu <yong.wu@mediatek.com> wrote=
:
>
> From: "Chengci.Xu" <chengci.xu@mediatek.com>
>
> MT8188 has 3 IOMMU, containing 2 MM IOMMUs, one is for vdo, the other
> is for vpp. and 1 INFRA IOMMU.
>
> Signed-off-by: Chengci.Xu <chengci.xu@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> ---
>  drivers/iommu/mtk_iommu.c | 49 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
>
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 9c89cf894a4d..5c66af0c45a8 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -170,6 +170,7 @@ enum mtk_iommu_plat {
>         M4U_MT8173,
>         M4U_MT8183,
>         M4U_MT8186,
> +       M4U_MT8188,
>         M4U_MT8192,
>         M4U_MT8195,
>         M4U_MT8365,
> @@ -1593,6 +1594,51 @@ static const struct mtk_iommu_plat_data mt8186_dat=
a_mm =3D {
>         .iova_region_larb_msk =3D mt8186_larb_region_msk,
>  };
>
> +static const struct mtk_iommu_plat_data mt8188_data_infra =3D {
> +       .m4u_plat         =3D M4U_MT8188,
> +       .flags            =3D WR_THROT_EN | DCM_DISABLE | STD_AXI_MODE | =
PM_CLK_AO |
> +                           MTK_IOMMU_TYPE_INFRA | IFA_IOMMU_PCIE_SUPPORT=
 |
> +                           PGTABLE_PA_35_EN | CFG_IFA_MASTER_IN_ATF,

FWIW, CFG_IFA_MASTER_IN_ATF should not be tied to the compatible string,
but set via a DT property. The IOMMU controls are secured by firmware.
It is not a property intrinsically tied to the hardware.

If on some other project there is no such security requirement and the
IOMMU is opened up to non-secure world, and ATF not even having support
for the SMC call, this becomes unusable and hard to rectify without
introducing a new compatible string.

ChenYu

> +       .inv_sel_reg      =3D REG_MMU_INV_SEL_GEN2,
> +       .banks_num        =3D 1,
> +       .banks_enable     =3D {true},
> +       .iova_region      =3D single_domain,
> +       .iova_region_nr   =3D ARRAY_SIZE(single_domain),
> +};
> +
> +static const struct mtk_iommu_plat_data mt8188_data_vdo =3D {
> +       .m4u_plat       =3D M4U_MT8188,
> +       .flags          =3D HAS_BCLK | HAS_SUB_COMM_3BITS | OUT_ORDER_WR_=
EN |
> +                         WR_THROT_EN | IOVA_34_EN | SHARE_PGTABLE |
> +                         PGTABLE_PA_35_EN | MTK_IOMMU_TYPE_MM,
> +       .hw_list        =3D &m4ulist,
> +       .inv_sel_reg    =3D REG_MMU_INV_SEL_GEN2,
> +       .banks_num      =3D 1,
> +       .banks_enable   =3D {true},
> +       .iova_region    =3D mt8192_multi_dom,
> +       .iova_region_nr =3D ARRAY_SIZE(mt8192_multi_dom),
> +       .larbid_remap   =3D {{2}, {0}, {21}, {0}, {19}, {9, 10,
> +                          11 /* 11a */, 25 /* 11c */},
> +                          {13, 0, 29 /* 16b */, 30 /* 17b */, 0}, {5}},
> +};
> +
> +static const struct mtk_iommu_plat_data mt8188_data_vpp =3D {
> +       .m4u_plat       =3D M4U_MT8188,
> +       .flags          =3D HAS_BCLK | HAS_SUB_COMM_3BITS | OUT_ORDER_WR_=
EN |
> +                         WR_THROT_EN | IOVA_34_EN | SHARE_PGTABLE |
> +                         PGTABLE_PA_35_EN | MTK_IOMMU_TYPE_MM,
> +       .hw_list        =3D &m4ulist,
> +       .inv_sel_reg    =3D REG_MMU_INV_SEL_GEN2,
> +       .banks_num      =3D 1,
> +       .banks_enable   =3D {true},
> +       .iova_region    =3D mt8192_multi_dom,
> +       .iova_region_nr =3D ARRAY_SIZE(mt8192_multi_dom),
> +       .larbid_remap   =3D {{1}, {3}, {23}, {7}, {MTK_INVALID_LARBID},
> +                          {12, 15, 24 /* 11b */}, {14, MTK_INVALID_LARBI=
D,
> +                          16 /* 16a */, 17 /* 17a */, MTK_INVALID_LARBID=
,
> +                          27, 28 /* ccu0 */, MTK_INVALID_LARBID}, {4, 6}=
},
> +};
> +
>  static const unsigned int mt8192_larb_region_msk[MT8192_MULTI_REGION_NR_=
MAX][MTK_LARB_NR_MAX] =3D {
>         [0] =3D {~0, ~0},                         /* Region0: larb0/1 */
>         [1] =3D {0, 0, 0, 0, ~0, ~0, 0, ~0},      /* Region1: larb4/5/7 *=
/
> @@ -1701,6 +1747,9 @@ static const struct of_device_id mtk_iommu_of_ids[]=
 =3D {
>         { .compatible =3D "mediatek,mt8173-m4u", .data =3D &mt8173_data},
>         { .compatible =3D "mediatek,mt8183-m4u", .data =3D &mt8183_data},
>         { .compatible =3D "mediatek,mt8186-iommu-mm",    .data =3D &mt818=
6_data_mm}, /* mm: m4u */
> +       { .compatible =3D "mediatek,mt8188-iommu-infra", .data =3D &mt818=
8_data_infra},
> +       { .compatible =3D "mediatek,mt8188-iommu-vdo",   .data =3D &mt818=
8_data_vdo},
> +       { .compatible =3D "mediatek,mt8188-iommu-vpp",   .data =3D &mt818=
8_data_vpp},
>         { .compatible =3D "mediatek,mt8192-m4u", .data =3D &mt8192_data},
>         { .compatible =3D "mediatek,mt8195-iommu-infra", .data =3D &mt819=
5_data_infra},
>         { .compatible =3D "mediatek,mt8195-iommu-vdo",   .data =3D &mt819=
5_data_vdo},
> --
> 2.25.1
>
>
