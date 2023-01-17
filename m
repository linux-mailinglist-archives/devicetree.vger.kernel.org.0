Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DFDA66DE4C
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 13:59:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236771AbjAQM7x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 07:59:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237059AbjAQM7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 07:59:19 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6575D3A5BA
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 04:58:30 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id q8so10362820wmo.5
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 04:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wSsXyk03ywnQUqDx7XCJIEj/SElIyzJeF7Cm3UzPcUk=;
        b=gterr9ulCcSSQVEcnIUwQz1SgWJ1e00EZkhsrtnr7Hqaf7dVahXfIxQS7kAy3HfPfR
         AJrgMFi3ClZzuwxJsl63bN0kW+LsPTrgbihqCDGxOKBzlCUC5hpqns3IvBpwot7eez2N
         GZ6TNGIfeSvv9oPWFOBupmo/b9ByB9XoNG1jlePFwk35VTJar/NwknSiK6G6f+H9UmgP
         gEOTLnb44IOohk5N0jXKmzK7AanaPJkG6J2JfVRNDEMgn6KK/ZIjF3NwKtNroSYEbML6
         M9noG+XxkYA0qWy50yhW4NLcdCjQqg/W5LQT6gkYl2jY49KrjalF8VWLxlUUJQAxNWOz
         fPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wSsXyk03ywnQUqDx7XCJIEj/SElIyzJeF7Cm3UzPcUk=;
        b=eoSpXxgNMdfwptWBmTfL3bEejZ/7GAx8/mlHcnqGYB6FynmWM5eupda9aghBd2C4r1
         gWv3dPrhZdr53jWEcE13kpGlcBnlael2fAVhK0Jj5gYjW78NT21DXQZeZ8AlHSUNrzFH
         YOY6XFXIl27JWsXZDXrduy/1dVBCjV0It7tXp3Wx4fuY4I9S3F5fB9qGsAeyGONZhkNT
         9LxBuwOb9+Q99eyaJEZuBxskTOnuUslnUnyEN9dWvE9GMS9HLXPIQnPKj68uDqE9uz+u
         5cUAFXeNq96WAhQLGlfVIzp+W6rm9OHDzrTFqn1n3b1P/XYW58PJFpQK8l4TkaJIXDOa
         id+w==
X-Gm-Message-State: AFqh2kqHYBVZm9tqumXyNuPZ0KRJ3J4/YRAd1cigjKSBS/zNzv28kKK9
        LZldPZyGYSuoDszb7USDWQ3cFrYrllVLaEQy
X-Google-Smtp-Source: AMrXdXv2YOf0E3sSYx2v6QrWr9BMdWNfNovpW/d+5FRDKmv4TxUc9m4QxIFiXfl7EeKQegI2BK4tiQ==
X-Received: by 2002:a05:600c:4f0c:b0:3d9:7062:e0b7 with SMTP id l12-20020a05600c4f0c00b003d97062e0b7mr2916789wmq.33.1673960308935;
        Tue, 17 Jan 2023 04:58:28 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bg42-20020a05600c3caa00b003b4cba4ef71sm48073293wmb.41.2023.01.17.04.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 04:58:28 -0800 (PST)
Message-ID: <c23bf1ef-de1d-ee64-f624-11e65915680a@linaro.org>
Date:   Tue, 17 Jan 2023 13:58:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for
 Radxa CM3i
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Chukun Pan <amadeus@jmu.edu.cn>,
        FUKAUMI Naoki <naoki@radxa.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-4-jagan@amarulasolutions.com>
 <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
 <CAMty3ZD_LWBR2+fu41Z5LEBcNw1KXEaY8P92Ypa-4rg2t8BH_A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMty3ZD_LWBR2+fu41Z5LEBcNw1KXEaY8P92Ypa-4rg2t8BH_A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 13:52, Jagan Teki wrote:
> On Tue, Jan 17, 2023 at 4:37 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 17/01/2023 11:55, Jagan Teki wrote:
>>> Fix the model name and compatible strings for Radxa CM3i SoM
>>> and Carrier board based on Radxa recommendation.
>>>
>>> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
>>> Cc: Chukun Pan <amadeus@jmu.edu.cn>
>>> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
>>>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
>>>  2 files changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
>>> index 225dbbe4955d..0c9a918b809a 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
>>> @@ -7,7 +7,7 @@
>>>
>>>  / {
>>>       model = "Radxa CM3 Industrial Board";
>>> -     compatible = "radxa,cm3i", "rockchip,rk3568";
>>> +     compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
>>
>> Nope, second radxa is redundant.
> 
> It is not redundant, Product name and vendor name is same. Vendor name
> is Radxa and product name is Radxa CM3i

If this was true, then on their website the product would be called
"Radxa Radxa CM3i", but it is not. It is called Radxa CM3i, to denote
the company name with the model name. Anyway, in the name of model you
can call it. In the context of compatible it is redundant.

> 
>>
>>>
>>>       aliases {
>>>               mmc0 = &sdhci;
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>>> index a4c33310ca42..8ca15b723799 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>>> @@ -4,8 +4,8 @@
>>>  #include "rk3568-radxa-cm3i.dtsi"
>>>
>>>  / {
>>> -     model = "Radxa E25";
>>> -     compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
>>> +     model = "Radxa E25 Carrier Board";
>>> +     compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
>>
>> NAK. You just changed it in patch 2. Don't add broken compatibles in one
>> patch (cm3i) and fix them next one. It's like adding intentional bugs
>> and fixing them immediately...
> 
> I did squash this with previous patch but the check patch showing
> warning to separate the dt-bindings patch from actual devicetree file
> change.

Patch 2 was not a bindings patch, so you squashed wrong files.

Best regards,
Krzysztof

