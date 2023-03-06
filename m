Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1953B6AC973
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 18:11:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbjCFRLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 12:11:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbjCFRLa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 12:11:30 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11C7721A30
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 09:10:47 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id g17so13713538lfv.4
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 09:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678122576;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9qYKcnlpWdMlBpcagLtIlBclO/koVb4A2hugmwuDjQQ=;
        b=K/ALNyiVmwk2B7FaiVr9+CnGKCB/lcBSgTRyxUeKfghmfQ3LfkadXwYITQfgwcIYec
         yjLbnMfJ3Y5IcIHbvOSl0YxygbcPkImfyfF3A+daz2LzVPW5u/4J5vPm/5tQEFILCaUh
         WIg/nIbiQWKn450exLKg18eyoDQDd+A+VKIimnJd80kN1/NU6uuVcML52mI8fWP08JAw
         xlycx5pHeYzmF5FEiOmVmHyUN40f0U2Dw1GfbIStj1/0Pzf0DsZ0V0osDVJMRw53sgEf
         uafbaitDMcI/Gj7p0Emovr44UvrTN4G03BCks7HKCrIOLCewObrOT6IiwpTYtCTE00XI
         F53Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678122576;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9qYKcnlpWdMlBpcagLtIlBclO/koVb4A2hugmwuDjQQ=;
        b=2JLDYQWKgfxl7tWTfBnhlNq4WTNE6HwiW0dcyrVuvtfEwRzMJwSHu/YsngQVWHh584
         nxoog81GM/v0KPh4Mvld0pwLlsjsLPEyxODixPg3qcpulhqdVmiKqxzYa4AP5Yv7opAa
         LH9DdAKvLO/VGlFc6spD9otyevANRZqTOU7biZ5CkAk/nclrufkr6iNPogTxXbKKSJhd
         DWh0KgXPsFUueq4OcRAY4aVTyy/44Y2mktWteWIqaAf/F2SVMgOtz8g1BNifukjb8aQH
         2qujxshjHCmioN/JKM3J3DfPi0PwJLwammVayNrKlN1WcwE+JBnR0dEArXaHAgnSuyw7
         5xSQ==
X-Gm-Message-State: AO0yUKU2nX9eUi0HFAls+GVdHjQM1PcQ4zl/DX7bIZfYXqKuVtHTJ7lt
        FPrGdgMupvSKcogiYwojDw5pg/gr3EeGY3gbEiw=
X-Google-Smtp-Source: AK7set/Go5uO6Ko/jxC1RRWHo5FHKFy68YfXEpfah8KL+MgdxvhaMrkjjPKYCkUBXnHCDbX3tV62AA==
X-Received: by 2002:ac2:558d:0:b0:4db:3882:8f42 with SMTP id v13-20020ac2558d000000b004db38828f42mr3558231lfg.45.1678122576059;
        Mon, 06 Mar 2023 09:09:36 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id x19-20020a19f613000000b004db1cd5efcesm1692927lfe.241.2023.03.06.09.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 09:09:35 -0800 (PST)
Message-ID: <dfd1d81e-76a0-f8eb-e529-9f8ea1e927b6@linaro.org>
Date:   Mon, 6 Mar 2023 18:09:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v7 1/6] dt-bindings: ufs: qcom: Add SM6125 compatible
 string
Content-Language: en-US
To:     Lux Aliaga <they@mint.lgbt>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
        gpiccoli@igalia.com
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, martin.botka@somainline.org,
        marijn.suijten@somainline.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230306165246.14782-1-they@mint.lgbt>
 <20230306165246.14782-2-they@mint.lgbt>
 <4670ddae-6b01-1e5c-b0ed-1f2f498a4f66@mint.lgbt>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <4670ddae-6b01-1e5c-b0ed-1f2f498a4f66@mint.lgbt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6.03.2023 18:01, Lux Aliaga wrote:
> 
> On 06/03/2023 13:52, Lux Aliaga wrote:
>> Document the compatible for UFS found on the SM6125.
>>
>> Signed-off-by: Lux Aliaga <they@mint.lgbt>
>> Reviewed-by: Martin Botka <martin.botka@somainline.org>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
>> index b517d76215e3..42422f3471b3 100644
>> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
>> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
>> @@ -29,6 +29,7 @@ properties:
>>             - qcom,sc8280xp-ufshc
>>             - qcom,sdm845-ufshc
>>             - qcom,sm6115-ufshc
>> +          - qcom,sm6125-ufshc
>>             - qcom,sm6350-ufshc
>>             - qcom,sm8150-ufshc
>>             - qcom,sm8250-ufshc
>> @@ -185,6 +186,7 @@ allOf:
>>             contains:
>>               enum:
>>                 - qcom,sm6115-ufshc
>> +              - qcom,sm6125-ufshc
>>       then:
>>         properties:
>>           clocks:
> I have to apologize. I worked on a changelog for this patchset but I skipped the subject header, therefore it didn't send, and as I realized this I interrupted the process, leaving the patchset incomplete. I'll retry sending it, this time correctly.
Happens, next time resend it with a RESEND prefix, e.g. [RESEND PATCH 1/2]

Konrad
> 
