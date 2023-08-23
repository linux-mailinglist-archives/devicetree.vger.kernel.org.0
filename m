Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4527850A0
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 08:27:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232937AbjHWG1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 02:27:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232424AbjHWG1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 02:27:46 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB20E59
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 23:27:44 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9a18a4136a9so443581866b.2
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 23:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692772063; x=1693376863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r5Oc56VzNR2aVjs0jVSRnsJUhpw2zj/HD9VsbzcLo7s=;
        b=DUiAx5xPzaUEZONVMv/ajlmwn6R13EUUZ7ZqxvWYO3m5GscO0lfvmEJFZGy9fUOsQP
         LqrScyfvELcdX76u+yPg8TFUaOvdT2Lff02UQtqw9prb3BZdbYRQ1kQh7FjJRMSpWPNe
         EqtL/DwTTylXCruh0A4PSIt/gYClH5V90YeZKB6IWfnq7fCTvLjc9LaXdUxvHMLgxdj2
         d+6/IXtixR4Jw+YgakSPL33/NQPZoDhcEgzZtAbMh+g6D0p/JyJI/p1wH/ea6XcDYywH
         om8LoKCHd5jEQaYWSFr3GINfOGKpWSycqQcgbarPRRVPiciqXStydTp9luPi/kiK4pQE
         fY0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692772063; x=1693376863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r5Oc56VzNR2aVjs0jVSRnsJUhpw2zj/HD9VsbzcLo7s=;
        b=ap2aC2L14L0HqUTN1uubB6cJ2BX478Pev9eDh9dbfJk6dzvIlrhjThSMR3YR6M8dQT
         avGXxrOVMVrCRwTFkOJ7Xa/xPOWCtxhCDjBJJWir//nn5Qy4++dhPEW+MRkCKqS0VJdN
         1S66ERi/3+PddpXY3kHVUWOhhIZEMPxZjV1NMLr1y+j6MytoM9vc7zCzBxTok7VBKnSR
         SiI9gCXq6ve2CIIkyZCuPU3OWgJAurNbu6Rd8cEU7x6u3zZdzGRWPp8/eHcA05oK6SVp
         m4VI4Oard7eEr3icAg8aojgjkhRfUAohqhMRwbTNIFrthjapWPiYHaTJHbpVkPWgKJmH
         WCnA==
X-Gm-Message-State: AOJu0Ywyph8NlwmGADvBW2LEhIGQmorf+iYCgtXz8wP97JZApOaQr2rw
        hqTQq26UQpfYLvOibkkdYqvCew==
X-Google-Smtp-Source: AGHT+IHi1b/spa02y3F0OEnt2M1o/GMERkoNPp3UJjEHhkC9Gqexbv7cyCGUeH5zfIvKXMN3JFPEAA==
X-Received: by 2002:a17:906:8445:b0:99c:281:9987 with SMTP id e5-20020a170906844500b0099c02819987mr9804003ejy.36.1692772062737;
        Tue, 22 Aug 2023 23:27:42 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id r16-20020a170906705000b0099bd6026f45sm9441832ejj.198.2023.08.22.23.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 23:27:42 -0700 (PDT)
Message-ID: <4db8ba95-0d0d-0d1c-1d90-29833f0405ae@linaro.org>
Date:   Wed, 23 Aug 2023 08:27:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH V10 1/4] dt-bindings: clock: document Amlogic S4 SoC PLL
 clock controller
To:     Yu Tu <yu.tu@amlogic.com>, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     kelvin.zhang@amlogic.com, qi.duan@amlogic.com
References: <20230822082750.27633-1-yu.tu@amlogic.com>
 <20230822082750.27633-2-yu.tu@amlogic.com>
 <d2a6060a-c8a0-51c7-f621-1bed2c3074b4@linaro.org>
 <e9932f90-a011-ee9b-ef09-f2e2475bdd0d@amlogic.com>
 <c2faccd6-1d77-9b81-d8d9-830e95e804af@linaro.org>
 <eee9e730-f69b-1150-07fe-0d40a14b5a50@amlogic.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <eee9e730-f69b-1150-07fe-0d40a14b5a50@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2023 08:20, Yu Tu wrote:
> 
> 
> On 2023/8/23 13:43, Krzysztof Kozlowski wrote:
>>
>> [ EXTERNAL EMAIL ]
>>
>> On 23/08/2023 04:24, Yu Tu wrote:
>>>
>>>
>>> On 2023/8/23 0:32, Krzysztof Kozlowski wrote:
>>>> [ EXTERNAL EMAIL ]
>>>>> On 22/08/2023 10:27, Yu Tu wrote:
>>>>> Add the S4 PLL clock controller dt-bindings in the S4 SoC family.
>>>>>
>>>>> Signed-off-by: Yu Tu <yu.tu@amlogic.com>
>>>>
>>>> Lovely. I sent youa  friendly reminder at v8 which turns our you
>>>> ignored. You keep ignoring, I will start ignoring as well from now on.
>>>
>>> Hi Krzysztof，
>>>
>>> Sorry. I did not forget the friendly reminder in v8, I consulted you for
>>> this at the time, so I re-sent V9 after adding the tag. Because it was
>>> just "meson" that was removed. But V10 is based on Neil's patch, which I
>>> think is a bit of a change. So I didn't dare add it. Instead of
>>> forgetting your reminder.
>>>
>>> So what should I do, I'll follow your advice exactly.
>>
>> I don't think there was much difference between the version, which
>> received the review, and the current patch. Otherwise your changelog
>> should say that you drop Rb tag. Rebasing of something somewhere is not
>> the reason, so please describe what are the differences in the patch?
> 
> The current patch and V9 patch difference is mainly based on Neil patch 
> I put "include/dt - bindings/clock/amlogic,s4-pll-clkc.h" this document 
> describes the clock index all exposed.

Adding one include is insignificant change, thus any Rb tags should stay.
> 
> Next, I should add Rob's tag and resend it. If you have any other 
> suggestions, please tell me and I will strictly follow your suggestions.

I cannot add someone's tag, thus on your next version you must include
it. I told this last time.

Best regards,
Krzysztof

