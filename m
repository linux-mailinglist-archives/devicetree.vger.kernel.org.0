Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF4386A190C
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:51:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjBXJvG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:51:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjBXJvF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:51:05 -0500
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com [IPv6:2607:f8b0:4864:20::e36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E8E663DD9
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:51:04 -0800 (PST)
Received: by mail-vs1-xe36.google.com with SMTP id o6so20969358vsq.10
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bn55ww5zH0WVNWxa7yQLcFqUy+v9EZjhhlwgJ2gi7tw=;
        b=WkpEqh8DFF0lRYLZd3bfKv3ja8dYdPmt1b7Sw6iSShCMvpuOogd75QOU3cHgSgf4N7
         eCZfBMZLMf4VF42tqmGAP5xYAFdN1gHEhm+dEwpTf2pHS83CngImW+gncRJFs266EdT0
         qbJL5X2vuRFHE69kJhjJg9Sh3axMfXRrpCO5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bn55ww5zH0WVNWxa7yQLcFqUy+v9EZjhhlwgJ2gi7tw=;
        b=0atpqYRnG82so1BeoSE5eqatbHd+nxY2WknYjbdvb2UpCg3nJcaea9vboT0WjFD8I4
         +2/mvsEboi6O6a8ry+EqGj4kvbJu+6w7vjjhIlrYdxcS0XQTB241zajODQv9NCOLmQRm
         qj1BODg+v9OmKsicO0FSHIsr62091vMH82abNlXQphhLKRfiTeD1c74A0BhG29lz2pt1
         iwBEHW4IKLo7y4YfqcI2o9e2Z/FWddBR+nTMSYlpzX2ipvqsa0zQnf74Iq0EbgFJ0FpF
         MCSYMpkPp/CcAgWZm6Nd/Vll2DWFpEl+Zy6EmL5qh4b1Y/qDFs/ePH1Tcz36V8nMAWZK
         drbg==
X-Gm-Message-State: AO0yUKVieSURwO8yKEhWabOcMhJcTo9vNFBLqYhXWwD1KXMGKQ/gTvRd
        ikRmSfxWb3BX9yGBAb+Eb7L7v0VAcpV8on+R6WhtRQ==
X-Google-Smtp-Source: AK7set8bF/QXq2q9q2pvSMabMKLNjY0IhFjR5RiG9wUkuT+BcXIqnZhOYN1xW9AZI6HYLdpi3wfZKN0lO3jcBXibgKE=
X-Received: by 2002:a05:6102:1592:b0:412:5424:e58e with SMTP id
 g18-20020a056102159200b004125424e58emr2373657vsv.0.1677232263235; Fri, 24 Feb
 2023 01:51:03 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-3-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:50:52 +0800
Message-ID: <CAGXv+5FUzeB1SPDt+Ys8ALA_y5ZAPQGnz43NnLCPorvurF3eYg@mail.gmail.com>
Subject: Re: [PATCH v2 02/16] arm64: dts: mediatek: mt8183-kukui: Override
 vgpu/vsram_gpu constraints
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 9:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Override the PMIC-default voltage constraints for VGPU and VSRAM_GPU
> with the platform specific vmin/vmax for the highest possible SoC
> binning.

The maximum voltage numbers don't match the existing OPP table though.

> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> index de9778c85b94..63952c1251df 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -401,6 +401,9 @@ &mt6358codec {
>  };
>
>  &mt6358_vgpu_reg {
> +       regulator-min-microvolt = <625000>;
> +       regulator-max-microvolt = <900000>;
> +
>         regulator-coupled-with = <&mt6358_vsram_gpu_reg>;
>         regulator-coupled-max-spread = <100000>;
>  };
> @@ -416,6 +419,9 @@ &mt6358_vsim2_reg {
>  };
>
>  &mt6358_vsram_gpu_reg {
> +       regulator-min-microvolt = <850000>;
> +       regulator-max-microvolt = <1000000>;
> +
>         regulator-coupled-with = <&mt6358_vgpu_reg>;
>         regulator-coupled-max-spread = <100000>;
>  };
> --
> 2.39.2
>
