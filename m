Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A2946CBA61
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 11:22:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbjC1JWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 05:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbjC1JWO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 05:22:14 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBB3659C9
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 02:22:13 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id z83so14183002ybb.2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 02:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1679995333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WfEbC+QvlmYRFEpM334dDDmHLZzT53TFZ7pAp7zhwe4=;
        b=O+6rpHUxMrocg+PNRSUNrl09ruDw8nFucVYoEuKiSkUoYU+rAaaZhtmXvt6TdGkwNP
         M1b8yBJvevc5Zt7Jyzawt3sUx2+8btHWzfMFZYbqpV5ujpvuCnm6uUn66khGbaDrI4/b
         BnOZaXOaZ1QBeFNUU7FRBwi2CjsBQzbK8g1XLS5nhmorHOweLMGd0v+/YX2qMdHObYeV
         flOhgDotNum9SI+7uxyc4MfExqnGRtrmIxceFdg59KEnFajy5Cv80DUd+NdLRx8k3RA4
         7LEesg4hoH8OgLFhlxClH+aKYg8loDZNrIsxSLEo9AIGjCJ+YOTdQbIxwY0yUZUkHLT6
         Rexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679995333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WfEbC+QvlmYRFEpM334dDDmHLZzT53TFZ7pAp7zhwe4=;
        b=fq8Vobf3I609DmOvheYVEMKXe97o4+PgR9K6wZdS393A9Trrp8P0Mv6kcLaYXpHGlb
         RrFy8wObn4Mqk/RnH8svGfgbN46kW+1X8I+PVdId6t13igF3Hp7wwKid9b+dhd49aeHE
         3PE8aaSdaKwqV69XiHc8p28ETlH8fKiJ9WcoDD90tR2nK5EiA3Q7MZJTfBxBrBHvaKm7
         tKZzuwPcg+uECSTd3EnWw7HPno2VFZriuL1NekOLJWEleF2ssGBxtTmFw4PlEpTWgE9T
         QfE7S+L+NFvARXMxfeb7+hQZxpNVCk+mYzOdVeRvZdkvYG48WNjX/HXFR9tkIVcEdd4q
         ZfHA==
X-Gm-Message-State: AAQBX9eZ04kYx4OtOnP50CuWktB9HQwZYc7eLvLVLEFB888LpxnCJ4pT
        A+QYysvmq7aMD6oqk1dyNJs6GLZbDNbwqOOqhcxsKw==
X-Google-Smtp-Source: AKy350auimLGCr8ILoBzGItiYAiR4pgO8LPEdWrnD1Vk5Z4GVtmW4pyg+5kEg5lZTH5zOTSGFwsCl8xX2CPkdVQT06U=
X-Received: by 2002:a25:a2c3:0:b0:b78:1b26:a642 with SMTP id
 c3-20020a25a2c3000000b00b781b26a642mr6658558ybn.1.1679995333140; Tue, 28 Mar
 2023 02:22:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230324094205.33266-1-angelogioacchino.delregno@collabora.com> <20230324094205.33266-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230324094205.33266-4-angelogioacchino.delregno@collabora.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Tue, 28 Mar 2023 11:22:02 +0200
Message-ID: <CAFGrd9pjm97+Et-auw2rh4nWUJAcqXzy2cix42QJRx4UHNzq2g@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] soc: mediatek: pwrap: Add kerneldoc for struct pwrap_slv_type
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, flora.fu@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le ven. 24 mars 2023 =C3=A0 10:42, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> a =C3=A9crit :
>
> In preparation for adding new members with name abbreviations describe
> the struct pwrap_slv_type with kerneldoc to enhance human readability.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  drivers/soc/mediatek/mtk-pmic-wrap.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/=
mtk-pmic-wrap.c
> index 5c500be48f7c..a33a1b1820cb 100644
> --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
> @@ -1218,11 +1218,17 @@ struct pwrap_slv_regops {
>         int (*pwrap_write)(struct pmic_wrapper *wrp, u32 adr, u32 wdata);
>  };
>
> +/**
> + * struct pwrap_slv_type - PMIC device wrapper definitions
> + * @dew_regs:      Device Wrapper (DeW) register offsets
> + * @type:          PMIC Type (model)
> + * @regops:        Register R/W ops
> + * @caps:          Capability flags for the target device
> + */
>  struct pwrap_slv_type {
>         const u32 *dew_regs;
>         enum pmic_type type;
>         const struct pwrap_slv_regops *regops;
> -       /* Flags indicating the capability for the target slave */
>         u32 caps;
>  };

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

Regards,
Alexandre
