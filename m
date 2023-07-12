Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B42D75113D
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 21:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232272AbjGLTaD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 15:30:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230504AbjGLTaC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 15:30:02 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8964C1FC3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:30:01 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51cff235226so2539662a12.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689190200; x=1691782200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vCDyMfyZw0JBMHEQP3zkn43WOBZMaiSkCPKkobV+TU0=;
        b=KRiPHIywurXs7a/vCB61jmxjOuTF39PCsXp3Cb3aaIEkfrDNF316xsroxHXUDGiinP
         VpKZJSoYGFc+7mMbH7Zed8JkU8kL//1DmZZO77xEEVF57MJI55S/NtUFtsWweziLOhUh
         +22QJTjGpxDapbZ50hqAhEzp2OYwp9QCzjQO2t56QQ42XNo8aEoG6BKgi4V5lOlrXusE
         zTZiXhF8ExMBP9Rpr/M3ecZZBgap1BR+oGFiquS7vASI15z8QooubZaf+VV58U2yXIQ0
         +xdsgWcSm5/lnTJqsG5v4JwbvtnWnIXXBXfOYLSWNhtGaX6iLAMGPEdCnEUK6wHf1KXV
         px7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689190200; x=1691782200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vCDyMfyZw0JBMHEQP3zkn43WOBZMaiSkCPKkobV+TU0=;
        b=aRLCa9biJ2ZKomdKBmiSWlalvrdGlNamkOLZ1mPHqRPOvDMcgzkDnqgudBQ+C+lAye
         FP0aPhE+z4bAtesqhkBJvh5rl2gWNPY4mwyr6GKZMG/QZ0jQsG7SS8ABJhN+dNmEZe3g
         PKO/+YfIm6QAAtc+Z0yQoXJ/AND/AZ2inmPIDcKj5Zfk3UIhOmMILBPpjOpmGGgoLhyh
         dLOodz/77EcrdJO5MSNbA063yCLBJf2iZIWGTHL9Ma8M2EqN1yjhk1C+1Rsm/YfFvyLO
         +6JcOMGwi3sGD3uQEnkyzelrtdbQn1u4ywPhmq8RZYuKvSZa+mVzyXg3eGpU2XP0yWch
         eVww==
X-Gm-Message-State: ABy/qLY20M8NEmMxrS82R0xWxq9atICDXXcbd8qpmBKmdKgkTZIxSTAh
        HSKRJmbaePbjxcPksO9RLioJpw==
X-Google-Smtp-Source: APBJJlEaEds1c2vimfu2d4L3qIYc0gZlAn6G4CfWoTav0SMD+/rulpZFWT35TcKT6fjcTnUfdPRrbA==
X-Received: by 2002:a05:6402:3492:b0:51e:48e7:72ca with SMTP id v18-20020a056402349200b0051e48e772camr4298779edc.13.1689190199933;
        Wed, 12 Jul 2023 12:29:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id b22-20020aa7dc16000000b0051bed21a635sm3168330edu.74.2023.07.12.12.29.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 12:29:59 -0700 (PDT)
Message-ID: <53ece8ff-c3cf-5c7c-2d1a-243d2569fbd2@linaro.org>
Date:   Wed, 12 Jul 2023 21:29:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 8/9] dt-bindings: arm: stm32: add extra SiP compatible
 for oct,stm32mp157c-osd32-red
Content-Language: en-US
To:     Sean Nyekjaer <sean@geanix.com>, l.goehrs@pengutronix.de,
        a.fatoum@pengutronix.de, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     dantuguf14105@gmail.com, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230712124248.2400862-1-sean@geanix.com>
 <20230712124248.2400862-8-sean@geanix.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712124248.2400862-8-sean@geanix.com>
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

On 12/07/2023 14:42, Sean Nyekjaer wrote:
> Add binding support for the Octavo OSD32MP1-RED development board.
> 
> General features:
>  - STM32MP157C
>  - 512MB DDR3
>  - CAN-FD
>  - HDMI
>  - USB-C OTG
>  - UART
> 
> Signed-off-by: Sean Nyekjaer <sean@geanix.com>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 4bf28e717a56..232abdcef0fd 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -143,9 +143,10 @@ properties:
>        - description: Octavo OSD32MP15x System-in-Package based boards
>          items:
>            - enum:
> -              - lxa,stm32mp157c-mc1      # Linux Automation MC-1
> -              - lxa,stm32mp157c-tac-gen1 # Linux Automation TAC (Generation 1)
> -              - lxa,stm32mp157c-tac-gen2 # Linux Automation TAC (Generation 2)
> +              - lxa,stm32mp157c-mc1        # Linux Automation MC-1
> +              - lxa,stm32mp157c-tac-gen1   # Linux Automation TAC (Generation 1)
> +              - lxa,stm32mp157c-tac-gen2   # Linux Automation TAC (Generation 2)
> +              - oct,stm32mp157c-osd32-red  # Octavo OSD32MP1 RED board

I would prefer the change without touching previous lines for
re-indenting the comment. However it's ok if your arch maintainers is happy:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

