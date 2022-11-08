Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9281B6217BE
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 16:12:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234209AbiKHPMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 10:12:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233983AbiKHPMF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 10:12:05 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 424AB4D5F2
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 07:12:03 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id l12so10525369lfp.6
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 07:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yke8ySwFT8yI9hYAW7UzkJ/JFVT+jZWZcHr39eO1G2w=;
        b=yznuQ4k9GcH2KW7oxpjxJR1K/7uJiGBHPT8KXuTERVcAaUvEdVD8/KnbJvhli6Ohvj
         MCuhUuInk8vWV+vJSKifas1QsDcOeUhbxkuqxFS0pA40drK7D8WcE3LsGRQq7wLnXKc1
         jXLo+y34Gu/k3ZsKcyO5MtBFmtzV+EiWzKD55qeqrwNigXyiVlGLOFXYMj5jUwa6TivU
         03RD4Y+FsglqWVoi/27DS9WxUYWuMxES7tzm50RKYonJ+irbedvPk9hUPhLgn6Y8keES
         6+Ud4rL8mCGk+jwH5PX0BfqPTlLLPgRBm0MFw71uYZXG3KwX4UEZZ+J1exdxczlzs+WG
         upFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yke8ySwFT8yI9hYAW7UzkJ/JFVT+jZWZcHr39eO1G2w=;
        b=BjIwwoW8YSX1cxEcmmAnBoOeVOMIcXIeeYX3aY/GZveHWbXYwshEH/1GHpV0qlXjGF
         F3M0x36doauLBUnRH1ScI0a7h19J1S1D92IbKvz1J9gfh/TWdDgplSTurhYYrEFMchOj
         EFMXJcYsxVdSF18J3WvRRWQCUSRBijntVoovd4RyTs0h7i9lfdN0OjGvyPWehB/DDde+
         hH29RahGhGCNG/twSeWqLRk1qLw6L2L82mGrcv8Yv+KYr6UcyZe+woU0BkJLlTt5hF8d
         c4EnJwWlAUAQIME8Evtxfj/2ysUJF8TrkghVMsfcEhEATQvHUozVqP3ZR/HNnQJywl7y
         pL4Q==
X-Gm-Message-State: ACrzQf0+98hh6/sUfV/5ZAGpjFVSnZUuWCmTlvn3bxCgU/oL11zjYavV
        S7QXQhtg2RonH1YQJAfdvCPpZg==
X-Google-Smtp-Source: AMsMyM4Fi4XBlVQ4IJL2tNhKzXZ0y7c1f5CuFDM4E4y+/EYUr9aQPreBzZeARcVapFm76Z2e7MXQ5g==
X-Received: by 2002:a19:6712:0:b0:4b1:b061:480e with SMTP id b18-20020a196712000000b004b1b061480emr8408066lfc.624.1667920321609;
        Tue, 08 Nov 2022 07:12:01 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b002774e7267a7sm1761146ljo.25.2022.11.08.07.12.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 07:12:00 -0800 (PST)
Message-ID: <a1e4a039-3b65-2f2b-2196-340cc754b1c1@linaro.org>
Date:   Tue, 8 Nov 2022 16:11:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 5/5] arm64: dts: uniphier: Add NX1 SoC and boards
 support
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Masami Hiramatsu <mhiramat@kernel.org>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221107103410.3443-1-hayashi.kunihiko@socionext.com>
 <20221107103410.3443-6-hayashi.kunihiko@socionext.com>
 <f8f83839-2e76-e500-a16e-5fd2985a278d@linaro.org>
 <df21cfca-67ed-0c78-7f1e-13e321edabe1@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <df21cfca-67ed-0c78-7f1e-13e321edabe1@socionext.com>
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

On 08/11/2022 15:30, Kunihiko Hayashi wrote:
> Hi Krzysztof,
> 
> On 2022/11/08 20:13, Krzysztof Kozlowski wrote:
>> On 07/11/2022 11:34, Kunihiko Hayashi wrote:
>>> Initial version of devicetree sources for NX1 SoC and boards.
>>>
>>> NX1 SoC belongs to the UniPhier armv8 architecture platform, and is
>>> designed for IoT and AI/ML application fields.
>>>
>>
>>> +
>>> +		soc_glue: syscon@1f800000 {
>>> +			compatible = "socionext,uniphier-nx1-soc-glue",
>>> +				     "simple-mfd", "syscon";
>>> +			reg = <0x1f800000 0x2000>;
>>> +
>>> +			pinctrl: pinctrl {
>>> +				compatible = "socionext,uniphier-nx1-pinctrl";
>>
>> So instead of documenting the hardware precisily, you have one big bag
>> for everything under simple-mfd. This is not how the SoC should be
>> described in DTS.
> 
> Sorry I don't understand. This is inherited from the previous descriptions,
> but is there some example to express DTS correctly about that?

I think yes, although it actually depends what is this hardware.
Generally speaking, do not use simple-mfd and syscon when these are not
really simple devices. There are quite many in your DTS, which got my
attention. Instead - have regular device with or without children.

There is no real need to have this a simple-mfd with one children
without any resources (no address space, no clocks, no interrupts, nothing).

Why this syscon/mfd and pinctrl is not a regular, one device?

> 
>>
>>> +			};
>>> +		};
>>> +
>>> +		soc-glue@1f900000 {
>>> +			compatible = "simple-mfd";
>>
>> No, it is not allowed on its own. You need a specific compatible and
>> bindings describing its children.
> 
> I saw the definition of "simple-mfd" itself is only in mfd/mfd.txt.
> 
> Currently there are only efuse devices as children, and this space means
> nothing. I think it had better define the devices directly.

You need to start describe the hardware. efuse is an efuse, not MFD.
pinctrl is pinctrl not MFD + pinctrl.

Best regards,
Krzysztof

