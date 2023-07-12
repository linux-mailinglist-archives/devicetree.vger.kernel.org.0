Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C32774FEE7
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 07:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231544AbjGLF4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 01:56:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229928AbjGLF4c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 01:56:32 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C504173B
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 22:56:30 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51e28b299adso8709661a12.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 22:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689141389; x=1691733389;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m1YbKiFqM090gUCnTTI+360ovt+fEPcs/XCL7R+ae5o=;
        b=RDCxFd9ZchsRaClrOnejBcepkfj7xzss8D126jJveGs/1pgb91WAKSVVdZMyrFFxUD
         /tNI5vspbCVmLxFIUcfZeNYvqqAuMKjm65jmBrZZWTCg/uvKhEwWq84Bh8Hlc+ah/ckh
         u9wtiNUIdEam5urofKU5UoBqPpvpsbpdFOHtEWSB2h3DHMhbybwMMLukQyUA9uVOBZhW
         LsJEVHrf24hwUJZ1ZFPadZyN5eah1h02Ue8JQBP/8xcN+EsuQgu5R1bsQyFy9f9axJ4c
         HOsGsGPl4G/SypDFBNchG3m9ujMCgg6uQbq9nhJEW7H4Mqown6n5ShBFPknpJhCN2fGK
         /EtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689141389; x=1691733389;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m1YbKiFqM090gUCnTTI+360ovt+fEPcs/XCL7R+ae5o=;
        b=GczuDn+hJ5HiVMUjVg1Hycb4OEwzkV6g6klkH/8mvll0s4jEv6wIxCgbDmWDkqwNc8
         6rlPF8FdIGGVtfIXYtqVHsFbDyk0Seu42ECiUB7HNMlNqEA5t9Yz3ZZI5CO0XYG+EeZb
         O1AmdBdQXzkOilxcuitNKfT23ZdHA8eB6dzxhG+Ul07zzqILcd6lFSY7w1Ys5xp+W9NQ
         cSYqnHBg+K3yAYJze6MB47jyj73iuMoP9RDV1ujvfUYu0vZsaqYU6DJD9i4A/pfWwggM
         IcAPcZHg7INmWR/Nw+KiU1jdL4LIRjMFEmDh+SWWbEYIh+rIhZVVeeILv4z+VJXJ7w5k
         PUKA==
X-Gm-Message-State: ABy/qLYDGXSaGSSLFpUxOVxvD9ah3QhvIIgCjM1jQsrXfk7EfECdiXK0
        yAB+dIQzJV1L0cmupjEIyPld1g==
X-Google-Smtp-Source: APBJJlHv7pp920Fewie/WkiXbegNz0ErB7CfgQSjUAgUmIo1JGCMiDSiavEO+8RiVSbbpzgr+uFllg==
X-Received: by 2002:a50:ef07:0:b0:51e:2974:f471 with SMTP id m7-20020a50ef07000000b0051e2974f471mr13156566eds.42.1689141388970;
        Tue, 11 Jul 2023 22:56:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id a2-20020aa7d902000000b0051e0eba608bsm2214158edr.19.2023.07.11.22.56.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 22:56:28 -0700 (PDT)
Message-ID: <33bcb7c0-0bf9-e3fc-ec55-476c0cbd6105@linaro.org>
Date:   Wed, 12 Jul 2023 07:56:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH V2 1/2] dt-bindings: gpio: Add a header file for Amlogic
 C3 SoCs
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>,
        Huqiang Qin <huqiang.qin@amlogic.com>
Cc:     linus.walleij@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, khilman@baylibre.com,
        jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        brgl@bgdev.pl, andy@kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230710042812.2007928-1-huqiang.qin@amlogic.com>
 <20230710042812.2007928-2-huqiang.qin@amlogic.com>
 <20230710-maybe-mantis-e647d94fd13a@spud>
 <424cb61a-9102-9a43-c999-36939e8d6cc0@amlogic.com>
 <20230711-monthly-return-8792ce346c26@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230711-monthly-return-8792ce346c26@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2023 20:05, Conor Dooley wrote:
>>>> +++ b/include/dt-bindings/gpio/amlogic-c3-gpio.h
>>>> @@ -0,0 +1,72 @@
>>>> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
>>> Any reason to deviate from the usual license terms for bindings, which is
>>> "GPL-2.0-only OR BSD-2-Clause"?
>>
>> I initially used the license commonly used by Amlogic (reference: meson-s4-gpio.h):
>> ```
>> /* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>> ```
>>
>> But when I checked the patch, some warnings appeared:
>> ```
>> WARNING: DT binding headers should be licensed (GPL-2.0-only OR .*)
>> #37: FILE: include/dt-bindings/gpio/amlogic-c3-gpio.h:1:
>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>> ```
>> So I followed the prompts and changed the license.
>>
>> Can I ignore this warning and use the (GPL-2.0+ OR MIT) license?
> 
> If the tools are happy then I suppose you are okay.. I'll leave that to
> Rob or Krzysztof, but if you have a reason for diverging that seems fine
> to me.

It is very weird that company wants GPLv3 and even weirder that it
agrees for GPLv4 and GPLv5 (GPLv5 might force Amlogic to do some
interesting things...). I am pretty sure company lawyers don't want it
and just do not understand licenses or someone forgot to actually check
it. Anyway, it's fine for Linux kernel, if you really need it.

However the argument was "meson-s4-gpio.h" has it, which is not really
correct argument or accurate. Is it derivative work that you need the
same license? If not, why presence of something causes you to do the
same without thinking?

If Amlogic requires GPLv3 or GPL4 or GPLv2000, please confirm it here
with your official email. Otherwise, if it is not a derivative work
confirm that. Otherwise just go with what checkpatch asks you.

Best regards,
Krzysztof

