Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE8806906F8
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 12:22:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbjBILWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 06:22:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230347AbjBILVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 06:21:44 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9ABD5ACF1
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 03:18:18 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id az4-20020a05600c600400b003dff767a1f1so1250540wmb.2
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 03:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6WkQCGOYg2/oFJRssqJajHpycUbCD5BF/LqSCnmYp44=;
        b=wtVAF4LZJLCK9dFxUHUoEPo5p1ulRBt4nln4QEwt4Sd0bnB3BdHApbyH5rbEg+IURD
         vSKYH/ZAaWqP01G3NcrEXcdwXUhthSzq/GOPpThtSAopRv4mi0+rvrkUY5D2f6GDc0Pb
         5Tq/TFRLpC5efo4ypbiPFj3SA+5zLkXS6nMLgaATijQQemfm6+1XuqYf9vP/ufgHF/ka
         dNHYblP/5yT9zZXRGXF6GyehEXnMGZhHbSjG3Xn0vSgrfEIIoUbc18X9NWvaqTVjcxJ+
         qDXKQ7rhTWaJN23rGZlzpAJYM4Xl++/Cn9wLXtdsxXtGTXKjuSfrdzKoVm74kUGtxoah
         QhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6WkQCGOYg2/oFJRssqJajHpycUbCD5BF/LqSCnmYp44=;
        b=3Kc98Z0gTzAXsDcYoytmMMS8efEN7FmzRWPyGlBGKgwEB8n02PfDR+ue2A9uNAZdpc
         mTTAHfwSKcDxBjWtZE7tpuJbcNsPhabPwM0r6P6fxh2/Lw0piou5ZzDqIaF2oSkMKoEj
         OQvxkaPYme3ttltlLfolf9rEsr4PiInkLIQPeI83yd7mrq57Q0LgsDiSMB6nZii7lmv6
         rVRuYOLiPaAA4YWvwTG69jK/PR0f7VhYX9e8Jj/DRHJEJawb28/jOPp44LRc1IJL9hsH
         TIYZ3o2dA+jjuufjaAGEgX0D8uGuwZ2dGceeRzY7+QWc2VTH8UH3+wi4OJJtBGkHZSer
         hBSg==
X-Gm-Message-State: AO0yUKXRwzI/qsNg84yR/uCe1Ls3cPOCymFfKqmIN3V2hVWxHMXymbjl
        5zxD37NPWBl5z5FcbuZT5d/huA==
X-Google-Smtp-Source: AK7set9ZKkkw5h25z1fC/a9kDFoULrGDfxLU4eN2dDrEas3gNVgRLAi7qti2dNI+PNNLWkACPsevpw==
X-Received: by 2002:a05:600c:1819:b0:3dc:58a2:3900 with SMTP id n25-20020a05600c181900b003dc58a23900mr9441776wmp.29.1675941494275;
        Thu, 09 Feb 2023 03:18:14 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bd6-20020a05600c1f0600b003e0015c8618sm4701668wmb.6.2023.02.09.03.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 03:18:13 -0800 (PST)
Message-ID: <251b6ada-7c18-ba82-411f-f633ad7f09ff@linaro.org>
Date:   Thu, 9 Feb 2023 12:18:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3] ASoC: SMA1303: Remove the sysclk setting in devicetree
Content-Language: en-US
To:     Ki-Seok Jo <kiseok.jo@irondevice.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230209084903.13000-2-kiseok.jo@irondevice.com>
 <da3e7391-ee89-3089-8501-91e9411161a7@linaro.org>
 <SLXP216MB00777BF2377ECE2366F694228CD99@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
 <e5bcad37-c7d3-9c3c-4947-d3f2f6d9fc60@linaro.org>
 <SLXP216MB0077E5E2FC4A8CAA3B9D8A4F8CD99@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
 <SLXP216MB007705EA280A2C5D344F25338CD99@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SLXP216MB007705EA280A2C5D344F25338CD99@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 10:34, Ki-Seok Jo wrote:
>>
>>> On 09/02/2023 10:01, Ki-Seok Jo wrote:
>>>>
>>>>>> In SMA1303, this device does not support MCLK.
>>>>>> So it need to remove sysclk setting in devicetree.
>>>>>> v2: Modify the sysclk setting - using devm_clk_get for mclk.
>>>>>>
>>>>>> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>
>>>>> Where? Where did you get this tag?
>>>>>
>>>>> Best regards,
>>>>> Krzysztof
>>>>
>>>> I'm sorry, I don’t' know what you're talking about.
>>>> What tag are you talking about?
>>>> Sorry, could you please elaborate?
>>>
>>> From where the tag "Reviewed-by: Krzysztof..." appear?
>>>
>>> Best regards,
>>> Krzysztof
>>
>> I'm sorry I misunderstood the word. :(
>> Originally, I was going to use reported-by.
>> I shoud have reviewed it one more time, I'm really sorry.
>>
>> Thank you for telling me.
>>
>> Best regards,
>> Kiseok Jo
> 
> I'm sorry. It's my mistake..
> 
> Can I just change the tag and send it back again to v4?
> Reviewd-by -> Reported-by

There is no bug to report, so reported-by also does not fit. Just drop
the tag.

Best regards,
Krzysztof

