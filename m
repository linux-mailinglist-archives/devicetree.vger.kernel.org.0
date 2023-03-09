Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E95026B1B5F
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 07:24:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229592AbjCIGYI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 01:24:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230028AbjCIGXv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 01:23:51 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA1BC61AA1
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 22:23:30 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id u9so2900633edd.2
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 22:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678343008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w/cB2X4DKaCs0XHvpzyjGZGOto29HE+FyDV3PNPULEA=;
        b=ftnvBkb3co+JGb7NOfKIAR5dBBS2MMedePUfXNzIc1qTDIigSLeT0+lFySMbBA5+/x
         mmiHx7WHkA7S4fOYKnihmsi3gFGKm9CtU756NpXwsxvNqAiaOhCLc6ctOqJrkacPgQzS
         jsCDPOn+nv3xKSUILQNeXm4zS81S4sk4IQN1MvIeW6vhNOUibO9ch/cDrzPNcinWjT3O
         GFsbE5CopVq7smC/pGr6znmoFQTbMrNBq5o1ZYUZmD4VwUotmXfwwGKIypgtZ90ML68a
         3n6MAU0AeLmcUA6XNVYUJrF4oVwXjqLG94Vg4q+jBoiwVfVuyU5UM32G/RJm2wSoHKXD
         RYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678343008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w/cB2X4DKaCs0XHvpzyjGZGOto29HE+FyDV3PNPULEA=;
        b=Jfilk/zJ+g6kPb0gJKszePT1ero3HF5kR4u7E9GzoeelXOUEZlEGBFoEBTsO1po/WN
         dFCfeFhSxlPFw1ERMoOcO8929c1RgEpYr5atAlbBvFTH4vAFOpw0tRAsClmLNxaccXRV
         zD0cpLzqLCtuPA+sX7r8DQSm7ptcYJVB06aFANSZWkWo/zlSyovlmA+AKaoPbEXHpOc9
         tjTilJ3kiPo1Ih/ARCpT+x4m/b5WBaHx2WK3O93duP0ARDazXy2gdTSYDIHr3G2DqrjN
         fr4H/WCH/mT0yU/zHfWOYBmOBz3ZCxiho5BbfHPKwsQJ0Q678+b5NIQmcWILCwP2bw+k
         fPpg==
X-Gm-Message-State: AO0yUKVY4AnSeOkm6Zev7xVvIjbhLNtXJoT7iAC0FwH/RR1pJqXx38OL
        BXcCad94HiKspXjHl83dK2c8nJxzGOpGfwk7u5A=
X-Google-Smtp-Source: AK7set+yA/GXBROzW3g/KbTovsWEgzYdsLr7SRE0c6LLnfsKkJK0Z/2d8qTyxEU2z47Z/nEir1RoNA==
X-Received: by 2002:aa7:c693:0:b0:4be:7311:113a with SMTP id n19-20020aa7c693000000b004be7311113amr18463752edq.17.1678343008567;
        Wed, 08 Mar 2023 22:23:28 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:7ee2:e73e:802e:45c1? ([2a02:810d:15c0:828:7ee2:e73e:802e:45c1])
        by smtp.gmail.com with ESMTPSA id gw5-20020a170906f14500b008c1f68ba0e2sm8306827ejb.85.2023.03.08.22.23.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 22:23:28 -0800 (PST)
Message-ID: <ecd867a1-207d-774f-882b-22f0973286ae@linaro.org>
Date:   Thu, 9 Mar 2023 07:23:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 1/2] dt-bindings: spi: add loongson spi
Content-Language: en-US
To:     zhuyinbo <zhuyinbo@loongson.cn>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        Liu Peibao <liupeibao@loongson.cn>,
        loongson-kernel@lists.loongnix.cn
References: <20230308025908.21491-1-zhuyinbo@loongson.cn>
 <20230308025908.21491-2-zhuyinbo@loongson.cn>
 <8d20dcfb-480b-3f1a-02b0-294a05a566f7@linaro.org>
 <dd2e6c68-7460-caa1-0d54-53aeb5619a18@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <dd2e6c68-7460-caa1-0d54-53aeb5619a18@loongson.cn>
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

On 09/03/2023 03:08, zhuyinbo wrote:
> 
> 在 2023/3/8 下午7:30, Krzysztof Kozlowski 写道:
>> On 08/03/2023 03:59, Yinbo Zhu wrote:
>>> Add the Loongson platform spi binding with DT schema format using
>>> json-schema.
>>>
>>> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
>>> ---
>>>   .../bindings/spi/loongson,ls-spi.yaml         | 47 +++++++++++++++++++
>>>   MAINTAINERS                                   |  6 +++
>>>   2 files changed, 53 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
>> Filename matching the compatible.
> 
> loongson,ls-spi.yaml is for ls2k-spi and ls7a-spi, I will add following 
> desription:
> 
> 
> properties:
>    compatible:
>      enum:
>        - loongson,ls2k-spi
>        - loongson,ls7a-spi

OK then.

>>
>>> diff --git a/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml b/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
>>> new file mode 100644
>>> index 000000000000..8a13a96b3818
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
>>> @@ -0,0 +1,47 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +
>>> +%YAML 1.2
>>> +---
>>> +$id: "http://devicetree.org/schemas/spi/loongson,ls-spi.yaml#"
>>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> Drop the quotes. What was the base of your code here?
> 
> okay, I will drop the quotes.    and I don't got it  about the code base 
> that you said.
> 
> you meaning is advice me add a line  as follows ?

I meant, from which other file did you copy it?

>>> +
>>> +  clock-names:
>>> +    const: boot
>> Drop clock-names, not needed for single entry.
> 
> if drop the clock-names entry, the yaml file will compile fail.

Obviously you have to also drop it from DTS and driver...


Best regards,
Krzysztof

