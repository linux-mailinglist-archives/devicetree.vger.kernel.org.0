Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 132A562C3DA
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 17:18:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234352AbiKPQSY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 11:18:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234360AbiKPQSL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 11:18:11 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AFC757B62
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:18:09 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id h193so17086970pgc.10
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U+6kofWK+lAk9nYMdFCTFYyZyxlN1y4m9eqx3Qu6bH8=;
        b=J6QmENGbkz8JaelIwNWSJ8l299ttLiHNHQJbCutNLWXPp7HMamJ0nxlXFphKb5OFaC
         cNygK5/QTbSUGOeFzpo0kXYYztKZpAwspryVy6TEKqFcPFI9jDBBSb8CZ5ucaBTQzqom
         w1ckAJmV0OkD0oeTRLj3s8GjRwb7D7gq95HJwGYtjybJzDRUnVPNwr+JSFEBlchYhAvK
         LGJK8+IKVMPEkojNgT7uG9WNA2Iq//VYKMFaCjp/+FFRlT4oge1JJCGlm6t/+2Vq4mvA
         TmEBOpYcrquiRPrwE0C57a3LkkFXOKaDSsxk25BkjvxyXaUlmJXwp8x6Ul39kX8wkHQG
         RMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U+6kofWK+lAk9nYMdFCTFYyZyxlN1y4m9eqx3Qu6bH8=;
        b=aP8V0M/g4zVrF7YqkqGytMpKkk21vLG2O4inZPRAaZBOjXk693Kf46F1noTxd2m3sJ
         uEguMGrTgI5X+uGoIcp9nd1LvRGfR9HNBKZi+akJH9saIafSt7VQlZyqAqFbe2SDj/Ah
         KydgQIMpEXpvt+ttb6bUvjo7URBLwf3rBAtCGZrXbktAHqChPHtRZJ9EuNoAqVSVU//G
         EpX4xOXwB1PyUleNvNcgNEQUhTdowHCZXn4ngipYSKml0MXguy+MTN/UI8OcALV1tbWz
         2yyylgs5R2FVUmR0GVTnwBXALdjNcliXl9qKPTkD+KzX3lw8qsYoabeZvvt5mWaEyZpM
         wn7w==
X-Gm-Message-State: ANoB5pkGX2AH84rP16HbKVK8lgAJ5ihZoeRSYj5iMVY59iyjDEJKkIos
        ja0E/fPRll59rGLwCpakbLwK/xzYBlwqpfnm+gJ+/Q==
X-Google-Smtp-Source: AA0mqf7Yk01flNfOp6SxymOc+XEuglm7jqex2dsSPKvWtWPa80gI4EKbAlDuk8r2R4WzOyG+XpbjS2afb54fviVWB8w=
X-Received: by 2002:a63:db03:0:b0:470:4f30:f743 with SMTP id
 e3-20020a63db03000000b004704f30f743mr21500123pgg.434.1668615489044; Wed, 16
 Nov 2022 08:18:09 -0800 (PST)
MIME-Version: 1.0
References: <20221114105043.36698-1-konrad.dybcio@linaro.org> <20221114105043.36698-2-konrad.dybcio@linaro.org>
In-Reply-To: <20221114105043.36698-2-konrad.dybcio@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 16 Nov 2022 17:17:30 +0100
Message-ID: <CAPDyKFq391+dvG-R=5S7RkW03hWvP2c+WEAvYLPhaoVUasm1VQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: mmc: sdhci-msm: Document the SM6375 compatible
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org,
        patch@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Mon, 14 Nov 2022 at 11:50, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Document the compatible for SDHCI on SM6375.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
> No changes in v3.
>
> Changes in v2:
> - pick up rb
>
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index fc8a6b345d97..12def0f57e3e 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -46,6 +46,7 @@ properties:
>                - qcom,sm6115-sdhci
>                - qcom,sm6125-sdhci
>                - qcom,sm6350-sdhci
> +              - qcom,sm6375-sdhci
>                - qcom,sm8150-sdhci
>                - qcom,sm8250-sdhci
>                - qcom,sm8450-sdhci
> --
> 2.38.1
>
