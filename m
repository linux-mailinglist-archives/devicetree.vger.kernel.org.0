Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E58E6890F0
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 08:35:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232071AbjBCHfI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 02:35:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbjBCHfI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 02:35:08 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56F4C92C24
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 23:35:05 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id l21-20020a05600c1d1500b003dfe462b7e4so1151252wms.0
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 23:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9gvQASbJh6yblI9HLyL9BA1AkxK02X0X1bUuLfHjS6Y=;
        b=uvHAkCKKv9jaLTrqclc+YVwEWVbeYCsDqBz5CikpYJdSmwzrCleQR62GK7K0D37bNP
         fmkOAhkd8wqfq9PwXnM6BD9S9VCCX/B2KjvMtxnQMB79KwGzHfl+fyv45gqf+0YkuJXD
         jD1CRBgqm24LZfS5q1DDLSr6KqrPZTQfUrb5kTm0aGFMeq5G5kTlKf71CQEuWnOC651g
         mojiFDvUpnYjnbMosKrLsbFFoYJQevpLHYCI48lQlq0HqN3YapZ3ekn5v9yYMiijh2Mb
         jId3jJaz/grbRiGMbHEm8k8F00U4fjqYfxbuK6ddJXHgvhJtEgJxzppUVE1dMuD7uOWy
         jnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9gvQASbJh6yblI9HLyL9BA1AkxK02X0X1bUuLfHjS6Y=;
        b=kB5fikQGNc3OSrVOLW/53eI1Vcu+LXW2Y/ta/Bcp+fvY6mPdkivBC1cTg0jM4zdiVG
         xEzHrEDm8Oahyru6CRugZFdcWJzCK7iFek3EBce6xFaPBE2V9qMcQ+hI4dePftQxLoXJ
         NEafPX1DvG6uHj0LYSZ0a8Qj8yXLRAi+CNclkGaP+k7NbbAHjVkMMo9pTb/4wbMRsIX6
         YpsGgMnFhV9w8irKcglz8s3Pcj1JOb6c5s6CDzm5NiHKS9lKg/h0vJccydu5wgT88hkS
         /Mc3oM52fIz8us6S4Wy2LksCExkxqQfdSd2v/aN09tr4phUAbRCGLC+ZxL3ZLhb79iwA
         F8Qw==
X-Gm-Message-State: AO0yUKX2YjeN3FLcceSOiJ8ev1QEAI5m/JzT/O3ntolePurxDZRvIrrV
        66SQhe9nj305DOn8rUblq+VfBNKdXJLvkP6o
X-Google-Smtp-Source: AK7set+7EQCDSY4lF1NxTlzO55C4gJXKZ5UPoTpj3TVQyOoTlojUpxEF5Vu/3xdr8QIeYTz6cspCPQ==
X-Received: by 2002:a05:600c:198b:b0:3df:3bd6:63e5 with SMTP id t11-20020a05600c198b00b003df3bd663e5mr6822647wmq.12.1675409703874;
        Thu, 02 Feb 2023 23:35:03 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r13-20020a05600c35cd00b003dc5b59ed7asm2021121wmq.11.2023.02.02.23.35.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 23:35:03 -0800 (PST)
Message-ID: <1b2e69f2-a527-2db9-d45a-3b493b6bad5e@linaro.org>
Date:   Fri, 3 Feb 2023 08:35:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] Fixed the schema binding according to test
Content-Language: en-US
To:     Ki-Seok Jo <kiseok.jo@irondevice.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230202090715.18384-1-kiseok.jo@irondevice.com>
 <ac140660-0df0-8b43-3585-17511a280830@linaro.org>
 <SLXP216MB0077A1B1F744D74A5B338F0C8CD69@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
 <4111d645-478a-e55f-60bd-4ecbef077183@linaro.org>
 <SLXP216MB00777901D3E60C271FB54E3E8CD79@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SLXP216MB00777901D3E60C271FB54E3E8CD79@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
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

On 03/02/2023 06:06, Ki-Seok Jo wrote:
>>>>> +  sys-clk-id:
>>>>> +    description: select the using system clock.
>>>>
>>>> What does it mean? Why do you need such property instead of clocks?
>>>
>>> This can receive an external clock, but it can use internal clock.
>>> Should I write all the clock descriptions in case?
>>
>> How do you configure and enable external clock with this property? I don't
>> see it. If the device has clock input, this should be "clocks". If it is
>> omitted, then internal clock is used.
>>
> 
> Basically, this value is set with set_sysclk in the dai operations.
> So, I also get the clk_id from this function and set it.
> From the point of view of the codec driver, there are case where the machine
> driver does not give this value(clk_id).

It's entirely different discussion. You did not document the
clocks/values for it and just wrote "select the using", so like a "bool"
property.

You need bindings documenting the clocks. Use the same name as here:
https://lore.kernel.org/all/20221022162742.21671-2-aidanmacdonald.0x0@gmail.com/


Best regards,
Krzysztof

