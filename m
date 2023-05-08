Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC2186FA271
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 10:39:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233015AbjEHIjN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 04:39:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjEHIjL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 04:39:11 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0438717DCE
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 01:39:05 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2ac82b07eb3so41158971fa.1
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 01:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683535144; x=1686127144;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f9KWu05QQAHrGIgkSsa+JP+L8YvUPSvZPB7VD7A6qms=;
        b=ka9FwxiITVEo0yboLS/2O3n6/zlbIiVZWbvIIK49l3ZR44FexKmAnSVsrf5PoDsFDz
         L6D/ji5anPRI9Lb40qQu6FrfZYHxU80NHLiBFBGXFEUL8kdOssF3KNM5zCfl2zHBc0CZ
         tt1UfL68zqaQ+g+6/AzmC/hfKdVavShvmzEitPIXUS/h0U/XkZWL6VaE7o1r7yHhhPSq
         FkQ5pEzgBrtsmFOjXA0JFkmKn4bOF9Z4qRYoBt0YaGxhNesIR3POc3UhELMGch+UQL86
         nLdKyWzsibp/99wcDPZz95J1urVJNf8rPybXirYfA4AW2d00rkkRBy5i5NfLV+7T3TfF
         DdSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683535144; x=1686127144;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f9KWu05QQAHrGIgkSsa+JP+L8YvUPSvZPB7VD7A6qms=;
        b=ihx4UOTC281QQrQVVeYmOjvF63FsKnMGw1ym/GRVMSesmY3mH/H1/UKkEPD347PJg5
         sgAe2ejqXfwfDDSbU6EJufEUeV0VJk5gkR8NYg7UZd9rINOU+dosDhvKXuKmKteXaj4q
         tzh+XghY+1BFcwMub+RCyQPdzoOEQZW3rUwMg89RotxDtqZDXhBxUg50AQLe+PgwI/qY
         QaUiEwHwX3HnF0J3NFQwBGXnLhUiapumzp1GL8zEtIJD9v72C1Hb7aI1oDkYa+A0mG4R
         gK/x6m5/GCGqcU/h+ytMN5AXOr9knBMI/mySMKpNal1BitkFWydD4rmV1ZdAUvEu+Ezy
         5fCw==
X-Gm-Message-State: AC+VfDwrXwfL+9n6y0OQwt8alECUUPKy/X9ZPKixvO9ztSAmO7JXJiLA
        CMc/SWfuyjoCjJiSkHyy/w+MmQ==
X-Google-Smtp-Source: ACHHUZ4f/q7vU8V60eEoycpYabQP7vUS7Ps/g6lArEoE/zeR5EVXKJpxTlWb4IMUn0Pwi0pPvwM0pQ==
X-Received: by 2002:a2e:874a:0:b0:2a7:b1de:3ff7 with SMTP id q10-20020a2e874a000000b002a7b1de3ff7mr2285929ljj.16.1683535144172;
        Mon, 08 May 2023 01:39:04 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id n15-20020a2e904f000000b002a8bb20e534sm1063460ljg.108.2023.05.08.01.39.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 01:39:03 -0700 (PDT)
Message-ID: <dada9566-ba49-0f0c-3442-390b4461797b@linaro.org>
Date:   Mon, 8 May 2023 10:39:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v3 04/12] dt-bindings: display/msm: Add SM6350 MDSS
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev
References: <20230411-topic-straitlagoon_mdss-v3-0-9837d6b3516d@linaro.org>
 <20230411-topic-straitlagoon_mdss-v3-4-9837d6b3516d@linaro.org>
 <80b46fcb-d6d0-1998-c273-5401fa924c7d@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <80b46fcb-d6d0-1998-c273-5401fa924c7d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7.05.2023 10:19, Krzysztof Kozlowski wrote:
> On 05/05/2023 23:40, Konrad Dybcio wrote:
>> Document the SM6350 MDSS.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  .../bindings/display/msm/qcom,sm6350-mdss.yaml     | 214 +++++++++++++++++++++
>>  1 file changed, 214 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml
>> new file mode 100644
>> index 000000000000..6674040d2172
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml
>> @@ -0,0 +1,214 @@
>> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/msm/qcom,sm6350-mdss.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm SM6350 Display MDSS
>> +
>> +maintainers:
>> +  - Krishna Manikandan <quic_mkrishn@quicinc.com>
>> +
>> +description:
>> +  SM6350 MSM Mobile Display Subsystem (MDSS), which encapsulates sub-blocks
>> +  like DPU display controller, DSI and DP interfaces etc.
>> +
>> +$ref: /schemas/display/msm/mdss-common.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    items:
> 
> Drop items
> 
>> +      - const: qcom,sm6350-mdss
>> +
> 
> The Rob's bot warning can be ignored - it seems patch #1 was not applied.
Ack

Konrad
> 
> 
> Best regards,
> Krzysztof
> 
