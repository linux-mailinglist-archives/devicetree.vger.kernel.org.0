Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7849962574F
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 10:51:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233641AbiKKJvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 04:51:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232182AbiKKJvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 04:51:39 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2204B40
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 01:51:37 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id a29so7549566lfj.9
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 01:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UBAuXo/JH39usAqNS9LpYMJ2qkzWZjIsVla8cj9Lu1U=;
        b=RWlNT8X+c/6umKwADgRwNXk6wtdTLfkdNvb8p720+7n24ICD4zY7ByR49GnmdVtx77
         NSGJh7gekNTpVvCdASxHoqGfRn74GI8LSAaaSmta1si6kWczPj2m6BUji1sbkySYaA71
         l86lRS4z+E0uRyswkkzntCdOAtoEmqX0wbqlWJJt77ELEUaMIogkRnT7kUyOE7cBStXI
         BVhkWB58YZwUD+4BB3/C5lmQrfxGqlpGFqvkQiEYXZ/uGmoDDMYPvQOIz9+qKm53jx0X
         Of0+1gX7stiBGOIHHPq+Tl+euYCU0nhc8M4wO0wym8FHZBfKfxn4Oa+TDqRKeOcLpu19
         AZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UBAuXo/JH39usAqNS9LpYMJ2qkzWZjIsVla8cj9Lu1U=;
        b=cfgDq2QvUNoUtBW85AHWBrYN93gdHRW+P1V6E5E5sAsBmcOefCd1Nu/pldMU8uSvsa
         /1+KqYH5v6JRBANroK+znYx2VCQCLIOp3ghu8K+Y4k1zw8l9nAsc9jxM6dTO0J5187Jt
         TD/FoRnAkbs2e3izcSlcugsEfpszuITVD2TDRyUyKRT/4KmhqPY631Z7IZ7d29pTxELh
         9/3sLDEHZl5txjSjH9LJvvaYi3+ue9uFN4pVqAmJp7cQin+FzzbxxXxxWHeEonovKHbv
         q9Rmv1Bl06L9odO59sfEK2JwHT/TiKybrHoxyJqACsCD6R+ZdL2upEnd0ROECKvZHJoU
         S+ZA==
X-Gm-Message-State: ANoB5plferK9UOg09NmIrVrAPX13jsAnHwpRgE+viHfgf1FAvOK0B0kS
        k5JlTI6zJqZ6N2hEs3vKlUEnEg==
X-Google-Smtp-Source: AA0mqf67Av2ZPSbVocV6fSZ7EUxU4KpuNAmS9QqR4LGcufRNaGoBIvnBqqSxLgrRrLDPR8beEWcqKQ==
X-Received: by 2002:ac2:4bd2:0:b0:4a2:9706:7bf6 with SMTP id o18-20020ac24bd2000000b004a297067bf6mr456548lfq.542.1668160296381;
        Fri, 11 Nov 2022 01:51:36 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id n22-20020a05651203f600b004ab98cd5644sm239895lfq.182.2022.11.11.01.51.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 01:51:35 -0800 (PST)
Message-ID: <af83da3a-11e1-f53d-6b69-5c3387b61cf8@linaro.org>
Date:   Fri, 11 Nov 2022 10:51:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] dt-bindings: ufs: Add document for Unisoc UFS host
 controller
Content-Language: en-US
To:     Zhe Wang <zhewang116@gmail.com>
Cc:     martin.petersen@oracle.com, jejb@linux.ibm.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        zhe.wang1@unisoc.com, orsonzhai@gmail.com, yuelin.tang@unisoc.com,
        zhenxiong.lai@unisoc.com, zhang.lyra@gmail.com
References: <20221110133640.30522-1-zhewang116@gmail.com>
 <20221110133640.30522-2-zhewang116@gmail.com>
 <4bee5178-b34c-ec4b-9773-07f368064c48@linaro.org>
 <CAJxzgGpAPs5+HFdq=GxR4bd_27XGLdJeTqAairCOhAf-wvj_CQ@mail.gmail.com>
 <be044e4c-b9dc-1214-5f7d-4a4d1c2669fe@linaro.org>
 <CAJxzgGpKATsfjnD7ksc_UXdzwW76trkONDzRR2UpKHW1Buxxew@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAJxzgGpKATsfjnD7ksc_UXdzwW76trkONDzRR2UpKHW1Buxxew@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/11/2022 10:34, Zhe Wang wrote:
> Hi Krzysztof,
> 
> On Fri, Nov 11, 2022 at 3:48 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 11/11/2022 06:34, Zhe Wang wrote:
>>>>
>>>
>>> I'll fix it.
>>>
>>>>> +        clocks = <&apahb_gate CLK_UFS_EB>, <&apahb_gate CLK_UFS_CFG_EB>,
>>>>> +            <&onapb_clk CLK_UFS_AON>, <&g51_pll CLK_TGPLL_256M>;
>>>>> +        freq-table-hz = <0 0>, <0 0>, <0 0>, <0 0>;
>>>>
>>>> Why this is empty? What's the use of empty table?
>>>>
>>>
>>> freq-table-hz is used to configure the maximum frequency and minimum
>>> frequency of clk, and an empty table means that no scaling up\down
>>> operation is requiredfor the frequency of these clks.
>>
>> No, to indicate lack of scaling you skip freq-table-hz entirely, not
>> provide empty one.
>>
>>
> 
> In the ufshcd-pltfrm.c file, the clock information is parsed by
> executing the function ufshcd_parse_clock_info, if the number of
> "freq-table-hz" is zero or if the number of "clock-names" and
> "freq-table-hz" does not match, the UFS CLK information in dts will
> not be obtained. Although we don't need to scaling freq, we also need
> the CLK information for the CLK GATE operations. So we cannot delete
> this freq-table here.

I did not check the driver implementation, but if that's the case it
does not match bindings. Before adding empty useless tables, please
either fix bindings or driver. I think the latter - the driver - becasue
clocks are not depending logically on freq-table-hz.

> 
>> Best regards,
>> Krzysztof
>>
> 
> According to the local test results just now, I would like to ask a
> question about the previous revisions.
>>> +
>>> +  sprd,ufs-anly-reg-syscon:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description: phandle of syscon used to control ufs analog reg.
>>
>> It's a reg? Then such syntax is expected:
>> https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42
>>
> 
> In the syntax of this example, reg is represented by phandle and
> offset, but I only need the information of phandle in this place，

No. You wrote "analog reg". So one reg. Not regs.

> So in
> this scenario, whether my original syntax is fine？ just describe the
> pandlle.

No, because your description said one reg.

Best regards,
Krzysztof

