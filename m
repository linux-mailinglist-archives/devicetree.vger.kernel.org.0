Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 928B364B592
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:02:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234673AbiLMNCP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:02:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234568AbiLMNCO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:02:14 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7B4DE0F9
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:02:13 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id p8so4736964lfu.11
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yJFdztr0qedU/6yc4umoLlymnyA12ouaQhrBPqCHMjk=;
        b=v3fQlf2kgSS+AJzKkGbQbQVxCdOzB79tHBy13LmzAC6tYjbvJD2/3NLM3k3N7C1s1C
         fbi8XkxaQfqTRPtEEAWsCNSkbLZT0Lr16P/d85zsDuUCOfJo8NWwY2Sogcds8MRuDAVW
         ikR8fOeVjci1sJjgcql5bKdLLhRUl2NRUmCYDkdjqWimEH2I7MVLAwHV9yHC6YaIid6T
         lEA3KVr9Z8TL6FK2o0Qv+FpL+I1zqlcVC2VqdC6fRV6+K4eBfWCnij2ecsMIW+4o8jwH
         S8Z7PVUeKsSMsSAsFM0FAgDdBajAbRjANH4oNaaf6uC0uiHpQxnWF7I2dEFPR3yLwa41
         Pssw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yJFdztr0qedU/6yc4umoLlymnyA12ouaQhrBPqCHMjk=;
        b=mMxxakrvSWqTmacoDoPXPLPKQiCku5E3TfYiYzuwfM5DuREirSNijS9SYqHLi3W5Vs
         4j2nF9q5o+VdEMzWkWfEPfQPRwgu/pFB9+IO9kPGTXeWN1hkogkBnWYmiaLbVmlIk4I4
         h4FphfduiwcqH1/mXvk/g1pd+USIIphcZ/ibugogAFxK5TGOfuVYrTZNjbX4L8Q0DR9Y
         ABNQ7xnyVA+LIrb9TiIldI4eYCLM0Qg3qxDPP/Q7E250p6I0T0SAgj2KZ8CivxkD5M7y
         rGtjskm3CGbu5JIa4mRjZmMFFfd2UCRBc/nFjzyELL2FNkeqbbalQTClfr5ksQ3RKeOa
         PCzw==
X-Gm-Message-State: ANoB5pmvezyR4fTE9oYuC+8VkKaAAJypY8QaNufWXHjRHl6ocxPY3xx7
        ypbtANYRN+C7aMJgWOcFglgx1w==
X-Google-Smtp-Source: AA0mqf6NbjEsBWAPSxu32rWUqrPPN0YATuL85yOo7kXNM8FUMipRROZsB4b08JOvaexQsUYWdpUQSQ==
X-Received: by 2002:a05:6512:b8c:b0:4b5:7d49:4a05 with SMTP id b12-20020a0565120b8c00b004b57d494a05mr7830468lfv.0.1670936532229;
        Tue, 13 Dec 2022 05:02:12 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y12-20020a19914c000000b004b55a1c4649sm363680lfj.38.2022.12.13.05.02.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 05:02:11 -0800 (PST)
Message-ID: <77c29d8c-34b3-f508-26bf-22520ccc1f2a@linaro.org>
Date:   Tue, 13 Dec 2022 14:02:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sc8280xp: add missing spi nodes
Content-Language: en-US
To:     Brian Masney <bmasney@redhat.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Mark Brown <broonie@kernel.org>
Cc:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ahalaney@redhat.com, echanude@redhat.com,
        linux-spi@vger.kernel.org,
        Javier Martinez Canillas <fmartine@redhat.com>
References: <20221212182314.1902632-1-bmasney@redhat.com>
 <20221212182314.1902632-5-bmasney@redhat.com>
 <c1c7b1eb-08e7-2ba5-d89a-e0be8f76fd69@quicinc.com> <Y5hvlX35nr8xQKEd@x1>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y5hvlX35nr8xQKEd@x1>
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

On 13/12/2022 13:27, Brian Masney wrote:
> + Mark Brown and linux-spi list
> 
> On Tue, Dec 13, 2022 at 12:46:18PM +0530, Shazad Hussain wrote:
>> On 12/12/2022 11:53 PM, Brian Masney wrote:
>>> Add the missing nodes for the spi buses that's present on this SoC.
>>>
>>> This work was derived from various patches that Qualcomm delivered
>>> to Red Hat in a downstream kernel.
>>>
>>> Signed-off-by: Brian Masney <bmasney@redhat.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 384 +++++++++++++++++++++++++
>>>   1 file changed, 384 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> index 392a1509f0be..b50db09feae2 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> @@ -829,6 +829,22 @@ qup2_i2c16: i2c@880000 {
>>>   				status = "disabled";
>>>   			};
>>> +			qup2_spi16: spi@880000 {
>>> +				compatible = "qcom,geni-spi";
>>> +				reg = <0 0x00880000 0 0x4000>;
>>> +				clocks = <&gcc GCC_QUPV3_WRAP2_S0_CLK>;
>>> +				clock-names = "se";
>>> +				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
>>> +				#address-cells = <1>;
>>> +				#size-cells = <0>;
>>> +				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
>>> +				                <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_2 0>,
>>> +				                <&aggre1_noc MASTER_QUP_2 0 &mc_virt SLAVE_EBI1 0>;
>>> +				interconnect-names = "qup-core", "qup-config", "qup-memory";
>>> +				spi-max-frequency = <50000000>;
>>
>> This is device property not host and same applicable for all below spi
>> nodes.
>> Also FYI let's enable below SPI for Qdrive usecases once spidev compatible
>> name is confirmed.
>> SE9  0x00A84000
>> SE22 0x00898000
> 
> I talked to Javier Martinez Canillas yesterday about the spidev driver
> and I think I now have a better understanding of what we need to do.
> Quick background for Mark. For this automotive program, Qualcomm will be
> delivering to Red Hat and our customers parts of the media stack in
> userspace. This will be closed source, proprietary code that parts of it
> will need to interface with SPI.
> 
> We can't add a generic qcom,spidev compatible to the spidev driver since
> this is just a software abstraction. Instead, each type of device will
> need to have it's own compatible that uniquely describes the type of
> device. So you might have a compatible like qcom,spi-video-codec. There
> will need to be a DT binding added that describes the hardware. I suspect
> that a SPI device can simply be added to trivial-devices.yaml. Once the
> DT binding is accepted, the compatible can be added to the spidev.c
> driver. If an in-kernel driver is written in the future, then the 
> compatible can be moved from spidev to the new driver.
> 
> Mark: Is my understanding above correct? If so, will it be a problem to
> get a compatible added to spidev.c if the corresponding userspace code is
> closed source and proprietary?

qcom,spi-video-codec is still not specific enough. You need to describe
real device behind spidev. To be clear - you do not describe userspace,
but the device.

Best regards,
Krzysztof

