Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C314631E67
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:33:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbiKUKdA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:33:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbiKUKcz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:32:55 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DDA41400E
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:32:53 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id l12so18131267lfp.6
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vtiHEjAIttB7CAn3xJDjqRmiO71yc6P2uSCGvhcaPgQ=;
        b=Ofw8MR2aR6I3oqDUrvg1WNpkJKSdUMRram8Be151ukQ+WTMKwDwGqPfs8kY2MGrPvO
         U7+N/+FpaGf6O0ZmfJ1JX6jkIigIJUqTNAQ/Da8SIuM5Z4DLuiljxGq9Jt3Q6MgLFeLJ
         wGDL7AxBH+e0cYbQNIx0O+h0Ucz53b+QrEg52FqhL0Rn1rmihPwkho0MD7L6nXinjJGA
         1lQbUjb9tWuI1m4VaF2KE3KZH42XuF1GoapyjoUWXSkXEOVjghzI2kYZ/1e5qxE26RT1
         qhC7kT+VkrIpt00ztie7cCJwDKGF7LsfdErAqFVSoSk5YLE1JwAnQD0SDMv/8K9oMRjg
         HadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vtiHEjAIttB7CAn3xJDjqRmiO71yc6P2uSCGvhcaPgQ=;
        b=dtbcqIhgYLrcTwVbWO+ULI7PVegzMhxracMVtsU3TF5qgis2HRkjZqSAY6plmIlBmg
         lPLriuHXDa9SdNtHolORoeY1oJCSy9wEvqlyFdkPx4zlKn5MIaan2B9MYYRf56j6X8pz
         Wn5fY38/YhRxRZgJosB8BvgPVRWdCvkA6Nuw9yfZO9WXLc5rLEQp7lqIzwg6WC1IivAL
         fW21n0pev6XC2fycYvvNUIToQ9OrgSLaq8tSdw8kJ5CiffpIvzZWh02kqaMjgGlEtmsI
         MlArvEF382Rym2/n/tGNO6+VTaH3atcL0KIV1DrOpMPVEKS69fpHak+PONF5QSF+a8Na
         +eBg==
X-Gm-Message-State: ANoB5pkzeBWGbQ0Y+MMwo/h7j5QF4WfFhg7d2/BXhABsi+c0gvc+qSPq
        PFce5Nw7X6LSS1U4bi2h83vYNA==
X-Google-Smtp-Source: AA0mqf6iKN7PSXL75uuqu7QQqMYuqJfBl07GRSGM9UAfM8cwfuGCsmBq23v6rCPQVrw0DlKFfCQRJw==
X-Received: by 2002:ac2:46e1:0:b0:4b4:c234:b79d with SMTP id q1-20020ac246e1000000b004b4c234b79dmr1420378lfo.557.1669026771836;
        Mon, 21 Nov 2022 02:32:51 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i10-20020ac2522a000000b00497a32e2576sm1957021lfl.32.2022.11.21.02.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:32:51 -0800 (PST)
Message-ID: <beb1a813-a1c3-d660-0fa1-ef4c167245e7@linaro.org>
Date:   Mon, 21 Nov 2022 11:32:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: pwm: ti,pwm-omap-dmtimer: Update binding for
 yaml
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-omap@vger.kernel.org, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
References: <20221118125435.9479-1-tony@atomide.com>
 <debfe50a-7e94-9703-efde-2c805faa3d2b@linaro.org>
 <Y3eXe/S6MMaDGwEt@atomide.com>
 <bedbaebe-d84b-fc0b-9492-4503a6d59a83@linaro.org>
 <Y3tOJZ3LJroyXD6D@atomide.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3tOJZ3LJroyXD6D@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 11:08, Tony Lindgren wrote:
> * Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [221118 14:33]:
>> On 18/11/2022 15:32, Tony Lindgren wrote:
>>> * Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [221118 14:12]:
>>>> On 18/11/2022 13:54, Tony Lindgren wrote:
>>>>> +properties:
>>>>> +  $nodename:
>>>>> +    pattern: "^pwm-([1-9]|1[0-2])$"
>>>>
>>>> Drop the nodename, device schemas do not need to enforce it.
>>>
>>> Hmm I think that's needed to avoid warnings if the knob is
>>> tweaked to 11? Right now the max timer value is 12.
>>
>> Which warnings? The pwm.yaml allows up to 15.
> 
> Heh I was using dec instead of hex.. :) Yup pwm.yaml works just fine.

This could be fixed (extended) in pwm.yaml as well, because simple
human-readable increments/IDs are usually decimal. hex is only for
addresses.

Best regards,
Krzysztof

