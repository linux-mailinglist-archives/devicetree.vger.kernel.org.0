Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A3246BAD50
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 11:15:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231977AbjCOKPa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 06:15:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230454AbjCOKP2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 06:15:28 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 693B81B1
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 03:14:47 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bi9so1432342lfb.12
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 03:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678875285;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4pqE2nZVb7joWW7xQ6AJ/dhP/I2wskD+JHhluhz7tIg=;
        b=gYUMEpZxO3Em/uJRgTdi8pwS6Ff3qh3X0iS76GwyKzgpwXe+ug4TwHa7aH9Zrajjl2
         57zvXVM27HfpdzaA8LrSRJCYWp+rdGFPQ/USB3VrK6DFXSxxuS+bhSfR9M5mlBYKIJIT
         pNxlND1I7JQBq0Ux7kNqrJU3RCZJxnZ9TelCVT3V/uPnwdOQmZHRdwtntVUimFy52ukn
         nr/4GHmjmIiIN4cPdL903/jIdVCsLc8j3noRMo1/d4E4ewrorjhBemlp2sNswsuI6Y9Y
         kekpwEmiJ7p/Dki5K+mq35pv6cRopwcXtQlz6Ea0+n29hEnCOww2hVTSt/BAKecoqwuE
         fjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678875285;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4pqE2nZVb7joWW7xQ6AJ/dhP/I2wskD+JHhluhz7tIg=;
        b=rdF/RfJqJwClxdWRqR30JpSHYEsSYw45ckqQXyGhMNsPAAxdZhXItjjOmGfxBfyxZQ
         kR2Fdm36z20ICa5BYRSD6ZAN0XY02bV2u5fzcP3x9K4BPteJwTfcpG4omqbW9241Rv06
         wRxHVKQ5qmEMOSZJ76aZ3JfuIudqECgIFa5lCpDoVhJ7IuVcSQkDU83NBNDB2oxU6ibt
         G9/9opffNKaU/ODMMqIYXnr4UJMfr2gl/TttfgR1v/NgjPJr1QwkjQ4lbBeIm+I0v6KG
         i9EWLlhzQnYtlbK7FmGx6xbzhS0S4JsxoUkDTSAQ6Zqt+sX0DZRC/SSYpxvQjw+4XsTb
         IfZA==
X-Gm-Message-State: AO0yUKU3Vm4Ap/bJBrevZhRKboI750cVMSEgPLC11X9ZFwJgpSw1yP9g
        8WyWyecR87+fJ0DgZKfrmdCkSQ==
X-Google-Smtp-Source: AK7set9aaiVUihpglYn6rLHeR+AfaUkcEQqZ6OgikKdtQJQx8IgB1PN2qi6MgeAVCfc2PbroTMvIXg==
X-Received: by 2002:a19:f615:0:b0:4d5:d0f9:e57 with SMTP id x21-20020a19f615000000b004d5d0f90e57mr1577127lfe.21.1678875285071;
        Wed, 15 Mar 2023 03:14:45 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id f21-20020ac251b5000000b004cb24a027d2sm767529lfk.48.2023.03.15.03.14.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 03:14:44 -0700 (PDT)
Message-ID: <0c5a265f-5394-7088-dd57-c754c68a8554@linaro.org>
Date:   Wed, 15 Mar 2023 11:14:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] soc: qcom: socinfo: Add IDs for QCM2290/QRB2210
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230314-topic-scuba_socinfo-v1-0-acd7a7ab9d46@linaro.org>
 <20230314-topic-scuba_socinfo-v1-2-acd7a7ab9d46@linaro.org>
 <4bbc4411-033c-80ab-39b5-b3059ab77ec6@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <4bbc4411-033c-80ab-39b5-b3059ab77ec6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15.03.2023 07:43, Krzysztof Kozlowski wrote:
> On 14/03/2023 22:41, Konrad Dybcio wrote:
>> Add the missing IDs for scuba and its QRB variant.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  drivers/soc/qcom/socinfo.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
>> index e9012ca1a87b..dfc0fc3e90ca 100644
>> --- a/drivers/soc/qcom/socinfo.c
>> +++ b/drivers/soc/qcom/socinfo.c
>> @@ -424,11 +424,13 @@ static const struct soc_id soc_id[] = {
>>  	{ qcom_board_id(SC7180) },
>>  	{ qcom_board_id(SM6350) },
>>  	{ qcom_board_id(QCM2150) },
>> +	{ qcom_board_id(QCM2290) },
>>  	{ qcom_board_id(SDA429W) },
>>  	{ qcom_board_id(SM8350) },
>>  	{ qcom_board_id(SM6115) },
>>  	{ qcom_board_id(SC8280XP) },
>>  	{ qcom_board_id(IPQ6005) },
>> +	{ qcom_board_id(QRB2210) },
> 
> These should have the same order as defines, so something is here incorrect.
Right, I didn't give it much thought and just added them alphabetically-ish.
I'll fix it right away!

Konrad
> 
> Best regards,
> Krzysztof
> 
