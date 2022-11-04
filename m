Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B55A2619ADC
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 16:02:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232428AbiKDPC6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 11:02:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232055AbiKDPCk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 11:02:40 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6297BF21
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 08:00:52 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id s4so3169433qtx.6
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 08:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XBOCQwzI8Jg6HjRw1ZMhTiwR9qUWk8djSry2Q4SbpHU=;
        b=DKPv7jMV4kRa0jJYp1uPE6bs01+SSWLLZDitSA+hygmANkODSRXgzH7fzU//BleoNX
         JqWGRCxnaxKtOSeBr2eVS/KmIZs6tFzUXzjB1TC7OqjAtYFidBbtvdtRUi/os5AoOplA
         BxmmDp626yM+EbodkfES+8kj0mD/wiLPuVOXxmFg8fKCLNVw6EBFAc2pP+obkpLqyzYw
         qftA8woyrtqVl4ukEr3yjopO8z/I9ui5KHiegxKAsRMEghSl4XuMxJh4nS5eQSUAZZWs
         Oc6cjacn/imY3Qrc5B/zTF1CK62+QaAnzEEeWRN2uA4RjFZCbWbXvNPXDA4JvQ/HmVo3
         41+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XBOCQwzI8Jg6HjRw1ZMhTiwR9qUWk8djSry2Q4SbpHU=;
        b=E49FqsrcwmrYYL6YffFlMBXfVLnCW8qa9kHtincM8vPplVYHUPaYpGFd5YgfYx3leI
         FrHQfz6wxPF+PJx/BAFbUNvraipCI5ShA5r7/g3MaZcmaTuqe4YV3BzEF6G9JR2/8fuJ
         dBb3BCG/m7cKSL/ezN3l4g2ujP2SD5qgZJRVADBxRFmdRC69e4FPSDuLz+PaDzy/MX8B
         e3QZrnn8L1FA4oWei0HQoi/rMPRO9shEFCbKJQ+S3HTHkOzd0U+aEi4xkQ390An+bwnM
         18Wk3TN+UM0SGRszjAl8z9oYMLLqdQ/9+I+UGU+DMu9KouT+dTCtVnMqB+XIKnunacxq
         8jow==
X-Gm-Message-State: ACrzQf1Qc/eB39x5cEQNrbR4C4hdbRJvlPwKEBbfvyyr1pudX6PwnscT
        ysCBP1YXsd6RAnen0ykjqwXhQA==
X-Google-Smtp-Source: AMsMyM4JbPyRCAGrQKoqytMxqbYYGCadulYOO1qjHFlvMxN79KX1vha+BnqVm+gUg0wnn2wIGR/JsA==
X-Received: by 2002:a05:622a:4c07:b0:3a5:27ec:6dd3 with SMTP id ey7-20020a05622a4c0700b003a527ec6dd3mr21498139qtb.411.1667574051214;
        Fri, 04 Nov 2022 08:00:51 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id a16-20020ac87210000000b0039d02911555sm2512875qtp.78.2022.11.04.08.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 08:00:50 -0700 (PDT)
Message-ID: <4e44e9bb-acfb-eb20-d050-71485803e2c9@linaro.org>
Date:   Fri, 4 Nov 2022 11:00:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/3] dt-bindings: imx6q-pcie: Handle various PD
 configurations
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221104131044.103241-1-marex@denx.de>
 <20221104131044.103241-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104131044.103241-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/11/2022 09:10, Marek Vasut wrote:
> The i.MX SoCs have various power domain configurations routed into
> the PCIe IP. MX6SX is the only one which contains 2 domains and also
> uses power-domain-names. MX6QDL do not use any domains. All the rest
> uses one domain and does not use power-domain-names anymore.
> 
> Document all those configurations in the DT binding document.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: devicetree@vger.kernel.org
> ---
> V2: - Keep the power-domains description in the main section
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 55 ++++++++++++++-----
>  1 file changed, 42 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 1cfea8ca72576..2087dab95d679 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -68,19 +68,6 @@ properties:
>      description: A phandle to an fsl,imx7d-pcie-phy node. Additional
>        required properties for imx7d-pcie and imx8mq-pcie.
>  
> -  power-domains:
> -    items:
> -      - description: The phandle pointing to the DISPLAY domain for
> -          imx6sx-pcie, to PCIE_PHY power domain for imx7d-pcie and
> -          imx8mq-pcie.
> -      - description: The phandle pointing to the PCIE_PHY power domains
> -          for imx6sx-pcie.
> -
> -  power-domain-names:
> -    items:
> -      - const: pcie
> -      - const: pcie_phy
> -
>    resets:
>      maxItems: 3
>      description: Phandles to PCIe-related reset lines exposed by SRC
> @@ -132,6 +119,19 @@ properties:
>    phy-names:
>      const: pcie-phy
>  
> +  power-domains:
> +    minItems: 1
> +    items:
> +      - description: The phandle pointing to the DISPLAY domain for
> +          imx6sx-pcie, to PCIE_PHY power domain for imx7d-pcie and
> +          imx8mq-pcie.
> +      - description: The phandle pointing to the PCIE_PHY power domains
> +          for imx6sx-pcie.
> +  power-domain-names:
> +    items:
> +      - const: pcie
> +      - const: pcie_phy

I don't understand why these are being moved. Commit msg also does not
explain this. While moving you make some changes so it's difficult to
review.

> +
>    reset-gpio:
>      description: Should specify the GPIO for controlling the PCI bus device
>        reset signal. It's not polarity aware and defaults to active-low reset
> @@ -241,6 +241,35 @@ allOf:
>                  - const: pcie_bus
>                  - const: pcie_phy
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx6sx-pcie
> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 2
> +          maxItems: 2
> +        power-domain-names:
> +          minItems: 2
> +          maxItems: 2
> +    else:
> +      if:

Don't nest, it's difficult to track what is where.

> +        not:
> +          properties:
> +            compatible:
> +              contains:
> +                enum:
> +                  - fsl,imx6q-pcie
> +                  - fsl,imx6qp-pcie
> +      then:
> +        properties:
> +          power-domains:
> +            minItems: 1
> +            maxItems: 1
> +          power-domain-names: false
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/imx6qdl-clock.h>

Best regards,
Krzysztof

