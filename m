Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 262E26012C0
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 17:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230307AbiJQP3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 11:29:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbiJQP3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 11:29:35 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93DF62BDB
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 08:29:31 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id y10so8896972wma.0
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 08:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ztY07P7Nmg/8FBmqQMyonwKE1XlxX2fUXn/V1GcbSV8=;
        b=ESwFXJ6YBY2EU9+J/6XDGyI79ha7GegoHe/VpBu3YeYKAqWtwYbaSyPmlfZPEBtQXV
         2L2GkB0OR9ZzdzcXt376UUyi84PF5rFt3XtLNOZ4X65RefBV8sQovCSPeB5gPaN0dJ3V
         yjWsMTfa/VoZV5pUSzbQ5bW/eX513hwxzKbmD7y46Top/SfQr2aUughYh0BxyDyFmDxC
         b7SQcQOwffZZiFWnZYhPToEtlz3I3wH+x5csUZBbT1zXr7jnX4TeidskpfPF7AyUzNof
         ZiEUQTc9jNNi6peptDKSz/LmvBohPjKb1Q6qi6xhpCmLY6xWPR17rdaV73DNWELG07Y8
         P2AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ztY07P7Nmg/8FBmqQMyonwKE1XlxX2fUXn/V1GcbSV8=;
        b=Z4pxd0cCzSmjvMcWfu/VYntPIgaTohMy1zvL0eEzesTRhEWPc0N2UY8Kwn6pNoc0RP
         97+BNJUODRHAxAKsaHABRY0QOiV/qjs+ESGTPP+r6Qot/r8OdkcFgEfBh/P/4tBhfQq6
         dSBecqEifdOrF082Lr0Z945i/+S/DjUC24eIrhoRMK5Hu4MqknJK96gE8JB2wfHGtMvo
         aKkj9Yb7bK++0E104fW7//UHY4iveg7lv3cPc6K3J5VDLgrTa+j4BFMY+2DdY/o20SDY
         JqbYqxnUq1IpTkc2c+PkxOAz1i3kUjldex8VeWLwDRfNfrB2AzX4kWjRZfa2bbatwkun
         FVvg==
X-Gm-Message-State: ACrzQf0kR7NGQHwSN2jHPbcctmBr9REfc8YnA35df29bFByWyoppPSQN
        XUdYoY5d5ESAtsekJeERPmahFg==
X-Google-Smtp-Source: AMsMyM7Egd26oBZtE3NtF6Z6JpD9Wz8tVYJ7fdTpQyPQU7e+obc02UfXyE0OLhJXHE9czGJHOyHcvA==
X-Received: by 2002:a05:600c:4e8c:b0:3c6:ea09:9cf0 with SMTP id f12-20020a05600c4e8c00b003c6ea099cf0mr7792213wmq.43.1666020570103;
        Mon, 17 Oct 2022 08:29:30 -0700 (PDT)
Received: from [192.168.0.11] (cpc76482-cwma10-2-0-cust629.7-3.cable.virginm.net. [86.14.22.118])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c3b8a00b003c6b7f55673sm16708009wms.2.2022.10.17.08.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 08:29:29 -0700 (PDT)
Message-ID: <1f6d8eb9-8e6e-a201-50c6-a9fa6f25b3d6@linaro.org>
Date:   Mon, 17 Oct 2022 16:29:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 1/5] arm64: dts: qcom: pmi8998: add rradc node
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Luca Weiss <luca@z3ntu.xyz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
References: <20221016180330.1912214-1-caleb.connolly@linaro.org>
 <20221016180330.1912214-2-caleb.connolly@linaro.org>
 <5929051d-d2be-5b51-0cf9-294affa51df2@linaro.org>
From:   Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <5929051d-d2be-5b51-0cf9-294affa51df2@linaro.org>
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



On 17/10/2022 02:10, Krzysztof Kozlowski wrote:
> On 16/10/2022 14:03, Caleb Connolly wrote:
>> Add a DT node for the Round Robin ADC found in the PMI8998 PMIC.
>>
>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/pmi8998.dtsi | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
>> index 6d3d212560c1..5a479259c041 100644
>> --- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
>> @@ -18,6 +18,14 @@ pmi8998_gpio: gpios@c000 {
>>   			interrupt-controller;
>>   			#interrupt-cells = <2>;
>>   		};
>> +
>> +		pmi8998_rradc: adc@4500 {
>> +			compatible = "qcom,pmi8998-rradc";
>> +			reg = <0x4500>;
>> +			#io-channel-cells = <1>;
>> +
>> +			status = "disabled";
> 
> Why disabling it? It does not need any external/board resources, so
> maybe it should be just like other adcs - enabled by default? What does
> it measure? What is its input?

The RRADC mostly reports values which only make sense on mobile devices, battery 
ID and temperature, USB and DC input voltage/current as well as a (duplicate?) 
die temperature of the PMIC - I guess closer to the SMB/FG block.

When I last tested the DC input readings didn't work on db845c, as it just 
produces the 4.2v you'd get from a battery.

Enabling it by default should be fine (and would certainly simplify this series :P).
> 
> Best regards,
> Krzysztof
> 

-- 
Kind Regards,
Caleb (they/them)
