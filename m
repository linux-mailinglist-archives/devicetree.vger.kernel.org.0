Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D9D562258D
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 09:35:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229842AbiKIIfH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 03:35:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbiKIIfF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 03:35:05 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8C9913D0D
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 00:35:03 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id d3so24671117ljl.1
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 00:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eRe+iUOfvkcxJoHuIXXR4MLe1rQG7TVTlNUlRcP2Dec=;
        b=suGsbchNoQd/YUlruHGawy9LwhK15ytErdqSCujrzGeKX0Cp3GCYsv43dFbpq5F8m0
         g856GrqvMawQZJ850dnqRqa1rvFF68eH5ae02Ol21a4gKgu1gqH2PWivtq+VvBulZxS4
         hxIBdZyvmfLnOeMajYjAcHVQ8R7B0S+a3hi5nzM1utqytr3n1J4unHwrrrOqKohVcUxU
         09OrNnRsQt36ZK6ejjQodcZJuPnoHJ2uUk+lY6NOQdjDaFONDc/TfVVe9hU0ipau5JzJ
         sDmfBIgZRc6QFGRpUIB4ORNEfR+vvAmmygh6MdDj3EYwhoekffKxT5IO4ZPWf3uBnR7L
         M/TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eRe+iUOfvkcxJoHuIXXR4MLe1rQG7TVTlNUlRcP2Dec=;
        b=fVqn0xHifyH0abaxmsLM3vE+d0moNjwwM5Qsyi1uI05jy/XtK3iAbQJfHxq6CNJCg8
         uSd8EXPvrejoLnYG8xihwUUTyYO+LOXUzSUNcyWdQoWCygo8rMiBNpF7BrxgnleL9rxr
         yLAFkZvEiiMxqfy1gLimojlnmIB5bKdkOe5GxV5Jpd2fcAUqlqVeOy/dr27XVup65hFD
         SLQGJ7q4jhGNuzSKcJPz+onRwwOI6ABGS3JcZjWB/uGx9EDlHcxQ7501G1hZe2XnFcoK
         OPRXy6rF9R6HEwazoWqqvrau+9Bp9G6qRGmN7SaaZ9JdmoDf34N3bNB8VztcNxW51LGn
         HPUA==
X-Gm-Message-State: ACrzQf1Or+zMiWwKOazsjk6GrBOJEJrdwn3RvniAj5GjYIQqY7ISre86
        b19pUh2ruPwlzCwwepPe0IQ8yw==
X-Google-Smtp-Source: AMsMyM5EvvhEo+VK7KZYK5bZiAFh/YqyA+iH9nSfpX2HhhgVJxaJmE2xnkCBjkvHqVskzDmv2WqMyA==
X-Received: by 2002:a05:651c:179e:b0:26f:cba5:8ea1 with SMTP id bn30-20020a05651c179e00b0026fcba58ea1mr21850276ljb.241.1667982902089;
        Wed, 09 Nov 2022 00:35:02 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id w8-20020ac24428000000b00492ea54beeasm2119375lfl.306.2022.11.09.00.35.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 00:35:01 -0800 (PST)
Message-ID: <5ed58fec-d929-3519-0d03-3e8061c6ca91@linaro.org>
Date:   Wed, 9 Nov 2022 09:35:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 3/7] dt-bindings: mfd: add binding for Apple Mac System
 Management Controller
Content-Language: en-US
To:     "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        asahi@lists.linux.dev, devicetree@vger.kernel.org,
        Hector Martin <marcan@marcan.st>,
        Jonathan Corbet <corbet@lwn.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
        linux-gpio@vger.kernel.org, Petr Mladek <pmladek@suse.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        Sven Peter <sven@svenpeter.dev>
References: <Y2qEpgIdpRTzTQbN@shell.armlinux.org.uk>
 <E1osRXT-002mw3-JR@rmk-PC.armlinux.org.uk>
 <531d88b8-75db-1d8f-1384-b8d05594e7b3@linaro.org>
 <Y2rWp4wasbflS/0y@shell.armlinux.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y2rWp4wasbflS/0y@shell.armlinux.org.uk>
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

On 08/11/2022 23:22, Russell King (Oracle) wrote:
> On Tue, Nov 08, 2022 at 09:55:58PM +0100, Krzysztof Kozlowski wrote:
>> On 08/11/2022 17:33, Russell King (Oracle) wrote:
>>> Add a DT binding for the Apple Mac System Management Controller.
>>
>> Drop the second, redundant "binding" from subject. It's already in prefix.
> 
> Yet another thing that's been there from the start... how many more
> things are you going to pick up in subsequent versions of the patch?
> When does this stop?
> 
> In any case, taking your comment literally,
> 
> "dt-bindings: mfd: add for Apple Mac System Management Controller"
> 
> makes no sense, so presumably you want something more than that.

dt-bindings: mfd: add Apple Mac System Management Controller

> 
> In any case, I see several recent cases already merged which follow
> the pattern that I've used and that you've reviewed.

Any many received comments to fix. I wouldn't mention it if there was no
second issue - your patchset is non-bisectable. Since you must resend,
please adjust the subject.

> 
>>> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
>>> ---
>>>  .../devicetree/bindings/mfd/apple,smc.yaml    | 67 +++++++++++++++++++
>>>  1 file changed, 67 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/mfd/apple,smc.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/mfd/apple,smc.yaml b/Documentation/devicetree/bindings/mfd/apple,smc.yaml
>>> new file mode 100644
>>> index 000000000000..014eba5a1bbc
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/mfd/apple,smc.yaml
>>> @@ -0,0 +1,67 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/mfd/apple,smc.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Apple Mac System Management Controller
>>> +
>>> +maintainers:
>>> +  - Hector Martin <marcan@marcan.st>
>>> +
>>> +description:
>>> +  Apple Mac System Management Controller implements various functions
>>> +  such as GPIO, RTC, power, reboot.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - enum:
>>> +          - apple,t6000-smc
>>> +          - apple,t8103-smc
>>> +          - apple,t8112-smc
>>> +      - const: apple,smc
>>> +
>>> +  reg:
>>> +    items:
>>> +      - description: SMC area
>>> +      - description: SRAM area
>>> +
>>> +  reg-names:
>>> +    items:
>>> +      - const: smc
>>> +      - const: sram
>>> +
>>> +  mboxes:
>>> +    maxItems: 1
>>> +
>>> +  gpio:
>>> +    $ref: /schemas/gpio/gpio-macsmc.yaml
>>
>> So this depends on other patch, so:
>> 1. You need mention the dependency in cover letter (nothing there),
>> 2. Re-order patches.
>>
>> The GPIO cannot go separate tree and this must be explicitly communicated.
> 
> Sigh, getting an order that is sensible is really bloody difficult.
> I'm quite sure Lee is only going to want to apply the mfd bits. Then
> what do we do with the other bits? GPIO stuff via the GPIO tree, then
> wait a cycle before the rest can be merged. Or what?

It's nothing new... bindings headers, drivers and DTS all have it since
years. Your case is actually easy to solve:
1. Re-order patches, describe dependency, get ack from one maintainer so
it can go via other.
2. Squash patches and describe dependency. Only one maintainer will need
to pick it up (with second's ack).

I don't understand why we talk about such basics, you are far way more
experienced in kernel development than many of us...

Best regards,
Krzysztof

