Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E68E6F179B
	for <lists+devicetree@lfdr.de>; Fri, 28 Apr 2023 14:21:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345919AbjD1MVx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Apr 2023 08:21:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345781AbjD1MVw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Apr 2023 08:21:52 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E8E259F5
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 05:21:46 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-2f86ee42669so9449987f8f.2
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 05:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682684505; x=1685276505;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zJRfumNsycQad/le1DWiZZ20NIuNmrLWpYlzEA2kVtU=;
        b=OMzA3/Am3mFmo80RiHxiTLWHsl1TP/rhS2K1Ss6708SrYrXoTjFMFnEwfKe8klIPPv
         fnMiuaGfcHUUdyCYqQPa+Qh9MD4/JLJ5rwkomzX2QexIS8lsL9eIr7/maOBUHdwVzm8j
         tjyrZh9Gjdq9DtNDgm4+xZl/nQ2grMD48OK/rUgrXRFhiR21OuaWHV1UNL3tu8Jt81kw
         2a5TyxWGadxerL2ydtCjOdCnYvZUTPrbWrpXwdHIwDcd7QkIRDLtPFDIWaPDMrpK1WWS
         x8wEGTSrpND/U3csOnCjNYOoaRGc6L5RelBs1QEzKwVMwTn9Bb955AUwLOx8ynnpaEs2
         s8eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682684505; x=1685276505;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zJRfumNsycQad/le1DWiZZ20NIuNmrLWpYlzEA2kVtU=;
        b=NVG+v4vfEj2NDLne1Yln0KqSRF14wor/0Dw2BguEOH12RxQ58GHKs3/P/DvEcE3PKZ
         KBcQSASOCfn4KRkp6CwMF5aJ9QwLseiUhk6lJT6Hk+0LVNF8nMlWOjtXtDiJ4t3Sjhmg
         cW1rlD4NDbqHA8iB2VPJ3fs10LGSrxEnyXqKUpkwQf7ok3+btnsNBGFY3eiGqvP0yI1m
         ++a1eMCYEX145ex8k2MWlGUxgBYodS81EErm08HRzY/a35a7NEm02b4BRUAsPHJtmOA+
         eZMDxWJkVQ7whipQHhvGG2Nq9sLDHKcVcWwEgMSGqsVk2t17vZndZJ2m1F5dbVl6Qt/5
         Jfvw==
X-Gm-Message-State: AC+VfDy0RyBhneuRX0UFL6PZc8KuD1WYuOgF0us/dbNvPJCMuhHwDeE0
        zJexg94wDH0nBc8gG7F041XjSA==
X-Google-Smtp-Source: ACHHUZ5KOVTQTuUmVpmyccDePstLauzAQKH/YGLX3/ZD+6wFjN7hEDUhXqujsvo4UnNn7rqqiunbsA==
X-Received: by 2002:a5d:400e:0:b0:2f6:a7a:1ded with SMTP id n14-20020a5d400e000000b002f60a7a1dedmr3725409wrp.30.1682684505000;
        Fri, 28 Apr 2023 05:21:45 -0700 (PDT)
Received: from [172.23.2.142] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id o3-20020a05600c378300b003ef5f77901dsm24150251wmr.45.2023.04.28.05.21.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 05:21:44 -0700 (PDT)
Message-ID: <3e1a8567-efef-ee4a-b16f-b3f81570f88b@linaro.org>
Date:   Fri, 28 Apr 2023 14:21:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 07/43] dt-bindings: rtc: add DT bindings for Cirrus EP93xx
Content-Language: en-US
To:     Nikita Shubin <nikita.shubin@maquefel.me>
Cc:     Arnd Bergmann <arnd@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Hartley Sweeten <hsweeten@visionengravers.com>,
        linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230424123522.18302-1-nikita.shubin@maquefel.me>
 <20230424123522.18302-8-nikita.shubin@maquefel.me>
 <9e7583be-ad4a-0ccc-08f6-cdf3fa4ed6bd@linaro.org>
 <d1b7f24604332cf6010f533898f96eb9be4bb686.camel@maquefel.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d1b7f24604332cf6010f533898f96eb9be4bb686.camel@maquefel.me>
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

On 28/04/2023 16:35, Nikita Shubin wrote:
> On Tue, 2023-04-25 at 11:28 +0200, Krzysztof Kozlowski wrote:
>> On 24/04/2023 14:34, Nikita Shubin wrote:
>>> This adds device tree bindings for the Cirrus Logic EP93xx
>>> RTC block used in these SoCs.
>>
>> Thank you for your patch. There is something to discuss/improve.
>>
>>>
>>> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
>>> ---
>>>  .../bindings/rtc/cirrus,ep93xx-rtc.yaml       | 32
>>> +++++++++++++++++++
>>>  1 file changed, 32 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/rtc/cirrus,ep93xx-rtc.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/rtc/cirrus,ep93xx-
>>> rtc.yaml b/Documentation/devicetree/bindings/rtc/cirrus,ep93xx-
>>> rtc.yaml
>>> new file mode 100644
>>> index 000000000000..d4774e984e7b
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/rtc/cirrus,ep93xx-rtc.yaml
>>> @@ -0,0 +1,32 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/rtc/cirrus,ep93xx-rtc.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Cirrus EP93xx Real Time Clock controller
>>> +
>>> +maintainers:
>>> +  - Hartley Sweeten <hsweeten@visionengravers.com>
>>> +  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: cirrus,ep9301-rtc
>>
>> Why only one compatible? What about ep9307 and ep9312? The same
>> question
>> for your previous patch - timer.
>>
>> Anyway, if you want to keep it like that, then filename should match
>> compatible. Or merge it into trivial-rtc like Alexandre suggested.
> 
> I think i should move it to trivial-rtc - there is no need for a
> separate file.

If you add missing compatibles, you won't be able to move it easily to
trivial-rtc.

Best regards,
Krzysztof

