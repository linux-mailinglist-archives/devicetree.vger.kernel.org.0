Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49B57542BAC
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 11:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234874AbiFHJjG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 05:39:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235018AbiFHJiZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 05:38:25 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17024194761
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 02:06:40 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id q26so17062456wra.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 02:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UWYWVcXogZZm7TQss3LobaIgIJTxFR11rLplfzwNMig=;
        b=I+f7PscBnXMmsm6JdEzkN2r/BEt/ov8ZM76Of9NkJuptPE0KKTlIUPs75o4N75t+c9
         akUFLm72NOe/Dwa+JZKwGsZd6vIvsolgjFqCFy+7Q8gxb+lGg7Fm1kRDuQl/qe4xFy3F
         jmvEAD+FqGv5Tk9hX6na08VmJzEGvOgQTyPSi0Wb+OZxOLTEw7rPUx3ODM9dLH7df5Vk
         k/mkjhhiDuRAhRbIB+y4vuYQ+u68A7ejwC+UvqxRHiJ8FLLn2ify8SqSDPLxAnQxAQyC
         9R8gjr3zavFFHfAToBI8dANCxRJSx3bCQncuQbziii+rFS5hcekPkTLq52y0pma8ILvG
         j9wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UWYWVcXogZZm7TQss3LobaIgIJTxFR11rLplfzwNMig=;
        b=jbZZqNmDMGKViVTWuJcSsQXqNJfP23hAJ4WFFpEjzm/puydIHJRwwKH9LhGMSlqT8b
         saUOS1u3HhMvIgk9hAKw6nfwJ1zW/PKTLhxWEpZERTZonME9EeNbvVsE8AGEGKCdfUIj
         M9KpJlGr4fB9Nk3FGIcC0zynTYhj8Tfk6QuObjndJDUPZPKu467zn1Mu8QLQI3+oBd+q
         kCUh/097USM0nhGdxWKZHVs1wq6GAzum876mon5Rhbb/zRFG45tMCNmh9GxpbYZVAQX6
         PyEOMNDLb+PcLPiUN1Uye7CQASGi7dYgOhJgJcG4orwyAnsjDjHc+2qKl3gXzJAVAuQv
         IaCA==
X-Gm-Message-State: AOAM530H3mzYAiFpCFypHelUrHBx155Vy6uKCvC17kdj2ydy3epADDVg
        R2aZ01KD2e0BJoboCZX3JriVcMgFFKfqW9givaTdSg==
X-Google-Smtp-Source: ABdhPJx2A5aRKvXYdtPa/8GFoapItwwMlKdcoNxXkyMGuWfdsOjCC9S9cC1Zud9VZdYGP7rgIy+NAQ==
X-Received: by 2002:a05:651c:98d:b0:250:976b:4a0e with SMTP id b13-20020a05651c098d00b00250976b4a0emr55921408ljq.494.1654679188857;
        Wed, 08 Jun 2022 02:06:28 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j20-20020a2e3c14000000b00253bd515f88sm3110633lja.68.2022.06.08.02.06.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 02:06:28 -0700 (PDT)
Message-ID: <5a7b9d21-1d10-fba0-1102-c5ae27809a79@linaro.org>
Date:   Wed, 8 Jun 2022 12:06:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v1 2/7] dt-bindings: display/msm: hdmi: mark old GPIO
 properties as deprecated
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, David Heidelberg <david@ixit.cz>
References: <20220607185806.2771739-1-dmitry.baryshkov@linaro.org>
 <20220607185806.2771739-3-dmitry.baryshkov@linaro.org>
 <c431b51a-f68f-8608-5d5d-6dac85e2be4f@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <c431b51a-f68f-8608-5d5d-6dac85e2be4f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 12:05, Krzysztof Kozlowski wrote:
> On 07/06/2022 20:58, Dmitry Baryshkov wrote:
>> Mark obsolete GPIO properties as deprecated. They are not used by
>> existing device trees. While we are at it, also drop them from the
>> schema example.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   .../devicetree/bindings/display/msm/qcom,hdmi.yaml         | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,hdmi.yaml b/Documentation/devicetree/bindings/display/msm/qcom,hdmi.yaml
>> index 2f485b5d1c5d..2b1cac0851ce 100644
>> --- a/Documentation/devicetree/bindings/display/msm/qcom,hdmi.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/qcom,hdmi.yaml
>> @@ -59,22 +59,27 @@ properties:
>>   
>>     qcom,hdmi-tx-ddc-clk-gpios:
>>       maxItems: 1
>> +    deprecated: true
>>       description: HDMI DDC clock
>>   
>>     qcom,hdmi-tx-ddc-data-gpios:
>>       maxItems: 1
>> +    deprecated: true
> 
> This is confusing. These two are not defined in the old bindings, not
> used by DTS, not used by Linux implementation - why did you add them?

Most probably I added them as they were referenced in the source (and in 
the example). I'll drop these two completely (and document removing them 
from the example).

> 
>>       description: HDMI DDC data
>>   
>>     qcom,hdmi-tx-mux-en-gpios:
>>       maxItems: 1
>> +    deprecated: true
>>       description: HDMI mux enable pin
>>   
>>     qcom,hdmi-tx-mux-sel-gpios:
>>       maxItems: 1
>> +    deprecated: true
>>       description: HDMI mux select pin
>>   
>>     qcom,hdmi-tx-mux-lpm-gpios:
>>       maxItems: 1
>> +    deprecated: true
>>       description: HDMI mux lpm pin
>>   
>>     '#sound-dai-cells':
>> @@ -171,8 +176,6 @@ examples:
>>             <&clk 61>,
>>             <&clk 72>,
>>             <&clk 98>;
>> -      qcom,hdmi-tx-ddc-clk-gpios = <&msmgpio 70 0>;
>> -      qcom,hdmi-tx-ddc-data-gpios = <&msmgpio 71 0>;
>>         hpd-gpios = <&msmgpio 72 0>;
>>         core-vdda-supply = <&pm8921_hdmi_mvs>;
>>         hdmi-mux-supply = <&ext_3p3v>;
> 


-- 
With best wishes
Dmitry
