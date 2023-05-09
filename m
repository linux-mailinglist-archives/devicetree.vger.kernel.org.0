Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4BC6FC14C
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 10:08:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234967AbjEIIIx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 04:08:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjEIIIb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 04:08:31 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04FA561BF
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 01:07:55 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-50bc22805d3so8559573a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 01:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683619673; x=1686211673;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xiXwYK/qlqfochXenjQWIGbfKF1O82XonJ4AkVNtzxI=;
        b=pvqC2zB/uI/j11QALDWd46ubTDORZFI0G1xpsVreGSYB6cyEwzfcBJfdKZUMSS0SN3
         7175lh8g2ukI+zg0erg+IZIbtgHUwWOCf1yqgcqetWa6cbwckCNRqc2ENIc/GORR+myt
         IiHpCxyhTOWWsR4JtR0JNChk2o6nplglcexqKxY5flJEJ0chhvxDmmfbgcsLL4HqbnCr
         0U58m4fbYBQ0CG6XDM1vhBYSc/M96D1LtMa4q/PxS2Ss49GzvVuIsdxnuv619Sqv+Q5x
         nx0hvRKfmy/VeXQY00felOHUptta4wg9EaemwBxDYFnFjf5/5WyUSASgLQ83Zd2I5P6F
         rZQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683619673; x=1686211673;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xiXwYK/qlqfochXenjQWIGbfKF1O82XonJ4AkVNtzxI=;
        b=IQEcbXfwKfnVhxUg9oYUnQ930BGMkQ4k/8fEkFZehHzoAEJE9enxmghBKRUZtntBLO
         CSYl+kGfztkCaPXG+EReRUY2nuQJKaqkLJfzUH8Cv+DkRh4NyrJc0L55cnBo2CrQsF7Z
         iZ2PjQfq7eQU7VyAcicAYWMCWAPFgs65krajtrFIzyMq/U6flZyOvZixR/dg25KEybwQ
         YQMLWLO+yxQEwG55bGp9OHQ4rC1vs/CJKq1RFvVFm21ljp2IIV74Ja07pQBpVKXkvwKD
         DRVlMisthfvrDoIO4YeRcoIFqUjMZcVTYBRIEe9z/jGKd8t6kJetPyZrUu68wqh6lGc+
         n3MQ==
X-Gm-Message-State: AC+VfDwIhaEXgZVNIDIQ/8PvnKz9DNJtZXliRHD3ksnlOdOPHK2c0dKo
        NyrzG3sbWY7UXkqHJ24gxo8GOw==
X-Google-Smtp-Source: ACHHUZ6LeuBaKTM7VaNM45EAaDLaVFckcy6LXVum5/1QBFK+KND3UxSsGpv4iCJW4AROsp8JVXBGmA==
X-Received: by 2002:a05:6402:202a:b0:508:5062:8d8c with SMTP id ay10-20020a056402202a00b0050850628d8cmr9872420edb.22.1683619673393;
        Tue, 09 May 2023 01:07:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id s24-20020aa7d798000000b0050bc37ff74asm476126edq.44.2023.05.09.01.07.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 01:07:52 -0700 (PDT)
Message-ID: <8119eec8-0190-b6a5-85a7-301bcb81b0c9@linaro.org>
Date:   Tue, 9 May 2023 10:07:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [EXT] Re: [PATCH 1/2 v7] dt-bindings: watchdog: marvell GTI
 system watchdog driver
Content-Language: en-US
To:     Bharat Bhushan <bbhushan2@marvell.com>,
        "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
        "linux@roeck-us.net" <linux@roeck-us.net>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Sunil Kovvuri Goutham <sgoutham@marvell.com>
References: <20230508131515.19403-1-bbhushan2@marvell.com>
 <ea9ae4c9-2808-bf22-70a3-bb7e7b1168d0@linaro.org>
 <DM5PR1801MB1883175A2538B85FEF571B7AE3769@DM5PR1801MB1883.namprd18.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DM5PR1801MB1883175A2538B85FEF571B7AE3769@DM5PR1801MB1883.namprd18.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 09:26, Bharat Bhushan wrote:


>>> +properties:
>>> +  compatible:
>>> +    oneOf:
>>> +      - const: marvell,octeontx2-wdt
>>
>> Why is this alone? Judging by the enum below, octeontx2 is not specific.
>>
>>> +      - items:
>>> +          - enum:
>>> +              - marvell,octeontx2-95xx-wdt
>>> +              - marvell,octeontx2-96xx-wdt
>>> +              - marvell,octeontx2-98xx-wdt
>>
>> We don't allow wildcards in general
> 
> Marvell have octeontx2 series of processor which have watchdog timer.
> In 95xx,98xx,96xx are the processors in octeontx2 series of processor. So octeontx2-95xx is on soc, octeontx2-96xx is another and so on.

No, 95xx is not a processor. Otherwise please point me to exact product
datasheet. Hint: I checked it.

> 
>>
>>> +          - const: marvell,octeontx2-wdt
>>> +      - const: marvell,cn10k-wdt
>>
>> Same question - why is this alone?
> Same here, Marvell have cn10k series of processors and cn10kx and cnf10kx are the processor in this series.

I don't understand how does it explain my concern. This is alone because
there are series of processors? How is that related?

> 
> One of the difference between octeontx2 and cn10k series processor is number of timers available. Which within the available set of timers one of the timer is programmed to be watchdog timer. 

Wrap your replies. It's difficult to read.

> 
> Can you please propose how you want these compatible to be defined?

https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml#L19

Best regards,
Krzysztof

