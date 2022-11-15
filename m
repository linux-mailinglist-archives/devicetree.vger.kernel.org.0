Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 549656294F9
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 10:55:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238249AbiKOJzy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 04:55:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238199AbiKOJzl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 04:55:41 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7875423BD2
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:55:37 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id j4so23670946lfk.0
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cHVGZGFvlfOuto+Xt8nKu6o58i2L4GJKNS5eugoVkdE=;
        b=zujkZBsa5qfQFD0h/od/X1kboXjmeDHm2yfi4szFjwzyYt7mnF4wBKv5WQn9NLO9+B
         lYpysXg9wd7vHoEJ9HvIUhdmb0bgAobw+IBZeQ59YOjDKb3OaQJ6zQrne2IfNtOJD35S
         MKe/vfadEg5hdu2TwEf/qNWON4ABNcvs5m4Uv5Hlo3p1cHN9WLARq+1G/RNgJ7PkZ9bJ
         8yk2+SIMzZ7rMQJXzKE8fhQdWznUW5zFy6rIXxZLF4yfl/91aDu+tVKn7ht2kQyDsEM0
         mIVChOdiOzNrA/GwOryL3DtSCiuqy8QeYvVDrziGqUI/jtWLXwZWOD0UCscg2XCOmnfr
         QsUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cHVGZGFvlfOuto+Xt8nKu6o58i2L4GJKNS5eugoVkdE=;
        b=Swju3ZNknQEpJJcOEWOgiV2mGP6cI1UBYCdV1UFwtTa7LP08p24eGfwycZ91PZK2jT
         0os73ipSXzjH1+Jv+szTWacD1djOZMH0C5q88bhQriixCxJ2Ji7RQOHrKsZMOGQXaz9s
         SInhFB/+2vBLrqmXRBo+HKRi8GCzDwdnd4OzVZqRKWknfU66eY3/xZP9zzlTjz7Qgbt9
         37RiDb23mbZHQzaC/Min1+luE3sVnZfq9PmfWgDIKR0JzAEz4A2mX6XYzJ5iukWuCjex
         jVHEbQ5I8fjHv5cMxtrqzs/ctLH00TlFmrum2m/C4bbdfBDNqZthDB1dOcM3S/1/ncp9
         xo+Q==
X-Gm-Message-State: ANoB5pk+L9wm4B8PHzjT7nkChKWTZKNKK9FBpHKJ9GS0CLbGx1HaPurP
        fo89gh0GasVvrqZFzEtr5q2XctKxbzZW3arg
X-Google-Smtp-Source: AA0mqf5B6D63SwaArDeQof7jXTKety9c9QdXaQDZlQbDtJv27tmP/fm6Z/YAplBjW8krHbClAmPb3w==
X-Received: by 2002:a05:6512:3ac:b0:498:f36a:76fa with SMTP id v12-20020a05651203ac00b00498f36a76famr5519055lfp.532.1668506135411;
        Tue, 15 Nov 2022 01:55:35 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h28-20020a2eb0fc000000b0027741daec09sm2343827ljl.107.2022.11.15.01.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 01:55:35 -0800 (PST)
Message-ID: <5b7f035c-807b-a6d4-30ec-e5467ff4ea47@linaro.org>
Date:   Tue, 15 Nov 2022 10:55:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 3/3] dt-bindings: gpio: Add Nuvoton NPCM750 serial I/O
 expansion interface(SGPIO)
Content-Language: en-US
To:     Jim Liu <jim.t90615@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     JJLIU0@nuvoton.com, KWLIU@nuvoton.com, brgl@bgdev.pl,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org
References: <20221108092840.14945-1-JJLIU0@nuvoton.com>
 <20221108092840.14945-4-JJLIU0@nuvoton.com>
 <CACRpkdb+Bkwa8yCKGtRcsJ6KnJh+RUuz_gOrQV63pcYQLaHCaw@mail.gmail.com>
 <CAKUZ0+GCf_Zv=VhnY5Z=yYAfR1=_ha98BVVxRGVy8ui6so_Yrg@mail.gmail.com>
 <CACRpkdYW0P8gqtGdiRX_frP32WF2W=NVg1JTu1fVMBXxEL0-WA@mail.gmail.com>
 <CAKUZ0+Hy5suFg9VZ8-+cH7kGc5KLqUnf9hjnT+iaw+a1HF8x0A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAKUZ0+Hy5suFg9VZ8-+cH7kGc5KLqUnf9hjnT+iaw+a1HF8x0A@mail.gmail.com>
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

On 14/11/2022 09:38, Jim Liu wrote:
> Hi Linus
> 
> Thanks for your reply.
> 
> let me explain the gpio pin as below:
> 
> Our sgpio module has 64 pins output and 64 pins input.
> Soc have 8 reg to control 64 output pins
> and  8 reg to control 64 input pins.
> so the pin is only for gpi or gpo.
> 
> The common property ngpio can be out or in.
> so i need to create d_out and d_in to control it.
> customers can set the number of output or input pins to use.

Aren't customers interested in specific pins, not the number? IOW, why
do you assume pins should be set to output in ascending order (e.g. 1, 2
and 3) and not in a flexible way?

> the driver will open the ports to use.
> ex: if  i set d_out=9   and d_in=20

Why 20 means three input ports? 9 opening two outputs could have sense
if it was a mask but you did not say it is a mask.



Best regards,
Krzysztof

