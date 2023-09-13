Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6648579E344
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 11:14:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239480AbjIMJOM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 05:14:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239320AbjIMJNv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 05:13:51 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A221B30F1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 02:12:15 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-400a087b0bfso70155655e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 02:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694596334; x=1695201134; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oIuHe0991pEYFCqtILtCCn/mGmP/0+9co+Yt/WpUeog=;
        b=rV1ozx4rl8mBt225K3HigmDEy3ZyBvgcZw00s2W18o7O7e/qTxuMkdG46dH2V1fMc0
         7Uv4LV5MI1QcxQYzJptlBAeqgXlvT83/nEVmGfNA1cfctSGTrRrPHdB8G3FzjUn+4RjR
         cebFfzpOF+kH0jKODvzTmY2/MpIN/QkUyUd+6b+WceOgllZ/FFKbOpp4Dbs7bezc35sf
         RgS8tqUWnyLXXBLMRaq1kbW127zS6eZ92r3knn1MqohUkI5LCSQm9mEuof6I6B8UQA+d
         7IjoOZmGJ6sBkNN5jJriocY3X5QpkaD1bFx5JBERIBRphRwya2I+L3uQBl1VZcJFG65v
         AXjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694596334; x=1695201134;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oIuHe0991pEYFCqtILtCCn/mGmP/0+9co+Yt/WpUeog=;
        b=LlffYTemkxAiM5SW2w7Q01jKzubTtxil1UsYoaEf3vnv81HA2Cu4n4mcb5trwqipZO
         hlguSE7rD5SOaXoGaSJI7r7H4xFoaBI1CTqvEDoSnVsrPKw+NAf3Gx3USvKpR4YwR8Ej
         HUSWD/wsvpsVMnXvq3EqLphCx8ZHrGGZmoQWYTcA4Zrj2rUHHLcIeR3CrPDL59e5khc5
         fwvOTU/9Gx3QkBXLC2q8BxJeb+UQcq8h8nIYkIw3pOg75z6CZ75WEziq4DQLEq4p8yVU
         S9BzmPDPokunblJbKcnQf6HJPeUXB4QnnWJA1M6gD27ozsRj/jP3RlmRhNgyMauwNSRF
         77GA==
X-Gm-Message-State: AOJu0YyuFtSBJ+Cx6GK9K1b0/68J227s0stjsvWIh9wd3W0J2l1Wi36X
        AT4P5O4b4T824dQUUjQISrANGg==
X-Google-Smtp-Source: AGHT+IF5ts6D40VOTh50cTAVYEkS/+fhvOmKPMdPQ7m6uUW7hhL54FU8A7vHU91Vg6zdBtdzFwZFOw==
X-Received: by 2002:a05:600c:11c7:b0:402:ee71:29 with SMTP id b7-20020a05600c11c700b00402ee710029mr1412325wmi.10.1694596334087;
        Wed, 13 Sep 2023 02:12:14 -0700 (PDT)
Received: from [192.168.0.163] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id q5-20020a7bce85000000b00402bda974ddsm1442506wmj.6.2023.09.13.02.12.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 02:12:13 -0700 (PDT)
Message-ID: <9b1beb38-9ec2-4bdb-97f5-fccf98d3b0c3@linaro.org>
Date:   Wed, 13 Sep 2023 10:12:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] arm64: dts: qcom: msm8916: Reserve firmware memory
 dynamically
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20230911-msm8916-rmem-v1-0-b7089ec3e3a1@gerhold.net>
 <20230911-msm8916-rmem-v1-4-b7089ec3e3a1@gerhold.net>
 <912f90ee-0816-43ae-bc6f-a9a9a3e33d8a@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <912f90ee-0816-43ae-bc6f-a9a9a3e33d8a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 10:06, Konrad Dybcio wrote:
> On 11.09.2023 19:41, Stephan Gerhold wrote:
>> Most of the reserved firmware memory on MSM8916 can be relocated when
>> respecting the required alignment. To avoid having to precompute the
>> reserved memory regions in every board DT, describe the actual
>> requirements (size, alignment, alloc-ranges) using the dynamic reserved
>> memory allocation.
>>
>> This approach has several advantages:
>>
>>   1. We can define "templates" for the reserved memory regions in
>>      msm8916.dtsi and keep only device-specific details in the board DT.
>>      This is useful for the "mpss" region size for example, which varies
>>      from device to device. It is no longer necessary to redefine all
>>      firmware regions to shift their addresses.
>>
>>   2. When some of the functionality (e.g. WCNSS, Modem, Venus) is not
>>      enabled or needed for a device, the reserved memory can stay
>>      disabled, freeing up the unused reservation for Linux.
>>
>>   3. Devices with special requirements for one of the firmware regions
>>      are handled automatically. For example, msm8916-longcheer-l8150
>>      has non-relocatable "wcnss" firmware that must be loaded exactly
>>      at address 0x8b600000. When this is defined as a static region,
>>      the other dynamic allocations automatically adjust to a different
>>      place with suitable alignment.
>>
>> All in all this approach significantly reduces the boilerplate necessary
>> to define the different firmware regions, and makes it easier to enable
>> functionality on the different devices.
>>
>> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
>> ---
> [...]
> 
>>   
>>   		mpss_mem: mpss@86800000 {
>> +			/*
>> +			 * The memory region for the mpss firmware is generally
>> +			 * relocatable and could be allocated dynamically.
>> +			 * However, many firmware versions tend to fail when
>> +			 * loaded to some special addresses, so it is hard to
>> +			 * define reliable alloc-ranges.
>> +			 *
>> +			 * alignment = <0x0 0x400000>;
>> +			 * alloc-ranges = <0x0 0x86800000 0x0 0x8000000>;
>> +			 */
> Do we know of any devices that this would actually work on?
> 
> Konrad

I have the same question here.

How was this tested ?

---
bod
