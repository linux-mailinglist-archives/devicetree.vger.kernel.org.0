Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CCB4682CCF
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 13:44:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231903AbjAaMoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 07:44:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbjAaMoQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 07:44:16 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C685CC11
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 04:44:15 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id ud5so41244761ejc.4
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 04:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=30MHRWOcfk+QXMkU7EZnWxWn0G+SWGjxl1EDedbA+vw=;
        b=p2ewT4g1NruqUGLeeoncPhBcokLYs0D8ktuajquLVEwJsgcwjczgStOsbzUMPJmlRk
         4kWfVZRFVPyKgaCBR3CihzfTUuDMCHcz5Mh2t5v9WWq1PCoiWmCtPzQFV0z5pTG0ACDn
         czz+518AqQqixcyMvfq+i8d61Gu5DiRGz2+yMqWwd286c7Z6fEtl8HQSP1AVbGRRh8ZJ
         XcBLqPYL6dizpPGslsDUJpStYj3NwyoWQbxp6ttAi03E0LSOX9/mJRD2n5EA4QwZ2KyV
         btcP4zgy7mjcb/5Kvep6xzRPt7+kjyckcE13Os6/4WkcxRxFg0yDvgBmfUgSj2R/m5Aj
         uDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=30MHRWOcfk+QXMkU7EZnWxWn0G+SWGjxl1EDedbA+vw=;
        b=xupO49q5fLnO/O0a+6Iig41Et0k7rL7cnSrpjychh7j4IneVcmt7H1Op3WXB1P8nMe
         OkARCS1Rk2rHtCQDSRAWdVIq+9vMpDNTUbe/UZN+NQSq0yv5VomdfshtOW+iaIZp3Agl
         C9jc2FCxXK5Zldt3BFI1CzVlNedPrFcBQGZcbCaEig5eqsRD+l6yejkqv/L3jbawTlhG
         cuvmuRtyNpTa2dLSfmTOwGPsh2n9HTawVJKCT9eco7mmRRtWBNZfd7PdMdNR3Vz5OyJk
         3FLhbiYn9Td04ogFviEv+TE8hDxPmzWV7IClel+dePcupJGPRXiGnYJ5l7bgKNZKltnn
         Dnlw==
X-Gm-Message-State: AFqh2koRCpK7x45SwsAbkC0gFWIzpRTrgj5dgATva2WEieTpTEjspTpd
        gXkM7b9lTE9QPhP8dQvZqcPlQw==
X-Google-Smtp-Source: AMrXdXvGlA5r1+MgJ9eLufvRh+kKoxrbCZt+PN1tjfqNBCOQRKk6nZWrdH9ckHIBe04mzKj10FRJ3g==
X-Received: by 2002:a17:907:6f18:b0:7c1:98d:a8a3 with SMTP id sy24-20020a1709076f1800b007c1098da8a3mr56478174ejc.7.1675169053957;
        Tue, 31 Jan 2023 04:44:13 -0800 (PST)
Received: from [192.168.1.101] (abyl20.neoplus.adsl.tpnet.pl. [83.9.31.20])
        by smtp.gmail.com with ESMTPSA id t4-20020a17090605c400b0084d242d07ffsm8367420ejt.8.2023.01.31.04.44.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 04:44:13 -0800 (PST)
Message-ID: <de6e69d6-18cd-2732-9a18-f4dfd29be6dd@linaro.org>
Date:   Tue, 31 Jan 2023 13:44:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 6/6] regulator: qcom_smd: Add support to define the bootup
 voltage
Content-Language: en-US
To:     Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_poovendh@quicinc.com, quic_ipkumar@quicinc.com
References: <20230113150310.29709-1-quic_devipriy@quicinc.com>
 <20230113150310.29709-7-quic_devipriy@quicinc.com>
 <77d84408-166e-8a02-227a-67654a4d31f2@linaro.org>
 <df6c1cd6-ea70-e65c-b4e8-3da80697242f@quicinc.com>
 <cc037133-7c45-325f-4a1d-9855d033ae5c@linaro.org>
 <6bb22160-5966-43d3-ffba-489b77b3a095@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <6bb22160-5966-43d3-ffba-489b77b3a095@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31.01.2023 10:28, Devi Priya wrote:
> 
> 
> On 1/27/2023 9:40 PM, Konrad Dybcio wrote:
>>
>>
>> On 27.01.2023 17:07, Devi Priya wrote:
>>>
>>>
>>> On 1/13/2023 9:07 PM, Konrad Dybcio wrote:
>>>>
>>>>
>>>> On 13.01.2023 16:03, devi priya wrote:
>>>>> Kernel does not know the initial voltage set by the bootloaders.
>>>>> During regulator registration, the voltage variable is just declared
>>>>> and it is zero. Based on that, the regulator framework considers current
>>>>> the voltage as zero and tries to bring up each regulator to minimum
>>>>> the supported voltage.
>>>>>
>>>>> This introduces a dip in the voltage during kernel boot and gets
>>>>> stabilized once the voltage scaling comes into picture.
>>>>>
>>>>> To avoid the voltage dip, adding support to define the
>>>>> bootup voltage set by the boodloaders and based on it, regulator
>>>>> framework understands that proper voltage is already set
>>>>>
>>>>> Co-developed-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>>>>> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>>>>> Signed-off-by: devi priya <quic_devipriy@quicinc.com>
>>>>> ---
>>>> Or maybe hook it up to the spmi_regulator_common_get_voltage()
>>>> from the SPMI regulator driver and read the real voltage instead
>>>> of relying on hardcoded values thay may differ between boards?
>>>>
>>>> Konrad
>>> In IPQ9574, SPMI regulator is not used. We are using RPM-Glink communication and the regulators are controlled by RPM.
>>> In this case, we don't have an option to readback the bootup voltage and so, we have hardcoded the values
>> Unless something changed, RPM regulator framework is simply a
>> fancy front-end for communicating with the PMIC over SPMI, AFAIK..
>>
>> Konrad
> Currently in our driver, the voltage write request will be sent to RPM via GLINK which then writes it to the PMIC over I2C using the below APIs
> qcom_rpm_smd_write -> rpmsg_send
> In IPQ9574, we do not have SPMI support or the support to readback voltage.
Okay, I didn't quite catch that there's *only* an i2c PMIC on this
platform.. Looking at the MP5496 datasheet though, reading back
the voltage should be possible via simply reading the fields that
are used to set it.

Konrad
> 
>>>
>>>>>    drivers/regulator/qcom_smd-regulator.c | 6 +++++-
>>>>>    1 file changed, 5 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/regulator/qcom_smd-regulator.c b/drivers/regulator/qcom_smd-regulator.c
>>>>> index 1eb17d378897..49a36b07397c 100644
>>>>> --- a/drivers/regulator/qcom_smd-regulator.c
>>>>> +++ b/drivers/regulator/qcom_smd-regulator.c
>>>>> @@ -800,6 +800,7 @@ struct rpm_regulator_data {
>>>>>        u32 id;
>>>>>        const struct regulator_desc *desc;
>>>>>        const char *supply;
>>>>> +    int boot_uV; /* To store the bootup voltage set by bootloaders */
>>>>>    };
>>>>>      static const struct rpm_regulator_data rpm_mp5496_regulators[] = {
>>>>> @@ -809,7 +810,7 @@ static const struct rpm_regulator_data rpm_mp5496_regulators[] = {
>>>>>    };
>>>>>      static const struct rpm_regulator_data rpm_ipq9574_mp5496_regulators[] = {
>>>>> -    { "s1", QCOM_SMD_RPM_SMPA, 1, &ipq9574_mp5496_smpa1, "s1" },
>>>>> +    { "s1", QCOM_SMD_RPM_SMPA, 1, &ipq9574_mp5496_smpa1, "s1", 875000 },
>>>>>        {}
>>>>>    };
>>>>>    @@ -1394,6 +1395,9 @@ static int rpm_regulator_init_vreg(struct qcom_rpm_reg *vreg, struct device *dev
>>>>>        vreg->type    = rpm_data->type;
>>>>>        vreg->id    = rpm_data->id;
>>>>>    +    if (rpm_data->boot_uV)
>>>>> +        vreg->uV = rpm_data->boot_uV;
>>>>> +
>>>>>        memcpy(&vreg->desc, rpm_data->desc, sizeof(vreg->desc));
>>>>>        vreg->desc.name = rpm_data->name;
>>>>>        vreg->desc.supply_name = rpm_data->supply;
>>> Best Regards,
>>> Devi Priya
> Best Regards,
> Devi Priya
