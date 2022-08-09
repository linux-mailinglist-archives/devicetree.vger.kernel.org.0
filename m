Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5898D58D503
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 09:57:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234415AbiHIH5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 03:57:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229886AbiHIH5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 03:57:07 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F6BA19C0E
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 00:57:06 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id v2so7293090lfi.6
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 00:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3IBr6p2z3wSW6g3+vDFQa8eI3JKD+eigRgAZZ154fsc=;
        b=OsfPSzU8rvxsPXrV05RL3FkpVd82/zImhAUX6Xd4ggg3JlaegSPktLRpkogqwhoqvB
         KdN9OAHcSE1SNKv8vkQyZnUcdls+vVJykmXw3I/J2ZEzABCWRqiienx8+3lUG5TDnc+u
         5mHoB9n2sP0xwFLxgWH5g5p/9hd7Q0KOhVA5XWpubH7ViWjmTS2jxPr7TYlVtP9dJ6Qm
         Z8zFmZB7ppkLhWO5eQPrjnGF2IbarOMpZWJhQ5fy0iUooqfQ5ktZ7/7nWtmbflhkRzEU
         93I0kCPZW3QBm899M8Qs2RDN6rTBzYuz3fdripUToWlh2tL4DHwgA5deKvGPtHcCpt4X
         0KlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3IBr6p2z3wSW6g3+vDFQa8eI3JKD+eigRgAZZ154fsc=;
        b=7X89v3WI+UIqP7bGXPjVvlkAEDzmbH1AAUP6pWbRfJ8phzWOvMpin9Xs7tFCVIIR0W
         Of7vyR6MeWfaiKk0Si2cgD230hUHe866915ceTbE3xx7YlKmXvf2WbM+SUYJmE4APM8Q
         Yqhs27u5Hrpp9oRzKFPlQ9WR3HXvvlCCS3rChOT3wDBeullfkKTYO5CJMb3DEEmv7BtW
         t40xi7/8MHatUM601g/7Bpip3OQZnnJw0CyLwLM/A8/oYEoSzPBoirzGDZwZXgUjaf57
         4dIYYhvW2X1hvvimZOiM6/9UwEG0CraPY5jnoRessqzD69eA6ySWbtvDVrtbVlabfE6n
         QGIw==
X-Gm-Message-State: ACgBeo3K61+bWsPa/siy+a9dhlO8R5K/Bu2+fHaN9+3hJ+hQthu2ecOF
        b1oQEnTz2U6fR4rfvjVSvEppdOKw4pPO25j/
X-Google-Smtp-Source: AA6agR7I4GC9gHyXaVBjnSy1QUZJeskVQusM1MXa129ukwJ1m30ncwS4hoSZ1IPtwQO0MFCwEATc0w==
X-Received: by 2002:ac2:43d4:0:b0:48a:f6bf:1185 with SMTP id u20-20020ac243d4000000b0048af6bf1185mr7731172lfl.197.1660031824540;
        Tue, 09 Aug 2022 00:57:04 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id e15-20020a05651236cf00b0048a85bd4429sm1672101lfs.126.2022.08.09.00.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Aug 2022 00:57:04 -0700 (PDT)
Message-ID: <0765cae5-1d07-cbaa-83bf-5553f3f8b242@linaro.org>
Date:   Tue, 9 Aug 2022 10:57:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/3] dt-bindings: spi: stm32: Add st,dual-flash property
 in st,stm32-qspi.yaml
Content-Language: en-US
To:     Patrice CHOTARD <patrice.chotard@foss.st.com>,
        Mark Brown <broonie@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-spi@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        christophe.kerello@foss.st.com, devicetree@vger.kernel.org
References: <20220808074051.44736-1-patrice.chotard@foss.st.com>
 <20220808074051.44736-2-patrice.chotard@foss.st.com>
 <9ad4b4a8-988e-f185-f80c-6f15f341ce8c@linaro.org>
 <79fd7e19-ceef-14fb-5a83-603740735f8f@foss.st.com>
 <38c3977a-0196-1832-ff94-317064cbc439@linaro.org>
 <b15184d6-c9e7-d042-621b-ef4ccd3c87ba@linaro.org>
 <a4310e1d-4eb3-0081-3cd2-8fd060a28bda@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a4310e1d-4eb3-0081-3cd2-8fd060a28bda@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/08/2022 10:52, Patrice CHOTARD wrote:
> Hi Krzystof
> 
> On 8/9/22 07:29, Krzysztof Kozlowski wrote:
>> On 09/08/2022 07:18, Krzysztof Kozlowski wrote:
>>> On 08/08/2022 19:08, Patrice CHOTARD wrote:
>>>> Hi Krzystof
>>>>
>>>> On 8/8/22 11:01, Krzysztof Kozlowski wrote:
>>>>> On 08/08/2022 10:40, patrice.chotard@foss.st.com wrote:
>>>>>> From: Patrice Chotard <patrice.chotard@foss.st.com>
>>>>>>
>>>>>> Add new property st,dual-flash which allows to use the QSPI interface as a
>>>>>> communication channel using up to 8 qspi line.
>>>>>> This mode can only be used if cs-gpios property is defined.
>>>>>>
>>>>>> Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>
>>>>>> ---
>>>>>>  Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml | 8 ++++++++
>>>>>>  1 file changed, 8 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
>>>>>> index 6ec6f556182f..5e4f9109799e 100644
>>>>>> --- a/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
>>>>>> @@ -46,6 +46,14 @@ properties:
>>>>>>        - const: tx
>>>>>>        - const: rx
>>>>>>  
>>>>>> +  st,dual-flash:
>>>>>> +    type: boolean
>>>>>> +    description:
>>>>>> +      Allows to use 8 data lines in case cs-gpios property is defined.
>>>>>
>>>>> It's named dual-flash, but what if you want to use QSPI to connect for
>>>>> example to FPGA?
>>>>>
>>>>> Also how is this related to parallel-memories property?
>>>>
>>>> I called it "dual-flash" simply because it enable the dual flash feature of the QSPI block (bit CR_DFM : Dual Flash Mode)
>>>> which allows to use the 8 lines simultaneously of our dual QSPI block.
>>>
>>> And how is it related to existing parallel-memories property?
>>
>> Maybe I was not specific enough, so let me rephrase - we have already
>> parallel-memories property. How this one is different (to justify the
>> new property)? Is just one memory connected in your case to QSPI over 8
>> data lines?
> 
> Our QSPI block is a dual Quad-SPI memory interface, it can managed 2 QSPI flashes independently.
> There is a specific mode, dual flash mode, where the 2 QSPI flashes can be accessed simultaneously 
> using 8 data lines. In this case, both throughput and capacity are two fold with this mode.
> 
> To illustrate, you can have a look at STM32MP157 reference manual (chapter 27.3.1 figure 172) available here:
> https://www.st.com/resource/en/reference_manual/rm0436-stm32mp157-advanced-armbased-32bit-mpus-stmicroelectronics.pdf 
> 
> As you mentioned above, the goal is to connect a FPGA to this 8 lines bus.
> 
> Hope it clarifies enough ;-)

Only partially. Based on the explanation above, it looks like you want
to use existing parallel-memories property. Please use that one, instead
of adding a new property for the same feature.

Best regards,
Krzysztof
