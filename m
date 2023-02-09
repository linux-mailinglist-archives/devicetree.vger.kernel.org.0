Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B495E690217
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 09:25:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229589AbjBIIZw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 03:25:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjBIIZv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 03:25:51 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DD2B4ABDC
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 00:25:45 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id z13so876783wmp.2
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 00:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bLQTVKIbz34iaILpH0NErLFZgySx8APs2YYrRkVuwb4=;
        b=HBCoygvakBrcEwOf4vymJr0uzCa2Yh18ZH6mYN2aN5pcSzQocDD/8mkz5H6uMCDsPH
         EhyvtiGJaHwTZFs1VAJF3gbEhHYUNssDvLLEvZCu0vxCdBgVGVvhU/EFxQTk48nUuZVE
         TgQeP9gGPWf+hUInR6bMQjHoGc9yryMCLO3vr/v2xWCxCK1JNYA4HV2i6c386HKqXc1o
         V75MBCUqhtIhWYO1VXPPhMr2tt+AVB2yAQOIIh6Ar/zPX3BoWbVkC4MYCTH177iaM3CQ
         IB5XS25LS4SOiKA8kjgwNi9T9VdoR19YL0sOLuvSIGCAu5M1lfaYcAfhj/+FOFykTI+i
         92hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bLQTVKIbz34iaILpH0NErLFZgySx8APs2YYrRkVuwb4=;
        b=fvpLdOhBoVf61xUNmnFVr97cdCUyibcFWkBeznT7XBVcSa8hhQjTiE33bzV8qGYAv3
         3WKUr6vZ8AA1PgJTrf1C/AA91d0kyd6nDcuAasVo5F/CEhPLUJo0EI1SzZmZ2H+xi6h3
         zmzrrmteJ/2z+KAEMK/qLIgT9QES9HsoVn2gAERI2CBJP4/CZzKPck23CiKBBFJyRvJo
         BvllR8AenOfYcBB+ZSetmNEowwrYYZKa5wsxp8QmiERPHLGytTJqh+Pdh2M6eCILZdwG
         LSrFZJeGTJ7eKZWJNaqNu0eSF47AWhl2awe5ZAtyCIkgUym8PqSJwR18kgOrH5YmmAe0
         4LOg==
X-Gm-Message-State: AO0yUKWmTH6eVYSCK4DiSAfb5KmChxSjOQ+lg94ZB6OoYC0MmO537Lmg
        ZCZ8+0/44ntRlcj+/xFh7qEizA==
X-Google-Smtp-Source: AK7set+xZJ8bhRl5GOjP9i1P0UgeAJvwohi9gHQwL9gXhdiG5a8GIz8mnopa39dCVtj7k8mf42+16A==
X-Received: by 2002:a05:600c:43d2:b0:3d3:513c:240b with SMTP id f18-20020a05600c43d200b003d3513c240bmr9150492wmn.7.1675931143957;
        Thu, 09 Feb 2023 00:25:43 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5431:990b:7117:b75e? ([2a01:e0a:982:cbb0:5431:990b:7117:b75e])
        by smtp.gmail.com with ESMTPSA id ja13-20020a05600c556d00b003dc4b4dea31sm1067913wmb.27.2023.02.09.00.25.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 00:25:43 -0800 (PST)
Message-ID: <a376b71b-f0df-1276-d05f-be1c5bab90ae@linaro.org>
Date:   Thu, 9 Feb 2023 09:25:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
 <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
 <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
 <61db3f1c-b780-4385-f991-ebb4c3423791@linaro.org>
 <4dfc29ef-4d88-f899-3f96-fded32f5736f@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <4dfc29ef-4d88-f899-3f96-fded32f5736f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 07:44, Heiner Kallweit wrote:
> On 08.02.2023 13:40, Neil Armstrong wrote:
>> Le 27/01/2023 à 14:02, Heiner Kallweit a écrit :
>>> On 27.01.2023 08:59, Neil Armstrong wrote:
>>>> Hi,
>>>>
>>>> On 26/01/2023 15:03, Heiner Kallweit wrote:
>>>>> The usage of edge-triggered interrupts lead to lost interrupts under load,
>>>>> see [0]. This was confirmed to be fixed by using level-triggered
>>>>> interrupts.
>>>>> The report was about SDIO. However, as the host controller is the same
>>>>> for SD and MMC, apply the change to all mmc controller instances.
>>>>
>>>> Thanks, I applied it in for-next so it runs on the CI tests.
>>>>
>>>>>
>>>>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>>>>>
>>>>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
>>>>
>>>> I think we should find a better Fixes or perhaps split in 3 so it targets the
>>>> right commit adding the nodes for each family.
>>>>
>>> This would be the cleanest option, right. Practically it shouldn't make
>>> much of a difference. The chosen commit is from 2019, SDIO interrupt
>>> support has been added just recently, and regarding MMC/SD it seems no
>>> problems caused by edge-triggered interrupts are known.
>>
>> I understand, but the Fixes tag must reflect what commit introduced the breakage,
>> so either keep a single patch but list all commits introducing the MMC, SD & SDIO nodes
>> on the 3 families, or split in 3 and specify the commit introducing the MMC, SD & SDIO
>> node on each family.
>>
>> I'll prefer the later.
>>
>> If the patch isn't applicable for older kernels, it doesn't matter as the stable team
>> will only apply the fix on a tree if it applies and builds.
>> If you target an older release you can submit them a patch reworked to apply
>> correctly if the original patch is already only Linus master tree.
>>
> Do you need a revert for the current "TEST"-annotated commit in linux-next
> as part of the series?

No need, I'll remove it from for-next.

Neil

> 
>> And don't forget adding the Tested-by tags.
>>
>> Thanks,
>> Neil
>>
>>>
>>>> If the test doesn't report any breakage, I'll probably ask you that.
>>>>
>>> Sure.
>>>
>>>> Neil
>>>>
>>> Heiner
>>>
>>
> Heiner
> 

