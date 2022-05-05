Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D5B451BAD0
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 10:43:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232818AbiEEIrB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 04:47:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243162AbiEEIrA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 04:47:00 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F1A4A3DB
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 01:43:20 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id b19so5109248wrh.11
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 01:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BwjG084Xyrd7fADRYx0ezYbwXyTCoFvt7uuDOTPBHVM=;
        b=eSG+xQ6Za+GMDm3ceu6hy+snhovBeUc+FuGNwmDZKa4ozBG+V0K4Qh34hvSYU+2tCC
         eyMSm8bYsZCOeUSqKtMweysaGEysyBIy4+DqaTU4ZKgQBfgBbbnR3vLLHbocQvbY0jau
         tNiBBmqbBZ1VugNSpTmpzsbUcS3jVsTN8GNia7a8pmkD3hIdLBdKwxGsC3i5mmwOmaJF
         a/+mse7tB6ON0BzLJU6YZ4uWadZuUqe5hZm5mW3FAIBDYxmN5/uCUdc0q0k2MhVkDMVW
         jAP6zYj6Llx3l9/R4fhMYFf5pyICaoe4yY3w/nxbcYKGjzl24nZ1Fm2LH3Xhtel1939v
         HZWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BwjG084Xyrd7fADRYx0ezYbwXyTCoFvt7uuDOTPBHVM=;
        b=pxs6X4GU40iBD7AXqm2nAgSu4aFlg4jqDBa7mSjGblXjJnV/mPwkq9Y58gZmH+h7QY
         owYZ7nDv1mXIgKI3F2jm+Lae2wpHcrd1F8zyp31S3DMPXSjlpmGKExMtjK4lsE2PmDNC
         eVOWwWvbl4J5xhZik8rtziBhwkQFHxyYTY0yr+KEBRzQwqmBjSq74IXMBXYmfFCBVCng
         yuxuAKxH6cbaE0mw0jsEY+pC0ygOtVIUGl/+uyuuPGukUGLy/1Dp+L12rxAIG+qgS27i
         Sp/p3P9rnaEXom7j1tUcPPmIC7QRuKIXcHZfS7DIrslYFEC829uFfeHNlcdY/NL0OpG2
         2XkA==
X-Gm-Message-State: AOAM533dN0LI48zqYOecXW9OIsK4Gucy11emoBxsyAVnsC5hVrYBKYz0
        gkNCDo/PnZob6JtpE2skAR2GnQ==
X-Google-Smtp-Source: ABdhPJwmQhK1ZcYAGmIxjq4j+RBTxbsirN7o4QKAN7u+NAm4A6FE89uknsM/XPvO/DH89ZUQA1Maxg==
X-Received: by 2002:a05:6000:168e:b0:20c:547d:11a1 with SMTP id y14-20020a056000168e00b0020c547d11a1mr18987733wrd.37.1651740199003;
        Thu, 05 May 2022 01:43:19 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z8-20020a1cf408000000b003942a244ecdsm948690wma.18.2022.05.05.01.43.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 01:43:18 -0700 (PDT)
Message-ID: <a7e87c9a-7b3e-ea46-6171-4a87d1052a98@linaro.org>
Date:   Thu, 5 May 2022 10:43:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 2/4] dt-bindings: cpufreq: apple,soc-cpufreq: Add
 binding for Apple SoC cpufreq
Content-Language: en-US
To:     Hector Martin <marcan@marcan.st>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220504075153.185208-1-marcan@marcan.st>
 <20220504075153.185208-3-marcan@marcan.st>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220504075153.185208-3-marcan@marcan.st>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 09:51, Hector Martin wrote:
> This binding represents the cpufreq/DVFS hardware present in Apple SoCs.
> The hardware has an independent controller per CPU cluster, but we
> represent them as a single cpufreq node since there can only be one
> systemwide cpufreq device (and since in the future, interactions with
> memory controller performance states will also involve cooperation
> between multiple frequency domains).
> 
> Signed-off-by: Hector Martin <marcan@marcan.st>
> ---
>  .../bindings/cpufreq/apple,soc-cpufreq.yaml   | 121 ++++++++++++++++++
>  1 file changed, 121 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/cpufreq/apple,soc-cpufreq.yaml
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/apple,soc-cpufreq.yaml b/Documentation/devicetree/bindings/cpufreq/apple,soc-cpufreq.yaml
> new file mode 100644
> index 000000000000..f398c1bd5de5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/cpufreq/apple,soc-cpufreq.yaml
> @@ -0,0 +1,121 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/cpufreq/apple,soc-cpufreq.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Apple SoC cpufreq device
> +
> +maintainers:
> +  - Hector Martin <marcan@marcan.st>
> +
> +description: |
> +  Apple SoCs (e.g. M1) have a per-cpu-cluster DVFS controller that is part of
> +  the cluster management register block. This binding uses the standard
> +  operating-points-v2 table to define the CPU performance states, with the
> +  opp-level property specifying the hardware p-state index for that level.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - apple,t8103-soc-cpufreq
> +          - apple,t6000-soc-cpufreq
> +      - const: apple,soc-cpufreq
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 6

Is the number of clusters fixed for t8103 and t6000? Are these
compatibles strictly related to some specific M1 SoC? If yes, then you
should have constraints in allOf:if:then.


Best regards,
Krzysztof
