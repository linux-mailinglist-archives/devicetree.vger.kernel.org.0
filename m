Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A885733FCA
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 10:57:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233722AbjFQI5u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 04:57:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232285AbjFQI5t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 04:57:49 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D25E2113
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 01:57:48 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-519c0ad1223so2035131a12.0
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 01:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686992266; x=1689584266;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pgysnMUWPxrDeN0B1Faf6Ufq3sMPZzJpEejdj3yiLTo=;
        b=Ep4rhGij69HlZdJB6dvhGBslIi5J1X0YN5FQ+uVyl9cBUJW4BfzzKi92yLruwMKJNR
         x2v9cMCpTHOjdh3EcfEZ3ifxfGvgbxbZUCxDLXg4p/19hlPTRfpC5tBklY13lNSTpCPb
         TR8Iw4gbKvN2ZSdKBNjvB+zyxe/7LRkOvAlGH50xTHBrn39SakHg6Q57hNlzZsg8R0oG
         ZcpVtJJg1TTlp33Vx3YoVregwSDu/gJ/5ne2m0Go8KJJZx7lJdGiYMKzXC1K8IqQpWqu
         g/R6Db3wS5nims712daAO7jHshKPIQ07PCu436EEUmojpzn1i6xX30JJvbK2zMYMhQ11
         l4wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686992266; x=1689584266;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pgysnMUWPxrDeN0B1Faf6Ufq3sMPZzJpEejdj3yiLTo=;
        b=giIgrwO3SAIqilG+YW+vXl98elmVQgpbnvlLMhuRe0ld2Augv/d9GkYe8q7b2iwWSi
         Y9bQcrezR1YEmvF0AXNwqiBM5ukdwrgnDxazE6zAe6fkATgpniMxxa53pA8bmyr10M7x
         VuP7KNmijmEzsfpccmURoQkL7JbFPdYhSn1GLZL3TUHpCkhytJ5TG0Uko4gTx/WY9qMI
         Dy57sU2PZz/Ji9GQgIN9VOWL4I7aE29vC7HrW/HUQtmxxPNBMNi5p2ww2+g7cg9lzgxR
         5BJABCk+zk+Y8XVSplT0fnK1omvK2J3rs2cyJdeIiO9NKfqUZ2xQxZx/3EuTml9B9WYV
         QVgQ==
X-Gm-Message-State: AC+VfDwgKoa8SvVu70lwpenIQQV3Lr+dClxM/neF8QrDUokALOj2l0AZ
        fdQUuaa6PDX2HrVgHnSCgbwu5w==
X-Google-Smtp-Source: ACHHUZ61jEiVOPgq3xLBlRirBwI281rOwqromd11/oVJ0r1/1HEzj6D02KClx0KTTDExEFXIXQMDAA==
X-Received: by 2002:a17:907:7290:b0:96b:48d2:1997 with SMTP id dt16-20020a170907729000b0096b48d21997mr4283094ejc.65.1686992266535;
        Sat, 17 Jun 2023 01:57:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id g26-20020a1709064e5a00b00987ac9cfb8esm368474ejw.67.2023.06.17.01.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 01:57:45 -0700 (PDT)
Message-ID: <ad189220-424b-89bb-a187-60b0294ae1a7@linaro.org>
Date:   Sat, 17 Jun 2023 10:57:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v7 12/12] dt-bindings: fsl-dma: fsl-edma: add edma3
 compatible string
Content-Language: en-US
To:     Frank Li <Frank.Li@nxp.com>, vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        peng.fan@nxp.com, joy.zou@nxp.com, shenwei.wang@nxp.com,
        imx@lists.linux.dev
References: <20230616153438.2299922-1-Frank.Li@nxp.com>
 <20230616153438.2299922-13-Frank.Li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616153438.2299922-13-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 17:34, Frank Li wrote:
> Extend Freescale eDMA driver bindings to support eDMA3 IP blocks in
> i.MX8QM and i.MX8QXP SoCs. In i.MX93, both eDMA3 and eDMA4 are now.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/dma/fsl,edma.yaml     | 103 ++++++++++++++++--
>  1 file changed, 96 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/dma/fsl,edma.yaml b/Documentation/devicetree/bindings/dma/fsl,edma.yaml
> index 5fd8fc604261..2363c10e0d1c 100644
> --- a/Documentation/devicetree/bindings/dma/fsl,edma.yaml
> +++ b/Documentation/devicetree/bindings/dma/fsl,edma.yaml
> @@ -21,32 +21,41 @@ properties:
>        - enum:
>            - fsl,vf610-edma
>            - fsl,imx7ulp-edma
> +          - fsl,imx8qm-adma
> +          - fsl,imx8qm-edma
> +          - fsl,imx93-edma3
> +          - fsl,imx93-edma4
>        - items:
>            - const: fsl,ls1028a-edma
>            - const: fsl,vf610-edma
>  
>    reg:
> -    minItems: 2
> +    minItems: 1
>      maxItems: 3
>  
>    interrupts:
> -    minItems: 2
> -    maxItems: 17
> +    minItems: 1
> +    maxItems: 64
>  
>    interrupt-names:
> -    minItems: 2
> -    maxItems: 17
> +    minItems: 1
> +    maxItems: 64
>  
>    "#dma-cells":
> -    const: 2
> +    enum:
> +      - 2
> +      - 3
>  
>    dma-channels:
> -    const: 32
> +    minItems: 1
> +    maxItems: 64
>  
>    clocks:
> +    minItems: 1
>      maxItems: 2
>  
>    clock-names:
> +    minItems: 1
>      maxItems: 2
>  
>    big-endian:
> @@ -65,6 +74,26 @@ required:
>  
>  allOf:
>    - $ref: dma-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8qm-adma
> +              - fsl,imx8qm-edma
> +              - fsl,imx93-edma3
> +              - fsl,imx93-edma4
> +    then:
> +      properties:
> +        "#dma-cells":
> +          const: 3
> +        # It is not necessary to write the interrupt name for each channel.
> +        # instead, you can simply maintain the sequential IRQ numbers as
> +        # defined for the DMA channels.
> +        interrupt-names: false
> +        clock-names:

items:
  - const: dma

missing clocks...

oh wait, I already said this. Let's use reviewers time for doing the
same review, why not. They work for free.

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

