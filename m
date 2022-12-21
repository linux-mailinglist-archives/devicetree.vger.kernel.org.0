Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7C7653721
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 20:42:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234712AbiLUTml (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 14:42:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234672AbiLUTml (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 14:42:41 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA33A1AA09
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 11:42:39 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id g13so8345242lfv.7
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 11:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j8n3zruTwjGo8e3AXfV7XYLKjdMb6foRlcKHQtb6R5s=;
        b=TmzggZzHbb1qAQg7/RpDQFYXvvsRfLJ+wA0nQPVtN4Pus7WrZkXZeg4RmX6tI7diGg
         dKy15yyHrmvmGcFA3PeL4sZKhO0iUd/APE3GVX4CXuO8EiGmZ/DNqj66y4o5lP9Z0ljA
         HesAUe2d97cWFYptS4qA/I3AmMk7nz6A2l+FJ/4D08ReMZ2KGsK32Jf5s4mTMVEYEB+J
         yqo35IxGGVtMDJSMcF/3Y3/sAVavUymj1WWLohXsdrzmFYZGyAk+ntwDI0/ClfDlGZGv
         f5qWti8M31SbvUADfJ17g/aXwzh2nDS0razXd3zUOMiFUntH1hRGZHHcJU9xrPnQiy16
         gXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j8n3zruTwjGo8e3AXfV7XYLKjdMb6foRlcKHQtb6R5s=;
        b=VblmLPUFRf7y/WQMKFgnX3XW0eZXe2WzxkqFIi5lWVBvV37iart0YtFtekQAQVQ6EP
         6FjAfzm+jrteT9aUgQEVNQXVdn8jO/VFsf2i7L/k0vDJVrHycHPJCONXz7hcXC1g9/Uf
         TKcd9olnGRprI5xPiPHTUxnSlOmMCa1Q6SQLy/8yrAPjIzxbBPlrqMeIwjGEAEEzyFpA
         F3RyD5ypZrRuH4GlBrtJNbCZq8as8RTTGGitANxOwx3Zd9ZS0vxis4tTCMYli55Bba8j
         fu5tY2NGQs8JEBGsgWQgNKgrO0aEdFO33L/Q8N8VSrI4Tuaj+wkNBV8I0ksDeMD+/GZt
         S5NA==
X-Gm-Message-State: AFqh2ko8v4jDSf0yO2qIC+m7FX2e58TOhHIdaRdpb5X0IQLGJahYieAv
        n1XoR0UGrfVgsA+4NQcRC/DdOg==
X-Google-Smtp-Source: AMrXdXsH2m8b0f9LzlFzpOHxJDuW8hYFksCdzryMK1diSXDBRBR28Kp1HkUJ8phC5LySw4iv1tJkjw==
X-Received: by 2002:ac2:5088:0:b0:4b6:f0ac:7af8 with SMTP id f8-20020ac25088000000b004b6f0ac7af8mr965232lfm.67.1671651758087;
        Wed, 21 Dec 2022 11:42:38 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id e7-20020a05651236c700b004b5866f048csm1926008lfs.268.2022.12.21.11.42.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 11:42:37 -0800 (PST)
Message-ID: <82c06933-b989-b9af-2479-148791cce323@linaro.org>
Date:   Wed, 21 Dec 2022 21:42:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v4 07/20] thermal/drivers/tsens: limit num_sensors to 9
Content-Language: en-GB
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20221221020520.1326964-1-dmitry.baryshkov@linaro.org>
 <20221221020520.1326964-8-dmitry.baryshkov@linaro.org>
 <ed4aafb9-c33e-6f24-1e9c-7c7efa0e58ae@linaro.org>
 <fa89bec4-0f44-74a5-4905-c1e03ad52749@linaro.org>
 <7157562c-e0f0-b68f-5351-9f332153eb17@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <7157562c-e0f0-b68f-5351-9f332153eb17@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 20:15, Daniel Lezcano wrote:
> On 21/12/2022 19:05, Dmitry Baryshkov wrote:
>> On 21/12/2022 17:45, Daniel Lezcano wrote:
>>> On 21/12/2022 03:05, Dmitry Baryshkov wrote:
>>>> According to the vendor kernels (msm-3.10, 3.14 and 3.18), msm8939
>>>> supports only 9 sensors. Remove the rogue sensor's hw_id.
>>>>
>>>> Fixes: 332bc8ebab2c ("thermal: qcom: tsens-v0_1: Add support for 
>>>> MSM8939")
>>>> Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>> ---
>>>>   drivers/thermal/qcom/tsens-v0_1.c | 4 ++--
>>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/thermal/qcom/tsens-v0_1.c 
>>>> b/drivers/thermal/qcom/tsens-v0_1.c
>>>> index 0bc4e5cec184..57ac23f9d9b7 100644
>>>> --- a/drivers/thermal/qcom/tsens-v0_1.c
>>>> +++ b/drivers/thermal/qcom/tsens-v0_1.c
>>>> @@ -605,9 +605,9 @@ static const struct tsens_ops ops_8939 = {
>>>>   };
>>>>   struct tsens_plat_data data_8939 = {
>>>> -    .num_sensors    = 10,
>>>> +    .num_sensors    = 9,
>>>>       .ops        = &ops_8939,
>>>> -    .hw_ids        = (unsigned int []){ 0, 1, 2, 3, 5, 6, 7, 8, 9, 
>>>> 10 },
>>>> +    .hw_ids        = (unsigned int []){ 0, 1, 2, 3, 5, 6, 7, 8, 9 },
>>>
>>> Does not patch 4 says we can drop those hw_ids ?
>>
>> No. In patch 4 we drop contiguous IDs. For the msm8939 sensor 4 is 
>> omitted from hw_ids, so we can not drop the array.
> 
> Ah, yes, indeed.
> 
>   .num_sensor = ARRAY_SIZE(data_8939.hw_ids); should work

Interesting suggestion, I should give it a thought.

> 
> If the hw_ids are ordered, you may consider a bitmask instead of an array

I'm not sure if it's worth doing that. With the current approach it is 
easy to get hw_id corresponding to the sensor #i, If we switch to the 
bitmask, it wouldn't be that easy. And the saved space isn't that big.

-- 
With best wishes
Dmitry

