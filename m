Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E53976E75AD
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 10:52:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231621AbjDSIw5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 04:52:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231238AbjDSIw4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 04:52:56 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA9404C0B
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 01:52:54 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id xi5so79642692ejb.13
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 01:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681894373; x=1684486373;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PduK/plWRjdmEIPxSdh8pvf2swuzHYiuVB01GLQkQ1I=;
        b=hRFGLc7SCnxuhFp/K84EVRgkHYM7RJKmeX15fMVvCPq5iWDqksye0t5d/F1EpeDGaN
         yZnOTFMzXPYZGIP/h6vYgSoB0rHGbUj+UUDDvuKPPKCWO+wQo0jZO/tCjctLMWlGzRvY
         6ckpvPbSqSGHh0wH7PZBzbYf7Obpmbvzq7DSaRUnW/KaKiV9hnfEpA66PMvMj0yq6t4d
         BfQzZ5k6weVb2nOofS4WQg7XdQx2NgHmssB33HpeRu2uSRm0TAFsIJwSx0oPCy9Tg5FP
         ERigo1s6hpdnEzLMR4d1nBwJn1m9drcq360+h2hxZ/7Hax0htG4Ja2Ap7n9RrEvgoahV
         TkRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681894373; x=1684486373;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PduK/plWRjdmEIPxSdh8pvf2swuzHYiuVB01GLQkQ1I=;
        b=MJ8d022HX7/DmM1A/ijaYqVgUWRRQ2wH3Q9pC61T2tQUXZjnrVMNzb4RJR5XhTbm2s
         jOMJIOPCT0YmWpMlGrmKJ28ElClFdQBYFAffbS0ZuRbukFcBN2USHWIt/XarZzQERojn
         nh2vuwCo4EQarHXelWSog8Z6amClgt/em6icpVTe1YTrhQHBj8SLcjLfoHoSmx9pGGLn
         8v7SZSATz6soTzzUrmuxJjF90Ovk4KR3n7S7O8UjS97/I/aqLu4+bECvelDfEU32yIlw
         VQPjRFajjzUVVsFhNHYZFEyxjXCYseTGT/kEyAbXxykpfxGybOaxHYn/Xxp+SX8OKpJz
         Fwew==
X-Gm-Message-State: AAQBX9fLseliHKnocicsLxWrsXWmZSVR957N83OVu5bB0nycXAujVRXi
        z7pitpC/i47EE9jhPv9ew6/scQ==
X-Google-Smtp-Source: AKy350ZFWiW0hGkCbNsxjK6vG6qEmnVmVQFNTRf9l1nODW+fWb8LJyQgCAFPx7AU+x2vmvQbclIzEQ==
X-Received: by 2002:a17:906:1ec8:b0:906:3373:cfe9 with SMTP id m8-20020a1709061ec800b009063373cfe9mr13868776ejj.10.1681894373413;
        Wed, 19 Apr 2023 01:52:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:62f5:eb43:f726:5fee? ([2a02:810d:15c0:828:62f5:eb43:f726:5fee])
        by smtp.gmail.com with ESMTPSA id p3-20020a17090635c300b0094ed14a5b75sm8064533ejb.51.2023.04.19.01.52.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 01:52:53 -0700 (PDT)
Message-ID: <05ebf834-2220-d1e6-e07a-529b8f9cb100@linaro.org>
Date:   Wed, 19 Apr 2023 10:52:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V3 1/7] dt-bindings: rtc: Subdivision of LS2X RTC
 compatible
Content-Language: en-US
To:     Binbin Zhou <zhoubb.aaron@gmail.com>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        WANG Xuerui <kernel@xen0n.name>, linux-rtc@vger.kernel.org,
        linux-mips@vger.kernel.org, loongarch@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Qing Zhang <zhangqing@loongson.cn>,
        zhaoxiao <zhaoxiao@uniontech.com>, keguang.zhang@gmail.com
References: <cover.1681370153.git.zhoubinbin@loongson.cn>
 <35f43a8cfc32b5a065e4a04eb6cc6abf311f2700.1681370153.git.zhoubinbin@loongson.cn>
 <b4b23751-a44c-2b38-0d55-a34711ad53c4@linaro.org>
 <CAMpQs4+XBQD9KB3XOPe4zp_vC5RxPaOZU0aJQZKTW=+9r5nmag@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMpQs4+XBQD9KB3XOPe4zp_vC5RxPaOZU0aJQZKTW=+9r5nmag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2023 09:12, Binbin Zhou wrote:
> On Mon, Apr 17, 2023 at 1:31 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 13/04/2023 09:57, Binbin Zhou wrote:
>>> The LS2X RTC alarm depends on the associated registers in a separate
>>> power management domain.
>>>
>>> In order to define the PM domain addresses of the different chips, a
>>> more detailed description of compatible is required.
>>
>> This does not match your diff at all.
>>
>>>
>>> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
>>> ---
>>>  Documentation/devicetree/bindings/rtc/trivial-rtc.yaml | 7 +++++--
>>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml b/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
>>> index a3603e638c37..2928811b83a0 100644
>>> --- a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
>>> +++ b/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
>>> @@ -47,8 +47,11 @@ properties:
>>>        - isil,isl1218
>>>        # Intersil ISL12022 Real-time Clock
>>>        - isil,isl12022
>>> -      # Loongson-2K Socs/LS7A bridge Real-time Clock
>>> -      - loongson,ls2x-rtc
>>
>> Why removing it?
>>
>>> +      # Loongson LS7A bridge Real-time Clock
>>> +      - loongson,ls7a-rtc
>>> +      # Loongson-2K Socs Real-time Clock
>>> +      - loongson,ls2k0500-rtc
>>> +      - loongson,ls2k1000-rtc
>>
>> That's even more surprising...
>>
>> I don't understand what you are doing here at all.
> Hi Krzysztof:
> 
> Sorry, maybe my description was not accurate.
> 
> Looking back at my V2 patchset, the first patch was to add ls2x-rtc compatible.
> (https://lore.kernel.org/linux-rtc/0288efeb4209e4a49af07de6399045aaa00a970c.1673227292.git.zhoubinbin@loongson.cn/)
> 
> In the process of modifying the V2 patchset, it was discovered that
> the ACPI domain offset addresses on some of the socs (LS2K1000) were
> different and I wanted to differentiate them by soc compatible. So I
> was going to drop the ls2x-rtc compatible directly from the V3 patch
> set.
> However, when I rebased the V3 patchset, I found that the previous
> ls2x-rtc compatible patch had been merged (commit 473a8ce756fd). So I
> had to remove it and add soc compatible.

Can all folks in Loongson stop adding wildcards as compatibles? Several
compatibles were acked, because we do not know what 'x' stands for. Now,
it turns out it's a wildcard which is not allowed.

https://elixir.bootlin.com/linux/v6.1-rc1/source/Documentation/devicetree/bindings/writing-bindings.rst#L42

> 
> How about the following description:
> Since commit 473a8ce756fd (dt-bindings: rtc: Add Loongson LS2X RTC
> support), the ls2x-rtc compatible has been added. But the specific soc
> compatible is needed to be used to define different ACPI domain offset
> addresses.
> 
It's better. Anyway, SoC parts are rarely trivial devices, so this
should be probably moved to its own schema.

Best regards,
Krzysztof

