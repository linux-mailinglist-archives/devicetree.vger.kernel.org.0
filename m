Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82B10622594
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 09:36:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbiKIIgR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 03:36:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229940AbiKIIgQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 03:36:16 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 391BE13EAC
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 00:36:15 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id c1so22964111lfi.7
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 00:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vK9IxPdoGJuzbrNJGX/e/RWzrnoujHXpyqaM+pgnBbM=;
        b=cPeGKQAvMgayPYCiGKtAPK1gPNYzPZwICN8Kp8lpnQbMw9TA24s+JGqbmrtZycyCpx
         CNZWJCbJ9c7H+M+cpY50NHAPPcmwI8765qLBKDeCMgSKer3NxNYW3ttI7WgZ36oQV/tf
         0CEqyWg9bMJz023zU2okJTy7TpLk6AsbQh34AMG0cj5gNSqWmg+pHKE3ZSJfvgjZkXYj
         XrSdLkvtNV5jHrV387kxzUwP45ks+ZttxGdD+vGektVuTDhcDS9N0NZ78+q3uiTv65R4
         t3eykadFZzIwbGxgi6plsNSTQFAHF3G5Sya6mtEfUF3KXaVo036vRFhZvkXxN828tDiP
         Zhlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vK9IxPdoGJuzbrNJGX/e/RWzrnoujHXpyqaM+pgnBbM=;
        b=G2hKIEAE8VA6xxmR/OgbNS0ACfIFTYGsl0okxbIhd60xbAc3wser4o1c2zkkqEefIX
         q/TMGYXZ9v4VWtkISKkpUvvKrKtc1bEfMxIo3H0Z8kxekFAeuQt615hhlKP0WmmupRua
         MhAa5+V07Hp+rqVk1yyWPfhS5wbClLU2eahm3mcalLwmPAz8dX2dd4U1uWmndYk/wbde
         cXtFzB/lfVphP50+X2r+a1N5F7j5zRce9k0aORsKOQ9tusk/S6CC7VyiZ7/IHKWKHKH1
         6HkCI9+QllxHoqKORoJJoZs/tXO3FuejPSdk+fX5V/rk4LWgnipDN3t6XS7R1h1K641z
         y2Sw==
X-Gm-Message-State: ACrzQf2SxUtW+NEZgVGYdoOTkBWw5Q+JVjtyBRd41V6f3zmY+88edNYN
        zYcTGgZdXIJak+H9BXxrYJCPMg==
X-Google-Smtp-Source: AMsMyM68uv63wK0EbNnQkmuEMH+CrM4l78TeZm/qeYXZACgfuIZbAJ+torxeLvUDplUslWBZiew3Jg==
X-Received: by 2002:a19:5015:0:b0:4b0:3544:d4ae with SMTP id e21-20020a195015000000b004b03544d4aemr23039219lfb.475.1667982973491;
        Wed, 09 Nov 2022 00:36:13 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id 17-20020ac25f51000000b004abc977ad7fsm2111833lfz.294.2022.11.09.00.36.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 00:36:13 -0800 (PST)
Message-ID: <aa665829-82db-74de-d802-e01fd52c998d@linaro.org>
Date:   Wed, 9 Nov 2022 09:36:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 6/7] dt-bindings: gpio: add binding for the GPIO block
 for Apple Mac SMC
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
 <E1osRXi-002mwL-UB@rmk-PC.armlinux.org.uk>
 <3d51c0e2-1e59-5767-4be1-5754ca8dc902@linaro.org>
 <Y2rTmS/gEdtU66b0@shell.armlinux.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y2rTmS/gEdtU66b0@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/11/2022 23:09, Russell King (Oracle) wrote:
> On Tue, Nov 08, 2022 at 09:56:40PM +0100, Krzysztof Kozlowski wrote:
>> On 08/11/2022 17:33, Russell King (Oracle) wrote:
>>> Add the DT binding for the Apple Mac System Management Controller GPIOs.
>>>
>>> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
>>> ---
>>>  .../bindings/gpio/apple,smc-gpio.yaml         | 37 +++++++++++++++++++
>>>  1 file changed, 37 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/gpio/apple,smc-gpio.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/gpio/apple,smc-gpio.yaml b/Documentation/devicetree/bindings/gpio/apple,smc-gpio.yaml
>>> new file mode 100644
>>> index 000000000000..1a415b78760b
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/gpio/apple,smc-gpio.yaml
>>> @@ -0,0 +1,37 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/gpio/gpio-macsmc.yaml#
>>
>> Does not look like you tested the bindings. Please run `make
>> dt_binding_check` (see
>> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> 
> Oh ffs. DT bindings are utterly impossible to get correct.

Why? You write, you test and then you see the error. Srsly...

Best regards,
Krzysztof

