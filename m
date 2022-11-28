Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8189863B3C2
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 21:59:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233004AbiK1U7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 15:59:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232558AbiK1U7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 15:59:13 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81C3C12ABA
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 12:59:09 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id p8so19350431lfu.11
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 12:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=amrhtMYz1fcMT4774lJ3IkoPUekKuEb1D1Fr4wm8cyE=;
        b=mWJIJPx7w727Kxagcg85gL8GhE0Wr+zkYB2aPxVBSV5pvOgLtAJI/kgxjI3Vhyg9cg
         A6cqL0mdiyD57ho0wUaz++izY8F1kQFBy4jA2e8FGggxpDqVISTqT8VVLC+/62vTnaQv
         QHt2rfZNGfIiloqZ8Zlos1JwmlZJ/T7qou+VH/xP9qcnim8A6se9w+aCSDiXu42hnkR7
         MWRTdrILBKUFyezpukTfgPqd38c0hTxWBHxf4cKiJiA+IUdVN+kX7LHIU7RYxS6TE/tZ
         hK1rfxLtEKS22EfUd+3bvxeTy1vl7F7OV+H7maVfaLUHFazPo+x0KPIaB6uAFXx1kAU0
         kf/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=amrhtMYz1fcMT4774lJ3IkoPUekKuEb1D1Fr4wm8cyE=;
        b=tujbylEYHTmRfax8BdXrmpszNljaXPIiw96PR0yrZKmYnUU+bsSPpstud/4uf0lmJ6
         MioKxFy/1SFq45vTvGzuNzixwRrq65WnHevVYSR76LUMp7vGAHk+eCYq3fFrZwcdRvzi
         T4MT2SFnoC/j1sea4OpPXIGtgjrXdPmDYwXl4exXAfTEKePvJmbn2c8oqTjqKHJAxGkk
         yd/WO9NbMuOd5/i2pS38XFFyCGkBVjGOUhFC+R48jFBU9Z+NNtXivFC2NYCEjV00+3Ge
         bMAlRKwz3FDb+HznkY/FYAyO72E5c6KvBkExgONL7nmWGOoWlt7SWsb76l+oEGvV382E
         9mCQ==
X-Gm-Message-State: ANoB5pk9QKCAhsNuT+rsNZvQk4pv1u7NYUfi+3woD7ZpP/9PVaufLyi2
        rlNQDCunO/gStDVgcp4qWb88LA==
X-Google-Smtp-Source: AA0mqf6oWRYjzBqJxXLUJBEC/gj0sxdcJPuMtpZ1+2l0/UHjHaaDlf6ek+9eTPQ9E3umSLeOAbPFew==
X-Received: by 2002:a19:791c:0:b0:4b4:dd9:1880 with SMTP id u28-20020a19791c000000b004b40dd91880mr12162177lfc.289.1669669147898;
        Mon, 28 Nov 2022 12:59:07 -0800 (PST)
Received: from [192.168.1.101] (95.49.125.236.neoplus.adsl.tpnet.pl. [95.49.125.236])
        by smtp.gmail.com with ESMTPSA id q21-20020a056512211500b00492dc29be7bsm1872005lfr.227.2022.11.28.12.59.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 12:59:07 -0800 (PST)
Message-ID: <cce01dbd-e2b7-3d6b-9c83-af3790f3ee89@linaro.org>
Date:   Mon, 28 Nov 2022 21:59:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] ARM: dts: qcom: apq8026-samsung-matisse-wifi: Enable ADSP
Content-Language: en-US
To:     =?UTF-8?Q?Matti_Lehtim=c3=a4ki?= <matti.lehtimaki@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221125223400.94515-1-matti.lehtimaki@gmail.com>
 <a64d31a5-5e55-35b9-57e3-bb4214fe3e28@linaro.org>
 <90d231c6-1f16-74ea-ddf7-5e09a51a93ea@gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <90d231c6-1f16-74ea-ddf7-5e09a51a93ea@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 28.11.2022 18:01, Matti Lehtimäki wrote:
> On 28.11.2022 16.41, Konrad Dybcio wrote:
>>
>> On 25.11.2022 23:34, Matti Lehtimäki wrote:
>>> diff --git a/arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts b/arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts
>>> index 1c52337af560..859e91c16c61 100644
>>> --- a/arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts
>>> +++ b/arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts
>>> @@ -133,7 +133,8 @@ wcnss@d200000 {
>>>               no-map;
>>>           };
>>>   -        adsp@d900000 {
>>> +        /delete-node/ adsp@dc00000;
>> Please delete nodes by referencing the label like so:
>>
>> /delete-node/ &adsp_region;
> 
> When I created the devicetree I was asked to do the opposite for the
> smem_region [1] which I had originally deleted using the label near top of the
> file but then moved next to the relevant node, where I cannot use label
> when deleting it. Should the smem_region also be moved to the top of the
> file if I move this delete-node there so the file would be consistent?
In [1] you were asked to move the delete-node statement, not to alter
the argument. Referencing nodes by label is allowed globally in the DTS.
The removal should stay inside reserved-memory.

Konrad
> 
> [1] https://lore.kernel.org/linux-arm-msm/CAA8EJpqUH_v1GXEYF62Z3DBtFu_305_h4D36aCnBr38bo5HoJw@mail.gmail.com/
