Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52D4F62845F
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 16:53:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235591AbiKNPxc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 10:53:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231609AbiKNPxb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 10:53:31 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF4EB2AFD
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 07:53:29 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id j16so19921885lfe.12
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 07:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ql7BbfjZhi9PUKex4VtigUx0q+x0JH+qcMLmXxKcm9A=;
        b=B6RXSrmcloy8u6hww8BgiAqFD6lcgsmVusw5HA8LMyLb3k7XTt65oyuat6B3WJSLjE
         0WAopbgePqczDLA2XSyO2OMPuyq+m9jZTtNAcKmMPm97TjdNVuSthc7DD2cBqm0DUPH+
         49s3nTx2N9CuB2eapMLAD2qmaA8ESM6ZJHk8bGUMKEB4RzlZqA4+qFxsUyaWKrCbvuyN
         TmkJdndOYYEFqjhZLpf1B2aZwHWHQp3UMwVoakPWAZAkUcDCVAOYxf1bGf1majwRo08+
         WzZuHoZI3+jSSKbWzVALSzlhj1jo2MbvtkqlKKRNEDHyYFkDowiUSs4W6kdAZoPwhfm0
         tNhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ql7BbfjZhi9PUKex4VtigUx0q+x0JH+qcMLmXxKcm9A=;
        b=3xwTOW0Tj0YqPont9QReyR4eAqEU+1IVP6WbCgZAKDfBqbiRIHUnldthJ5+R6i9Wvn
         RY8av5DoHwnUoQLSlaZujjIrqlq21LLng4ksP3G+KxZwOioktSBAEe6aAJFQiyHV0PAF
         QFcOl7iNXm41mBDEWd+Z8wys18dzF7/id6U5z6y/3MVObdWjuf3PD+lHATFT/Bwbg2TC
         MNmS9wpYCmQ29Jn0+gbNI1qLchBJe4U8a4xo7Nf9eYc0XTOCQBc9kVyUlhyzMksMAoit
         2Wkf1Z+nQ9AMNNCIzHWcqteRIKMHP2WAhlL4wOpaYBpQfiVYCUKRLLOwMGeoq4Ss3EGz
         nHaQ==
X-Gm-Message-State: ANoB5pmztui5esCopOfKeL9DpgwLb06hGXR64EtwbRKb0ck1o6LBNOcz
        1kWTqAi34UsGa9hW9+lRw68vGA==
X-Google-Smtp-Source: AA0mqf4LOVfsXdJpid8qCBFEZKOX1+gwsm7JoP/gdBWrJumjJEp6xqZ9ZpFEUBbr2IbTJX74ohz6Qg==
X-Received: by 2002:a05:6512:3e14:b0:4aa:7eed:f70c with SMTP id i20-20020a0565123e1400b004aa7eedf70cmr4871674lfv.630.1668441207703;
        Mon, 14 Nov 2022 07:53:27 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 2-20020a2e1542000000b0026c3ecf9a39sm2072160ljv.38.2022.11.14.07.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 07:53:27 -0800 (PST)
Message-ID: <6df463da-1065-025f-b104-dea5c0bd0dcd@linaro.org>
Date:   Mon, 14 Nov 2022 16:53:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 2/2] drivers: arm-smmu-impl: Add QDU1000 and QRU1000
 iommu implementation
Content-Language: en-US
To:     Will Deacon <will@kernel.org>
Cc:     Melody Olvera <quic_molvera@quicinc.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robin Murphy <robin.murphy@arm.com>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221026190534.4004945-1-quic_molvera@quicinc.com>
 <20221026190534.4004945-3-quic_molvera@quicinc.com>
 <0ae09be0-cb1b-dc27-943b-db64ca97b8c7@linaro.org>
 <20221114144220.GA31043@willie-the-truck>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221114144220.GA31043@willie-the-truck>
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

On 14/11/2022 15:42, Will Deacon wrote:
> On Mon, Nov 14, 2022 at 03:28:15PM +0100, Krzysztof Kozlowski wrote:
>> On 26/10/2022 21:05, Melody Olvera wrote:
>>> Add compatible for Qualcomm QDU1000 and QRU1000 SoCs to add iommu
>>> support for them.
>>>
>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>> ---
>>>  drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
>>> index b2708de25ea3..0580a381a04b 100644
>>> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
>>> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
>>> @@ -426,6 +426,7 @@ static struct arm_smmu_device *qcom_smmu_create(struct arm_smmu_device *smmu,
>>>  static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
>>>  	{ .compatible = "qcom,msm8998-smmu-v2" },
>>>  	{ .compatible = "qcom,qcm2290-smmu-500" },
>>> +	{ .compatible = "qcom,qdu1000-smmu-500" },
>>
>> The patch was applied but it contradicts work here:
>> https://lore.kernel.org/all/20221102184420.534094-12-dmitry.baryshkov@linaro.org/
>> which explicitly asks not to add such compatibles...
> 
> Sure, but we've been adding new compatibles for years so I don't mind
> picking up the last few now before we stop accepting new ones.
> 
> I already asked Dmitry to respin his series as there are some open comments
> from others anyway.

OK. This also solves my other comment for other patch.

Best regards,
Krzysztof

