Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A1395B4604
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 13:10:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbiIJLKk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 07:10:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbiIJLKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 07:10:37 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D933919299
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 04:10:36 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id e15so2340463wmq.1
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 04:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=e0lWsW7oYN2pLdYvVwsW9YZInJiIO1cnSbKxWFNA6Qw=;
        b=rx0wXz8boXDoylwKAAVBThqEzGvERQ3RlctuAOcE9pAmWrpt6CLCPgMbeT6UAFOdAE
         BbT232XOV2E6/fkivbf4EL8xejocxSZGIItOnfqt36K395+bYZWDBYSqH27pHU7NZnHF
         jz/w2Z0aZuoUA/rcJmpObDCT2ctdH2JJdjPmqgpZhgzLS8JzG/SogP/jcMxppCFjwZFm
         BNNmh7g8cUTbr+JoVZCJ4Oh9fEGyjWGGq+7lhqG/4Ga0VChUQNCuU5nRTOIwK3kqd08H
         dOxTbG6jHbi3Xib7+1blPBkTu8cJFzo06nFbTPQPntNYP0ybubXYHlhBXTYh2qvYkewt
         CRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=e0lWsW7oYN2pLdYvVwsW9YZInJiIO1cnSbKxWFNA6Qw=;
        b=wJD6vALDFEoO+INWUeRQEuP17tqC9m9S3BkymkrnlavwwqJ3CnLySkq1yMp1362tA3
         6aoE09mby8ZNNvoR87wUhkKKl8y7tGflBKc4Del2A6ffSxyrLH0kxt88FsvzyEh6aZ3O
         npO4P+E++fzSy9DUi+5CcvotnJjbe3l41oaFtpc8oelL18Pns1lKmSHaNMPnjmlkjgdS
         KSlU3HLSr8IpB7i1bsML+a8d4lHPyXqjPmFvusQ01cj4fV1EaIdF5USypOeD43C8M0hq
         e53+Z8Wl42MtTtp9xZDO7Ne+9kr9EYXPR8Rd5MbAOOllJpJ6qiGs5QL5V/n3QAst82wF
         Fb7A==
X-Gm-Message-State: ACgBeo3dpaKN5ilxn4WQ5nwlUz246bUv67r4ld0fAad26zW1E/Djsjg0
        goVRdaPi+8ai7PVmNze5nmJuQw==
X-Google-Smtp-Source: AA6agR4s7HGfTcWpcgsUc7IaEnkO+z/U3SVMM0JiNqo5R9Ovh+W9Yjkj3ueHl97GOuWQiVOErGCYAw==
X-Received: by 2002:a7b:cd14:0:b0:3a5:c5b3:508 with SMTP id f20-20020a7bcd14000000b003a5c5b30508mr7868303wmj.179.1662808235456;
        Sat, 10 Sep 2022 04:10:35 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id z13-20020adfd0cd000000b0022587413219sm2614837wrh.16.2022.09.10.04.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 04:10:34 -0700 (PDT)
Message-ID: <fa0bd321-cf92-98e9-bf5c-9969cfba9b06@linaro.org>
Date:   Sat, 10 Sep 2022 12:10:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: Mark old binding
 qcom,cpu-lpass-apq8016 as deprecated
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220910014206.1101962-1-bryan.odonoghue@linaro.org>
 <20220910014206.1101962-2-bryan.odonoghue@linaro.org>
 <d47aa92f-d8fa-24fd-653b-aa01c3f7c040@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <d47aa92f-d8fa-24fd-653b-aa01c3f7c040@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/09/2022 08:55, Krzysztof Kozlowski wrote:
> On 10/09/2022 03:42, Bryan O'Donoghue wrote:
>> We've had some discongruity in the compatible string of the lpass for 8916
>> for a while.
>>
>> Mark the old compat as deprecated. New SoC additions such as msm8936 and
>> msm8939 should use the compat string "qcom,apq8016-lpass-cpu".
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   .../devicetree/bindings/sound/qcom,lpass-cpu.yaml   | 13 ++++++++-----
>>   1 file changed, 8 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
>> index ef18a572a1ff3..e2c0f573a3084 100644
>> --- a/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
>> +++ b/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
>> @@ -18,11 +18,14 @@ description: |
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - qcom,lpass-cpu
>> -      - qcom,apq8016-lpass-cpu
>> -      - qcom,sc7180-lpass-cpu
>> -      - qcom,sc7280-lpass-cpu
>> +    oneOf:
>> +      - enum:
>> +        - qcom,lpass-cpu
>> +        - qcom,apq8016-lpass-cpu
> 
> The indentation looks odd here. Are you sure it passes the `make
> dt_binding_check`?

It does yeah

---
bod
