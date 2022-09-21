Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BC0D5BF692
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 08:45:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbiIUGpq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 02:45:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbiIUGpo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 02:45:44 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CED2774B9F
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:45:43 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id w8so7555590lft.12
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=/XqLYYW0nfX7v7tFdECAMTlNAFA4R3OQLOQDGPBVpUw=;
        b=P5gpgT2y5CN88nPN76VNNqqTTk5TyohtZR5Uq6u/0biGUZ3x+D5U5wiZ1fy9MUnM4g
         9cPjPnPmsb094M7e5lHWaNTNajkilajytUz1vM+zDRCKDiryk2oBk3hQwbGKZRsVLusI
         y1inDeOUvaTnfV2UImGAIIJ4IZ1nSPed2dsKGtiehULKZRjeV9lNmzuPG/j55sjiMRd1
         2wBA9uB+6QoOX3IG34fbb/bN2FaxI+6zCxdtni4kW7Ivsp8b/yrY7SOAFBiuGyD+ARR0
         CroHLDbC+Q9t0Icpwivj+tCszEQhpn0H9P+ZiD7tt9rNGAmxdBbGgwd8N4pMb+SjmAGw
         yyKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=/XqLYYW0nfX7v7tFdECAMTlNAFA4R3OQLOQDGPBVpUw=;
        b=bAWUU0gnWqvQANkKajX34ZC4o58NHdCdS9bBTiXM4uqwk9QkzLfV3Feiwh2N2Brh61
         ZrZdDlI4wWSRnQ9KG8h5f42NYJQfZy43WsjB3xfv+n8ew3fsTehE5bOytr3pqcv6OdAn
         Qng1ysUzwmMqb4BsrNUxTG0AF2flqXTm6es7Jfngu0mG0dRDCeyjU59lK/qbTX34vcGo
         EqNpBqbpDkccGMEjR9UvCbosiHV0SEg1TjsLBkTETWaiK2OC4jGpqsquuPoIXNC2Iryq
         d4Rgt96qRaB3Eoi+33EsjGQ0k6zJF198ACBjZY0olpH/DD3CfmWQ5GHaEi0uaXgM2N3F
         rNaA==
X-Gm-Message-State: ACrzQf13RodYQeFbuoR6HRyih8Aatt9s+OWAQjzbJTQxohcYluZvXLWk
        0a0bFk/4fmiRlVdveZKk3RrBQA==
X-Google-Smtp-Source: AMsMyM5QFaObv6QFtLMFrTeQNLniMxtEVfh1TGr+8Bf20PDZrC7vF0/ZA2gEMR3X/wvd/Qi/vnjr4g==
X-Received: by 2002:a05:6512:1090:b0:498:d8a2:981b with SMTP id j16-20020a056512109000b00498d8a2981bmr9397296lfg.229.1663742742180;
        Tue, 20 Sep 2022 23:45:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bf27-20020a2eaa1b000000b0026c603169aesm318071ljb.0.2022.09.20.23.45.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 23:45:41 -0700 (PDT)
Message-ID: <3763cfe7-972d-55a6-21ce-a45a7669a9df@linaro.org>
Date:   Wed, 21 Sep 2022 08:45:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: migrate MIPS CPU
 interrupt controller text bindings to YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com
References: <20220920052455.582565-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920052455.582565-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 07:24, Sergio Paracuellos wrote:
> MIPS CPU interrupt controller bindings used text format, so migrate them
> to YAML.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v2:
> - Address review comment from Krzysztof:
>     - Rebase onto last kernel version.
>     - Add Thomas Bogendoerfer as maintainer since this is arch stuff.
>     - Change compatible to go first as property and required.
>     - Change sample node name to be generic. Use 'interrupt-controller'.

Thank you for your patch. There is something to discuss/improve.

> 
>  .../mti,cpu-interrupt-controller.yaml         | 46 ++++++++++++++++++
>  .../devicetree/bindings/mips/cpu_irq.txt      | 47 -------------------
>  2 files changed, 46 insertions(+), 47 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mips/cpu_irq.txt
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> new file mode 100644
> index 000000000000..06dc65f0bbd2
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

Drop bindings

> +
> +description: >
> +   On MIPS the mips_cpu_irq_of_init() helper can be used to initialize the 8 CPU
> +   IRQs from a devicetree file and create a irq_domain for IRQ controller.
> +
> +   With the irq_domain in place we can describe how the 8 IRQs are wired to the
> +   platforms internal interrupt controller cascade.
> +
> +maintainers:
> +  - Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> +
> +properties:
> +  compatible:
> +    const: mti,cpu-interrupt-controller
> +
> +  '#interrupt-cells':
> +    const: 1
> +
> +  '#address-cells':
> +    const: 0
> +
> +  interrupt-controller: true
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - '#interrupt-cells'
> +  - '#address-cells'
> +  - interrupt-controller
> +
> +examples:
> +  - |
> +    interrupt-controller {
> +      #address-cells = <0>;
> +      #interrupt-cells = <1>;
> +      interrupt-controller;
> +      compatible = "mti,cpu-interrupt-controller";

Put compatible first in list of properties. It's always first in DTS, by
convention.

> +    };



Best regards,
Krzysztof
