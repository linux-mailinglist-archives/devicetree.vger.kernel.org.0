Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFAE4653E5E
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 11:36:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbiLVKgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 05:36:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbiLVKgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 05:36:20 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A556562DE
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 02:36:19 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id s25so1482821lji.2
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 02:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7+5IJIhCpMH6P+7mzwBTOjOH2P/NLSgQduJLQ+ZFZnE=;
        b=u/FHIhyvBTH3ODdQatZXfqJ4HUrXxu13PFK2fa9NOlw3NeibuQqgjun0GfEa9dF7CM
         oAq0M+I/sn1TfE2OKrB9h0aKLMIeo/rX4q++iWL++/WTC1T+mrDip2p+QcB29xsPJEm2
         2zz13/tjmuEZ22VyjaljWw8yn7CWQtz/lHwmjUAgwil34KhOx3qGSbAov40TBSE7teZd
         9zY+F6HxPqnTFN/JzamtSR1YwxtcaOxE3tbgs579grzgQ6YdKbBTa6oYYt3E5TseonSM
         zvARrajybk1yqd2xYie2gU+yLkZ117uMGqCrZQLvUSVc/JmlBtSZtauKB666rA4iv8nE
         nqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+5IJIhCpMH6P+7mzwBTOjOH2P/NLSgQduJLQ+ZFZnE=;
        b=aTtNu1c+r1MZr912Ar//+q3KI0fHTsQoYxliBaaVVgmZIDqwhR0mH8BUEppJSOrsaN
         UEKWRCk3UYwDQraluSEGXEawhF+Z2hdB3ioIY/bYkh16UxmF5G9kvaTBo0at1WnBLcAi
         gW3RFIVAieAd5fcLir+9NHKZovwwpc1jFN1V9+G5dWiXFLKipIix9bZ8J7S4r01X3wnD
         v4tbtsfq7+HpGpfIoNLFkz+GS04eO1SlU8lBiSrJDXX/yyGxBcX3MD2Y7o+rTjGu3k5t
         GDr1WM/tNBLNBxXJ4lH19LAMgt5sgy0KBPZ/jFKD1pjEen5J1aH1Q0vLXdF4nZ9D4+7b
         9Hbg==
X-Gm-Message-State: AFqh2krptt1U2dJfppNmm1uMrUVsmBkLN/l+P5+N6bdK9ftKpWQYAXrY
        Idykml+ksSNsYlCVKz5yIAyuLg==
X-Google-Smtp-Source: AMrXdXsVlTloCzB2iAxBgbSBfusHqnXp2uP31OGYzPRWoJH7xgWb92tAKsblhbawpDaQgajQLr6DIA==
X-Received: by 2002:a2e:9d86:0:b0:279:b96d:6f79 with SMTP id c6-20020a2e9d86000000b00279b96d6f79mr1462022ljj.20.1671705378050;
        Thu, 22 Dec 2022 02:36:18 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z5-20020a05651c11c500b0027da3a87ff6sm10067ljo.83.2022.12.22.02.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 02:36:17 -0800 (PST)
Message-ID: <bff48e91-3cdc-a052-9573-3c4271f88e5a@linaro.org>
Date:   Thu, 22 Dec 2022 11:36:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] dt-bindings: arm-smmu: disallow clocks when not used
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>
Cc:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20221222092355.74586-1-krzysztof.kozlowski@linaro.org>
 <20221222101611.nwt5arux2hcvvtvf@SoMainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222101611.nwt5arux2hcvvtvf@SoMainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/12/2022 11:16, Marijn Suijten wrote:
> Is this missing a cc to linux-arm-msm?

No, it is not (or maybe but then fix MAINTAINERS). The policy is to use
get_maintainers.pl to CC people.

> 
> On 2022-12-22 10:23:55, Krzysztof Kozlowski wrote:
>> Disallow clocks for variants other than:
>> 1. SMMUs with platform-specific compatibles which list explicit clocks
>>    and clock-names,
>> 2. SMMUs using only generic compatibles, e.g. arm,mmu-500, which have a
>>    variable clocks on different implementations.
>>
>> This requires such variants with platform-specific compatible, to
>> explicitly list the clocks or omit them, making the binding more
>> constraint.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> 
> But...
> 
>> ---
>>
>> Cc: Marijn Suijten <marijn.suijten@somainline.org>
>> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  .../devicetree/bindings/iommu/arm,smmu.yaml   | 28 +++++++++++++++++++
>>  1 file changed, 28 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>> index 895ec8418465..0d88395e43ad 100644
>> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>> @@ -367,6 +367,34 @@ allOf:
>>              - description: interface clock required to access smmu's registers
>>                  through the TCU's programming interface.
>>  
>> +  # Disallow clocks for all other platforms with specific compatibles
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - cavium,smmu-v2
>> +              - marvell,ap806-smmu-500
>> +              - nvidia,smmu-500
>> +              - qcom,qcm2290-smmu-500
>> +              - qcom,qdu1000-smmu-500
>> +              - qcom,sc7180-smmu-500
> 
> Hmm, sc7280 has two SMMUs.  The one for Adreno has clocks and a PD, the

sc7280 is not here, so what is the mistake you see?

> one for APPS has neither.  Same story on sm8[12]50.  Aren't those going
> to trip up the other `if` that requires clocks in both scenarios?

They are not here either, so what is the error?

> 
> Note that the Adreno SMMUs have (or will get when we/Konrad submit
> support for it) the "qcom,adreno-smmu" compatible to distinguish them.
> 
> - Marijn
> 


Best regards,
Krzysztof

