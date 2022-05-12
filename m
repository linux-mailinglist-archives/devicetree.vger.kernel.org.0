Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9228852580B
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 00:58:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359334AbiELW6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 18:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359333AbiELW6w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 18:58:52 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B624127EB8A
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 15:58:49 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id b32so8312502ljf.1
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 15:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jkpKnJ/yq/4VufrEoiHCSBT7WZrJ/+EWhFoDfqoJRbI=;
        b=BnhBqfRuQvIXa0k2pvOjJ/O9b1LJuEsWOb5zYQolEdDiSRUfVEzPIMshLl3o8idQ91
         5oBjAtvp/6iTXakcyzAZE3wsCy1eTFjv/hVDa23mzMxzr4WFJgVtVBo+xUlfKFAgHIM9
         Mly6RLpGzyxxGisHDXTR0VYL4G2222Eh0o3HWeKh7sQNzRbhySTaiqZLvkSWxpwDsv6R
         6OvT9G6NpjX/uVim1TJxkjhLawU5SWO2Tyf9Im2bD7LyUGQbjhgQ0yBmkczhGYoZjhkP
         hp65TlJMtt3HsRtJnAvoB2ePHd3HAZXktPqHw/QHE198WK3ihIfohlwbj76T+JCHeB3+
         Nyag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jkpKnJ/yq/4VufrEoiHCSBT7WZrJ/+EWhFoDfqoJRbI=;
        b=N2yoFLgyN58ph9iCXlDXlHKhpGp4SD2UDT1KDVkuHPUcv29svEAezmimuyvBiOmi4L
         GqBzm1f9dFtDaJZjTWOFT6wpzHfDkRmmrLsofbA3Hp5FRnBx2NlfsWuxkqs8K1OYlElH
         4d0N4xJ2//dwzFFjjEN55MU3sJubbgspxhuUeeO178ZpLAOCSjfboWzgXbVEQMgq2IJU
         Yi3srr7t451YMBvdxOWaMI4VYTYf7/FFMGq8sCSgy8COX96StVJzgjQkvCm5l2G92q+w
         tlHkQVzs3KMQzKjeOuXAosCfqax6vy54R3om+Y/HLg2LnE1NnBpsbKvhYhbWPLUEZGxV
         vynA==
X-Gm-Message-State: AOAM530F3JMZvHDHG7pD/2N6vqs4JhlM+rSD4n9zpk6JVN7c3J8x7iVB
        N7Lv9HXfbdXN3LkULygyz9fiuQ==
X-Google-Smtp-Source: ABdhPJzaT7iP0KrmcmP9LaClAfuGYAaA0bF0Hr1bpKK+ozoWANK0hP65k8I4/3Cvwc3WRpMN7gqINw==
X-Received: by 2002:a2e:8404:0:b0:250:cde7:e9e3 with SMTP id z4-20020a2e8404000000b00250cde7e9e3mr1373508ljg.289.1652396328004;
        Thu, 12 May 2022 15:58:48 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j2-20020a2ea902000000b0024f3d1daeccsm134820ljq.84.2022.05.12.15.58.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 15:58:47 -0700 (PDT)
Message-ID: <ae909313-ef7a-5c40-55b8-a1a802b6cdd5@linaro.org>
Date:   Fri, 13 May 2022 01:58:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v1 5/5] arm64: dts: qcom: sdm660: Add initial Inforce
 IFC6560 board support
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220503220927.960821-1-dmitry.baryshkov@linaro.org>
 <20220503220927.960821-6-dmitry.baryshkov@linaro.org>
 <0574f34c-b898-8ccb-05bd-6e3d454fee2c@somainline.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <0574f34c-b898-8ccb-05bd-6e3d454fee2c@somainline.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 19:17, Konrad Dybcio wrote:
> 
> On 04/05/2022 00:09, Dmitry Baryshkov wrote:
>> The IFC6560 is a board from Inforce Computing, built around the SDA660
>> SoC. This patch describes core clocks, some regulators from the two
>> PMICs, debug uart, storage, bluetooth and audio DSP remoteproc.
>>
>> The regulator settings are inherited from prior work by Konrad Dybcio
>> and AngeloGioacchino Del Regno.
>>
>> Co-developed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile             |   1 +
>>   .../boot/dts/qcom/sda660-inforce-ifc6560.dts  | 455 ++++++++++++++++++
>>   2 files changed, 456 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile 
>> b/arch/arm64/boot/dts/qcom/Makefile
>> index f9e6343acd03..5f717fe0e8d0 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -88,6 +88,7 @@ dtb-$(CONFIG_ARCH_QCOM)    += 

[skipped]

>> +
>> +/* BAM DMA doesn't seem to work on the board */
> I wonder if these are configured differently on your firmware.. what if 
> you remove the `qcom,controlled-remotely` property, or in case that 
> doesn't work, swap out the BAM clock for a fake one, like xo_board?

You know, replacing BAM clock with xo_board makes the devices probe and 
work. So does adding interconnects property (together with Bhupeshe's 
patches which didn't land for some reason). I think I will override just 
the clocks for now and update the core dtsi once the [1] gets merged.

[1] 
https://lore.kernel.org/linux-arm-msm/20211110105922.217895-14-bhupesh.sharma@linaro.org/

>> +&blsp1_dma {
>> +    status = "disabled";
>> +};
> 
> This reference should come before blsp1_i2c6 alphabetically
> 
> 

[skipped]


>> +
>> +&mdp {
>> +    status = "okay";
>> +};
> 
> MDP should be always enabled in SoC DTSI instead, as MDSS is borderline 
> useless without it..

I see your point. sdm845 doesn't disable it, but later platforms 
(sc7180/sc7280/sm8250) disable mdp and require enabling it explicitly in 
the board files. I'd tend to follow the example of the later platforms. 
Not to mention that sdm630.dtsi already contains 'status="disabled"' for 
this device.

>> +
>> +&mdss {
>> +    status = "okay";
>> +};
>> +
>> +&mmss_smmu {
>> +    status = "okay";
>> +};
> 
> ..and same goes for all the SMMUs (but that's a nit for the future, as I 
> mentioned in one of the previous emails)

Yes.

[skipped]


-- 
With best wishes
Dmitry
