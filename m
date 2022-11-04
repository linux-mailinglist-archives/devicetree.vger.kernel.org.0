Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78563619ADD
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 16:03:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232312AbiKDPDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 11:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232321AbiKDPCu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 11:02:50 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81F132AE5
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 08:01:51 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id x13so3354113qvn.6
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 08:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d1BBMQw7kPhsC1I+YgdKhHjfx0zb+CwhRVxaaew4dpU=;
        b=x3bUYV9wgToiLbKenVWmLSPLci8eoeqIcyX1fUY7+fcSNa4JXHGj9zzdNOWSpJ9/Is
         aFweSxuaxqXEg/TKQtHiVL/nvjIDTS/Sm42HQ/X/cScVwqbSG0ixaxgk9ZdyCKPahiLM
         Acq3mSnaGbECnaSlwdiuGsD6CRKyqFqgoxXd62kYhN1256YZ0Kd7KjZ4zIcSk14qCROY
         EkmbRfRCZQ24D9juXFA9+mF/j4fj/7IA4gpoZi9k/bGYXrBVdzHGb2l8sqj+3nRLJ6QM
         +2jhHw07M0r3+/ZiRVVkclvu559Hgju7VfVSMUVvufpOIX3Qh+OoLwijUjcHZw6VflKx
         aAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d1BBMQw7kPhsC1I+YgdKhHjfx0zb+CwhRVxaaew4dpU=;
        b=QnW0pz4bOP6Bd0JXzSiNattjN5A7rxSuuL9nNZNjF1L4GWTXf2t9Y3GojYB0kLRXYm
         cP8hhM641URYhqwOAjVGdyU1WfE3t0KHfJjeleCJX4aaWvPyIJbaFaftDukmjquvnke1
         UtJ/jkbIflZb1EYzFoh8Qid10ybmZ7I4gasjbqbL4GOep6i6jG4WGLwYjLZgyOZS9W3a
         CgaAY6WNZz+s3ITzIu3JwJvbWM6u75qgqpp2VL6pnjQVXQQMoKuwWoBEma3AL961SNa7
         b34/BA++vcL+XCi8fsikd24rZtem2P0a10LTqAMcYsFleaaqiSizHT8TfQS02S1QhXfa
         +ymA==
X-Gm-Message-State: ACrzQf3kazhEiyxzW5MxOUlDnoZwrLT6TWyRtU2FvdE3ia4+ZvCTHkKy
        Pj71XcAEn1saX/fPymxbU4OYzA==
X-Google-Smtp-Source: AMsMyM4ESRABV/EUVijZoFdFGCsGTaVV8eggEhycfy5vyXvI+tolyDd4m1VlMJyTOdtpCH9r/L8KXg==
X-Received: by 2002:a05:6214:2aa8:b0:4bb:64ed:3a86 with SMTP id js8-20020a0562142aa800b004bb64ed3a86mr32706531qvb.29.1667574110636;
        Fri, 04 Nov 2022 08:01:50 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id l9-20020a05620a28c900b006cf38fd659asm3143107qkp.103.2022.11.04.08.01.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 08:01:50 -0700 (PDT)
Message-ID: <16c9cffb-8bb7-7a6e-a075-2a1774ac0413@linaro.org>
Date:   Fri, 4 Nov 2022 11:01:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 3/3] dt-bindings: imx6q-pcie: Handle more resets on
 legacy platforms
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
 <20221104131044.103241-3-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104131044.103241-3-marex@denx.de>
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
> The i.MX6 and i.MX7D does not use block controller to toggle PCIe
> reset, hence the PCIe DT description contains three reset entries
> on these older SoCs. Add this exception into the binding document.
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
> V2: - Add mx8mq to 3-reset PCIe core variant
>     - Handle the resets in allOf section
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 35 +++++++++++++++----
>  1 file changed, 28 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 2087dab95d679..f461ee2cd5c84 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -69,16 +69,9 @@ properties:
>        required properties for imx7d-pcie and imx8mq-pcie.
>  
>    resets:
> -    maxItems: 3

This must stay. You miss minItems: 2.

>      description: Phandles to PCIe-related reset lines exposed by SRC
>        IP block. Additional required by imx7d-pcie and imx8mq-pcie.
>  
> -  reset-names:

Keep it here with minItems: 2 and maxItems :3
> -    items:
> -      - const: pciephy
> -      - const: apps
> -      - const: turnoff
> -
>    fsl,tx-deemph-gen1:
>      description: Gen1 De-emphasis value (optional required).
>      $ref: /schemas/types.yaml#/definitions/uint32
> @@ -270,6 +263,34 @@ allOf:
>              maxItems: 1
>            power-domain-names: false
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx6q-pcie
> +              - fsl,imx6sx-pcie
> +              - fsl,imx6qp-pcie
> +              - fsl,imx7d-pcie
> +              - fsl,imx8mq-pcie
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 3
> +        reset-names:
> +          items:
> +            - const: pciephy
> +            - const: apps
> +            - const: turnoff
> +    else:
> +      properties:
> +        resets:
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: apps
> +            - const: turnoff
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/imx6qdl-clock.h>

Best regards,
Krzysztof

