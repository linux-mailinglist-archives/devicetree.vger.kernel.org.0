Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2152570638
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 16:52:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231182AbiGKOwV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 10:52:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbiGKOwV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 10:52:21 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E21F6F7E4
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:52:20 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id mf4so8072780ejc.3
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SGTevPUwkzc81+3xxS7RaXwvxQl65M4pwfdwK/mf7M8=;
        b=Z4XNDNccxkqkkO69BxWuxx6IsFvM9Iy0/pO+RqiO8BrUoiKcx1R1xBCQ13TE/3t9Bw
         onK38E1qGpBYWskQ0GBgkh6x2n4S3k9KaSM3oMUWRo9sVHRiL40eS9WhzYfitS6df7IE
         vjbiZz9yu5MdyHrK0cs75bFs7cpF22uzW2PaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SGTevPUwkzc81+3xxS7RaXwvxQl65M4pwfdwK/mf7M8=;
        b=UUx8TDuMghnMcz+eDqO65I0egK4O1ql+LDnGwBJ57rikFHjNG6hG7KFhfOpc4DQcbO
         aBQ11JsMTusgPK8/Oayqwj7xw+Fiqp6jDwwIJ5Wv/pUoxeTe8em4X6nTQxEPZvWz6yKL
         5tCx2FOv5MRIOvIS32rYLsUFWe9z2mdqeVeqvihm2bRRnftc8v+Dqhh+sIeuaSAO/TXx
         kY0IHfi7rbOh8OWscehV+stHjdKA+W+fWQ1F/smjEa1qOPlT6ZMiL+LHNf606r0dRXbO
         lTcU40GRndPcPqWyyVFGDe35C/kRfa81wZsEtbNdnsA/Ix2h5sGgoyFuZMvQf68jyvjD
         0MSA==
X-Gm-Message-State: AJIora9AzpRJWXeX/j89mNOukpmRkMFSd4snCuMSPxRZXjtTFHZb1pzj
        NCfUsxQRcrIMAp7e45GU3K91/LtAJOq68J2c
X-Google-Smtp-Source: AGRyM1tljB3h2x7yByKyN7PfISV3j8Lgs3m869QkwEuc5KKqzDktDEA66T34/E2SNf9IvySwxcPRFw==
X-Received: by 2002:a17:907:968f:b0:726:9f9b:ab0f with SMTP id hd15-20020a170907968f00b007269f9bab0fmr19128736ejc.237.1657551138342;
        Mon, 11 Jul 2022 07:52:18 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com. [209.85.221.54])
        by smtp.gmail.com with ESMTPSA id g19-20020aa7c853000000b0043a1bc2ebbcsm4454514edt.3.2022.07.11.07.52.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 07:52:17 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id b26so7356421wrc.2
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:52:16 -0700 (PDT)
X-Received: by 2002:adf:fb12:0:b0:20c:79b2:a200 with SMTP id
 c18-20020adffb12000000b0020c79b2a200mr17639861wrr.617.1657551136373; Mon, 11
 Jul 2022 07:52:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220711082940.39539-1-krzysztof.kozlowski@linaro.org> <20220711082940.39539-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711082940.39539-3-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 11 Jul 2022 07:52:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WUCPzzZHAPqoz-vhmcVxzYDxkKQs=+1tLZvsQjWe4q3Q@mail.gmail.com>
Message-ID: <CAD=FV=WUCPzzZHAPqoz-vhmcVxzYDxkKQs=+1tLZvsQjWe4q3Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: mmc: sdhci-msm: constrain reg-names
 perp variants
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

On Mon, Jul 11, 2022 at 1:29 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The entries in arrays must have fixed order, so the bindings and Linux
> driver expecting various combinations of 'reg' addresses was never
> actually conforming to guidelines.
>
> The 'core' reg entry is valid only for SDCC v4 and lower, so disallow it
> in SDCC v5.  SDCC v4 supports CQE and ICE, so allow them, even though
> the qcom,sdhci-msm-v4 compatible is used also for earlier SoCs with SDCC
> v2 or v3, so it is not entirely accurate.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Changes since v1:
> 1. Rework the patch based on Doug's feedback.
> ---
>  .../devicetree/bindings/mmc/sdhci-msm.yaml    | 61 ++++++++++++-------
>  1 file changed, 38 insertions(+), 23 deletions(-)

In the ${SUBJECT} I'm not sure what a "perp variant" is. Is that a
typo or just a phrase I'm not aware of?


> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index fc6e5221985a..2f0fdd65e908 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -49,33 +49,11 @@ properties:
>
>    reg:
>      minItems: 1
> -    items:
> -      - description: Host controller register map
> -      - description: SD Core register map
> -      - description: CQE register map
> -      - description: Inline Crypto Engine register map
> +    maxItems: 4
>
>    reg-names:
>      minItems: 1
>      maxItems: 4
> -    oneOf:
> -      - items:
> -          - const: hc
> -      - items:
> -          - const: hc
> -          - const: core
> -      - items:
> -          - const: hc
> -          - const: cqhci
> -      - items:
> -          - const: hc
> -          - const: cqhci
> -          - const: ice
> -      - items:
> -          - const: hc
> -          - const: core
> -          - const: cqhci
> -          - const: ice
>
>    clocks:
>      minItems: 3
> @@ -177,6 +155,43 @@ required:
>  allOf:
>    - $ref: mmc-controller.yaml#
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sdhci-msm-v4
> +    then:
> +      properties:
> +        reg:
> +          minItems: 2
> +          items:
> +            - description: Host controller register map
> +            - description: SD Core register map
> +            - description: CQE register map
> +            - description: Inline Crypto Engine register map
> +        reg-names:
> +          minItems: 2
> +          items:
> +            - const: hc
> +            - const: core
> +            - const: cqhci
> +            - const: ice
> +    else:
> +      properties:
> +        reg:
> +          minItems: 1
> +          items:
> +            - description: Host controller register map
> +            - description: CQE register map
> +            - description: Inline Crypto Engine register map
> +        reg-names:
> +          minItems: 1
> +          items:
> +            - const: hc
> +            - const: cqhci
> +            - const: ice

Do you need to set "maxItems" here? If you don't then will it inherit
the maxItems of 4 from above?

-Doug
