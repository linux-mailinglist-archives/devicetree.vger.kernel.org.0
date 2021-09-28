Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECC041AAA0
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 10:31:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239582AbhI1IdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 04:33:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235918AbhI1IdC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 04:33:02 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D79C061575
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 01:31:23 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id r11-20020a1c440b000000b0030cf0f01fbaso1442690wma.1
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 01:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YmNYTNBGpZvwgNJ/3llhM6f6fKai+uXQmO5CueqZOHU=;
        b=Iw9B8dZqcRBTDvMkHFJwYFI6cS196dXNMLcqp+SpVn27CUxZ72207rqrBMBRVmYSdS
         AKWkGAC2ASDfYg9nsHaSeou/w02RfowYKr6/Gp1KOQIHNdF1fO1dg4V31ml4gDZR5sSy
         AMYRXIPaD0TMoab+JHxtXFwVrIOM8pbq6D4xrYqSIOeUR9p2IyYWMxORLxroadaJE/6b
         Ez9W1dY2gAzaIlhNdM5yest9yeGSsAMEUBOtpTnbqa7I6XxchvtgadxlX7g7s9iNvyWk
         9Ka0VxbN4MHmEH/gYfJXb6u4O1dj2O67RwNsYiiMNy0zV+oSCeEh2QV1uiO0YjsHGNLQ
         JStw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YmNYTNBGpZvwgNJ/3llhM6f6fKai+uXQmO5CueqZOHU=;
        b=s9gfugQryx1YbCtGPa3I04gAd2KV3josLS4Hq4ApmssiVCJlnSAPZ7cUNt3AKBAyI3
         dFiGhhVSrt2xEMvLglV6gFEELmrEzkw50gX68fsAryTPGms7G44DjzPdsUBrAPtehsEi
         vzLn8N7Idl157mfcRXM7yNL2M2MSECqHC3zv1elvCVPN2cuyVtGlMCxB8eiDycV4DPNe
         yJDVlEv9onkdNYOAU93H8GZaX6dRdQaWUHP5fSxjX7s6GoaXu92QJTXMta1myXR2B2NS
         0b1KQU3UvyUL0VWXcn7TmiaoiSYCQcufDL5H4WRkehhx9BE15r3XzvJtpoPJNllSIK3z
         KwZw==
X-Gm-Message-State: AOAM532LFC/AKqCRGuSQv0S1HcaykdvTiqE42oGI+YfFwsiqtBVmG7AV
        reVYEN5r95Cnr0ch7ic3ibFqhw==
X-Google-Smtp-Source: ABdhPJz6fv4dVDrrADbMFfj+UPr/oF1PoftGT0gkA4xkC1zU4drUe8tTSfrMzDQxXRS90YiKxN0lKA==
X-Received: by 2002:a1c:28b:: with SMTP id 133mr2103589wmc.15.1632817881868;
        Tue, 28 Sep 2021 01:31:21 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id y13sm1331454wrm.48.2021.09.28.01.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 01:31:21 -0700 (PDT)
Subject: Re: [PATCH v2 4/5] ASoC: codecs: tx-macro: Update tx default values
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        rohitkr@codeaurora.org, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org
Cc:     Venkata Prasad Potturu <potturu@codeaurora.org>
References: <agross@kernel.org; bjorn.andersson@linaro.org;
 lgirdwood@gmail.com; broonie@kernel.org;robh+dt@kernel.org;
 plai@codeaurora.org; bgoswami@codeaurora.org; perex@perex.cz;
 tiwai@suse.com;srinivas.kandagatla@linaro.org; rohitkr@codeaurora.org;
 linux-arm-msm@vger.kernel.org; alsa-devel@alsa-project.org;
 devicetree@vger.kernel.org; linux-kernel@vger.kernel.org;
 swboyd@chromium.org; judyhsiao@chromium.org;>
 <1632313878-12089-1-git-send-email-srivasam@codeaurora.org>
 <1632313878-12089-5-git-send-email-srivasam@codeaurora.org>
 <e65c77f4-766c-a5ce-9cbd-f1697c1be28c@linaro.org>
 <20ddc4ea-e99c-5492-1931-be1999655563@codeaurora.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <da23bfce-23cd-0869-d752-b0713136072a@linaro.org>
Date:   Tue, 28 Sep 2021 09:31:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20ddc4ea-e99c-5492-1931-be1999655563@codeaurora.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27/09/2021 17:42, Srinivasa Rao Mandadapu wrote:
> 
> On 9/27/2021 4:12 PM, Srinivas Kandagatla wrote:
> Thanks for your time Srini!!
>>
>> On 22/09/2021 13:31, Srinivasa Rao Mandadapu wrote:
>>> Update mic control register default values to hardware reset values
>>>
>>> Fixes: c39667ddcfc5 (ASoC: codecs: lpass-tx-macro: add support for 
>>> lpass tx macro)
>>>
>>> Signed-off-by: Venkata Prasad Potturu <potturu@codeaurora.org>
>>> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
>>> ---
>>>   sound/soc/codecs/lpass-tx-macro.c | 6 +++---
>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/sound/soc/codecs/lpass-tx-macro.c 
>>> b/sound/soc/codecs/lpass-tx-macro.c
>>> index e980b2e..66c39fb 100644
>>> --- a/sound/soc/codecs/lpass-tx-macro.c
>>> +++ b/sound/soc/codecs/lpass-tx-macro.c
>>> @@ -279,7 +279,7 @@ static const struct reg_default tx_defaults[] = {
>>>       { CDC_TX_CLK_RST_CTRL_SWR_CONTROL, 0x00},
>>>       { CDC_TX_TOP_CSR_TOP_CFG0, 0x00},
>>>       { CDC_TX_TOP_CSR_ANC_CFG, 0x00},
>>> -    { CDC_TX_TOP_CSR_SWR_CTRL, 0x00},
>>> +    { CDC_TX_TOP_CSR_SWR_CTRL, 0x60},
>>
>> This does not make sense as this register only has one bit to control.
>> Why do we even need to change this, can you please explain what 
>> happens if we do not change this?
> 
> This register change is not making any impact. But when verified , reset 
> state of this register is 0x60. so is the reason for change.
> 
> Will revert it and post again.
> 
>>
>>>       { CDC_TX_TOP_CSR_FREQ_MCLK, 0x00},
>>>       { CDC_TX_TOP_CSR_DEBUG_BUS, 0x00},
>>>       { CDC_TX_TOP_CSR_DEBUG_EN, 0x00},
>>> @@ -290,8 +290,8 @@ static const struct reg_default tx_defaults[] = {
>>>       { CDC_TX_TOP_CSR_SWR_DMIC1_CTL, 0x00},
>>>       { CDC_TX_TOP_CSR_SWR_DMIC2_CTL, 0x00},
>>>       { CDC_TX_TOP_CSR_SWR_DMIC3_CTL, 0x00},
>>> -    { CDC_TX_TOP_CSR_SWR_AMIC0_CTL, 0x00},
>>> -    { CDC_TX_TOP_CSR_SWR_AMIC1_CTL, 0x00},
>>> +    { CDC_TX_TOP_CSR_SWR_AMIC0_CTL, 0x0E},
>>> +    { CDC_TX_TOP_CSR_SWR_AMIC1_CTL, 0x0E},
>>
>> These two registers should have default value of 0x06 as this has only 
>> one clk selection field with bits 2:1.
> 
> In Kodiak document reset state 0x0E and clk selection field is with bits 3:1
> 
> *LPASS_TX_TX_TOP_CSR_SWR_MIC1_CTL*|0x32200D4
> Offset: 	0x54 	Reset State: 	0x0000000E 

In that case you should probably consider using regmap_register_patch() 
for corrections to the default registers in sm8250 case.

--srini

> 
>>
>> -srini
>>
>>
>>>       { CDC_TX_INP_MUX_ADC_MUX0_CFG0, 0x00},
>>>       { CDC_TX_INP_MUX_ADC_MUX0_CFG1, 0x00},
>>>       { CDC_TX_INP_MUX_ADC_MUX1_CFG0, 0x00},
>>>
> -- 
> Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.,
> is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.
> 
