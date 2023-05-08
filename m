Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45B296FA846
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 12:39:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234683AbjEHKjF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 06:39:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234874AbjEHKiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 06:38:55 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DE0129454
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 03:38:52 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2ac80da3443so49597951fa.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 03:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683542330; x=1686134330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ioq2SHcYvzdWJgMENWPLRbhibNiRpiB3AcW6l1wBqmo=;
        b=pPwt2Urq9QTN/xOxlOHg28lV78TNcLYFXCnGQ2ofYbevhZWyzB4u+8K20Tqb2OkdYA
         3wYrpHTS4dEv3cbSA5EFfNt0tpll3f2nrWSaeqmJaT2EvzCmsU2JK3D3Bwl2WUFNU7MV
         RjaiPY6hivn2CcXD3gHGE+zU/ZFRtM/8PcTjHBne6CmJLkdXUwd4ISnCQ2cPla80U7zG
         IJa7XxwwS9bJw8itdMyweLo9q/t8Dvz6JmGaObGVfeY1Vclm4E2byq8A7CdIilMYgZ9d
         vw4JyGUk8wzXgR00R2es8i5elY8xbkcMcJOdeWliawcyvqEwAP3acJngbUA6ghQK9cBc
         dCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683542330; x=1686134330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ioq2SHcYvzdWJgMENWPLRbhibNiRpiB3AcW6l1wBqmo=;
        b=l9VurfEvloP+kg/4qDShIUJm0ANWnKah/rMwSht+ATxN7vsJDJoDnCofjvZqkLrpxN
         IEHxMAF9RUfGgzdr7EjnPlpTvuVvabaFUmr9kFIEAd44xQsw1krFQnTXmSBC3ls59P3u
         Lw5BLe4PtRdr+F0QjWkTs/pwmfBEjZIzGS7sUFgBp7ky+1TiSqhxJwuTwJv3jzZ63n1E
         UMWwhiZJPkaQWUB9Q1k8WYBwGOxXotOa0lKwRS7+lbjP4c9w1F1yX8bN5nUK1+Q8Ng5V
         vZQTFqaZtEvdUM/QRc9JeAfHj8aICBovm1c5rlZ6q/migoHQbFiwg1Q44g4Gp1yXqjaV
         FOtA==
X-Gm-Message-State: AC+VfDz4G+I3BGHl5RXurEV1T2PwvpdSh4muY9ZyzVu07QK06WhtcP+Q
        M0tyGZXohegpoQXMHOYukIyTEw==
X-Google-Smtp-Source: ACHHUZ7S5zP58g6KXG/JEkUocDxvEXW0bXVKra1pbbx4QdVHZkXdfPz0kZLX00pfASUO8PhnfzUK/g==
X-Received: by 2002:a2e:8508:0:b0:2a8:b070:c21f with SMTP id j8-20020a2e8508000000b002a8b070c21fmr2466304lji.16.1683542330361;
        Mon, 08 May 2023 03:38:50 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id l2-20020a2e3e02000000b002a6168181d7sm1134847lja.7.2023.05.08.03.38.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 03:38:50 -0700 (PDT)
Message-ID: <f33f124e-a989-4501-a896-45649297d71c@linaro.org>
Date:   Mon, 8 May 2023 13:38:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 2/4] ARM: dts: qcom: apq8074-dragonboard: Set DMA as
 remotely controlled
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
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
 <20230507190735.2333145-3-dmitry.baryshkov@linaro.org>
 <f968009f-c52b-5e4c-aa79-01c0ac53b8dc@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <f968009f-c52b-5e4c-aa79-01c0ac53b8dc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 11:32, Konrad Dybcio wrote:
> 
> 
> On 7.05.2023 21:07, Dmitry Baryshkov wrote:
>> Add the qcom,controlled-remotely property for the blsp2_bam
>> controller node. This board requires this, otherwise the board stalls
>> during the boot for some reason (most probably because TZ mishandles the
>> protection error and keeps on looping somewhere inside).
>>
>> Fixes: 62bc81792223 dts: msm8974: Add blsp2_bam dma node
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
> Looks like a common theme.. sony-rhine boards also have the DMA
> enabled *and* need this property.. perhaps it's a SoC-wide (or
> at least SoC-and-fw-distribution-wide) issue?

This looks like a strange history. Especially granted 338d51889851 
("Revert "dts: msm8974: Add blsp2_bam dma node"") and d44cbb1e9ca3 
("Revert "Revert "dts: msm8974: Add blsp2_bam dma node""")

And, of course, 
https://lore.kernel.org/linux-arm-msm/CAJAp7Oi33=kraAiU337JdFJZbuKZEVoCtY4FfAv_RgiWVmz+sw@mail.gmail.com/

Note, 338d51889851 mentions non-dragonboard boards. This makes me think 
that for some of the dragonboards/firmware combos this device was 
working as is, without controlled remotely. I could not get 'the latest 
bootloader package' (if there was one), so I'm stuck with what I have on 
my board. However there is no guarantee that it is the latest and 
greatest stuff.

Thus said, for this patch I decided to follow the rhino example and add 
this to the board file. Unless Bjorn (or anybody else remembering those 
times) can advise us.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Konrad
>>   arch/arm/boot/dts/qcom-apq8074-dragonboard.dts | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
>> index 1345df7cbd00..6b047c679370 100644
>> --- a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
>> +++ b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
>> @@ -23,6 +23,10 @@ &blsp1_uart2 {
>>   	status = "okay";
>>   };
>>   
>> +&blsp2_dma {
>> +	qcom,controlled-remotely;
>> +};
>> +
>>   &blsp2_i2c5 {
>>   	status = "okay";
>>   	clock-frequency = <200000>;

-- 
With best wishes
Dmitry

