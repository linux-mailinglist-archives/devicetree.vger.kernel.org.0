Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B979698F90
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 10:18:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbjBPJSs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 04:18:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjBPJSr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 04:18:47 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9EF11C7E7
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:18:46 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id mc25so3487504ejb.13
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ns1a+ziaB8qV7FyQY4+Sg+p/ozjebr/JvYh0uNJdX9o=;
        b=u/Lq1gVCJq3B7Gfy6sHmh4krfi2milAhoL6bOlH9pZ3zE0WgtGD8cmqwxElFqWrfIx
         ft3ohfCunwzcMvZ4xTt83sKdfn+HczozJ78KCjDmMd3F4niudCDVhfvs8kRLrtqWWYtd
         ysecBjmsMZ+5h6C1PzTdOPPyZgGitRhFr06TZbc0afULUcy1h7aHRywginrTKKTbRVST
         KX25neCOx45VG93ehWDh3NsoOzWONzpqFafC98CjUw3F2UL/zO1dYIU4+AIlnIceAsk5
         dgiQei1lglvBNZR1/ufp6jMXoeKw/JVRMMp0/UDuS4/YJNn0jtqmgwUgwN8TKZd8kD0V
         pjUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ns1a+ziaB8qV7FyQY4+Sg+p/ozjebr/JvYh0uNJdX9o=;
        b=7GeaS1PNIDoGZS5qyJFoMex+UTpI1CLEAsWepkYdKO2gepA/2rlOTE6O9dTNtZK3Wp
         urB4EgCRJcPPA3onL0GD9ZjcRk0UY5weCRM7xUTIqG0CaURn85bPzIzr/P0BN/b0r9FQ
         ovqd90AxwvNbGvGHZJwNyAF3Rr41h/ygLrvUZf/jf5c3VkFZFpcHtkEwoaAYrQ3hXOhC
         MoAM7WfyEZ/G8MTmurF29A5bJKExRYQjJbgUuY9JuuoOsqnuc3a7wFsJPJs+Cjg4D9ak
         JSRPl8FFzNbKrdCQumTyIkpDj8JvjKCRruYd3neaA3R+2traZD0ndQVb4S2x7fu9hTC8
         XhxQ==
X-Gm-Message-State: AO0yUKWXU8jk6KEj2+dGl2fZFNQRKLNDtM0u9sSfp1lhg3UT/mRolou5
        v/aRxX6B6HSQ7OiGA8hsxcP2sQ==
X-Google-Smtp-Source: AK7set82c1wAvrDeb+UgjwQtg0XXg8DkrihCvBsVMrF9Z23BPbCFbBNgEEveMlwyyH02uoUFmIbcAA==
X-Received: by 2002:a17:907:3c26:b0:8aa:9841:5e29 with SMTP id gh38-20020a1709073c2600b008aa98415e29mr5012129ejc.77.1676539125143;
        Thu, 16 Feb 2023 01:18:45 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q11-20020a17090622cb00b008b1569b37edsm538241eja.214.2023.02.16.01.18.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 01:18:44 -0800 (PST)
Message-ID: <48b4a87a-c5e9-c3ec-2492-bb2afb495398@linaro.org>
Date:   Thu, 16 Feb 2023 10:18:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 0/3] mmc: support setting card detect interrupt from
 drivers and use it in meson-gx
Content-Language: en-US
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <15df9ef0-9b73-ca5a-d3cf-0585cd135bc5@gmail.com>
 <CAPDyKFroB-TULOeia4OyXBW6rWMs7e3_Fp4Uw878Q8Gt=TDfag@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAPDyKFroB-TULOeia4OyXBW6rWMs7e3_Fp4Uw878Q8Gt=TDfag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2023 13:48, Ulf Hansson wrote:
> On Tue, 14 Feb 2023 at 22:39, Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>
>> On certain platforms like Amlogic Meson gpiod_to_irq() isn't supported
>> due to the design of gpio / interrupt controller. Therefore provide an
>> option for drivers to pass the card detect interrupt number
>> (retrieved e.g. from device tree) to mmc core.
>>
>> v2:
>> - use another mechanism for passing and storing the cd interrupt
>> - add patch 2
>>
>> Heiner Kallweit (3):
>>   mmc: core: support setting card detect interrupt from drivers
>>   dt-bindings: mmc: meson-gx: support specifying cd interrupt
>>   mmc: meson-gx: support platform interrupt as card detect interrupt
>>
>>  .../bindings/mmc/amlogic,meson-gx-mmc.yaml      |  2 +-
>>  drivers/mmc/core/slot-gpio.c                    | 17 ++++++++++++++++-
>>  drivers/mmc/host/meson-gx-mmc.c                 |  5 ++++-
>>  include/linux/mmc/slot-gpio.h                   |  1 +
>>  4 files changed, 22 insertions(+), 3 deletions(-)
>>
> 
> Applied for next, thanks!

A bit too fast. Binding is incorrect - suggests ABI break and makes
interrupts not described enough.

Best regards,
Krzysztof

