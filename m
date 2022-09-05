Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE6E05ACBDB
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 09:07:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237040AbiIEHFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 03:05:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237017AbiIEHFh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 03:05:37 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 185B73D5AF
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 00:05:36 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id q15-20020a17090a304f00b002002ac83485so3873314pjl.0
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 00:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=hCoU6yFiUUQwKXB+c9+cZmF5PiP+rY4cM9qprj6opUU=;
        b=IGmOuB6R6WVg3gNfqQRU/bmYV1HfOPwq2zYxglr5CKA2awT7tqRVFo8FyhE9MwR/sz
         CFlXBYRA3RO4PA634JvYIzD84ViFVPiAj+ecYN2wQjKJSpP1TnWgOnZ9FuvVG26orGhf
         a4x9CriuNWP1+LNYADpNeHkcVhyrSFFingmnjIaZ8pJwY8AnpgO2vdiU5ay3RH7bOPFc
         xOQxEHpC57R/1GEGAUw5oWI5L0tfEzLxM6HjMbXXP2BkMOCK7jUm92DmMjrt5lG1i4BI
         tezW9nuo8R7c4TAQhD/GigSDPdPuIuFZfwcxdEBQyZBIoZ8hwsy7IkeLBJl+/5Wn3MpN
         vwlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=hCoU6yFiUUQwKXB+c9+cZmF5PiP+rY4cM9qprj6opUU=;
        b=spcO/TrFEGduWLBCSUXnFdq2FPootoqwtMVjhiGXuhVQZRmxbRPWH6cFlhB77tT7j4
         Nespq8KIuk7m8xIGDC+FlNZk7bqQZLB3IpwOwFmAu7j1xt1oiPXc1g35aWj/v1Z/KO2q
         misVg5ZFjYynksbkCQI5giCvW94HQB742OikRUxzs00QJEKf4pCm0DarlYDRm06KINcY
         I2nQ41geapbKH/ehlZdSSxWfFGFNmOlFwMTfFhT6N+uFNVnN1IhWTlyQFHPE3mTaSai4
         mj6/TFdpSBb0nvbkwpX7WhuW24eUo83Yw/5wS6O+9xqkfwyCARpVlao/BDSW/sPq84F2
         /xJg==
X-Gm-Message-State: ACgBeo2xBnqeJ4mu3eVpg8BQ4ltotFE/CLcPe8brlOhnKju/5WTfm42D
        LP5ZvKQuOLr/L9ijxXflWOf/Sg==
X-Google-Smtp-Source: AA6agR4mUAPOQvLH0bbeLZS8HC/Lp0yTm8lJbBhnoM+lZJqjHtwulUnvZV5V2MRvghPN8RrEgpVMow==
X-Received: by 2002:a17:90a:4d82:b0:1fb:6497:e071 with SMTP id m2-20020a17090a4d8200b001fb6497e071mr18036121pjh.166.1662361535185;
        Mon, 05 Sep 2022 00:05:35 -0700 (PDT)
Received: from ?IPV6:2401:4900:1c60:5362:9d7f:2354:1d0a:78e3? ([2401:4900:1c60:5362:9d7f:2354:1d0a:78e3])
        by smtp.gmail.com with ESMTPSA id b8-20020a170902bd4800b00172c7dee22fsm617731plx.236.2022.09.05.00.05.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 00:05:34 -0700 (PDT)
Message-ID: <3668ec5c-becf-2cac-c647-e20fb2156d8f@linaro.org>
Date:   Mon, 5 Sep 2022 12:35:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-pmics: Remove reg entry for
 pmc8280c_lpg node
Content-Language: en-US
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
References: <20220903084440.1509562-1-bhupesh.sharma@linaro.org>
 <42790a40-458a-55ff-7e4b-796e72f474ac@kernel.org>
 <66eaf16e-cb7c-a0b4-9ce5-02611308b0e6@linaro.org>
 <6b845257-e8e5-92e4-8cf1-f3e394cbc59e@kernel.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
In-Reply-To: <6b845257-e8e5-92e4-8cf1-f3e394cbc59e@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/5/22 12:08 PM, Krzysztof Kozlowski wrote:
> On 05/09/2022 08:47, Bhupesh Sharma wrote:
>> Hi Krzysztof,
>>
>> On 9/5/22 12:52 AM, Krzysztof Kozlowski wrote:
>>> On 03/09/2022 11:44, Bhupesh Sharma wrote:
>>>> Commit eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
>>>> dropped PWM reg declaration for pm8350c pwm(s), but there is a leftover
>>>> 'reg' entry inside the lpg/pwm node in sc8280xp dts file. Remove the same.
>>>>
>>>> While at it, also remove the unused unit address in the node
>>>> label.
>>>>
>>>> Fixes: eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>> Cc: Bjorn Andersson <andersson@kernel.org>
>>>> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 3 +--
>>>>    1 file changed, 1 insertion(+), 2 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
>>>> index ae90b97aecb8..2e5cf55afdd5 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
>>>> @@ -60,9 +60,8 @@ pmc8280c_gpios: gpio@8800 {
>>>>    			#interrupt-cells = <2>;
>>>>    		};
>>>>    
>>>> -		pmc8280c_lpg: lpg@e800 {
>>>> +		pmc8280c_lpg: lpg {
>>>
>>> I wonder why I did not see the errors when testing all DTSes for
>>> https://lore.kernel.org/all/20220828084341.112146-9-krzysztof.kozlowski@linaro.org/
>>
>> I did not see the error while running the 'make dtbs_check' locally, so
>> may be something to improve in 'make dtbs_check' infrastructure there.
>>
>>> Anyway, it cannot be lpg - binding requires "pwm".
>>
>> I think that should be a separate patch. It does not seem related to
>> this change anyways - which fixes eeca7d46217c . I will send a v2 soon.
> 
> You would be changing same line twice and eeca7d46217c is not going to
> be backported, so I am no sure if there is benefit to make two patches.

Ok. v2 sent accordingly 
(https://lore.kernel.org/linux-arm-msm/20220905070240.1634997-1-bhupesh.sharma@linaro.org/)

Please help review.

Thanks.
