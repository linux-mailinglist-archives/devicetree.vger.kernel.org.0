Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76F9D629585
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 11:15:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238321AbiKOKPS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 05:15:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229665AbiKOKPE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 05:15:04 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75E0517AB9
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:15:03 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id r12so23687539lfp.1
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0IcBMH20r+ISbVoq6CN/oXjmzZOO9PfgZcgfdmdIh5E=;
        b=keQ7t/4uMkpUIyBOIR5QmpCYWdTB8C8hPtfJLr8SMoT2efcAbucezDzLXsmvkTv/V4
         +gb9FSvD5irD3Iebe0BDQpqbW/kfbw9yXiQCoBXmPOLEApfUOQjgtMZFKA6u43IxljHl
         XBzmKoOrTAZ5Fr22sT9qxmvT1aLVRTgNWAMjKAX2WBBjdC1DtmTwM6Z+RAjy0rphEmhZ
         9fFYENqfX3Y5NYzAA9E9YjKJzV09CCyOBwmPl7WWWCB0hmyDLOCaV8OBaVXgEvCvP+X7
         pF76voVl6A8ogkpT7aggXn+vNwmjVpKMozoV+iLb/8g+a7LoOqEy2ln+NSU7c500ZZ2g
         MvEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0IcBMH20r+ISbVoq6CN/oXjmzZOO9PfgZcgfdmdIh5E=;
        b=PBU8Zqx89kVDxTDdQC1iEdkgNPulHFaD13Bs91XOjArlgQOPBKgL2Tq2JIUuHPiCTM
         KGUqOJpEYuTf2tMmbEqNqzQBNdbFMtTBbIwU4EdK3MGcrjusMpfh+zIvGE7Xd1zrSqE0
         eLD7d/rcSaMwLIJ/FjMiUR7QPWzeM7isEQzgKDPdW9wnmlYRi2P7rRo5F9vQamFSXrjK
         uefbyC37gaIMfy0mY3THmzHq8oPeAqkzBEf6UGiZE4rlGD6VgfMA4F6yo6r32nu+uGp2
         jvLJq2knAdMxYFQ065S8STmKaS+aIOKEQ+BfLmgZhQ/kNm5lWwQVd5ibuj8+KuvAj29H
         3ZTA==
X-Gm-Message-State: ANoB5pm0wDp8O0GZYPH3FHAUS85PANJgNVEu6QsNXMj1A8caY0Bx4DY1
        LnOwmsYv9O6MmY2vxXeKFgl9Wg==
X-Google-Smtp-Source: AA0mqf6OADtsNBFR7yJjFMz9J9RhdUEdAdgY48O80tuySN0Hvjgh6eICLECJsmkDrRV9axnTnBURng==
X-Received: by 2002:a05:6512:2983:b0:4ae:6bbc:e8af with SMTP id du3-20020a056512298300b004ae6bbce8afmr5050326lfb.411.1668507301787;
        Tue, 15 Nov 2022 02:15:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id g18-20020a05651222d200b00494643db68bsm2146034lfu.78.2022.11.15.02.15.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 02:15:01 -0800 (PST)
Message-ID: <d1177e53-a4f2-70e5-9214-671910ea28ac@linaro.org>
Date:   Tue, 15 Nov 2022 11:15:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8450: add Soundwire and LPASS
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20221114152130.385871-1-krzysztof.kozlowski@linaro.org>
 <20221114152130.385871-3-krzysztof.kozlowski@linaro.org>
 <fbf1fc09-31a9-a08f-6ffd-551fdd317ec0@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fbf1fc09-31a9-a08f-6ffd-551fdd317ec0@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/11/2022 16:37, Konrad Dybcio wrote:
> 
> On 14/11/2022 16:21, Krzysztof Kozlowski wrote:
>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>
>> Add Soundwire controllers, Low Power Audio SubSystem (LPASS) devices and
>> LPASS pin controller.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 295 +++++++++++++++++++++++++++
>>   1 file changed, 295 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> index 4b0a1eee8bd9..c99740591467 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> @@ -15,6 +15,7 @@
>>   #include <dt-bindings/interconnect/qcom,sm8450.h>
>>   #include <dt-bindings/soc/qcom,gpr.h>
>>   #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>> +#include <dt-bindings/sound/qcom,q6afe.h>
>>   #include <dt-bindings/thermal/thermal.h>
>>   
>>   / {
>> @@ -2097,6 +2098,212 @@ compute-cb@3 {
>>   			};
>>   		};
>>   
>> +		wsa2macro: codec@31e0000 {
>> +			compatible = "qcom,sm8450-lpass-wsa-macro";
>> +			reg = <0 0x031e0000 0 0x1000>;
> The sorting will be off, as adsp and cdsp have been mistakenly put in
> the wrong place (notice adsp @ 32300000 is actually at an address
> that's 8 hex digits long, but the reg addr is padded to 9 hex digits..).

I don't get it. This has address:
31e0000
ADSP has
30000000

so why sorting is odd?

> > Could you submit a fix for that as well?

For 9 digits, sure, but this is independent issue.

> 
>> +			clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>> +				 <&q6prmcc LPASS_CLK_ID_RX_CORE_MCLK2_2X_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>> +				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>> +				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>> +				 <&vamacro>;
>> +			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
>> +			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>> +					  <&q6prmcc LPASS_CLK_ID_RX_CORE_MCLK2_2X_MCLK  LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> 
> Remove the duplicated space before LPASS_CLK_ATTRIBUTE_COUPLE_NO.

Ack.


Best regards,
Krzysztof

