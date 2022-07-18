Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB072578112
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 13:39:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234425AbiGRLj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 07:39:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234535AbiGRLjW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 07:39:22 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F5CBBE
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:39:20 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id d12so18768332lfq.12
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fqFXW47liSOgWesWbe3iscDHgm0d6lPu0OfhHoTpb8s=;
        b=SoVQbmGoIB6Z/dtwpH7n/SQrerMa3pXvL0gHXILbEQwBPwXkFg7GVSDa83vCgSk0zG
         /yqA6JsW03ZcoesOeaNM19e9y9Rp298gtecbH2tD1k2+L7GOlg0idzWMc0IfzO+1tnAE
         VHeqGN4YGW8NL35VrjCIlugLpyC6H12R/Xg4QHXZCbFlfHfmQ9eVIb7f7zNPTeqcmR4T
         yxe4bi7jC5a5QpPPlugweahFIPmDZqaj6CyY8bD17p+usfO3NFsdj8OoUqjWm5eJbIQV
         ymk86s103R6B7DebZMoYbHdZrySBF+E9ztxt2sW8WYBZkf55pT106obiy8IRuX7w/Gt3
         bK0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fqFXW47liSOgWesWbe3iscDHgm0d6lPu0OfhHoTpb8s=;
        b=vclXXNak7f7+wZuqZUJRDquWrpiuwFTv7wI7iQM+GZtokC4jWFQhGosKgHpaVfpImz
         Yo+risrPzsv8FXzv/sGMr0rzj1K4EQ5MVJYd5S+5Yp+/c6XqtzvPCyO4AhBFs8l3L+6F
         COnLgiNuUBw6LAVqYHI7IjZ/g5jX0gPWYs8w3oDM8M2BjRJZjSHWp7fm7XXZypDfElr/
         RjsmtibnUvyE7R2SBRE4cHyXyI5iDJCvufLU6Xr2bvobQEH7qBIEPJCiN+L9wnLwTfVG
         ChoDC1ypmPJGtXYyjfqOsuSYMKP1Ly7+O7p8gQ5wblAW3Dai+uy6aHRCYO6pRSj0CXSs
         BCTA==
X-Gm-Message-State: AJIora9PJJgaiEFqZdhn3n3Qws0BsMKg+r89C83sDdbSuJYxn64MovH2
        ZJ/9G+M28kkBF/tth/jNKMRMqIrLis6H6aH15Ofqww==
X-Google-Smtp-Source: AGRyM1uEYzo8g//JsgAfnPoniIwTL3KHWTaTOY9Ti9xQSb52AIAMymbZg32JURDjMsYeRRM3xXhppYzIL6cij+p5n8o=
X-Received: by 2002:a05:6512:aca:b0:48a:1a70:d0d8 with SMTP id
 n10-20020a0565120aca00b0048a1a70d0d8mr11175523lfu.167.1658144359079; Mon, 18
 Jul 2022 04:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220714123406.1919836-1-konrad.dybcio@somainline.org> <20220714123406.1919836-2-konrad.dybcio@somainline.org>
In-Reply-To: <20220714123406.1919836-2-konrad.dybcio@somainline.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 18 Jul 2022 13:38:42 +0200
Message-ID: <CAPDyKFqx5oxNpih-u0icLD0o59wAdDnpGGNSn=ZNteYupWGZ5g@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: mmc: sdhci-msm: Document the SM8450 compatible
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jul 2022 at 14:34, Konrad Dybcio
<konrad.dybcio@somainline.org> wrote:
>
> Document the compatible for SDHCI on SM8450.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes since v1:
> * Add this forgotten snowflake
>
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index e4236334e748..4b65d0497fd6 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -38,6 +38,7 @@ properties:
>                - qcom,sm6350-sdhci
>                - qcom,sm8150-sdhci
>                - qcom,sm8250-sdhci
> +              - qcom,sm8450-sdhci
>            - enum:
>                - qcom,sdhci-msm-v4 # for sdcc versions less than 5.0
>                - qcom,sdhci-msm-v5 # for sdcc version 5.0
> --
> 2.37.0
>
