Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBCF85B3858
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 14:58:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231172AbiIIM5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 08:57:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230437AbiIIM5M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 08:57:12 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76B6912B350
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 05:57:10 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id by6so1695002ljb.11
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 05:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Xjl34rYNHyzwI8AGw+QEfoD2CLfjnWkvOp8SHIHfMAA=;
        b=ppdq+3NKnpLqYuDGizbeywE53b6E+v75GPWavVRWMgRwIyOyf5i4q2GnmRaW0aM8JS
         N7cZNSDo2jF+osWbql6TfKfpgP3gkP12Hw564zsGbpJLUzDPO40gDfBLJJOp+Y8CsqcP
         cGpMAsjjwSailbQaDHHaydAbtWBhMr217X1R9+ualWnd4SHl02ZL31mWDd7lY4bu33v6
         pI6s08rVYY2WJZf7q5uIwzbbLUoVLjo8iYf1/tHTC4KVFZ7TrUkmkRrMtZYStUh6fnAY
         q5WNSdGPeyRQL8JIq9R5OPFhyD/B0TYSGH1u/qg6gONSGdPTPQERNmNgNJW7CdO8ZII8
         u9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Xjl34rYNHyzwI8AGw+QEfoD2CLfjnWkvOp8SHIHfMAA=;
        b=gqhZY9p5yq6NQSD185dBfVz+ydmAIFmwh78Ioy0HLv4SqOu5tjO3pqnHC56iAO5qYI
         Q9AeeuHZV/cxu9eNeqIyAZfwOIcTSU6ilVfgxRDM/JXtcggdgt2NZacE+YXd8Pe2xyqi
         7Wm/vc6nKNYdCJ925SbV26fK6kSSpDT2JmZqTwWnHvTpHhbxL6LUkyhz8NwLJTJ3oF63
         l0PAKxcocT3Gmd4sIARhrj0uh6Xzd5FbJFca3fzgwMSPYBQXT/oNH562Ld/AQTvDApeq
         XEeSSVyMTbxQixqymSkJ0OE9t6k6N36cHjO8YqoHG1FasGEp3Nwk+088zwWTZiUkVt5V
         sNmA==
X-Gm-Message-State: ACgBeo3CR4K8jpTo6KoBZiUvpUB2oTUnYNurgGuGBSEDwsxO0gPIWWLj
        xXLdO+7MbBqQxCROrzO6Jf1bQA==
X-Google-Smtp-Source: AA6agR6U2CMVwoey/OclWMOBFNvpqtguBqtkLYyUE8lwJ/NnSyNHyaW6UM37P8AY5+QEmsMMIBvf8A==
X-Received: by 2002:a2e:944:0:b0:26b:e068:1304 with SMTP id 65-20020a2e0944000000b0026be0681304mr1323362ljj.407.1662728228839;
        Fri, 09 Sep 2022 05:57:08 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g15-20020a2eb5cf000000b0026a9c8833d3sm64017ljn.129.2022.09.09.05.57.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 05:57:08 -0700 (PDT)
Message-ID: <72ed9df4-4bec-b9e5-c14d-3e998d83a102@linaro.org>
Date:   Fri, 9 Sep 2022 14:57:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/3] dt-bindings: pwm: tegra: Add compatible string for
 Tegra234
Content-Language: en-US
To:     Sandipan Patra <spatra@nvidia.com>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Cc:     Bibek Basu <bbasu@nvidia.com>,
        Krishna Yarlagadda <kyarlagadda@nvidia.com>
References: <20220907062545.30203-1-spatra@nvidia.com>
 <75d5e29e-7418-3b8f-f549-6a69fd479852@linaro.org>
 <DM5PR12MB16283364646CBD853C89B425AD439@DM5PR12MB1628.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DM5PR12MB16283364646CBD853C89B425AD439@DM5PR12MB1628.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 13:17, Sandipan Patra wrote:
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Thursday, September 8, 2022 5:44 PM
>> To: Sandipan Patra <spatra@nvidia.com>; thierry.reding@gmail.com;
>> Jonathan Hunter <jonathanh@nvidia.com>; robh+dt@kernel.org;
>> krzysztof.kozlowski+dt@linaro.org; devicetree@vger.kernel.org; linux-
>> tegra@vger.kernel.org; linux-kernel@vger.kernel.org
>> Cc: Bibek Basu <bbasu@nvidia.com>; Krishna Yarlagadda
>> <kyarlagadda@nvidia.com>
>> Subject: Re: [PATCH 1/3] dt-bindings: pwm: tegra: Add compatible string for
>> Tegra234
>>
>> External email: Use caution opening links or attachments
>>
>>
>> On 07/09/2022 08:25, Sandipan Patra wrote:
>>> Tegra234 has 8 different PWM controllers and each controller has only
>>> one output. Add a device tree compatible string for Tegra234.
>>>
>>> Signed-off-by: Sandipan Patra <spatra@nvidia.com>
>>> ---
>>>  Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
>>> b/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
>>> index 74c41e34c3b6..331c1e66e8fa 100644
>>> --- a/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
>>> +++ b/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
>>> @@ -9,7 +9,7 @@ Required properties:
>>>    - "nvidia,tegra132-pwm", "nvidia,tegra20-pwm": for Tegra132
>>>    - "nvidia,tegra210-pwm", "nvidia,tegra20-pwm": for Tegra210
>>>    - "nvidia,tegra186-pwm": for Tegra186
>>> -  - "nvidia,tegra194-pwm": for Tegra194
>>> +  - "nvidia,tegra194-pwm": for Tegra194, Tegra234
>>
>> The commit msg suggest it is different. Are you sure they are exactly the
>> same? If not the same, but compatible, you should use fallback.
> 
> Tegra194 and Tegra234 are 2 different chips using exactly same pwm module and dt node.
> This change is to convey that same compatible is used for Tegra234 as well.

Then recommended is to have Tegra234 specific compatible with fallback
to 194.


Best regards,
Krzysztof
