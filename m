Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C170577123A
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 23:02:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbjHEVCJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 17:02:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229717AbjHEVCI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 17:02:08 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A04171F
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 14:02:06 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fe2048c910so28755185e9.1
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 14:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691269325; x=1691874125;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KbvfI0fLsFlB/xRYqDFhF1GRIPCNZdIym6zPJmUh4vQ=;
        b=LOtzuv3SuN0B4PkixubrxbsOeLlUbqyMJc3yJCvIpzuydQG9bdGn7jY3D32/rIXdmt
         ztkBsdLiqkz6W5SZfAf6c3heNK87LTPVi9E/tMyaO+iEPYSYOblRVDac0jDsxpvTo4WG
         URfWY0b/QgIIIEyMzFXV763mY5KgOfmRLIdkn444n2dZGt0IklB3OpeyHjNV719v4szo
         IWNIDTd9PW6+fymfIIBrF+FM3IZ0UtvivblDOSX28RvlBhzVokwT/lf+ME+lb/2fYpRr
         fe7iG1zrIdUm2uCIvFXA8yjqAuifuZ0I0gJddzRZUOiSeWS4snSu3QmyWI4nzwG3KHsV
         RGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691269325; x=1691874125;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KbvfI0fLsFlB/xRYqDFhF1GRIPCNZdIym6zPJmUh4vQ=;
        b=UjXIs1uHVnL0Spe7VSJhwgj1S47WFgxHPZsIv5GVIrmsahJqy2m9FDMVaPfpSH4MeJ
         aUggpscl1ROboaCPT3DhjFwEZLg7c+6VX2lwICZYZxpJ/tCTLQvYWgSBwQrXgjOM/7D3
         ELaFpgfJ6kJXDimU2EeF421xkj8A+PbUvjtj8JwID4lXEDa3Ei+IUqdEVn/wSIwXLSbx
         ZNcrmqi8EJszqlcG1yZDbF2ZhWFlbkCMUW2OuUnOhzlRVHeWbNEQecl4xmDw8sfxo2J9
         RI+l9A707k8UGPFXwI4f+4dezKdRxDE65rnpXiRs7Jd9J0kVYY/kGGLWHuXga8Z+lVYZ
         emkQ==
X-Gm-Message-State: AOJu0Yzgr00N9YILw+11f/tamYoLGI/o5eLz7uSc9xwlOR10uxIcMa36
        vh575ZPiLA8g7a4fCb/jAcJH/A==
X-Google-Smtp-Source: AGHT+IE63dFNf2CGjHbciT/HZuHu+h2YzjvFPIM0aIWKNMwJ2fvnAGhmQ7btvX284ZjXv1M6dmsSQQ==
X-Received: by 2002:a05:600c:364f:b0:3fe:4900:db95 with SMTP id y15-20020a05600c364f00b003fe4900db95mr3609592wmq.37.1691269325144;
        Sat, 05 Aug 2023 14:02:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.245])
        by smtp.gmail.com with ESMTPSA id z10-20020a5d640a000000b003178dc2371bsm5503421wru.7.2023.08.05.14.02.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Aug 2023 14:02:04 -0700 (PDT)
Message-ID: <37a636dd-fbd8-d475-8814-e0cc6d5cc812@linaro.org>
Date:   Sat, 5 Aug 2023 23:02:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v1 2/5] ASoC: dt-bindings: snps,designware-i2s: Add
 StarFive JH7110 SoC support
Content-Language: en-US
To:     Xingyu Wu <xingyu.wu@starfivetech.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Maxim Kochetkov <fido_max@inbox.ru>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc:     Jose Abreu <joabreu@synopsys.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Walker Chen <walker.chen@starfivetech.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-riscv@lists.infradead.org
References: <20230802084301.134122-1-xingyu.wu@starfivetech.com>
 <20230802084301.134122-3-xingyu.wu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230802084301.134122-3-xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/08/2023 10:42, Xingyu Wu wrote:
> Add the StarFive JH7110 (TX0/TX1/RX channel) SoC support in the bindings
> of Designware I2S controller. The I2S controller needs two reset items''

Thank you for your patch. There is something to discuss/improve.

>  
>    resets:
>      items:
>        - description: Optional controller resets
> +      - description: controller reset of Sampling rate
> +    minItems: 1
>  
>    dmas:
>      items:
> @@ -51,6 +75,17 @@ properties:
>        - const: rx
>      minItems: 1
>  
> +  starfive,syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to System Register Controller sys_syscon node.
> +          - description: I2S-rx enabled control offset of SYS_SYSCONSAIF__SYSCFG register.
> +          - description: I2S-rx enabled control mask
> +    description:
> +      The phandle to System Register Controller syscon node and the I2S-rx(ADC)
> +      enabled control offset and mask of SYS_SYSCONSAIF__SYSCFG register.
> +
>  allOf:
>    - $ref: dai-common.yaml#
>    - if:
> @@ -66,6 +101,66 @@ allOf:
>        properties:
>          "#sound-dai-cells":
>            const: 0

You need to constrain clocks and resets also for all other existing
variants.

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: snps,designware-i2s
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 1
> +        clock-names:
> +          maxItems: 1
> +        resets:
> +          maxItems: 1
> +    else:
> +      properties:
> +        resets:
> +          minItems: 2
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: starfive,jh7110-i2stx0
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5

Also maxItems

> +        clock-names:
> +          minItems: 5

Also maxItems

What about resets? 1 or 2 items?

> +      required:
> +        - resets
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: starfive,jh7110-i2stx1
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 9
> +        clock-names:
> +          minItems: 9

resets?

> +      required:
> +        - resets
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: starfive,jh7110-i2srx
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 9
> +        clock-names:
> +          minItems: 9

resets?

> +      required:
> +        - resets
> +        - starfive,syscon
> +    else:
> +      properties:
> +        starfive,syscon: false
>  
>  required:
>    - compatible

Best regards,
Krzysztof

