Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 746456CA3E8
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 14:21:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231203AbjC0MVq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 08:21:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232303AbjC0MVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 08:21:31 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D83D183E7
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 05:19:40 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id t10so35220725edd.12
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 05:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679919563;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3EakUI0jPNAKMyGSbXLdAYtexLz6JRBq3/S7X5rdpkM=;
        b=YfOGi5nIN1LMTUEwVIBWmw5WfzTXuwcFr6VkD9El4PILnUwRTn3tA1fPy81Q+aVppr
         cXMxGPGNiWUWNw1RV2+rFWcv0QCT4Ik4de8GtvQpKVBKJnl5K1t1Mv7gFeMB1RjLP2U8
         O1mRf3twnqy4kExwXswjwwKvGHxcqHl4DeXfT7IVT9InR/2c1j6zZyUIwQuBgQF3jpKf
         03yOzbOs7oRCbLVc5YzdvmKaj6/0haPCuyy3hWK9Cq05OPsbwjvsHGrPn6XDzB2/PB+y
         JJAtAxUos3kfWw3Oy0fC66+DFiuxyYG4soxu1ypMr8oCqcRkVsfXxFyl4rNMovRYY63Y
         Ixcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679919563;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3EakUI0jPNAKMyGSbXLdAYtexLz6JRBq3/S7X5rdpkM=;
        b=THVE3yQaDRmnHA+ci41yW4KT5FJrdMxeDM7NSIypsQfPF87WmyfiBBsCBbKVE+opKN
         IoWwWoh+qMfkuzmxqx22L4AxMLMvtNuXFVyexXVJsYHlZkCFxGrMAHEC14HCPvi+pk+O
         PpwR/CJl+1FgCzzJK8lX/q9cKPJZdjtw47ugb5g8+esMujxET4ckcnqgkJIw6rXopUub
         4k8LhEvbH3gPK8/BIHqILWpe9VMsp7ZKwt/0n1i10HHMe34s7kfNaxYBDf1ziJ83WmU+
         C4XS72CkJEHXy7Tv8Smrl3gyrB8Dw7zGSVNa0fjYJok4rU0tbnyOzUmiaZjBihPnH4T2
         UQew==
X-Gm-Message-State: AAQBX9cZ1JHBVL3BZY7SbhO6SV+h6QORIX4WOtZoSc2wngy3TrS2P7Z7
        xnu4Rj5lHvP5vZJOLpywcuIL6A==
X-Google-Smtp-Source: AKy350b6d9XE2HHWOHZjV/5/85T1ouRUKqmWiG8PcQum228h/qDy8/lVOV2pixdrzmpNPdtK01VMrw==
X-Received: by 2002:a17:906:11d6:b0:93b:68a8:a0e0 with SMTP id o22-20020a17090611d600b0093b68a8a0e0mr11190947eja.16.1679919562742;
        Mon, 27 Mar 2023 05:19:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:581e:789c:7616:5ee? ([2a02:810d:15c0:828:581e:789c:7616:5ee])
        by smtp.gmail.com with ESMTPSA id u6-20020a50d506000000b004fd2aab4953sm14660386edi.45.2023.03.27.05.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 05:19:22 -0700 (PDT)
Message-ID: <d5821429-032d-e1e6-3a4e-ca19eb4a60ed@linaro.org>
Date:   Mon, 27 Mar 2023 14:19:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 03/10] dt-bindings: qcom-qce: Fix compatibles
 combinations for SM8150 and IPQ4019 SoCs
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, rfoss@kernel.org,
        neil.armstrong@linaro.org
References: <20230322114519.3412469-1-bhupesh.sharma@linaro.org>
 <20230322114519.3412469-4-bhupesh.sharma@linaro.org>
 <333081a2-6b31-3fca-1a95-4273b5a46fb7@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <333081a2-6b31-3fca-1a95-4273b5a46fb7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 13:49, Vladimir Zapolskiy wrote:
> Hi Bhupesh,
> 
> On 3/22/23 13:45, Bhupesh Sharma wrote:
>> Currently the compatible list available in 'qce' dt-bindings does not
>> support SM8150 and IPQ4019 SoCs directly, leading to following
>> 'dtbs_check' error:
>>
>>   arch/arm64/boot/dts/qcom/sm8150-sony-xperia-kumano-griffin.dtb:
>>    crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
>> 	['qcom,sm8150-qce', 'qcom,qce'] is too long
>> 	['qcom,sm8150-qce', 'qcom,qce'] is too short
>>
>> Fix the same.
>>
>> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
>> index e375bd981300..90ddf98a6df9 100644
>> --- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
>> +++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
>> @@ -24,6 +24,12 @@ properties:
>>           deprecated: true
>>           description: Kept only for ABI backward compatibility
>>   
>> +      - items:
>> +          - enum:
>> +              - qcom,ipq4019-qce
>> +              - qcom,sm8150-qce
>> +          - const: qcom,qce
>> +
> 
> thank you for the fix, the change is correct, please apply the tag:
> 
> Fixes: 00f3bc2db351 ("dt-bindings: qcom-qce: Add new SoC compatible strings for Qualcomm QCE IP")
> 
> But let me ask you to split the "items" into two:
> 
>        - items:
>            - const: qcom,ipq4019-qce
>            - const: qcom,qce
> 
>        - items:
>            - const: qcom,sm8150-qce
>            - const: qcom,qce
> 

Why splitting these? The enum is the preferred way usually, so why here
do it differently?

Best regards,
Krzysztof

