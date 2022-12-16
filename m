Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2611964EABE
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:40:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbiLPLkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:40:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230385AbiLPLkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:40:06 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8CF323E8D
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:40:04 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id c1so3059676lfi.7
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wgeKrmXSmoymqmhHI2YxMBA2Z5Er7kXuJpmNUKdUO0s=;
        b=pH6psooufM1EOIZ1dTWqVkEr69xvgIPx4ZEimTv6mC4eINse5qEa4NrGDSOBBwj762
         /bgd34koXFHQAyv2NArrX1sUBOYds7odGlIKUmbgzLfSbmCf7PFb/L0qsJuvwYm0bgtY
         c+ezpSSgWG3DLKcPusnb/n8iC0TPfTCO6u51t93e8QEWDdggW/RdOqSRj5yqPYRUNR0d
         ozeZIxkcHjYfS8INT1pQmdsT2Lw7Fdax5Fdmp0iBQs83RPjwS9sIg88sVySVVFzPq02n
         0UgYJhV7vQdHp3pqY2VRYGeLM9OKplVLkJ68QRO4edAki3NdrPofkrmkzReyPK0ZDLFq
         IB4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wgeKrmXSmoymqmhHI2YxMBA2Z5Er7kXuJpmNUKdUO0s=;
        b=k7dQ091WYNmnfDK20OmZYwNzA+4a79+YkaKqPNIs+jX2vARqf6IaChx7fa6Km1ipLP
         07KzcZ6wSxASyiuaYCMHyIcEq8Gptfwqs+ydrGZQ8UpUqpdHKoltd3zOkwgWTeWta8Ap
         yyc8nJqdLEGDhCoz3Fqk5IIOW3SJaLIrH4swfuAxEix1AxfxyWkVKjo9I8ZDSWL//PLG
         49QsrG66OGKHOVWX2NjIPS4mvsoGCIsqvthlVhB6DviY9pkdErXZ5oafvkLnzOaw7lM/
         PDDqFlC0ukiMRs7pPhIDKz2m7wtxG/P1+r6dNwhuKmIzj1TUeRgNm5Metps33C0voyAs
         PLGA==
X-Gm-Message-State: AFqh2koMKbpAcm84KJBy+03PIwo8nWP0/x5EXOZy5WUNzjiV42Gf6iOC
        EAe8AaHu4dtYoR4ILCUBUjCd1Q==
X-Google-Smtp-Source: AMrXdXuV817UvVBPH9lI2IUvXbV1k38ISLjRMejglKcsP6HyI0s7d/1c8hLJRQG8SH+qs+RHZf7btw==
X-Received: by 2002:a05:6512:282a:b0:4b9:a91c:b0cb with SMTP id cf42-20020a056512282a00b004b9a91cb0cbmr3681915lfb.57.1671190803152;
        Fri, 16 Dec 2022 03:40:03 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m8-20020a056512358800b004b5284a92f9sm195222lfr.208.2022.12.16.03.40.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:40:02 -0800 (PST)
Message-ID: <c9dd9e3f-67f5-d2b3-79f9-f18fa07e4e89@linaro.org>
Date:   Fri, 16 Dec 2022 12:40:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: ep93xx: Add cirrus,ep9301-adc
 description
Content-Language: en-US
To:     Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Rob Herring <robh@kernel.org>
Cc:     linux-iio@vger.kernel.org,
        Hartley Sweeten <hsweeten@visionengravers.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221214222024.951984-1-alexander.sverdlin@gmail.com>
 <20221215161835.GA138650-robh@kernel.org>
 <a279467764c063fccf28c7d8fdfac2ab57570fee.camel@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a279467764c063fccf28c7d8fdfac2ab57570fee.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2022 17:25, Alexander Sverdlin wrote:
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/cirrus,ep93xx-clock.h>
> 
> your robot was right, this dependency is missing, I thought I can prepare
> the ADC driver in advance, but seems it has to go together with the whole
> DT conversion of the EP93xx series.

You can hard-code a number in the binding example, to drop dependency on
the header.

Best regards,
Krzysztof

