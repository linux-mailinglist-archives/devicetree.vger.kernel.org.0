Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B9574E7C26
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231377AbiCYTqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 15:46:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbiCYTql (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 15:46:41 -0400
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 734C2270854
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:28:09 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id c15so11554310ljr.9
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:28:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FwznoiYlmFJBkQvyNtOa0bYCZwifQAiU8mTTnR0dj+Q=;
        b=2Ym/DLhgboPW6zi+vFgR1TfAM6JukBzbiPQEdnbvZ7/ZkT2o8wsEJ39/Btjx/Up/oL
         qrVreg8pwQmRDa/xsiIuHCFqX/C3HxJWlWgJK0IybO7TR12yJ2vdA6UdqR2iUULcQffE
         /oqYSxk+43Ttr62mA0ETXNlVi5n2q6mFflJgErTyh9IFfEo8TmvUQxeAqpSiatWTNa+4
         +vHx23mTj8JEvLbgCXc2/4N/pfFdshvM8Qm05cC/a+zAoa1zf41Twhf0Xlhq586WzwHE
         CXNdw6NN8H/IY9i1zYM0u/fRuLV6CY/0aCZeHejd3ZO03oCr0saQjMWYBwRkIhKhjmcz
         4DBQ==
X-Gm-Message-State: AOAM530Fe+Qp0QTzN1REMzVIJx70/kcabFA/+VsXvnA8Ez8tCCCXB+9A
        dsA4hcCjUD0On42p1XYR8FUN7iE2RR12BA==
X-Google-Smtp-Source: ABdhPJw+Qj/gRprY7lg7OFD29TpnJXC0u+ahRq5tcUA4rNv5dhQURCOWnCRuFnog4Bgl5qobCKWqCg==
X-Received: by 2002:a50:cccf:0:b0:410:ba4e:65fd with SMTP id b15-20020a50cccf000000b00410ba4e65fdmr14489967edj.31.1648229670931;
        Fri, 25 Mar 2022 10:34:30 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.googlemail.com with ESMTPSA id v2-20020a509d02000000b00412d53177a6sm3179787ede.20.2022.03.25.10.34.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 10:34:30 -0700 (PDT)
Message-ID: <a6477e55-6d14-47d7-10c1-1757e4e7e105@kernel.org>
Date:   Fri, 25 Mar 2022 18:34:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: add corstone1000 platform
Content-Language: en-US
To:     Rui Miguel Silva <rui.silva@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20220325133655.4177977-1-rui.silva@linaro.org>
 <20220325133655.4177977-2-rui.silva@linaro.org>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220325133655.4177977-2-rui.silva@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/03/2022 14:36, Rui Miguel Silva wrote:
> Add bindings to describe the FPGA in a prototyping board
> (MPS3) implementation and the Fixed Virtual Platform
> implementation of the ARM Corstone1000 platform.
> 
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  .../bindings/arm/arm,corstone1000.yaml        | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
> new file mode 100644
> index 000000000000..a77f88223801
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/arm,corstone1000.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Corstone1000 Device Tree Bindings
> +
> +maintainers:
> +  - Vishnu Banavath <vishnu.banavath@arm.com>
> +  - Rui Miguel Silva <rui.silva@linaro.org>
> +
> +description: |+
> +  ARM's Corstone1000 includes pre-verified Corstone SSE-710 subsystem that
> +  provides a flexible compute architecture that combines Cortex‑A and Cortex‑M
> +  processors.
> +
> +  Support for Cortex‑A32, Cortex‑A35 and Cortex‑A53 processors. Two expansion
> +  systems for M-Class (or other) processors for adding sensors, connectivity,
> +  video, audio and machine learning at the edge System and security IPs to build
> +  a secure SoC for a range of rich IoT applications, for example gateways, smart
> +  cameras and embedded systems.
> +
> +  Integrated Secure Enclave providing hardware Root of Trust and supporting
> +  seamless integration of the optional CryptoCell™-312 cryptographic
> +  accelerator.
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: Corstone1000 MPS3 it has 1 Cortex-A35 CPU core in a FPGA
> +          implementation of the Corstone1000 in the MPS3 prototyping board. See
> +          ARM document DAI0550.
> +        items:
> +          - const: arm,corstone1000-mps3

If I understood correctly your description and DAI0550, the MPS3 board
is a board with Corstone 100, so you miss here compatible for the chip
(e.g. arm,corstone1000).

I guess similar pattern for the FVP, so both should be combined within
an enum (skipping all this description).

Best regards,
Krzysztof
