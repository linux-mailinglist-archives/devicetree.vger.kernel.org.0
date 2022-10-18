Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36C2D602D49
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 15:46:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231150AbiJRNqE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 09:46:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231165AbiJRNqC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 09:46:02 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 569B56C775
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:45:56 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id g16so4805721qtu.2
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=drTjJKcD8QJOd10zQ0gum6cJSH3rnvYwTkLWAPWtxQ8=;
        b=J5zc6fWalORUSCdW1JctbKrNHS0caAhuRwj/l9+2ZWLPK56QNsX8ofOMISnF75kO1b
         wDPDD5RVf607JAIQNn+zPEkowObf1NgW6Ck45kB8RUtDmEhMkqOQV9VoSQqfV0pufqyN
         rNRS3i1FS7DgePYL8ggzvVHF8ooR7oiCG1ahazTF+iqItUJQPMYdi+BFPlqzf2da3zZ2
         sqGRMVsIKdZqPbJYTLGhsZ4w/wY1EwAOhte9jADyXxC4nfupWmUV6Dnd4+Y53mLVP3QF
         rO8UxqQt2RfIAt9NziZB5CoCDZcdqIb+0Ynk9wo6dPYcHDyTH9OK6NcA16FrJdOTvYJM
         lqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=drTjJKcD8QJOd10zQ0gum6cJSH3rnvYwTkLWAPWtxQ8=;
        b=3Nh7me39Sg9Zs0M/SyuWr+JVkKT3CsJkmS3m9FU2UB2XX8TiO8smsPZT8geuUhOfZB
         2ug6otdVpJ205RpBVrl2CThtuehOWjOH3+Sn2ZFethGPA/TtHZm3oHtUrC+TKGbvdjhV
         hBTdSeEzxq/yzY2KsYqZQ+VPZvp5dotai8ECJvHVZS0RcC+Zecfm8LML1QyREFEcbdgA
         J7XsAPCeXkTGxYTC5yCJlTTqnNJ9AQBrP7sjSsmJf8ECSiS2/RZE6npjAB2QcKJDiHkW
         0cE+P4L1GWbWrFfAxkuhKJbTxhnJ9DXHfn4k4dI+AgqufA+xGSc+dDSNV+tsNJWH0NrL
         Mbhg==
X-Gm-Message-State: ACrzQf1UpmUc+6w0zXBJiGvvW6SJJ41eYzhWfWzEtRT85QIkh4Jc4GdJ
        1f1JxOdIjkOQhqyn53Xw0Cw4RA==
X-Google-Smtp-Source: AMsMyM4JkuiI01HNBhFX//zuBopPACdJXHKVAHoOUBuLa+96jKJfM3o2PgCLeFHCwdEj+oTWnZGs7A==
X-Received: by 2002:ac8:5cc3:0:b0:39c:f695:d39b with SMTP id s3-20020ac85cc3000000b0039cf695d39bmr1592305qta.468.1666100754519;
        Tue, 18 Oct 2022 06:45:54 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id bi26-20020a05620a319a00b006ce7bb8518bsm2514104qkb.5.2022.10.18.06.45.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 06:45:53 -0700 (PDT)
Message-ID: <37dfc849-a822-661f-4816-f8fe917a1e2c@linaro.org>
Date:   Tue, 18 Oct 2022 09:45:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 3/3] dt-bindings: clock: add loongson2k clock binding
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Huacai Chen <chenhuacai@kernel.org>,
        WANG Xuerui <kernel@xen0n.name>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Jianmin Lv <lvjianmin@loongson.cn>,
        Yang Li <yang.lee@linux.alibaba.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loongarch@lists.linux.dev
References: <20221018130531.301-1-zhuyinbo@loongson.cn>
 <20221018130531.301-3-zhuyinbo@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221018130531.301-3-zhuyinbo@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/10/2022 09:05, Yinbo Zhu wrote:
> Add the loongson2k clock binding with DT schema format using
> json-schema.
> 
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
> ---
>  .../bindings/clock/loongson,ls2k-clk.yaml     | 77 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml b/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
> new file mode 100644
> index 000000000000..cf42e7cd4c7e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/loongson,ls2k-clk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Loongson2 SoC Clock Control Module Binding

Drop "Binding"

> +
> +maintainers:
> +  - Yinbo Zhu <zhuyinbo@loongson.cn>
> +
> +description: |
> +  Loongson2 SoC clock control module is an integrated clock controller, which
> +  generates and supplies to all modules.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - loongson,ls2k-clk
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1

maxItems instead

> +
> +  clock-names:
> +    minItems: 1

Just list the items here.

> +
> +  '#clock-cells':
> +    const: 1
> +    description:
> +      The clock consumer should specify the desired clock by having the clock
> +      ID in its "clocks" phandle cell. See include/dt-bindings/clock/loongson2-clock.h
> +      for the full list of loongson2 SoC clock IDs.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - '#clock-cells'
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: loongson,ls2k-clk
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: 100m refclk
> +        clock-names:
> +          items:
> +            - const: refclk_100m

Drop entire allOf and move the contents to top level.

Name just: "ref_100m"

>  

Best regards,
Krzysztof

