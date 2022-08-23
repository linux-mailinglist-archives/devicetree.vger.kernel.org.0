Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED6F459E8E0
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 19:15:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245517AbiHWRLs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 13:11:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344704AbiHWRLM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 13:11:12 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57A57AFAF5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 06:58:53 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id m5so9131636lfj.4
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 06:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ugPtOst+gLpZJQR02+MTbL6kxeFDQCrwBIYNfzgTMW0=;
        b=OdmWV/usOTRgtjWyfKSWJ5gpwqNBXcwwzDLHsJuldD6F09+7KTKHyxftEJNic4NyFO
         xLbWZ7zfkV6rnp6JfZlrJg0X/4QcHGugiZxQapzEcVL7is93htrrgWr5FWnwbqux8981
         B1nxPj/clEQ/34xzV7NcN4iv+O7I/bnlAvgUswPC5Mi1oHyybQGufHgWmVav2hTlit7d
         +Rw0oBlfrAuEiL/AWxPEL+nVscmbheKfx5gbHSNaYRe+MV8VymvtWjELTDv5cBO/lRPp
         V5UnQcQegoxRmvT7Uy1U4ZKQhEpBHX0j2ZbTsYuusUoIC4CO0vFXD4tw1yAA3G7OAzm3
         MXMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ugPtOst+gLpZJQR02+MTbL6kxeFDQCrwBIYNfzgTMW0=;
        b=PKNI+bB1e0+AYXprOTZpgfPIU/P6wLXErZkL8Z0lWmSX3tSdJBN5AvodiC0xa5kw7m
         7aTh9pTXV3lk3CJvt7Trk4o87pGvY2oxQkmkqjvrBZsIb2PsJ5bLtLw46ZM56APkoJyl
         bsnBce2n92DtqeDHqW8mDkAOV0AxVvs8YTm3JU4IlU7h9ZQJLw2A2JFuzTgRcZvKyH2d
         g71C8JIispCcQ/DexGZiyjxBBcu0vZS1LX0BixPkj9BrUzP3g62VdvrTag1s7qCKKZfh
         w/h1YomijlKYU5+JHfocrN4qeCQqX+6B1yUq+CVAIKHouFnM5YrH8Hf88sA++lyL2hOl
         ZDAQ==
X-Gm-Message-State: ACgBeo2msjH+VGLKC0V7pP7QGxj31ewSk4rxbSmLC3Hj/n6LSbrIq0Cj
        sMCAHZn8nK4TaYgPooAvcyd2DQ==
X-Google-Smtp-Source: AA6agR5YRCDHJZV9fwka4WUJwQpPXg4oOL49NNFkbxguuIIxK26IVUDhEwlLgM9SDp9ppTfLOYyXGA==
X-Received: by 2002:a05:6512:33c5:b0:48b:9c2f:938a with SMTP id d5-20020a05651233c500b0048b9c2f938amr8803954lfg.557.1661263131623;
        Tue, 23 Aug 2022 06:58:51 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id w29-20020a19491d000000b0048b0a5293ccsm2511505lfa.78.2022.08.23.06.58.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 06:58:50 -0700 (PDT)
Message-ID: <c1357037-a280-0104-2f92-54a689d269b3@linaro.org>
Date:   Tue, 23 Aug 2022 16:58:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] arm64: dts: qcom: pm8916: Fix pwm declaration
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220822120300.2633790-1-bryan.odonoghue@linaro.org>
 <9022126c-2cd7-44c9-28dc-338e36a3346d@linaro.org>
 <11e20195-1383-d1e3-4715-8a1f110ed344@linaro.org>
 <4e567599-90ba-c8bd-9774-1e34ae8f8ea3@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4e567599-90ba-c8bd-9774-1e34ae8f8ea3@linaro.org>
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

On 23/08/2022 16:34, Bryan O'Donoghue wrote:
> On 23/08/2022 13:23, Krzysztof Kozlowski wrote:
>> On 23/08/2022 15:12, Krzysztof Kozlowski wrote:
>>> On 22/08/2022 15:03, Bryan O'Donoghue wrote:
>>>> We need to define pwm@bc000 to stop dtbs_check from making the following
>>>> complaint, text pruned.
>>>>
>>>> pmic@1: 'pwm' does not match any of the regexes:  'pwm@[0-9a-f]+$'
>>>>
>>>> Fixes: e79a1385ab74 ("arm64: dts: qcom: Add LPG to pm8916, pm8994, pmi8994 and pmi8998")
>>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/pm8916.dtsi | 2 +-
>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>>> index 606c2a6d1f0fc..d6922379729cb 100644
>>>> --- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>>> @@ -124,7 +124,7 @@ pm8916_1: pmic@1 {
>>>>   		#address-cells = <1>;
>>>>   		#size-cells = <0>;
>>>>   
>>>> -		pm8916_pwm: pwm {
>>>> +		pm8916_pwm: pwm@bc00 {
>>>>   			compatible = "qcom,pm8916-pwm";
>>>
>>> This does not look like proper fix.
>>> 1. It requires a reg.
>>> 2. reg is not allowed by pwm bindings.
>>>
>>> See also other wrong commit:
>>> https://lore.kernel.org/all/20220719205058.1004942-1-bhupesh.sharma@linaro.org/
>>>
>>
>> and this:
>> https://lore.kernel.org/all/20220721195502.1525214-1-bhupesh.sharma@linaro.org/
>>
>>
>> Best regards,
>> Krzysztof
> 
> Hmm OK.
> 
> So if I've understood this conversation properly instead of converting 
> "label: nodename" to "label: nodename@xxx" and adding reg, we would just 
> revert to "nodename {};"

One of two:
1. Yes and fix the bindings.

2. Change the bindings to accept multiple reg, add unit addresses and
multiple reg's to match real HW.

In any case, all in one patchset, so we see the impact. It seems we all
are fine with both approaches, so maybe let's choose less work?

Best regards,
Krzysztof
