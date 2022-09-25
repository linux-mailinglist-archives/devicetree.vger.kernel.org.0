Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C7F85E91A4
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 10:20:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbiIYIUv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 04:20:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229824AbiIYIUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 04:20:50 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 312A12B199
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 01:20:46 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so2124581wmb.0
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 01:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=3f7xryob0fjp6E4pNLcCzs6IRZqkpNTpwM4Ki3mJWfc=;
        b=tKILDON0dYSkuS1KXcE9usQK+2lgvJ4U5Vi7MJ7mSJ1DGm0pKT/ZESeve4LOnEK8pz
         szirFAU0vYZBagmvdZ0t53biGOBPwzcYEqFr6BsOkqpB4J3fnuV1avWQwkXWMYRBUtY+
         LAHXwtr6FldJ9igXbF48vr5wDo48XC1mvOm/ELILJBxkWeauPkrKCaNfTdtVDEBDpGAH
         oKbxQnaYZvuwKvqTcVvmDMoVYWZ8HIsDYiP/TMlMmb0KjcJo8kPhagrKqYInZFsb8Pxz
         PJaLoDeoUJYmgq4LiqELDdZHPiBQZSl5tTY9hQYBC/PfyjIo7hHqBogF07l7vrrYHFaq
         cfOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=3f7xryob0fjp6E4pNLcCzs6IRZqkpNTpwM4Ki3mJWfc=;
        b=nTy/69I7AXccfJt6LXyGzeRB1OHmLkqeeOpeQQqpxRWm9mc5s77zIemu6yhbamSEDz
         Gevq1EYMBtqWowoNULJGKjU8td36kQvnVK5DltPp5bLBGkrPM6zvihXKcztZw3KTska6
         ndweu10igySZIyua5rl5BDfBDr07Vm+6chYt4nmqKvoyiDkmH9R5pX7ZQZsU98yXSGYW
         y7U2ckQjYzkfJiKp8kEOq61ONJUh2W1dHke14vszKXs0rVT+PWZBD80iBHWiIynh4ZI9
         3atN7/KfEvO/RJF5iMuOSo9PPo0qQ7oEsM32dxRqBj3q8LtM715zTEPQZ3Eg8K2tjxq0
         dx+Q==
X-Gm-Message-State: ACrzQf3OToRNoC6IoStZctNcRcOHJs3SZhDftnRbwQfnjU82BoaQ6Pti
        vUrwXLQjnqNoMJStHJfznyGC3Q==
X-Google-Smtp-Source: AMsMyM4cqxu5WJGMnD/9bR1PxxPIazd9fL7WS6iN33LiqEvKrjfIVowpwiRISp5yWEonAQq1k5kbug==
X-Received: by 2002:a05:600c:4e8b:b0:3b4:c8ce:be87 with SMTP id f11-20020a05600c4e8b00b003b4c8cebe87mr19206401wmq.157.1664094044671;
        Sun, 25 Sep 2022 01:20:44 -0700 (PDT)
Received: from [192.168.0.20] (210.145.15.109.rev.sfr.net. [109.15.145.210])
        by smtp.gmail.com with ESMTPSA id x12-20020adfffcc000000b0022ac672654dsm11225689wrs.58.2022.09.25.01.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 01:20:43 -0700 (PDT)
Message-ID: <9db42de1-50c4-8738-6d8b-774cc6d5756e@baylibre.com>
Date:   Sun, 25 Sep 2022 10:20:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 1/1] arm64: dts: mediatek: mt8183: disable thermal
 zones without trips.
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        daniel.lezcano@linaro.org
References: <20220921-mt8183-disables-thermal-zones-up-v2-0-4a31a0b19e1e@baylibre.com>
 <20220921-mt8183-disables-thermal-zones-up-v2-1-4a31a0b19e1e@baylibre.com>
 <a5838d66-21dc-4905-03c5-ea049e3bd055@linaro.org>
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
In-Reply-To: <a5838d66-21dc-4905-03c5-ea049e3bd055@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On 9/25/22 09:57, Krzysztof Kozlowski wrote:
> On 21/09/2022 11:05, Amjad Ouled-Ameur wrote:
>> Thermal zones without trip point are not registered by thermal core.
>>
>> tzts1 ~ tzts6 zones of mt8183 were intially introduced for test-purpose
>> only.
>>
>> Disable the zones above and keep only cpu_thermal enabled.
> Please test your patches before sending upstream. :(
My apologies for the inconvenience, I mistakenly missed the error,

will send a proper V3.


Regards,

Amjad

> Best regards,
> Krzysztof
>
