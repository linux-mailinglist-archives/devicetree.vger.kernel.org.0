Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6938559C591
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 19:58:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237347AbiHVR6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 13:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237350AbiHVR6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 13:58:15 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B123C9
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 10:58:12 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id bx38so11325533ljb.10
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 10:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=RWYLTrcCZlG0a48i/Axnj+NOJi6WNiY/wtEpP6R8Cso=;
        b=IgzBtvwxsGxNvJP1J3AH+pEA/ILQB4DRAD0OvIowCQIEzs75ZSursWuP07tv1lF9A+
         GTiNGTn2ZfXVUYh97diO2Bm/BeCZQ9BnpEilK0W2VqBWTAYiQeq7Cd9B+ykEClLE5Bhd
         efXl41/ZYCy8D3D3+S25jCs43miYrUMjuRl6Z9hgsCHV4wyUCNF4i4tw5dS22y/LSb8o
         nhKetgh0lYgMdLQJUL6Uou+mrL9/8S93q6rMcpA5MWnvmFDiOGVH8h5/spzoAm4rxOpm
         y+L1EkfucwypJUniALZOLQRY56qoLbQjbE67KB1DiB3wp9luzFdvXSBAe2R8SWZns9+L
         77yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=RWYLTrcCZlG0a48i/Axnj+NOJi6WNiY/wtEpP6R8Cso=;
        b=5EokcyjGOTnTmStiXAR4Ys5xlSD4tex4nDOr/UGERBnujwtJQmiAtjNCD/M5zYVG6v
         31FI03TseGrcZaWi+0pi8wQGvxkEUAU+ruBkjgw8m4JEF8Jkr88KMFU8jOLeHZrXq8af
         C6Mee6YFAtAkUdc0xCogyabmMespyB4ExUOwPMtI+/gVYOSc+9/73wOCsNglLnsO7hKe
         0mqUzeX5FbfXttY5NHnIeH1rpXUyZAPDCv/QxsVILaptnRNvWc7HZABl2LdzXPPUNPUd
         kJz+yj79rXcv47aDN1JBWVIIXIfm0OR30xJ22XWxNgURAS8ayasA+4JTC+mT3xJ2tWzh
         UTTw==
X-Gm-Message-State: ACgBeo2Vlhg4d3KBnv8hCwH3Q9a+yo464Mac0wC5s4U52ZmBRBkMk7dC
        iSCiw/1xC6EWvQ3fI7q8iowJ3g==
X-Google-Smtp-Source: AA6agR7dYWNWZi8FS8hwu9VcM99F98hvdjk2XGX0dbfCiTvE/xUerprDELcV2OpaaDuqxd7GvxCGOw==
X-Received: by 2002:a05:651c:220a:b0:261:cab2:3fc1 with SMTP id y10-20020a05651c220a00b00261cab23fc1mr2509753ljq.284.1661191090934;
        Mon, 22 Aug 2022 10:58:10 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z13-20020a05651c022d00b0025e49aaae10sm1928628ljn.12.2022.08.22.10.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 10:58:10 -0700 (PDT)
Message-ID: <a3a917b3-5dfc-761e-e5f6-5955c89db4a4@linaro.org>
Date:   Mon, 22 Aug 2022 20:58:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 3/4] dt-bindings: display/msm/gmu: account for different
 GMU variants
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220706145222.1565238-1-dmitry.baryshkov@linaro.org>
 <20220706145222.1565238-4-dmitry.baryshkov@linaro.org>
 <7b504ecb-b05a-549e-e2ce-18c539f68655@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <7b504ecb-b05a-549e-e2ce-18c539f68655@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2022 18:52, Krzysztof Kozlowski wrote:
> On 06/07/2022 16:52, Dmitry Baryshkov wrote:
>> Make display/msm/gmu.yaml describe all existing GMU variants rather than
>> just the 630.2 (SDM845) version of it.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   .../devicetree/bindings/display/msm/gmu.yaml  | 166 +++++++++++++++---
>>   1 file changed, 146 insertions(+), 20 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
>> index fe55611d2603..67fdeeabae0c 100644
>> --- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
>> @@ -20,35 +20,24 @@ description: |
>>   properties:
>>     compatible:
>>       items:
>> -      - enum:
>> -          - qcom,adreno-gmu-630.2
>> +      - pattern: '^qcom,adreno-gmu-6[0-9][0-9]\.[0-9]$'
>>         - const: qcom,adreno-gmu
>>   
>>     reg:
>> -    items:
>> -      - description: Core GMU registers
>> -      - description: GMU PDC registers
>> -      - description: GMU PDC sequence registers
>> +    minItems: 3
>> +    maxItems: 4
>>   
>>     reg-names:
>> -    items:
>> -      - const: gmu
>> -      - const: gmu_pdc
>> -      - const: gmu_pdc_seq
>> +    minItems: 3
>> +    maxItems: 4
>>   
>>     clocks:
>> -    items:
>> -      - description: GMU clock
>> -      - description: GPU CX clock
>> -      - description: GPU AXI clock
>> -      - description: GPU MEMNOC clock
>> +    minItems: 4
>> +    maxItems: 7
>>   
>>     clock-names:
>> -    items:
>> -      - const: gmu
>> -      - const: cxo
>> -      - const: axi
>> -      - const: memnoc
>> +    minItems: 4
>> +    maxItems: 7
>>   
>>     interrupts:
>>       items:
>> @@ -76,6 +65,9 @@ properties:
>>   
>>     operating-points-v2: true
>>   
>> +  opp-table:
>> +    type: object
> 
> instead: opp-table:true

Wouldn't this allow e.g. using just 'opp-table;' as a flag?

> 
>> +
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

