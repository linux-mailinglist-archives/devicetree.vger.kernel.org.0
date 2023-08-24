Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30A7A786A69
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 10:44:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbjHXIoG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 04:44:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230527AbjHXInf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 04:43:35 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B22CC172A
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 01:43:15 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-52557cc5e7bso8264407a12.0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 01:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692866594; x=1693471394;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=psTM6PkHgTPawHaVJ6bzDvzcYA39tQTvt5rxleFKO10=;
        b=iEPC3IDzW6YHX96pOPzSzmpcFyWj2zBpgPpv4qRhnpeI55+VoEPcde53/SNq4SYI7r
         OxR1k/QwJ+/WfycLMU7wlU6soKokoNFBmjiHgPhw+um218Kk9jOyImB9pH9qH5ALjioa
         SxMWWatJ8v0LqLge0/abSFyFnk4ybq3dA3s5VBTBKHKQYM/E+qLHUQ0qZCfRfYazE6GR
         o3X/l43LHTetY8xpgtFIPo6LY6yzmPsGIidJTfSZ03tCUP8psBofK+ZyTmdy6OfJBn6A
         8AlpgQZrnjPBPnbjgE0RjR9y3yZwhVBv8T8SxM52Z1hYV6S0Mrr/HEgRC0708uBqQMnQ
         blZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692866594; x=1693471394;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=psTM6PkHgTPawHaVJ6bzDvzcYA39tQTvt5rxleFKO10=;
        b=W7o/bW7Nt8m7brllrALVaIDSFUEayFO+7tIyL8cl6opwtnS1QcvYVZTxaiWCD1VXMX
         f55papj3tlJ65B2WFJvbjpx2qtX77jeLsqWNbY98wHGQNxRiqLarqCBD31usIcJefcfc
         ElnhsVcSNzdK6BA7u7cxAwXYWmoZub4le03Uj7w0fuqn/gqe3tIXMQSGHtPurHHIZ6AP
         uOONTpC3VU9MqDIKVYvVz01/KN0j+fYGcjAMY0ELebEKNGIGolgOC4V/r1NLeba26xEj
         pLRQdwblCgVZiemP5zyfOREQFsNTf5l1Jv/242eCzE4YB9N7Gl7/bIBidHP2VhycBFi/
         2U+g==
X-Gm-Message-State: AOJu0Ywj8BnBOSYPOdvieD5wnY5MTplYp07UgSdEmtphnkOFqXDJ0xjy
        kmHQ237ZwOEwkXzY+UHrFPR2BA==
X-Google-Smtp-Source: AGHT+IFwelOoWI5YGd5zWjT5DX3gKXVt9ooLDINX8jgzGT4asChH6rsKBW+mzfLxZ1BYuPmx980gvQ==
X-Received: by 2002:a50:ec8c:0:b0:525:4471:6b59 with SMTP id e12-20020a50ec8c000000b0052544716b59mr12411056edr.7.1692866594088;
        Thu, 24 Aug 2023 01:43:14 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id q1-20020aa7da81000000b0052237dfa82fsm10159282eds.64.2023.08.24.01.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 01:43:13 -0700 (PDT)
Message-ID: <5894c8db-4b85-e7dd-e894-33aa8a448153@linaro.org>
Date:   Thu, 24 Aug 2023 10:43:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v1 2/2] dt-bindings: extcon: Add Realtek DHC RTD SoC
 Type-C
Content-Language: en-US
To:     =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= 
        <stanley_chang@realtek.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230822102846.4683-1-stanley_chang@realtek.com>
 <20230822102846.4683-2-stanley_chang@realtek.com>
 <1e0632d6-73e9-4633-a709-bf9140f2fd32@linaro.org>
 <ca406c19e59145fd9e7e035ea5ad3eeb@realtek.com>
 <50ce8e71-613e-1ef5-0c23-67a2f6f78949@linaro.org>
 <1390ad28e50f493fa72209fe29b7f3f4@realtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1390ad28e50f493fa72209fe29b7f3f4@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 09:23, Stanley Chang[昌育德] wrote:
> Hi Krzysztof,
> 
>>>>> +
>>>>> +title: Realtek DHC RTD SoCs USB Type-C detection
>>>>
>>>> Type-c usually go to usb directory.
>>>
>>> This binding is not for a type-c controller.
>>> It is an extcon device for type-c connector detection.
>>> So I put it at extcon directory.
>>
>> If this is not a type-c controller, then what is it? Explain me please what is an
>> "extcon device" without using any Linux subsystem naming.
> 
> Sorry. "extcon device" may be the wrong name I'm using.
> 
> As far as I know, type-c controller supports PD detection, role detection, role swap and cc configuration.
> But in our SoC, type c module only supports role detection.
> So I don't think it's a type-c controller.

So module handling some parts of "Type-C" is not a "Type-C controller"
but if such module handles a bit more, it becomes Type-C?

> 
> I found a similar driver at
> drivers/extcon/extcon-usbc-cros-ec.c
> It belongs to External Connector, which can detect USB Type C cables.

That's a driver, not a binding...

> 
> So our driver is an external connector driver.

Driver yes, not binding.

> 
>>>
>>> And I will add “connector” to the title.
>>> title: Realtek DHC RTD SoCs USB Type-C Connector detection
>>
>> So usb...
> 
> I refer to this binding, and it is in folder bindings/extcon.
> docs/devicetree/bindings/extcon/extcon-usbc-cros-ec.yaml
> Title: ChromeOS EC USB Type-C Cable and Accessory Detection

So maybe it should be moved as well?

extcon is a Linux framework. If you think extcon is a type of hardware,
then please tell me what it is exactly. Please define it. And then I
wonder why the name "extcon" is anyhow connected to Type-C USB.

Best regards,
Krzysztof

