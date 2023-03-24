Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A2316C7A15
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 09:43:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231272AbjCXInQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 04:43:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231447AbjCXInN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 04:43:13 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3503A2684D
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 01:43:11 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id w9so4948857edc.3
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 01:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679647389;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9pkgFVoGeYnKQmULx6pOecqU9tc+7JcqHZ5d14Czws4=;
        b=UR7drHxvicAy96qQdewr4wFQCexEtUKU6ju3npBN4uVPNSYR+ZOULPyB9uMnMBPFLY
         V0783SQPRx9ryN73pa7jLlYm4xUbuMQQBfNKmdR4pNR4wrgbrMaDGV1wG2OI5TX9pV2z
         MEgggF3H48gxuKCw2Su1mceWGM0wYeYWEdaYr3sDVZ8CQEbatfQSQUlAebTycIBJvzvw
         h2hT/HjsaSuwD01OmwAWVbEKhmfNgefpcdrvCgdhEimlvgWIPJn7AHvxxPsDeSZIpNXk
         7FE93JCbQxJxFmrV0iVVdOPFuvapM+HlObDvX5gvX94Q1gRKvFZefWtbENlYD0bYaoCJ
         onkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679647389;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9pkgFVoGeYnKQmULx6pOecqU9tc+7JcqHZ5d14Czws4=;
        b=cFAXuQJMx52pm+FA0wMMTPv8Mwfmnol7lPUtoM0F6TRDjmctPdBjgG48/7oDQin2Jp
         OMRrLsVb5GyP525H5YkZBIIZcF6ZtMm+v3LOmBwTROTXFoHDQ6pFAVxOQP5VShgTR4I5
         Yiou2CNuHIqUz4cjyxCnJtzUyXq/Axo9qYVcvBBlT2N8qmTKCbEKBAZ7UiZHNJXAWVMJ
         dH+Y+stNVaYAlWVTTU0xvDyEUwStCMtGmcE9gF/nMUtB9iLLxpqPEfchh0nQZKKdFoE2
         2mnedsyIJ8JswenhWBQETCqoBfbjQ13AIoOMH9Ft6LrFXeToQYV4M8662d0lYCD4XozH
         mkww==
X-Gm-Message-State: AAQBX9eWg535NKS+JIO0eVo+oJQ2zjh2PETd0MzNxg3j59CbiOpwN8yU
        KcM4OQ+L5i1bIraMdH8N2upWDw==
X-Google-Smtp-Source: AKy350ZLZ/fz0EgFUogPTGYFT/PuMTQQ3UPHlR2U2XCgu/Pj11uRc1snxPkIop3+O73uw4fKPNshrg==
X-Received: by 2002:a17:907:2c78:b0:8ee:babc:d40b with SMTP id ib24-20020a1709072c7800b008eebabcd40bmr1728657ejc.58.1679647389713;
        Fri, 24 Mar 2023 01:43:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ce50:243f:54cc:5373? ([2a02:810d:15c0:828:ce50:243f:54cc:5373])
        by smtp.gmail.com with ESMTPSA id d19-20020a1709061f5300b0093198b00fd6sm9805259ejk.189.2023.03.24.01.43.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 01:43:09 -0700 (PDT)
Message-ID: <47b5c50f-ccd8-3333-d9d9-8cea1124ed70@linaro.org>
Date:   Fri, 24 Mar 2023 09:43:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] ASoC: dt-bindings: alc5632: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>, broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, daniel.baluta@nxp.com,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org
References: <4a553ab8-4cd3-4ce4-8225-20f43b70a5be@sirena.org.uk>
 <20230323193709.5176-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230323193709.5176-1-danascape@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/03/2023 20:37, Saalim Quadri wrote:
> Convert the ALC5632 audio codec bindings to DT schema.
> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>
> ---


> +
> +maintainers:
> +  - Leon Romanovsky <leon@leon.nu>

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

> +  - Mark Brown <broonie@kernel.org>
> +
> +properties:
> +  compatible:
> +    const: realtek,alc5632
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#gpio-cells':
> +    const: 2
> +
> +  gpio-controller: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#gpio-cells'
> +  - gpio-controller
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        alc5632: codec@1a {

Drop label "alc5632".


Best regards,
Krzysztof

