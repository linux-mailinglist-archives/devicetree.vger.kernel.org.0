Return-Path: <devicetree+bounces-801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD3E7A3277
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E04781C20C46
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 20:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC8BF1C284;
	Sat, 16 Sep 2023 20:34:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C34E5685
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 20:34:54 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7657E180
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:34:52 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-401da71b83cso37240205e9.2
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694896491; x=1695501291; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qqUJAMMP6nTdqVaHY2YdLMWi5v1gO3qldLnRJmNMzJk=;
        b=LZuF+PZCA6bPRc8cPf76cyqMSKkvlwnDQeg+FwO9QlaHJjg2eUoOwoNIw9IsSrSu46
         11kKJfoqBlY54/upMnd+1zcTGBCkKhohKZXSnwagUrJ0NmyrRxkp0hOFVmLtJB6YoCKJ
         VE932/ALivNWnWfNRPrJSI9k0jXGjnqyQgn5t+aWZnqigSl82mKFtXpWyJxqCm25RD33
         /WfPGFIY3+vukdLqefkVyIjXT3QNBtprBzLfJeQpVCgPi706A9VTeOOdU98s67xrL64g
         WpRI5SOhWTXDmX0phPO1SYJvEOqKJs4inQGd2Nmd3wQRyb2x4duc+l3wOTa3A5sTfuCP
         sx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694896491; x=1695501291;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qqUJAMMP6nTdqVaHY2YdLMWi5v1gO3qldLnRJmNMzJk=;
        b=ZvELhU/ge7zACAHTeW8xDQkccy5qwyfEHnY1jeTRL1gEDYKo21q8pGCpc3x+sF7H2c
         cqkyUOQlpoIcyvUdMb/mnjxGNZUGYPlCJOWwY+0GU93JFHwcxZ1Pryf84fl7IM88jwtu
         Quy1FAhJlPNN1VXt3sNlACLk/6CNupTHMBf+RY5rRF365vO/KH7Q8YgjnIIRegHPMAUy
         AYqwAVq8irol3UorpXVcD+bqtkjJL7zYt2l5ILREwFV7zC0rqkcZl3bj3HOoLXkPei4T
         XqgIFFhwfNLiWlkCtPEsiGEZ3rmtZ9ismMKresemft8W8HS+keGKPRhHk/XKcN+pDs2R
         9ZyA==
X-Gm-Message-State: AOJu0Yz+LzsAETtMHs9Yv6PfjsJdP/g5pameQ3JBn/OUyNsmSW1efih+
	kcyQ33YUqpWHfC/Ddn/7PHsZxg==
X-Google-Smtp-Source: AGHT+IH6tnx25efyoNQVuboYkjl4DLIeQ5FaN6lxvZji5sMlHpTpVieQ8XHgvg3Gc7p8LCV1xU7IqQ==
X-Received: by 2002:adf:ec4f:0:b0:314:4237:8832 with SMTP id w15-20020adfec4f000000b0031442378832mr4507382wrn.48.1694896490877;
        Sat, 16 Sep 2023 13:34:50 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id a14-20020a17090680ce00b0099315454e76sm4077326ejx.211.2023.09.16.13.34.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Sep 2023 13:34:50 -0700 (PDT)
Message-ID: <1bba7c11-f92b-5f1c-2543-c74eff7f1eae@linaro.org>
Date: Sat, 16 Sep 2023 22:34:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add saradc node to
 rk3588s-indiedroid-nova
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, jagan@edgeble.ai, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <20230908164156.2846-1-macroalpha82@gmail.com>
 <20230908164156.2846-4-macroalpha82@gmail.com>
 <488e1f3b-e12b-c278-ed04-a2a5c807bc72@linaro.org>
 <ZQSK/+cOMhtu5Al0@wintermute.localhost.fail>
 <SN6PR06MB5342FE6A2C144600656701E4A5F6A@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN6PR06MB5342FE6A2C144600656701E4A5F6A@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 19:05, Chris Morgan wrote:
> On Fri, Sep 15, 2023 at 11:49:05AM -0500, Chris Morgan wrote:
>> On Tue, Sep 12, 2023 at 10:31:19AM +0200, Krzysztof Kozlowski wrote:
>>> On 08/09/2023 18:41, Chris Morgan wrote:
>>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>>
>>>> Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
>>>> found on the device. The buttons are documented as "boot" and
>>>> "recovery". The boot button is used by the bootloader to boot into USB
>>>> recovery mode. The recovery button use is currently unknown.
>>>>
>>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>>> ---
>>>>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
>>>>  1 file changed, 34 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
>>>> index 1e2336d3065b..4c2d662d9c97 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
>>>> @@ -3,6 +3,7 @@
>>>>  /dts-v1/;
>>>>  
>>>>  #include <dt-bindings/gpio/gpio.h>
>>>> +#include <dt-bindings/input/linux-event-codes.h>
>>>>  #include <dt-bindings/pinctrl/rockchip.h>
>>>>  #include <dt-bindings/usb/pd.h>
>>>>  #include "rk3588s.dtsi"
>>>> @@ -11,6 +12,34 @@ / {
>>>>  	model = "Indiedroid Nova";
>>>>  	compatible = "indiedroid,nova", "rockchip,rk3588s";
>>>>  
>>>> +	adc_keys0 {
>>>
>>> No underscores in node names.
>>
>> My apologies, I should have known better...
>>
>>>
>>> Suffixes usually are after -
>>>
>>
>> Thank you.
>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> I'll correct this and resend.
>>
>> Chris
> 
> Sorry, one more thing. I've checked for examples of adc-keys naming and
> in every instance I see it as adc-keys (or adc-keys0 and adc-keys1 in a
> few examples). Is the proper way going forward something like key0-adc
> and key1-adc?

I meant by suffix "-0" or "-1", so:

adc-keys-0
adc-keys-1

Best regards,
Krzysztof


