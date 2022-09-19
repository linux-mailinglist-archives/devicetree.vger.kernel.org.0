Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3EC5BCABC
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:29:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbiISL3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:29:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230271AbiISL2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:28:30 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5677522517
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:28:29 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id u18so46392182lfo.8
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=C4KF7/yXEbmePRgdV2yYY9Dpyy7GWCh3swWd4m+dpXk=;
        b=PIOWpeCVcyOt93cdf5zsKk08oA2zErfcfeDaO6Jd3pEIi9BXdXYd1Jm2HZ54i1xNnJ
         isT9Zvi3L2tDw8Uyl6EQYoOGqqFveL1JQMKBEabFiU765e32VqR7PN7NROXAO7I7QJ+G
         W8qVJ2VUYMV62KhHv4SrYP8uOjXzZ493wnKXLCD098HWWgyjcLiD4AzTHxwesbmzyRKv
         wK6VBS5kJq2WyrVsLU7mPEmLfbVz9oyVHoraeyYIG/rutrp0e8Pb/lZ2LCSfZwKGQgID
         zldXBND+I2ZaH15hk8inn5UoHZesog1VURW1WLd0J9CiyDwx2eMdYwRiYkuYOdRk5xOS
         qWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=C4KF7/yXEbmePRgdV2yYY9Dpyy7GWCh3swWd4m+dpXk=;
        b=i9+96k2RgDGeqlxgcKExkdiyQ5f35uJB/T3dUkLKARLqf7hMOVFWINSefMF0PSiYZQ
         7dkQhTj8uj+D+Ev+ON999qUtMqtoXUm75tjEPrFri3L8+O41i6XQ8SBZXR+Fo0hs0Rvr
         az6QTEsUbcMJaDxpNDd2JatJRXiFw34gWlkQ0IJXFK0+Bcsy6+1ubOUgAUPeV/fwSJz2
         BLw5UqgZHeZL30xfuqAALcxsApG5xIegnHOR892BLYmvfQIxcN6hb6sbuPhHw6k/SSoh
         1YHM4e+QunbaWJklLaE7amY1wPUMTiU6t1P0VTpkoyOyUSrzz4QMKnlJO7/RSMCPbMGt
         y81g==
X-Gm-Message-State: ACrzQf21QsLFwQS6oa8lbt2RMFX1XktlyGnUOvQHuinwPSUC9N3KpOzk
        9/6jbHLhWMzACh8gQf6+4EbsTQ==
X-Google-Smtp-Source: AMsMyM57ctxwK+/i2a4IMRZHFbypFyhbQrXCD6iC0PWokWGBl6sEz+sXfSVUNVXBWlMpuiqbF83iTQ==
X-Received: by 2002:a05:6512:3502:b0:496:272:6258 with SMTP id h2-20020a056512350200b0049602726258mr5602141lfs.429.1663586907700;
        Mon, 19 Sep 2022 04:28:27 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f34-20020a0565123b2200b0049f54a976efsm1940360lfv.29.2022.09.19.04.28.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 04:28:27 -0700 (PDT)
Message-ID: <b5fe0746-44d9-9513-8190-b55ec984b603@linaro.org>
Date:   Mon, 19 Sep 2022 13:28:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: interrupt-controller: migrate MIPS CPU
 interrupt controller text bindings to YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com
References: <20220916043415.489179-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220916043415.489179-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 06:34, Sergio Paracuellos wrote:
> MIPS CPU interrupt controller bindings used text format, so migrate them
> to YAML.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

You keep cc-ing not current address...

> ---
>  .../mti,cpu-interrupt-controller.yaml         | 46 ++++++++++++++++++
>  .../devicetree/bindings/mips/cpu_irq.txt      | 47 -------------------
>  2 files changed, 46 insertions(+), 47 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mips/cpu_irq.txt
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> new file mode 100644
> index 000000000000..2db2ec816534
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/mti,cpu-interrupt-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MIPS CPU Interrupt Controller bindings
> +
> +description: >
> +   On MIPS the mips_cpu_irq_of_init() helper can be used to initialize the 8 CPU
> +   IRQs from a devicetree file and create a irq_domain for IRQ controller.
> +
> +   With the irq_domain in place we can describe how the 8 IRQs are wired to the
> +   platforms internal interrupt controller cascade.
> +
> +maintainers:
> +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>

What about existing maintainers?

> +
> +properties:
> +  '#interrupt-cells':
> +    const: 1
> +
> +  '#address-cells':
> +    const: 0
> +
> +  compatible:
> +    const: mti,cpu-interrupt-controller

Compatible goes first.

> +
> +  interrupt-controller: true
> +
> +additionalProperties: false
> +
> +required:
> +  - '#interrupt-cells'
> +  - '#address-cells'
> +  - compatible

compatible goes first.

> +  - interrupt-controller
> +
> +examples:
> +  - |
> +    cpuintc {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +      #address-cells = <0>;
> +      #interrupt-cells = <1>;
> +      interrupt-controller;
> +      compatible = "mti,cpu-interrupt-controller";


Best regards,
Krzysztof
