Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8220B636B8E
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 21:50:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235673AbiKWUtz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 15:49:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237586AbiKWUth (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 15:49:37 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E0D46BDEF
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 12:49:36 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id x21so22668672ljg.10
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 12:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S7YvUMQ+nKYiMNNWPyDhQ/jukxJGNja3gA82pbwqtr0=;
        b=qze4Fhr0i3wUjK7JmEknyCoCM3OyXohdoTL4Xq39kXScuKBAlMYJMwXKjKdN0O7L+I
         kUPREyK48s65dzMlGsXdM+g8KDHeD6kY7LrvXocUDBc/P3Il2GYIKm9+lWoYOH8F5YHx
         NkgqSj21KZyxtWthL7UsesnZG2woWNiG1MW5mMlEWa4HsUJxy+BxRthpGa1Ctd8I5x8M
         PsR7rwRkPrbJWzxW5/iUfBMyK8e/fwoCRK7JkNn8UKXO3maLYCR3BzwiTSNW9p+y7PmE
         ULhHZTRBr2ExTWIe0tZ55hHpDolMAjmRoFSDdu4IiZgb1IT67klnF/d6+aJXxmxkqTpi
         WyAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S7YvUMQ+nKYiMNNWPyDhQ/jukxJGNja3gA82pbwqtr0=;
        b=0wdIuePjhb9CUV3uxQb2V5hZaU9iK/W+bU3+o4WKHKLZ8srU6eR85yoVTszbvj0nQP
         l+CfuJMVa+cYpbCrZnGtTBKDafnbwnbbEHx/YYdNbnhP70xUq9B0mEdHZWQBGt/eG6rC
         YsP62tY5mnA+jx0uU3bQiA+Dg+SgBNJtsrEU6Ji866GLTqdzgQWy0AOwyK6OiFWj+rz1
         noDrBdHS8eTDDL91W6jwGLfSNl1BLTqX5DDzAusCFZcaBPXWX/LXnsvgUafc8KrthW44
         Vbw7rAWnxTrBRp7jq+3yAWZzAIX4E6uqAOp8iLvlFeve114GBRofYqeduWnXAywn8WNI
         bvYQ==
X-Gm-Message-State: ANoB5pmnYovvGLF9JdilVVdQ1b7XV2/c+VorYuu0jgqlMqzCGR2Qknm5
        +wHpRawBZcAHcFbddt/KYRH0F4sbbxZ2SA==
X-Google-Smtp-Source: AA0mqf6qjoBrUq7CGFIeDR/JoCZ8sBBy+cS4F3Qk97kaSCgXDjoTf66drKA9dZ74tkFh2N6z6E0dcA==
X-Received: by 2002:a2e:a4a3:0:b0:278:ecbe:ebba with SMTP id g3-20020a2ea4a3000000b00278ecbeebbamr4753569ljm.450.1669236574484;
        Wed, 23 Nov 2022 12:49:34 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x12-20020a19f60c000000b0048b26d4bb64sm3036057lfe.40.2022.11.23.12.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 12:49:34 -0800 (PST)
Message-ID: <0800676c-9182-aa2c-72f2-525d8776b33f@linaro.org>
Date:   Wed, 23 Nov 2022 22:49:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sm8450-hdk: Add LT9611uxc HDMI
 bridge
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>
References: <20221122233659.3308175-1-dmitry.baryshkov@linaro.org>
 <20221122233659.3308175-5-dmitry.baryshkov@linaro.org>
 <ac216c05-d939-0045-9a32-c874b584ee2d@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <ac216c05-d939-0045-9a32-c874b584ee2d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 11:01, Krzysztof Kozlowski wrote:
> On 23/11/2022 00:36, Dmitry Baryshkov wrote:
>> From: Vinod Koul <vkoul@kernel.org>
>>
>> Add the LT9611uxc DSI-HDMI bridge and supplies
>>
>> Signed-off-by: Vinod Koul <vkoul@kernel.org>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
> 
>> +
>>   &sdhc_2 {
>>   	cd-gpios = <&tlmm 92 GPIO_ACTIVE_HIGH>;
>>   	pinctrl-names = "default", "sleep";
>> @@ -431,6 +478,20 @@ &sdhc_2 {
>>   &tlmm {
>>   	gpio-reserved-ranges = <28 4>, <36 4>;
>>   
>> +	lt9611_irq_pin: lt9611-irq {
> 
> -state suffix
> 
> And test DTS against bindings (`make dtbs_check`).

Ack

> 
>> +		pins = "gpio44";
>> +		function = "gpio";
>> +		bias-disable;
>> +	};
>> +
>> +	lt9611_rst_pin: lt9611-rst-state {
>> +		pins = "gpio107";
>> +		function = "normal";
>> +
>> +		output-high;
>> +		input-disable;

Also dropping input-disable and changing function to "gpio".

>> +	};
>> +
>>   	sdc2_card_det_n: sd-card-det-n-state {
>>   		pins = "gpio92";
>>   		function = "gpio";
> 
> Best regards,
> Krzysztof
> 

-- 
With best wishes
Dmitry

