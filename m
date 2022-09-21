Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 790AB5E540E
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 21:56:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbiIUT45 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 15:56:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbiIUT44 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 15:56:56 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6978A260B
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 12:56:54 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id h3so8383088lja.1
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 12:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ts6mTIVj3GUb0HyDnQ+6CalSe/1ccgmMXVSnsRxM15k=;
        b=JB0EZ2tr5xSg7XopD144mNITvNP5pWxOGv/SilIBThY1Rp67vkOGPqXPFBwiSSDsSu
         Zp8aRXQtJUPBFzhWAJYDdnv67MYG8D7rfWlSDNnW2UxWi2fJz1RZOoN06zwRkT2E1ECi
         fpAq9jkEm3os+T8LV2YEpDyGac4X/Z2wyZlRIE/j+c1B58qMtmcxEPRCnYkQO1hhulbt
         F5GTzvXlaUs5LI9ZNYpJf7yg6JBk2CjQDaRkgx9E6NggXoyOO3/tMSX/6nEzOW3QIgs9
         gHoVpw1DpgvovkxCJ6MrFZ33KnFHEUNF8nJv2ovNfrFd98HJJxY51026i5ud1bew/cKi
         JOWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ts6mTIVj3GUb0HyDnQ+6CalSe/1ccgmMXVSnsRxM15k=;
        b=hSIP1FBBjLVAR1gDO++N6g9qcOerDNr3dK8mB4AWMU8WlFOJFZGluX11n3FLAKzbsL
         3FO/3XcJKx1WkTviKJ8zCWlmxgK1fsnvUY7nug6pamNCvxCh35yAAEO5P7mqn++uINEV
         AqKs++z1usidTJvgTwjRnd6+bljIM7yt/LovlBAd/RnZ2UIV/JDt+rZo3tNuGm5LTqSy
         ggXl0p2TPablSG7M7zXvVCLTG2p03RaIZwM6mdMsYcgXLatDjst3w/Ia7ThhHYORRsCr
         kQ+LO8MUq/EdjdHub3FP/bAkLq4naNondwUk6PiiCgGVH1ymXODs8tHLdW74p0Sk5nki
         aZGw==
X-Gm-Message-State: ACrzQf19pvTi9FRD5XvGTucZzydJDP37rgrHHq2WO1e8An+HkVGuEboK
        sEyrS69sCJaCOVIXH/sFL5IRqg==
X-Google-Smtp-Source: AMsMyM5SC1mTsc8nBzA6A168PJOSEtUG1ojuQBjYyuIkVsOk+8i7g6xqhicMyaksLX40LCfpOLViXA==
X-Received: by 2002:a2e:a910:0:b0:26a:ed13:cda6 with SMTP id j16-20020a2ea910000000b0026aed13cda6mr8961558ljq.250.1663790213270;
        Wed, 21 Sep 2022 12:56:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p8-20020a2ea4c8000000b002682754293fsm585437ljm.1.2022.09.21.12.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 12:56:52 -0700 (PDT)
Message-ID: <1e9b83f5-67a9-c5ee-3ede-b26a6bde2263@linaro.org>
Date:   Wed, 21 Sep 2022 21:56:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [RFC PATCH 3/5] dt-bindings: iio: Add KX022A accelerometer
Content-Language: en-US
To:     "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>,
        Matti Vaittinen <mazziesaccount@gmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        Cosmin Tanislav <demonsingur@gmail.com>,
        Jagath Jog J <jagathjog1996@gmail.com>,
        "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <cover.1663760018.git.mazziesaccount@gmail.com>
 <eb3edbb63c117f93e8ec534f50d8e3cf91ab3041.1663760018.git.mazziesaccount@gmail.com>
 <482c5a54-3d53-5760-fc8e-8aa3b9341707@linaro.org>
 <7582e9e9-4558-ac33-a0f8-cb4e69d0628e@fi.rohmeurope.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7582e9e9-4558-ac33-a0f8-cb4e69d0628e@fi.rohmeurope.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 21:30, Vaittinen, Matti wrote:
> Hi dee Ho Krzysztof,
> 
> Thanks for looking through this!
> 
> On 9/21/22 22:11, Krzysztof Kozlowski wrote:
>> On 21/09/2022 13:45, Matti Vaittinen wrote:
>>> KX022A is a 3-axis Accelerometer from ROHM/Kionix. The senor features
>>> include variable ODRs, I2C and SPI control, FIFO/LIFO with watermark IRQ,
>>> +
>>> +maintainers:
>>> +  - Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> 
> My own comment - switch the email to the gmail-one. Company mail is 
> unreliable at best..
> 
>>> +
>>> +description: |
>>> +  KX022A is a 3-axis accelerometer supporting +/- 2G, 4G, 8G and 16G ranges,
>>> +  output data-rates from 0.78Hz to 1600Hz and a hardware-fifo buffering.
>>> +  KX022A can be accessed either via I2C or SPI.
>>> +
>>> +properties:
>>> +  compatible: kionix,kx022a
>>
>> Missing const. I wonder how did it pass testing...
> 
> I originally had
> oneOf:
>   items const ...
> construct here as I had separate compatibles for *-spi and *-i2c. I am 
> unsure if I remembered to run the tests after dropping the extra 
> compatibles :| - Sorry! I'll fix this.

This should be just:
  compatible:
    const: foo,bar

> 
>>> +  io_vdd-supply: true
>>
>> No underscores, so io-vdd-supply
> 
> The rationale behind the underscore is that the data-sheet uses terms 
> vdd and vdd_io (with underscore). I wanted to match the supply name to 
> what is used in the data-sheet. Not a big thing but I'd rather kept if 
> same as the data-sheet if the requirement of "no-underscores" is not 
> "hard". (If it is, then I'll drop the underscore).

Underscores trigger warnings at some dtc W level (W=1 or W=2) so they
are not allowed.


Best regards,
Krzysztof

