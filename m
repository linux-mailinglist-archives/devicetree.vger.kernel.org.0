Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D869B67C79D
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 10:41:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236360AbjAZJlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 04:41:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235569AbjAZJlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 04:41:31 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 014EF5D100
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 01:41:28 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id f19-20020a1c6a13000000b003db0ef4dedcso2874679wmc.4
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 01:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gWbckZbLscUSiQK6kSvhvYmXnDbgSSyOehKbYKBrl+8=;
        b=bQUVcZ6Rt7OTd6EQSbi8KR7R+YlACETTdb8AerLmjoGgGdRJyrkFQKUSawGn698Wp/
         8COeb+kXxWr0ert8SlZoOetmJtVtS9s97CEFZiW46wqD1XD7Bgeb6HbEt488SuVczmK0
         TRlm2/p4EmqWIc5WWXwG/STtBjpdf9JniVJbIaZ9ayXTTlkEaB3eOge9rI/EoBgqxR7f
         iOzVaqa6K0rpg5kXbPFcj7HiVGaPqgUaYAXbhP2aWqxAlfzYtKWXxna5VnQAnOyEcn9A
         XQMalvQBICYrskkqIpmALsrocd790cwDPAhueTwwgZsO/ykTtfRBKYvOb/Bz9gXW2R+d
         cQnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gWbckZbLscUSiQK6kSvhvYmXnDbgSSyOehKbYKBrl+8=;
        b=PTjLJfhocMuFjLZ7pPkfnPfhMRrkJ1yCSbr+H1Zx95QgCgvBkmtesF6ieAHwDwjmsy
         W7M3NvyqX90NuNnwVS47VDhKtr35CLv36Qr5D/ET6hnGODT0zunP6QgxvrmTumS+Ynlz
         nXNly5c8yI+rZQP9zpDhQ3384tVJFL1mhvzZvrDt67jK8+TZ2OYv9t6dAy7HbAlo/4d/
         p/ClYIgVJ1fM9Y0CqX4tjBwFLPShchr5JRS9LWpD+TFkCFsu6EJ6z6tevQUsgvrGx6tV
         iu6ds0JVm18r32icXjQu8SduZdiPyPA8SHNdlWWhqszDNHMRckEpACLCrxa9G1hwCUI+
         vRdA==
X-Gm-Message-State: AFqh2kqHDmKPdfhu+8APs0igzl+LELQVjfW2KUC//nELRw0foNW+Qz+K
        i9gArrV+5CYBIWWjk2/1v/DrKEMfINehlxfs
X-Google-Smtp-Source: AMrXdXvSx2my3NGGu6iqTh8FJBDjJRGEoIXP9s1KJSvSez8DU8+sI6sZ3tPjsNy2pNFH1/hC0DXKtQ==
X-Received: by 2002:a05:600c:4e08:b0:3db:1a41:663a with SMTP id b8-20020a05600c4e0800b003db1a41663amr29235114wmq.20.1674726086529;
        Thu, 26 Jan 2023 01:41:26 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i20-20020a05600c071400b003db0ad636d1sm4018509wmn.28.2023.01.26.01.41.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 01:41:26 -0800 (PST)
Message-ID: <dbfa802a-968f-0504-a131-59e2a8f52c9f@linaro.org>
Date:   Thu, 26 Jan 2023 10:41:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 5/5] ARM: dts: qcom: msm8974-oneplus-bacon: Add
 notification LED
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230122-msm8974-bacon-features-v1-0-4049f565c24c@z3ntu.xyz>
 <20230122-msm8974-bacon-features-v1-5-4049f565c24c@z3ntu.xyz>
 <02e5bf79-3e2d-02c8-67e7-61bbff32ba29@linaro.org> <4455893.LvFx2qVVIh@g550jk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4455893.LvFx2qVVIh@g550jk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/01/2023 21:51, Luca Weiss wrote:
> On Montag, 23. Jänner 2023 18:18:16 CET Krzysztof Kozlowski wrote:
>> On 22/01/2023 17:48, Luca Weiss wrote:
>>> Add the node describing the sn3193 that's used to provide notification
>>> LED.
>>>
>>> Unfortunately the driver currently supports neither multicolor API nor
>>> using the properties function & color, so we use label instead.
>>>
>>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>>> ---
>>>
>>>  .../arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dts | 28
>>>  ++++++++++++++++++++++ 1 file changed, 28 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dts
>>> b/arch/arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dts index
>>> ffb486ceb6a6..a672c45d7070 100644
>>> --- a/arch/arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dts
>>> +++ b/arch/arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dts
>>> @@ -114,6 +114,34 @@ led@0 {
>>>
>>>  			default-brightness = <80>;
>>>  		
>>>  		};
>>>  	
>>>  	};
>>>
>>> +
>>> +	led-controller@68 {
>>> +		compatible = "si-en,sn3193";
>>> +		reg = <0x68>;
>>> +
>>> +		shutdown-gpios = <&tlmm 45 GPIO_ACTIVE_HIGH>;
>>> +
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		led@1 {
>>> +			reg = <1>;
>>> +			label = "red:status";
>>
>> These should be colors and functions.
> 
> Hi Krzysztof,
> 
> please check the commit message for this. I tried using it but it didn't work, 
> the driver in general might need an overhaul at some point...
> 
>> Unfortunately the driver currently supports neither multicolor API nor
>> using the properties function & color, so we use label instead.
> 
> Or maybe I messed up but pretty sure this was the case when I wrote the dts.

I don't understand how driver is related here - it's not the driver's
property, but LED core. If the driver "supports" label, then it supports
color and status.

Best regards,
Krzysztof

