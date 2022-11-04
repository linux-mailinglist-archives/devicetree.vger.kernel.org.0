Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12F4B6199FD
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 15:32:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231849AbiKDOcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 10:32:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231958AbiKDOby (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 10:31:54 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA2032F66F
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 07:29:51 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id s20so3141060qkg.5
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 07:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NfZmJx98fgEtT5jJakgxQDjlnqgEjLVEWONfweEBz30=;
        b=NFxrXSCzhJ1bn8LdvHblJGq120v4OeOZ8NubunWOo2DVJ/NohcZKdB/G6YHUkHeJ2y
         KGZjYEWLyYOuuw41bVfc+yjWbqOExXETylyFAUGiFRwE5AdcBKyHsNilp4nhMkclzF+e
         RPncx7za7ukMwOK/DkNlEBludI+8u6YCLPLee42LIe8APZkg6u8prwLkoGCfrexYl5yo
         y0VQmFXuqrBQz1c/OP/EosR/btkZP8IWV65/dLaj38WxdptDrwrI90UtSEdLypxbC2TU
         RxYswWtqTLsFnySo5WXGwCcPgvG8+61KWVVRPoLpup2eCMtTKKqwVXTgNDFKyUOtqJVP
         XARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NfZmJx98fgEtT5jJakgxQDjlnqgEjLVEWONfweEBz30=;
        b=cLdavEDkXGVhKfGuQPhbRIbPKuq/cdZqOtKNc90teDa8cOHuy//I/Qgjy/uAYEPihX
         kPUu3Oi5h4ih8gZKzAMMA4feeQ7xhxjvBA9rRLhXjjeDI6+oFabfpqcIFnHf6NhaSTsJ
         YjG9xkCkMlk99/9l8EULMfcpLBNmneSr+nC5/SEdeF9gWfNr0qliNkdlaoYuJpYAm8aV
         iMLcMYVVfepXxMG3YCod/4Z2MlWKHvhPXEFh86f2VMtPJ5eopuvjuhwLdmaTrXUTJ88J
         MSDCX006ifB9VaxEiRq3dUasCNqqA+BSOGo3HtdE6LMMtF9YgeaQHJnB4m+98A4MuM1v
         awdw==
X-Gm-Message-State: ACrzQf3jVy6Ohs7vc2gDBzqx+33pAv0pdmA2YxZFWeA9ISpBprVnEmGq
        rgb5Ls1stIfBUYHVUGv01LfPHA==
X-Google-Smtp-Source: AMsMyM7ffiyngRA2mdESJUUscG5tatn2RZm1tojo3jwlLC7WhYRDj7pgDgIfNbm8TVDiKJoX+Cz2Ew==
X-Received: by 2002:a05:620a:10b7:b0:6fa:398c:4218 with SMTP id h23-20020a05620a10b700b006fa398c4218mr17837814qkk.647.1667572190997;
        Fri, 04 Nov 2022 07:29:50 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id i6-20020a05620a248600b006a6ebde4799sm3007988qkn.90.2022.11.04.07.29.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 07:29:50 -0700 (PDT)
Message-ID: <50306718-fd3d-ae84-ffe8-d25daa64d956@linaro.org>
Date:   Fri, 4 Nov 2022 10:29:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/2] soc: qcom: Add Qualcomm Ramp Controller driver
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, agross@kernel.org
Cc:     andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, marijn.suijten@somainline.org,
        kernel@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
References: <20221104133506.131316-1-angelogioacchino.delregno@collabora.com>
 <20221104133506.131316-3-angelogioacchino.delregno@collabora.com>
 <cf1a15c5-a16b-2d23-8f6c-b3892c141c34@linaro.org>
 <3af810a7-0490-da36-f263-e74cd3553c84@collabora.com>
 <18f5bcaa-2a41-b2b0-44a2-273728c52cfb@linaro.org>
 <5f3783a1-5e70-394d-1218-5969fb08c9c8@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5f3783a1-5e70-394d-1218-5969fb08c9c8@collabora.com>
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

On 04/11/2022 10:24, AngeloGioacchino Del Regno wrote:
> Il 04/11/22 15:22, Krzysztof Kozlowski ha scritto:
>> On 04/11/2022 10:18, AngeloGioacchino Del Regno wrote:
>>> Il 04/11/22 15:04, Krzysztof Kozlowski ha scritto:
>>>> On 04/11/2022 09:35, AngeloGioacchino Del Regno wrote:
>>>>> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
>>>>>
>>>>> The Ramp Controller is used to program the sequence ID for pulse
>>>>> swallowing, enable sequence and linking sequence IDs for the CPU
>>>>> cores on some Qualcomm SoCs.
>>>>>
>>>>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
>>>>> ---
>>>>>    drivers/soc/qcom/Kconfig           |   9 +
>>>>>    drivers/soc/qcom/Makefile          |   1 +
>>>>>    drivers/soc/qcom/ramp_controller.c | 330 +++++++++++++++++++++++++++++
>>>>>    3 files changed, 340 insertions(+)
>>>>>    create mode 100644 drivers/soc/qcom/ramp_controller.c
>>>>>
>>>>> diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
>>>>> index 024e420f1bb7..1e681f98bad4 100644
>>>>> --- a/drivers/soc/qcom/Kconfig
>>>>> +++ b/drivers/soc/qcom/Kconfig
>>>>> @@ -95,6 +95,15 @@ config QCOM_QMI_HELPERS
>>>>>    	tristate
>>>>>    	depends on NET
>>>>>    
>>>>> +config QCOM_RAMP_CTRL
>>>>> +	tristate "Qualcomm Ramp Controller driver"
>>>>> +	depends on ARCH_QCOM
>>>>
>>>> I propose:
>>>> depends on ARCH_QCOM && ARM || COMPILE_TEST
>>>>
>>>> I don't think it is used on ARM64 SoCs, so let's make life of distros
>>>> easier.
>>>
>>> Forgot to reply to this one: MSM8956 and MSM8976 are ARM64 SoCs :-)
>>
>> Yeah, indeed, I meant the other way around, so && ARM&64 :)
>>
> 
> I went too fast and sent out a v2 with ARCH_QCOM || COMPILE_TEST....
> ....should I go for a v3?

Wait a bit to collect feedback and then go with v3.


Best regards,
Krzysztof

