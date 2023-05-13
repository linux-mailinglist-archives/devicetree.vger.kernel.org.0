Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B68570193E
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 20:35:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230317AbjEMSfJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 14:35:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjEMSfH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 14:35:07 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F11781FDA
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:35:05 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-965e93f915aso1945412766b.2
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684002904; x=1686594904;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gdtpFQqstRJ3vQRASjBOgJ5qnuinsCRYsDOrfHec77Y=;
        b=qA/3CS9xhwjPEF75DF/vWV+L5BA6D15IADzPvrMDxWZBO2zZBXgwHiwlvrybq5C+au
         9GhKNd6wvSbEQim/ecxv07dIb+yxxo/BX2WwYvWYZPEOIFdEPE07y8EB+0k5QPi/e1nG
         XIe20Y/gk62SGhLaFXvlIOWdar4csSSxuDuozWRe6hbZuyvxOlzz6Amga3dBOXFtu6vv
         UUP8ufqLOHsF9jguVFR1sDJTFSvfuCrOHx6kCXo6j/tMgZg2+DqML7w+ZQ6Tk6kS03Mv
         9dhtN2680J1LQxXQ7IKU86yhyccYxHrFrJvtzeVcRc6MVUYVJn4p8r0hpF+Mwu8gkkPz
         hgIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684002904; x=1686594904;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gdtpFQqstRJ3vQRASjBOgJ5qnuinsCRYsDOrfHec77Y=;
        b=WM5KFX+Cquxsq6yr50HPkymBM46HNYFu6muguzWJBuE+JzH396/AnBH8bBppV/lkko
         qJXt/zGbB5ROMXjmH6lW0w9ZC75PBMqcyHQB4MtVSaMMC4SRrAvXwMG579FdbJS0DT0n
         YzBltsIC4QpxYF0ULPlkYy2aF7gVQc7iiM9wcKSidF74Mz7zAJHLzR05NUxu4w3dNDii
         cbBzo9bZCNX9NQ062JSiMRJIyKBQUefuWyxQHQc9GrgCVab7+6lKUbTj6wGPgyJPdZeX
         HtOWvRmHbND1ZmC+OQtjqMT8qLGetCZLGCYVAlji4zwtVAH7vUTTY8ujyrU03qe1wec2
         T+Gw==
X-Gm-Message-State: AC+VfDyhgPDikC+8rBaGgavnyBu1KGGnrUrugyrGYMaW2JIef0RmdskR
        1VvdPd3P07sT/Yauv60kCLrzng==
X-Google-Smtp-Source: ACHHUZ7lS3yHb3bOhLpg+8//bcoESb9TvvyfZpFniFz/1SOnr+tYtsNn3cQnvoT7TpDTZTrqzgSo0w==
X-Received: by 2002:a17:907:1c03:b0:94e:4489:f24d with SMTP id nc3-20020a1709071c0300b0094e4489f24dmr27661968ejc.61.1684002904485;
        Sat, 13 May 2023 11:35:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ba68:e5c9:694e:c6e4? ([2a02:810d:15c0:828:ba68:e5c9:694e:c6e4])
        by smtp.gmail.com with ESMTPSA id v9-20020a170906380900b0094e1344ddfdsm6998534ejc.34.2023.05.13.11.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 11:35:03 -0700 (PDT)
Message-ID: <ccbf7ae3-5d52-070a-ba19-3ff54e6161e8@linaro.org>
Date:   Sat, 13 May 2023 20:35:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: iio: temperature: Add DT bindings for TMP006
Content-Language: en-US
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Anup Sharma <anupnewsmail@gmail.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Peter Meerwald <pmeerw@pmeerw.net>, broonie@kernel.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <ZFvo2TIiPiMFlbXC@yoga>
 <fc104fdd-3894-aa94-12dc-4c73b26d4159@linaro.org> <ZF08pzGPyReL1uAf@yoga>
 <4d18eb55-a44c-4033-93cd-35c02cb179b3@linaro.org>
 <20230513195030.57b7939e@jic23-huawei>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230513195030.57b7939e@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2023 20:50, Jonathan Cameron wrote:
> On Fri, 12 May 2023 08:28:29 +0200
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 11/05/2023 21:06, Anup Sharma wrote:
>>> On Thu, May 11, 2023 at 11:28:50AM +0200, Krzysztof Kozlowski wrote:  
>>>> On 10/05/2023 20:56, Anup Sharma wrote:  
>>>>> Add devicetree binding document for TMP006, IR thermopile sensor.  
>>>>
>>>> Why? Where is any user of this? DTS? Driver?
>>>>  
>>>
>>> The support for TMP006 is available at driver/iio/temperature  
>>
>> There is no such compatible in the kernel. If you add OF support, you
>> should change the driver.
> 
> (Very) old driver, so it uses the fallback method that i2c provides to bind to
> the compatible with the vendor id dropped via i2c_device_id entry.

Yeah, I know it works... but is very confusing :)

> 
> Having said that, I'd also prefer the addition of an explicit of_device_id table.
> As there is only one supported device in this driver should be trivial.
Best regards,
Krzysztof

