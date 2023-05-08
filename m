Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBA4D6FA836
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 12:38:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234891AbjEHKiv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 06:38:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234837AbjEHKi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 06:38:27 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2378024A97
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 03:38:25 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4eff50911bfso4775052e87.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 03:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683542303; x=1686134303;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n6Di2NhvzypyyP20lkgTPAmlamzVMEgkZeHjb+rIQYA=;
        b=eoKV5ogG6efWCdptVtUHgwBkDBoKeOqX4lXfvBEMjqn6Yq0vfm1Wo0qHD1am/U6FFs
         94lfIkBbl1yYQN0i8tKBDVJVs/hDjBmqtGGef96dnisCMVuuL8PoAt4jQSdoPW4QjYE5
         +tIDLTl8y4v6kpIJVZ9iWAE+sQj1BBf195wkQGyDobooN0jRVLW3HTHXOnKi4Po4DYht
         3S/wjAsJtmMaB1EnPweCSfCOlc7rL5puFtnSvNoGiMUBQeTsBlukc0BTnRhzc8ByUA4M
         J3vKx8X63nPjxzPc44mW1kPlk9fpbx81r/oiX0lnUlYyxSpwQXgxun2Czv04XOmRTPxe
         7njg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683542303; x=1686134303;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n6Di2NhvzypyyP20lkgTPAmlamzVMEgkZeHjb+rIQYA=;
        b=buoNNnXfLIsVqJkr02oyY5StX87773pdzNhCdNBqjv5ARTwsjiveMolOUSuiINspd5
         VF/WYBmp7RqGk3uFI9ya9ckDvbv+IfvxHVLdS+jQIJlGxYRdhVlxaU0FcFPnLY7p5rlp
         h1H4qWGEeFCF21h/18nAl5Je1LG8e+SzjUvgS0/pzTMgLuU2Tbig5F8ccHO1Qby1aogD
         Q4EjaoTvlpIWk0pU/uXSdXOQxvEeAOqMPXEkkMGGDYEu3fwAS0DiaXRVB/GsG7TXL3JI
         5imGoJMPjMeWOg2vwiQrfQ5z1/d52wJdmGNnxL4S9ae6T9ij4Dpw9feByCVCJHOSbn3S
         ZCzw==
X-Gm-Message-State: AC+VfDwuO9vUQS2tJz7Jb2LUvrA1wnWt1XtrilovZOGJCbmnvdQrenjf
        75S7PJplHWtSH5vGyTq6gTlI0g==
X-Google-Smtp-Source: ACHHUZ6ZXV887SREsnTp6T2NVjHCQ+2DiG2gk05itYDz6BB7cOwjs3VrBcLFZtH+vt94Iqwg/u5JgQ==
X-Received: by 2002:ac2:42c5:0:b0:4dc:84dd:eb91 with SMTP id n5-20020ac242c5000000b004dc84ddeb91mr2601767lfl.22.1683542303395;
        Mon, 08 May 2023 03:38:23 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id t14-20020ac243ae000000b004f2529c71c1sm99937lfl.260.2023.05.08.03.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 03:38:23 -0700 (PDT)
Message-ID: <11863653-84aa-8edf-676f-e55174fb4539@linaro.org>
Date:   Mon, 8 May 2023 12:38:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 3/4] ARM: dts: qcom: apq8074-dragonboard: enable adsp and
 MSS
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230507190735.2333145-1-dmitry.baryshkov@linaro.org>
 <20230507190735.2333145-4-dmitry.baryshkov@linaro.org>
 <a86cfa8b-c205-6887-a64e-d51241b74b15@linaro.org>
 <ca274ec9-81bf-c426-6ad6-93eb34b52b05@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ca274ec9-81bf-c426-6ad6-93eb34b52b05@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.05.2023 12:33, Dmitry Baryshkov wrote:
> On 08/05/2023 11:33, Konrad Dybcio wrote:
>>
>>
>> On 7.05.2023 21:07, Dmitry Baryshkov wrote:
>>> Enable ADSP and Modem DSPs on APQ8074 dragonboard. The MSS region
>>> differs from the one defined in the msm8974, so it overriden locally.
>>>
>>> The modem is specified use mba.mbn instead of mbn.b00 (for the sake of
>>> similarity with other platforms). This requires a patch for remoteproc
>>> to be applied [1].
>>>
>>> [1] https://lore.kernel.org/all/20230507172041.2320279-1-dmitry.baryshkov@linaro.org/
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>   .../arm/boot/dts/qcom-apq8074-dragonboard.dts | 28 +++++++++++++++++++
>>>   1 file changed, 28 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
>>> index 6b047c679370..c893afc00eb4 100644
>>> --- a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
>>> +++ b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
>>> @@ -4,6 +4,8 @@
>>>   #include "qcom-pm8841.dtsi"
>>>   #include "qcom-pm8941.dtsi"
>>>   +/delete-node/ &mpss_region;
>>> +
>>>   / {
>>>       model = "Qualcomm APQ8074 Dragonboard";
>>>       compatible = "qcom,apq8074-dragonboard", "qcom,apq8074";
>>> @@ -17,6 +19,13 @@ aliases {
>>>       chosen {
>>>           stdout-path = "serial0:115200n8";
>>>       };
>>> +
>>> +    reserved-memory {
>>> +        mpss_region: mpss@ac00000 {
>>> +            reg = <0x0ac00000 0x2500000>;
>>> +            no-map;
>>> +        };
>>> +    };
>>>   };
>>>     &blsp1_uart2 {
>>> @@ -39,6 +48,25 @@ eeprom: eeprom@52 {
>>>       };
>>>   };
>>>   +&remoteproc_adsp {
>>> +    cx-supply = <&pm8841_s2>;
>>> +
>>> +    firmware-name = "qcom/apq8074/adsp.mbn";
>>> +
>>> +    status = "okay";
>>> +};
>>> +
>>> +&remoteproc_mss {
>>> +    cx-supply = <&pm8841_s2>;
>>> +    mss-supply = <&pm8841_s3>;
>>> +    mx-supply = <&pm8841_s1>;
>>> +    pll-supply = <&pm8941_l12>;
>> High time to move this to rpmpd!
>> I won't object to adding this though, as it obviously works
>> and is already used on other boards..
> 
> I think the problem is that they are not level-voted on this platform, so they are regulators, not PDs.
They're corner-voted.

Konrad
> 
>>
>>> +
>>> +    firmware-name = "qcom/apq8074/mba.mbn", "qcom/apq8074/modem.mbn";
>> Could you please keep it one entry per line?
> 
> Sure.
> 
>>
>> Otherwise,
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>
>> Konrad
>>> +
>>> +    status = "okay";
>>> +};
>>> +
>>>   &rpm_requests {
>>>       regulators-0 {
>>>           compatible = "qcom,rpm-pm8841-regulators";
> 
