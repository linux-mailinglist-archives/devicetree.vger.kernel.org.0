Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22331525779
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 23:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358980AbiELV6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 17:58:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358891AbiELV6j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 17:58:39 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D7F75DBF0
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 14:58:36 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id bq30so11438563lfb.3
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 14:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=l0P9n8l4sqdaGpJYwb8TmYe/pYN9ZOMc6psw005K6W8=;
        b=r1MgLvAKOWxK17473BnHn1rEYKVN5kTvzRFtC/2J97/fQga/5zikKKgbBLJiuC0Z1K
         YypSYWWvztIihlbTaAz6X+JG15+4DbmL9g8pI4vNVsKUsXibvYsXntn1jPNaLy6Bakan
         G1J2LiuA75CnFLN4Uxfsd6Wq3aCH7+AKAsMpVmfpNWtRhbEzNbm9pvj1JCwU2N+1+auC
         g0xRn30EOBSou4q6FKmf4St64KNo6pco/+G+xdDqh+o8Jnoc2WOBMPumxJB5wEE8Wxu3
         ChE18T+O6qqyiCrXXh3BlDO23HeI4VecuFySqsau3njHZikMze7Z/ED6zGU0t2x4CLFd
         EXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=l0P9n8l4sqdaGpJYwb8TmYe/pYN9ZOMc6psw005K6W8=;
        b=UcqqCA51XlNinMN4BH91wjovRyLeu5Jo21Ab1udXzBtCop8Wj+J9A70KzP6CmsO4Lm
         PNMSeaV4WKzyUHzD06J1dJPulJQAFawo+FoVFitMlROvWtVHNOzoDM/U2cgygUEyeP0m
         QiCtlGD+5cA9knvlo5AbuN/pHagjngXRrMya43FhB7yrt+rOZXJOyegJ21++2j6at5yE
         WXMoKOW4BSSZ13NPqkYDpNIcaxhLXC7oYdpenq35Rgt6TQFrjG9HgG4dedfIeFeyR5ek
         3ELFPdgvPXs2i8nQtui4vwjB8pLKl1dKYzPzLfZ80uAvv/JNaU9VBnuVH7Uwsn/WFsPL
         doNw==
X-Gm-Message-State: AOAM532Ml9oF/++9OxAOnEiONN5O0GbOz0I0cB7h/GxUntFYt5aB0Cd7
        6/tJL6VlwyOu6f38kKhxyrxI0g==
X-Google-Smtp-Source: ABdhPJyERGnl7c6n7wtNjcgQljRoguy0RoLnM4HVwXBLlbaWuS/K1RRSFO5ZCpg7ix4qBnIRjjiZsg==
X-Received: by 2002:a05:6512:1109:b0:473:e582:a60c with SMTP id l9-20020a056512110900b00473e582a60cmr1275217lfg.150.1652392714526;
        Thu, 12 May 2022 14:58:34 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id l4-20020ac25544000000b0047255d211edsm100706lfk.284.2022.05.12.14.58.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 14:58:33 -0700 (PDT)
Message-ID: <410ffede-1419-89a2-2600-8f92fdb4161e@linaro.org>
Date:   Fri, 13 May 2022 00:58:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v1 1/5] arm64: dts: qcom: sdm660: disable dsi1/dsi1_phy by
 default
Content-Language: en-GB
To:     Marijn Suijten <marijn.suijten@somainline.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220503220927.960821-1-dmitry.baryshkov@linaro.org>
 <20220503220927.960821-2-dmitry.baryshkov@linaro.org>
 <20220504081102.g36yjajytvuaba7r@SoMainline.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220504081102.g36yjajytvuaba7r@SoMainline.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 11:11, Marijn Suijten wrote:
> On 2022-05-04 01:09:23, Dmitry Baryshkov wrote:
>> Follow the typical practice and keep DSI1/DSI1 PHY disabled by default.
>> They should be enabled in the board DT files. No existing boards use
>> them at this moment.
> 
> This practice also seems to be applied to dsi0/dsi0_phy across other
> boards.  Should this also be applied to sdm630.dtsi's dsi0/dsi0_phy
> nodes, and them subsequently re-enabled in sdm630-sony-xperia-nile.dtsi?

I will apply corresponding changes to sdm630.dtsi. However enabling them 
in sdm630-sony-xperia-nile.dtsi doens't make sense at this moment, since 
neither of nile platforms properly describes the mdss/mdp/panel 
configuration. I'm looking forward to seeing the updates for these 
devices trees though.

> 
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> 
> - Marijn
>> ---
>>   arch/arm64/boot/dts/qcom/sdm660.dtsi | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
>> index eccf6fde16b4..023b0ac4118c 100644
>> --- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
>> @@ -192,6 +192,8 @@ dsi1: dsi@c996000 {
>>   		phys = <&dsi1_phy>;
>>   		phy-names = "dsi";
>>   
>> +		status = "disabled";
>> +
>>   		ports {
>>   			#address-cells = <1>;
>>   			#size-cells = <0>;
>> @@ -225,6 +227,7 @@ dsi1_phy: dsi-phy@c996400 {
>>   
>>   		clocks = <&mmcc MDSS_AHB_CLK>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
>>   		clock-names = "iface", "ref";
>> +		status = "disabled";
>>   	};
>>   };
>>   
>> -- 
>> 2.35.1
>>


-- 
With best wishes
Dmitry
