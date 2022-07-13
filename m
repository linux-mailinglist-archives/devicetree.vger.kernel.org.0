Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 723D05734B6
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 12:55:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235415AbiGMKzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 06:55:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235446AbiGMKzq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 06:55:46 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FBE6FF59C
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 03:55:44 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id a12so6420920ilp.13
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 03:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EPUdREpbw8JAiS9jCqv+xu5MRPBqr5k1QOevzsiVdPA=;
        b=GZJ2j65ooL2vm/ClFW7TDdwZ8UvOCJmMZZjaYrM2is1LqH4gvKPpwOv+uqtWI8HhcZ
         nPaQ2paJ3D34RKzrNIFzuqVCsxzNIXU2UdJNcNAiVZYnB5aDEyl+wtxdUWlq2hYcxMEW
         kcq2lxN8dPryf6aG4qoj6lTG1QLYaCyynJc4ujcpPXtOebmHM7Zt4kWut1IiVYnooZTB
         h4WyK20SVYF1CDvjGV97PQQ7kF2AzQhfeH3lRvII+zLsYhOSakWt6Hy2p0+0+d+6Hdee
         LncP9LkbUbLbJQZEanyB0evuUqhGC9t5Y65Exfruf6LlLlMuBYmItZ1hPZuMhbXz6XE7
         3PDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EPUdREpbw8JAiS9jCqv+xu5MRPBqr5k1QOevzsiVdPA=;
        b=QqUZLz1eeD62qeQz0mmXW/8fy3IpPVVLPvuuR0tgSS6EMwpYSPXxVH96LBdqVgfGZm
         t0/VK88yGXhB53nVOz00wL537mVluv5kf0eNl4jJpIvgOeFDPH787F3c2RjGIh73oCso
         Yr+FeVGu1s/LtLnTVsT1w76m+EfQpffVZrX2U6MX4SXijDPS9a20nfTz+L6Hf4cCsePO
         YakbGCzHAdQ2xp4NHS8OtEysTkyaXc5naCjP/48ZlfzFwEjWTx+VU0ZS33/4plbH62ts
         MAZSzFy5agMe7DUzAU5b5G2jlQHUKhB1zHc99boeau0r3a9z/E45HVAKemE9f/s/i/pj
         +POQ==
X-Gm-Message-State: AJIora9FZhCmYLMcA9v/1q5bWDAQTrT7Broxp6bws5mY3KYVI1WEKoeS
        QuOh/qUm/jKvNx6F21/c994Qb3PKLgA3vte2gNPehA==
X-Google-Smtp-Source: AGRyM1ugvM25nvYOzTXapKjUz8eqVEY534DWQ5YVZ++DDVKh3PSw2RNl9abOZWVefXRP9v8YYXkQP92bj/8QCKVyZJU=
X-Received: by 2002:a05:6e02:158a:b0:2d3:f198:9f39 with SMTP id
 m10-20020a056e02158a00b002d3f1989f39mr1556308ilu.206.1657709744036; Wed, 13
 Jul 2022 03:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220712144245.17417-1-krzysztof.kozlowski@linaro.org> <20220712144245.17417-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712144245.17417-3-krzysztof.kozlowski@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 13 Jul 2022 12:55:07 +0200
Message-ID: <CAPDyKFoC+4JrknqyLHn=rUa1ZPzksZ-zePcEc=pyb0Aj+xAtww@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: mmc: sdhci-msm: constrain reg-names
 per variants
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Jul 2022 at 16:43, Krzysztof Kozlowski
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
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes since v2:
> 1. Fix commit title typo.
> 2. Add Rb tag.
>
> Changes since v1:
> 1. Rework the patch based on Doug's feedback.
> ---
>  .../devicetree/bindings/mmc/sdhci-msm.yaml    | 61 ++++++++++++-------
>  1 file changed, 38 insertions(+), 23 deletions(-)
>
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
> +
>  unevaluatedProperties: false
>
>  examples:
> --
> 2.34.1
>
