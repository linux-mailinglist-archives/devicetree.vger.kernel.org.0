Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F7396F52AF
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 10:07:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjECIHc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 04:07:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjECIHV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 04:07:21 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FC174EDD
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 01:06:53 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bc570b4a3so6329880a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 01:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683101175; x=1685693175;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+G17ZsMzCzeBMf7ULMEUmCtH+I4A/5ex+N+NoPJ79/w=;
        b=nFsPDw8lMir0ASfgMqpvhF8EIj0opp4WEaIn9hbUCfmENKvoRlw7FGbkVWMBENO2zg
         v6/V/0s+MAsz4UsyXPRf/h6ManZrOUZf+uLgeQWYMB8M2C5TIN0lJ444LFKqRnbDQ4wZ
         b3elsmByE2hI3D4jNdnztDLnk+g1b72HYn3QkFHDA6ZA3flrRJy0Nv/PsBBIudxYHL9X
         iqxBBqdw7hwojN+w9BWVP2H7ez4WlOOV88NLNSCNR7ucDjD9vqfg+T++iGhHZ9ixkbIu
         Ge6T7m3Aot4q8AS0bdKLAUtet9SCvufQ3goRNAF+i5qOyN8pRzZ7/e3yffED/1qcAT1T
         z1ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683101175; x=1685693175;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+G17ZsMzCzeBMf7ULMEUmCtH+I4A/5ex+N+NoPJ79/w=;
        b=XV45/9ewftbz1ABKVkwpDGMmkCFZgsWiWP3pAiNE9fucUEv0bs9Jhu+SM7A/c1afbg
         PM2PpVTLnjE4mbkEy638HENV25T3JgANoFk8cwAIF3C1rVX/naJGpv2QRi2lTGy7KFv8
         avwX1wS8+F8otwFJWWGWxPp08fmBdsHm0ikuJQRVJZIzNkWtpOQeUakOMzL1Js3zC1Cw
         A1B++jGOg14USiGvVKUGmv6M1kDH4zGBp1Xtw6gWhSEX5vPJJX8lE1iCL9ZnsdWZa7W7
         q8g4ENwBIdQ+iB19sdphKxs/ob/vfzxL7uAza0idHYTzAw44gxlS2S8sp2gRc90A9mYV
         YZ7Q==
X-Gm-Message-State: AC+VfDzrh1dZD0fqY4e/hk4eRKczbqB35qYobmOS7vK61cOeFzmu/295
        TXz+q/WuNeVZkp1KUFV8ZbgIvA==
X-Google-Smtp-Source: ACHHUZ6h60JRSNlVpv4EILvZzP54b1DdbOEWlsvNUVwPODCG38P7s4mE7/sDCi+z44gOt/u1fRYunA==
X-Received: by 2002:a17:906:fd87:b0:933:4d37:82b2 with SMTP id xa7-20020a170906fd8700b009334d3782b2mr2045098ejb.57.1683101175017;
        Wed, 03 May 2023 01:06:15 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id e1-20020a17090681c100b0094f67ea6598sm16942997ejx.193.2023.05.03.01.06.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 01:06:14 -0700 (PDT)
Message-ID: <1d11d36b-9cfa-4d39-c521-aab2153e49a9@linaro.org>
Date:   Wed, 3 May 2023 10:06:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] ARM: zynq: dts: Setting default i2c clock frequency to
 400kHz
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc:     Varalaxmi Bingi <varalaxmi.bingi@amd.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <4dde5d1eb8e4572dae4295a19a4c83002a58e5da.1683035611.git.michal.simek@amd.com>
 <e0b50ae1-b501-cb41-829f-736903e5794f@linaro.org>
 <958f4336-8c38-4cc1-4313-06a54e397d42@amd.com>
 <89276de5-ded8-2f38-bcea-708fdd35ca6d@linaro.org>
 <bfc2c9f9-a8cb-84a8-0800-fc90f6ec2eda@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <bfc2c9f9-a8cb-84a8-0800-fc90f6ec2eda@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2023 10:02, Michal Simek wrote:
> 
> 
> On 5/3/23 09:40, Krzysztof Kozlowski wrote:
>> On 03/05/2023 09:27, Michal Simek wrote:
>>>
>>>
>>> On 5/2/23 22:13, Krzysztof Kozlowski wrote:
>>>> CAUTION: This message has originated from an External Source. Please use proper judgment and caution when opening attachments, clicking links, or responding to this email.
>>>>
>>>>
>>>> On 02/05/2023 15:53, Michal Simek wrote:
>>>>> From: Varalaxmi Bingi <varalaxmi.bingi@amd.com>
>>>>>
>>>>> Setting default i2c clock frequency for Zynq to maximum rate of 400kHz.
>>>>> Current default value is 100kHz.
>>>>>
>>>>> Signed-off-by: Varalaxmi Bingi <varalaxmi.bingi@amd.com>
>>>>> Signed-off-by: Michal Simek <michal.simek@amd.com>
>>>>> ---
>>>>>
>>>>>    arch/arm/boot/dts/zynq-7000.dtsi | 2 ++
>>>>>    1 file changed, 2 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
>>>>> index cd9931f6bcbd..a7db3f3009f2 100644
>>>>> --- a/arch/arm/boot/dts/zynq-7000.dtsi
>>>>> +++ b/arch/arm/boot/dts/zynq-7000.dtsi
>>>>> @@ -149,6 +149,7 @@ i2c0: i2c@e0004000 {
>>>>>                         clocks = <&clkc 38>;
>>>>>                         interrupt-parent = <&intc>;
>>>>>                         interrupts = <0 25 4>;
>>>>> +                     clock-frequency = <400000>;
>>>>
>>>> I think this should be rather property of the board, because it depends
>>>> on I2C devices, right?
>>>
>>> We have 15+ boards with i2c connected and from this count I am aware about only
>>> one configuration which is not working on 400k.
>>> It is a question if make sense to update all boards (except for 1 and not all in
>>> kernel yet) to 400k or just say 400k is default and if there is any issue use
>>> lower frequency.
>>> Obviously this patch is setting up 400k as default and let "problematic" boards
>>> to setup lower freq.
>>> The same approach was used for modepin description.
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm64/boot/dts/xilinx/zynqmp.dtsi?h=v6.3&id=53ba1b2bdaf7f481fdd878e9c18cd0e54081fac9
>>>
>>> The next point is that 100k is default in Linux but doesn't mean it is default
>>> in other projects.
>>>
>>> But if you think that it must be board property I think we should setup 100k as
>>> default in this file too to make it clear.
>>
>> No, if it is conscious choice, it's fine.
> 
> Is it Ack then or you want me to extend commit message?

Ack, although you don't need my acks for your platform :)

FWIW:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

