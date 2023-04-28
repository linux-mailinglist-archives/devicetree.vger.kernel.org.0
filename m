Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE7D36F1780
	for <lists+devicetree@lfdr.de>; Fri, 28 Apr 2023 14:18:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345844AbjD1MSu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Apr 2023 08:18:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229707AbjD1MSr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Apr 2023 08:18:47 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A6A85BB9
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 05:18:17 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-2f4c431f69cso6053774f8f.0
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 05:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682684293; x=1685276293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IE/Ndmq51M33FIDMLYVN6yk3abUln8AdSBVWjCvVWYc=;
        b=PEHKdTSPqNfAr4xCDiphLXEXwsnxb1sPJgBO9hZxakRcsqyTy6QhVKmcN8XGUADjRZ
         pc1UTNSBHPox2CMiLCprj+YdTB3KjLQsDY7SZfNhmmdsghGg7srdBFoNsMFiEwY8dq4/
         1ITzRqNhjsqIyPanNuFseBQ7+zazyByYIczIUZZshp90HaaYUVXjONqdijR9tlEBKLfP
         lmeTJh/g819RFbEzjelRMeuUwExS44r3xReZDrgrCiDKIbf72eZI7HYE2hScuI9RO3e1
         L09bLM/X3aE8thfuaCoDtbe2kuWmvzj1BH2XCgDrxM8FJG7Gxkap4o0YGlTxYocSkznP
         JzfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682684293; x=1685276293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IE/Ndmq51M33FIDMLYVN6yk3abUln8AdSBVWjCvVWYc=;
        b=Cqyj5CL8pZgYxOJcymHcTegBruV26/OBehv0C1KG/MUkSOCPcJ1jsEL6O6yQpQqrDJ
         U9UNuakgCDugu1Oh4sNXUMFCsNpozQYTaiuVnlnRSHDNhdtd1eEWOCrW1Dis7BiO4TJN
         NSA36G+2p1l01mIppiOFeZlgjdBbFFzobPszZoZMQS+gHBF3jQC8iew/qzo7KLRgX7wX
         b9TkRbaWPwjmmoC+P5mbEqF+BfToc9trAxhTsLe9dLq3haUGgK2tV/Fgm0O3gXnpLHZo
         w8b4zWC5I/1pPx64MmD0z2S6uiQ+7S5jkimVvG8SDupMGXB68YSq9PkJR/YBX/cHg/F1
         W8rQ==
X-Gm-Message-State: AC+VfDx1u1lo0cY5PoC+pulQgmMktsR5tB9ejxO+W++hrKnl7IEQXaBh
        Ke94PfXcyZ53T7g/0Tb5fMNM5g==
X-Google-Smtp-Source: ACHHUZ4Iv1fxa7IEMp2AmlHMKIflW5I5N6hWyrqJxbuKwz6zMbXkm3wjimu8SSlBBGGp5YjyQF0qTw==
X-Received: by 2002:a5d:544e:0:b0:2ff:f37:9d18 with SMTP id w14-20020a5d544e000000b002ff0f379d18mr4191050wrv.58.1682684293136;
        Fri, 28 Apr 2023 05:18:13 -0700 (PDT)
Received: from [172.23.2.142] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id r17-20020adff711000000b002f2b8cb5d9csm20940051wrp.28.2023.04.28.05.18.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 05:18:12 -0700 (PDT)
Message-ID: <58d9d894-5d5e-cb86-b8f8-e17cd37c069b@linaro.org>
Date:   Fri, 28 Apr 2023 14:18:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 05/43] dt-bindings: timers: add DT bindings for Cirrus
 EP93xx
To:     Nikita Shubin <nikita.shubin@maquefel.me>
Cc:     Arnd Bergmann <arnd@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Hartley Sweeten <hsweeten@visionengravers.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230424123522.18302-1-nikita.shubin@maquefel.me>
 <20230424123522.18302-6-nikita.shubin@maquefel.me>
 <9805a697-423a-7488-8cd6-f5c35686d431@linaro.org>
 <119e319aadd2c76fc290f71c8444e7438219ca6c.camel@maquefel.me>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <119e319aadd2c76fc290f71c8444e7438219ca6c.camel@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/2023 16:34, Nikita Shubin wrote:
> On Tue, 2023-04-25 at 11:29 +0200, Krzysztof Kozlowski wrote:
>> On 24/04/2023 14:34, Nikita Shubin wrote:
>>> This adds device tree bindings for the Cirrus Logic EP93xx
>>> timer block used in these SoCs.
>>>
>>> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
>>> ---
>>>
>>> Notes:
>>>     Arnd Bergmann:
>>>     - replaced ep93xx wildcard with ep9301
>>>
>>>  .../bindings/timer/cirrus,ep93xx-timer.yaml   | 41
>>> +++++++++++++++++++
>>>  1 file changed, 41 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/timer/cirrus,ep93xx-timer.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/timer/cirrus,ep93xx-
>>> timer.yaml b/Documentation/devicetree/bindings/timer/cirrus,ep93xx-
>>> timer.yaml
>>> new file mode 100644
>>> index 000000000000..ce8b8a5cb90a
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/timer/cirrus,ep93xx-
>>> timer.yaml
>>> @@ -0,0 +1,41 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/timer/cirrus,ep93xx-timer.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Cirrus Logic EP93xx timers bindings
>>> +
>>> +maintainers:
>>> +  - Hartley Sweeten <hsweeten@visionengravers.com>
>>> +  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: cirrus,ep9301-timer
>>
>> 1. Why only one compatible?
>> 2. If this is kept, then filename matching compatible.
> 
> I should rename the file to cirrus,ep9301-timer.yaml

No, at least no yet. See point 1.

Best regards,
Krzysztof

