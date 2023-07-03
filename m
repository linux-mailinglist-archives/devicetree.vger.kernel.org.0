Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 838C07460A1
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 18:21:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230000AbjGCQVs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 12:21:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbjGCQVq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 12:21:46 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37EDDCE
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 09:21:45 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-992af8b3b1bso517997266b.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 09:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688401303; x=1690993303;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qYdf+IHON7miy1ieUTRKQU3nNF3QFDY/eoQRH7/stbw=;
        b=KJWiZxCtF/sdrLaioTBM/48MCbD2iFkFhpY5GZNg9yOAMXC+8BNKSd5bbd3l7R5CD2
         1kpVDL64Rp53BwJPfE+sRPfXRcbsWdpn6d/pPsGBthQP84IZzAPfomnjuF+p+8epSycq
         Om+ND1wjVkT+CAtDJ9lt8MEfXuhVrIz1PmsCwc8uuPU8y8rZQLBc23AVc9LNUuumGdTO
         bm3bWPJGAkF2OEqtQET9+JKkYmhhgciHx6k84x5wHYnbtLihPx9sPZXyj64C83kGCn76
         GeJqC9imd8ayn4dP4H5xiGfeLlZq7SQfK2/i1p60etI1Z6bUoqMGtv2a6NFWpn98kwGN
         cupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688401303; x=1690993303;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qYdf+IHON7miy1ieUTRKQU3nNF3QFDY/eoQRH7/stbw=;
        b=C87JrsxeM+qkh0IJ+IMrhpGgV371sKV/N7IQ3V+uAx3SlL0hzjFg9bUb3Jgj0nw5x5
         OrTZPFN2RgUXTySjTLoFPdbrTRqLboT54fRIHUSrOTi7YkrVxM3wPVnZGlGl631JhxMp
         Pf0fRdUaL0sk10GTYJoPSS9KPwZAjkGYXBTMOA7XmevV0VgK+zqEKz96GfbvSM3TIJw4
         bLYo1t+I71QlloZk3vSFi62QwGMjsoBkc8CGR1eU7gmi7iXBNQws4ApTSYWWh1D4JLs5
         MMWDGTJNGfwwKc2WXOhldyV6NeRDvbnUnbQp1VR8Pqy5RmDVnECHj7kuTITmZQVWKJ13
         wbIA==
X-Gm-Message-State: ABy/qLaDa4mZfeO74Yq/pTI5O89VESkXpLFqk5GzJJyBeiZs8OAyv/0W
        ae5Vl/BZ8RuQgUtdM5yPFzDorg==
X-Google-Smtp-Source: APBJJlEYxWdfzZu2WuNwQnNvHGmuGcF8Ho/EwlDQdrucTFc6u4YpXOe/XxFweClqDENobBZOZa6KFQ==
X-Received: by 2002:a17:906:6c95:b0:991:dc98:69ff with SMTP id s21-20020a1709066c9500b00991dc9869ffmr9061027ejr.67.1688401303698;
        Mon, 03 Jul 2023 09:21:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id rn20-20020a170906d93400b00993004239a4sm4258616ejb.215.2023.07.03.09.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 09:21:43 -0700 (PDT)
Message-ID: <5cfed83d-b18f-6ca7-37b2-ee3b58280e94@linaro.org>
Date:   Mon, 3 Jul 2023 18:21:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: iio: adc: ti,ads1015: fix datarate max value
 and meaning
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>,
        Marco Felsch <m.felsch@pengutronix.de>
Cc:     Jonathan Cameron <Jonathan.Cameron@huawei.com>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        alazar@startmail.com, daniel.baluta@nxp.com,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
References: <20230621160857.3400747-1-m.felsch@pengutronix.de>
 <20230621-unsavory-ransack-f0a3af93325c@spud>
 <20230702174148.00004260@Huawei.com>
 <20230703064626.2vr6tfwthoi5kivh@pengutronix.de>
 <20230703-worshiper-observer-f44b6ddf1e00@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230703-worshiper-observer-f44b6ddf1e00@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/07/2023 18:14, Conor Dooley wrote:
>>>>> @@ -88,6 +88,17 @@ patternProperties:
>>>>>            4: 1600 (default)
>>>>>            5: 2400
>>>>>            6: 3300
>>>>> +          7: 3300
>>>>> +
>>>>> +          Data acquisition rate in samples per second for ADS1115
>>>>> +          0: 8
>>>>> +          1: 16
>>>>> +          2: 32
>>>>> +          3: 64
>>>>> +          4: 128 (default)
>>>>> +          5: 250
>>>>> +          6: 475
>>>>> +          7: 860  
>>>>
>>>> I'll leave this one to Rob or Krzysztof to ack/review, but this does
>>>> seem like as good an opportunity as any to migrate to a property that
>>>> allows you to put the actual data acquisition rate in & not have to add
>>>> new key-value mappings to the binding to support devices with differing
>>>> schemes.
>>>
>>> I agree a value would have been better, but now we are where we are,
>>> I'm not sure it's worth the churn of changing it - particularly as the
>>> driver will need to support the old binding for every anyway.
>>
>> Yep, this would be an API change :/
> 
> Of course, but so what you have in these patches anyway. Change being
> the operative word, not break ;)
> 
> Either way, I passed the buck to Rob and Krzysztof on this one anyway.

It's fine. Device-specific, so not common, properties can be expressing
programming model (register value).
https://lore.kernel.org/linux-devicetree/20230412133921.GA2017891-robh@kernel.org/

Such properties are usually less readable in DTS, so they have clear
disadvantage. However using here common units would require mapping in
the driver which is additional churn.

From every rule there are also exceptions. For example consider common
regulator values or number of samples where hwmon core is ready to parse
it properly:
https://lore.kernel.org/linux-devicetree/82d76824-ef5b-23f9-149e-2c5d9f88e94a@kernel.org/T/#mb2808172369a9960890a2de538464ca68dc86455

That's not the case here, so it's fine.

Best regards,
Krzysztof

