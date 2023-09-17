Return-Path: <devicetree+bounces-818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7E57A3424
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:52:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1448B281690
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 07:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CACAF186F;
	Sun, 17 Sep 2023 07:52:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8FF1859
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 07:52:37 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 292C1193
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:52:35 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99357737980so458349466b.2
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694937153; x=1695541953; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nWdqqGRpAgOkTLyvsD05R8Bq7nexhnixhUs0t/ev9zM=;
        b=mYVyrYoMDtr1+kRawR6eJW+4S6ugehukaOOk8gP9zVuoIdpdZn+EzTXinQq5Tf72VR
         ieYSbBHZpYrDz2KThSCb7l+E59cJz4qBaO48Y80gTDTkVvmiA3u5WNXdo3JjTPSLahLr
         7iJFhB3LADSQ7m3vUJNn2E+U8Y+Xy+XgH133cFW20cAcQcHqCHlxZt78uow4ZfxcSzAD
         QacLfU7SrMVo6ZVFyLBpDWO1VWLSyXucQzbCY5YqIKyDiH4NxMhppEOiiEDcnaVzzGBG
         QylDlGdvJZVzYdSh1HPwEOfkcIx4ARoD25ccSOX0ML7ZC1pfVHCJmfjda9maodPxvE3X
         75SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694937153; x=1695541953;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nWdqqGRpAgOkTLyvsD05R8Bq7nexhnixhUs0t/ev9zM=;
        b=R338vm2RvU5U6d4N361YXWcubGlmLIkVp9GZ+E3BciIH7ghRngCJ7pKPnhCzIY81NO
         ihjINsBGZh+PkyOSsAcGZDgJxNbeClCDED7BMQUtr7RaPUERvZa/+ujekjNe/fXu6YHs
         ls5xofunHRG+V0ILK0DOo7G85RSA7Yz4ZV+BmMMvtuCWEV5eE9ZdM69ilAl0hAmtFa0U
         hjKbnC5HpJ4UzK0uQ9/P9JQiEZRn2EgUHCGxHXaAtEYeyYL02rpd3L5etQkl1vua2g6s
         xFxk3grFa8MnTQnUpoQVt71Q6HyPoyWWqp51nbWc67pq1vE61npjL0VbU5xguYk30V+Q
         r/TA==
X-Gm-Message-State: AOJu0YwT3qOrt4dEz9RA/s8wwVbVEIXFH49dc/DdxxRPel1SzIeqaG7t
	19qZQTbvhXdGh2MXo3k5FLSKbA==
X-Google-Smtp-Source: AGHT+IF5RIVwt4hk66LUepLEOgIR+mheKG73oWYXEJom7gBEA9V47ZkZ9eeF3807hhnrMrtacAD7Sw==
X-Received: by 2002:a17:906:1c:b0:9ad:e0cc:902a with SMTP id 28-20020a170906001c00b009ade0cc902amr4173352eja.56.1694937153483;
        Sun, 17 Sep 2023 00:52:33 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id jl6-20020a17090775c600b009ade1a4f795sm2372439ejc.168.2023.09.17.00.52.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 00:52:32 -0700 (PDT)
Message-ID: <7ec16938-53fa-24dc-8443-ed6428697558@linaro.org>
Date: Sun, 17 Sep 2023 09:52:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 2/6] dt-bindings: gpio: vf610: correct i.MX8ULP and
 i.MX93
Content-Language: en-US
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peng Fan <peng.fan@nxp.com>
References: <20230916-vf610-gpio-v2-0-40823da788d7@nxp.com>
 <20230916-vf610-gpio-v2-2-40823da788d7@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916-vf610-gpio-v2-2-40823da788d7@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 04:03, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8ULP and i.MX93 actually has two interrupts for each gpio
> controller, one for Trustzone non-secure world, one for secure world.
> 
> And they has one register based, not two as i.MX7ULP or VF610.
> 
> Although the Linux Kernel driver gpio-vf610.c could work with
> fsl,imx7ulp-gpio compatible, it is based on some tricks did in
> device tree with some offset added to base address.
> 
> So actually i.MX8ULP/i.MX93 is not compatible with i.MX7ULP.
> 
> Last, i.MX93 is directly derived from i.MX8ULP, so make i.MX93 GPIO
> compatible with i.MX8ULP
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/gpio/gpio-vf610.yaml       | 41 +++++++++++++++++++---
>  1 file changed, 37 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> index 59427d97adf5..8c1f87a1a393 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> @@ -20,6 +20,7 @@ description: |
>  properties:
>    compatible:
>      oneOf:
> +      - const: fsl,imx8ulp-gpio
>        - const: fsl,vf610-gpio
>        - items:
>            - const: fsl,imx7ulp-gpio
> @@ -27,16 +28,21 @@ properties:
>        - items:
>            - enum:
>                - fsl,imx93-gpio
> -              - fsl,imx8ulp-gpio
> -          - const: fsl,imx7ulp-gpio
> +          - const: fsl,imx8ulp-gpio
>  
>    reg:
>      description: The first reg tuple represents the PORT module, the second tuple
>        represents the GPIO module.
> -    maxItems: 2
> +    items:
> +      - description: PORT register base address
> +      - description: GPIO register base address
> +    minItems: 1
>  
>    interrupts:
> -    maxItems: 1
> +    items:
> +      - description: GPIO Trustzone non-secure interrupt number
> +      - description: GPIO Trustzone secure interrupt number
> +    minItems: 1
>  
>    interrupt-controller: true
>  
> @@ -78,6 +84,33 @@ required:
>    - "#gpio-cells"
>    - gpio-controller
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,vf610-gpio
> +              - fsl,imx7ulp-gpio
> +    then:
> +      properties:
> +        interrupts:
> +          items:
> +            - description: GPIO interrupt number

So this is different than first interrupt mentioned in top-level?


> +        reg:
> +          items:
> +            - description: PORT register base address
> +            - description: GPIO register base address

You have the description in top-level, no need to repeat it. Just
minItems: 2... although it depends whether top-level property will stay.


> +    else:
> +      properties:
> +        interrupts:
> +          items:
> +            - description: GPIO Trustzone non-secure interrupt number
> +            - description: GPIO Trustzone secure interrupt number
> +        reg:
> +          items:
> +            - description: GPIO register base address

So the first entry is different between variants? Then top-level should
be just min/maxItems.

> +
>  additionalProperties: false
>  
>  examples:
> 

Best regards,
Krzysztof


