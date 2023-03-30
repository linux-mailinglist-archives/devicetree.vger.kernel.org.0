Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 460256D1099
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 23:14:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjC3VN4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 17:13:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjC3VNt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 17:13:49 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECDF2E1A0
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 14:13:47 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id n19so11735782wms.0
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 14:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680210826;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xYJ7UCsO7F5A7GpXsRX+DRI450uHDvtid0ji5HrtybQ=;
        b=TIOuMwmc+8BXKmxoFMV87oMywgcK9gX6n7HKYcIRNQi1qfrrh4vWceK117IiKCBCRl
         /C3RSxWGKAi3MXa9Zq0Ijm8ydELmAe76IJ5Bc+7xX6iqj+yXUxbvQh5MDAo6wjVgSvmh
         sHjDwMm2UP/yiZcOdJekZwww5sxrrPH4jCobUFUm36ZarX3aQ7fG6HfXSr1PkrcXd1ZM
         tfYKHp4DmRrkytK3zstli4lpNVTtBicxQHPnEyi5fOP5UhfS4lTAv9rHOzx1aDSbxxGX
         22zMxMyHp1Jtp6+NPKJKKF6Emzw89VShKFj44OeI+CqNUIb7vaOlUYZJIzYL07KOC3Wx
         cJMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680210826;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xYJ7UCsO7F5A7GpXsRX+DRI450uHDvtid0ji5HrtybQ=;
        b=Ma9B7W/JNeOrTbVlZrzVYHx7UXinri3JrOctFMLwj7/KpTQmFqkM1V7NOcrBY04LdR
         SDyKK/NHUCQe99Wyd3biEMPIwT1iUNRqLGMgppbpijTeqqHt42I88VyiOKtcRiGa1eSn
         GEQ6bDyNbFLLf6YhA0QrRSHfPFmIE03NjgWCUxh/F5sKHvFh2d4GuglMF9sa26o4G6uI
         9xWijy1n7sCRKQtlSjvNlvfpehezJRKaib/72GU4iQwkt30tZkYnyBDat0Ej4pgZQpje
         FQIh2U3SSNwOSVQ1A1ZXd5j0McBfDf8XJFzmwl9FwuNwQkf8soKy2AWKOhAk/dAwo/Mq
         B/2Q==
X-Gm-Message-State: AO0yUKVdkP1D4qdP/8U/JdBorJpt22VgGWYjPX7xU8Z3Nfjsnf/tMgWl
        F7wna0cKoiWnnphGxlcw1ad1pg==
X-Google-Smtp-Source: AK7set/RF9lEynbBcbIUXZaNxVwOwSMZ+BeXGxObXH50aHsfuSIlJxKeFMBWVKZjvnItHxnhRNWXzA==
X-Received: by 2002:a7b:c381:0:b0:3ed:4627:ed09 with SMTP id s1-20020a7bc381000000b003ed4627ed09mr18481456wmj.28.1680210826323;
        Thu, 30 Mar 2023 14:13:46 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:17ff:909e:1b73:8366? ([2a05:6e02:1041:c10:17ff:909e:1b73:8366])
        by smtp.googlemail.com with ESMTPSA id hg13-20020a05600c538d00b003ed793d9de0sm11413067wmb.1.2023.03.30.14.13.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 14:13:45 -0700 (PDT)
Message-ID: <3e9154df-bae4-23a6-7c5d-d42477800b19@linaro.org>
Date:   Thu, 30 Mar 2023 23:13:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RESEND] [PATCHv3 4/7] thermal: rockchip: Simplify channel id
 logic
Content-Language: en-US
To:     =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com
References: <20230308112253.15659-1-sebastian.reichel@collabora.com>
 <ec66d4e7-cb82-46c6-84ae-bd51df7cab7c@mercury.local>
 <bae80282-cb80-462d-e554-1934d090e216@linaro.org> <2066924.KlZ2vcFHjT@diego>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <2066924.KlZ2vcFHjT@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 19:07, Heiko Stübner wrote:
> Am Donnerstag, 16. März 2023, 11:05:25 CEST schrieb Daniel Lezcano:
>>
>> Hi Heiko,
>>
>> On 08/03/2023 19:42, Sebastian Reichel wrote:
>>> Hi Daniel,
>>>
>>> On Wed, Mar 08, 2023 at 07:13:22PM +0100, Daniel Lezcano wrote:
>>>> On 08/03/2023 12:22, Sebastian Reichel wrote:
>>>>> Replace the channel ID lookup table by a simple offset, since
>>>>> the channel IDs are consecutive.
>>>>>
>>>>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>>>
>>>> As all the other patches are reviewed by Heiko, is the tag missing here?
>>>
>>> Heiko was not happy with this in PATCHv2, when he reviewed most
>>> of the patches:
>>>
>>> https://lore.kernel.org/all/3601039.e9J7NaK4W3@phil/
>>>
>>> I replied, but never got a response, so I kept it as is:
>>>
>>> https://lore.kernel.org/all/20221206170232.xsm4kcbfwrmlrriw@mercury.elektranox.org/
>>>
>>> FWIW it is essential for the series and cannot be dropped, because
>>> RK3588 has more than 2 channels.
>>
>> Do you have a suggestion to improve the proposed change ?
> 
> I guess it's fine after all.
> 
> Sebastian's response makes sense and there is not really a reason to keep
> infrastructure around for a hypothetical case that may never happen.
> 
> If that really changes with some SoC in the far future we can always
> re-evaluate.

Thanks, I've added your tag


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

