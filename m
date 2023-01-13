Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4368C669901
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 14:49:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241434AbjAMNtR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 08:49:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241884AbjAMNss (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 08:48:48 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 710A532E
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 05:43:59 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id g14so22459832ljh.10
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 05:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0dvIgWqDWY/1LgfOS7GGbiamPI1bZCecZCmejiag2nM=;
        b=H9SX8B/JRlvpSfhw6j/Fdm2vUS6GUe9mWXyE1mFqOBCa+u3ykx9Ar2nN4qhhFrg0Nh
         FqDUFeSmXpLnHm8KyhmJPkTctimDeEMM145ZfYmdcnkKCEx5o7tn43zO0JjoFQjZxEWa
         FBfnTQSQnO+ZOUm2xqmeMpUNRmvXT93EHLaZpUp5xqun0vs7vWqQ3Tf5zJ3PLp6V5dez
         V8HBZWsbA/7SLX9EHMJ55WhsuYN1Q8pXiCMe3Kv1n6OczMQkpwqI5Znnk1qwFeCwRtz1
         Kz90X+SUW0iA1aMFbuUKbGCqceq4be4Tam19VsTm7vayd+YHfueiPkzMmvAQqgX1S61f
         TWfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0dvIgWqDWY/1LgfOS7GGbiamPI1bZCecZCmejiag2nM=;
        b=tihYEjg3DSql8a9L8Mf+5CVqPR4z4W4nVXDpoTdH4pR+TQYI+/yqxY17XdCPIYWVXC
         y22U40csE9i9gkhquNlAZkh2mnqleXoQAlCPhz6jR8SnNMSdbMLnqkkNJ4zRhTN3cvOb
         9BKbb2axGHN1SmeP8+XhrXw6Y+TFhxI564r/hi8Utf4jLbYGpqJJ4JXl2Ys2CCJ+4D6W
         e0xTM/5fE74FUns0TNup30nvkdaXFSxMlmBgBhWvPTrjW4QC3XUzL2L7oFYaK9x81w8E
         +3I9/gbXnaDlHhICD9ofu4QUp/A8argNivjQ85skst/M02tMA/7ZSNmFLBczOPRDH+py
         8kfg==
X-Gm-Message-State: AFqh2kqalMh2uQ2iwjQuwUN9pM9OX5jGVn93Kx+7QD7gCB0lJ0aWU55H
        fTP/BcOYuT6aOl5pOOMQyi9S0Q==
X-Google-Smtp-Source: AMrXdXsjw/R9fTAkGVJOeAERoJ3QoqbCXdUYTxmMFXKDVL0gMFGgPEKCbLCCaq6fIYJiYvtRZ5bQfg==
X-Received: by 2002:a2e:954b:0:b0:27f:ca62:5fb4 with SMTP id t11-20020a2e954b000000b0027fca625fb4mr19568500ljh.14.1673617437794;
        Fri, 13 Jan 2023 05:43:57 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id k16-20020a05651c10b000b0027fb9e64bd0sm2571401ljn.86.2023.01.13.05.43.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 05:43:56 -0800 (PST)
Message-ID: <1ebbd129-5b84-b649-a36d-f9030b26cb5c@linaro.org>
Date:   Fri, 13 Jan 2023 14:43:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 09/13] clk: qcom: cpu-8996: fix PLL configuration sequence
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230111192004.2509750-1-dmitry.baryshkov@linaro.org>
 <20230111192004.2509750-10-dmitry.baryshkov@linaro.org>
 <e556e250-7ae4-a5a7-7d0f-eb80a0231e8b@linaro.org>
 <449be451-f12c-ee14-a5f8-7a1e0d417597@linaro.org>
 <942a6282-5519-8871-5043-229bead87bd8@linaro.org>
 <ee457852-adb7-3ecf-e02b-264e804a280c@linaro.org>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ee457852-adb7-3ecf-e02b-264e804a280c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13.01.2023 12:19, Dmitry Baryshkov wrote:
> On 12/01/2023 16:32, Konrad Dybcio wrote:
>>
>>
>> On 11.01.2023 23:05, Dmitry Baryshkov wrote:
>>> On 11/01/2023 23:08, Konrad Dybcio wrote:
>>>>
>>>>
>>>> On 11.01.2023 20:20, Dmitry Baryshkov wrote:
>>>>> Switch both power and performance clocks to the GPLL0/2 (sys_apcs_aux)
>>>>> before PLL configuration. Switch them to the ACD afterwards.
>>>>>
>>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>> ---
>>>>>    drivers/clk/qcom/clk-cpu-8996.c | 14 ++++++++++++++
>>>>>    1 file changed, 14 insertions(+)
>>>>>
>>>>> diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
>>>>> index 571ed52b3026..47c58bb5f21a 100644
>>>>> --- a/drivers/clk/qcom/clk-cpu-8996.c
>>>>> +++ b/drivers/clk/qcom/clk-cpu-8996.c
>>>>> @@ -432,13 +432,27 @@ static int qcom_cpu_clk_msm8996_register_clks(struct device *dev,
>>>>>    {
>>>>>        int i, ret;
>>>>>    +    /* Select GPLL0 for 300MHz for the both clusters */
>>>> superfluous 'the'
>>>>
>>>>> +    regmap_write(regmap, PERFCL_REG_OFFSET + MUX_OFFSET, 0xc);
>>>>> +    regmap_write(regmap, PWRCL_REG_OFFSET + MUX_OFFSET, 0xc);
>>>>> +
>>>>> +    /* Ensure write goes through before PLLs are reconfigured */
>>>>> +    udelay(5);
>>>> Is this value based on n clock cycles, or 'good enough'?
>>>
>>> Don't know, this is based on downstream direclty.
>> Right, I see it now.
>>
>>>
>>>>
>>>>> +
>>>>>        clk_alpha_pll_configure(&pwrcl_pll, regmap, &hfpll_config);
>>>>>        clk_alpha_pll_configure(&perfcl_pll, regmap, &hfpll_config);
>>>>>        clk_alpha_pll_configure(&pwrcl_alt_pll, regmap, &altpll_config);
>>>>>        clk_alpha_pll_configure(&perfcl_alt_pll, regmap, &altpll_config);
>>>>>    +    /* Wait for PLL(s) to lock */
>>>>> +        udelay(50);
>>>> Weird indentation
> 
> Fixing for v2.
> 
>>>>
>>>> Maybe wait_for_pll_enable_lock() to be super sure?
>>>
>>> Does it work for HWFSM PLLs?
>> Not sure, but wait_for_pll_update_ack_clear() should, since it's
>> called by
> 
> I'd prefer to keep it as is. First, this seems to be the difference between normal and hwfsm PLLs, see clk_alpha_pll_is_enabled() vs clk_alpha_pll_hwfsm_is_enabled(). And second, the wait_for_pll() function is not exported from the clk-alpha-pll.c. Note, that downstream also does sleep instead of waiting.
Okay let's settle on that.

Konrad
> 
>>
>> clk_alpha_pll_hwfsm_set_rate() ->
>>    __clk_alpha_pll_set_rate() ->
>>      clk_alpha_pll_update_latch() ->
>>        __clk_alpha_pll_update_latch()
>>
>> Konrad
>>>
>>>>
>>>>> +
>>>>>        qcom_cpu_clk_msm8996_acd_init(regmap);
>>>>>    +    /* Switch clusters to use the ACD leg */
>>>>> +    regmap_write(regmap, PWRCL_REG_OFFSET + MUX_OFFSET, 0x2);
>>>>> +    regmap_write(regmap, PERFCL_REG_OFFSET + MUX_OFFSET, 0x2);
>>>>> +
>>>> No delays here?
>>>
>>> No. Probably it isn't required since there is no additional PLL locking, etc.
>>>
>>>>
>>>> Konrad
>>>>>        for (i = 0; i < ARRAY_SIZE(cpu_msm8996_hw_clks); i++) {
>>>>>            ret = devm_clk_hw_register(dev, cpu_msm8996_hw_clks[i]);
>>>>>            if (ret)
>>>
> 
