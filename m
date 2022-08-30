Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1CE35A5FBC
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 11:47:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbiH3JrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 05:47:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbiH3JrA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 05:47:00 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37811A571B
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:46:57 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id z6so14734464lfu.9
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ARnBgTXJwj6DmQt+EzTT3aM9SP3zEs9cq/60/7HSjsk=;
        b=SlkCjvpLZ7rwqWZjZ83/UodBCExhC9lqb5k0nl4bFW/y6HKNX7q+hNL+CwANK2QPHQ
         Gr6yM7ON2sXs1mzTaBd/aVvPsMH5qSS4QLOERxRONxemGRvu0XsYMOUV5FVbtREPhxee
         gYd0fb0IOePEX9EK3tepxbFdMhpXMB4QUCpkbEHosiju27IBSK4r+b3fAymsMwUpQXZs
         U22Xy1Ris3KbVFgDocctFjBRG1q7A4yclKZYzA7nFvuhKwlueLxt2q/9+ucQC/hRH7do
         BFglFL9dLkWfw03nY/Fy2fZCl5RyQDw3qia2EGJF39UhOZ1SyFrdWQnljF725E/Y+okO
         FCGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ARnBgTXJwj6DmQt+EzTT3aM9SP3zEs9cq/60/7HSjsk=;
        b=pcmsBxZ4TSljtLlhXMEhJhj5bQq+HRGVQrhvYVxYhisRJlfR9maQBBqFJaN+lpqErE
         B7scifGe19WACOxKnWgBkeB/cZyxtHJKmLxCqjTO7XZasdJzLrVrf9u3HYJAJtGkmOcC
         FqBNZI4hnKpdRsaEZsYGqA6DOVIA89pCNfcq3J/ARHW1egmX26/CItBOABGUD6/Z4JST
         N9fD06gQJFeHrFasvxFheVEtGdaJMGv1fjB1TBFPQmeet8c6/YLgprOhpV6E4Z3UknyG
         ILW3GvJf7h9x1naW3BJ5gn2CDJqBgKI3BbjCk8AQrAv4hab5BUAxWdAJ/05fbIN9dn0g
         7U4w==
X-Gm-Message-State: ACgBeo1568QZRGaW+HSwrwGwrepL26TDq9xaxUAvrDuqrHero5Wi7FFh
        zUk4+Dm7H+UV+/9xgdJDboylzQ==
X-Google-Smtp-Source: AA6agR4e7vv3rYEHPAmYlgqT4CHZnZmiHX++FxH0tia4po2x7kGbWA0tJQKo9IcRCnmCChpFc+zVBA==
X-Received: by 2002:a05:6512:328d:b0:494:8238:1c with SMTP id p13-20020a056512328d00b004948238001cmr177671lfe.416.1661852816203;
        Tue, 30 Aug 2022 02:46:56 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id f14-20020a05651c02ce00b00261c30d71e5sm1637304ljo.67.2022.08.30.02.46.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:46:55 -0700 (PDT)
Message-ID: <b6dae743-8910-1cc2-9b3f-382c6a926b4c@linaro.org>
Date:   Tue, 30 Aug 2022 12:46:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 4/6] mfd: drivers: Add TI TPS65219 PMIC support
Content-Language: en-US
To:     Markus Schneider-Pargmann <msp@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Lee Jones <lee@kernel.org>, Tony Lindgren <tony@atomide.com>,
        nm@ti.com, kristo@kernel.org
Cc:     Jerome Neanne <jneanne@baylibre.com>, khilman@baylibre.com,
        narmstrong@baylibre.com, j-keerthy@ti.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
        linux-omap@vger.kernel.org
References: <20220825150224.826258-1-msp@baylibre.com>
 <20220825150224.826258-5-msp@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220825150224.826258-5-msp@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2022 18:02, Markus Schneider-Pargmann wrote:
> From: Jerome Neanne <jneanne@baylibre.com>
> 
> The TPS65219 is a power management IC PMIC designed to supply a wide
> range of SoCs in both portable and stationary applications. Any SoC can
> control TPS65219 over a standard I2C interface.
> 
> It contains the following components:
> - Regulators.
> - Over Temperature warning and Shut down.
> - GPIOs
> - Multi Function Pins (MFP)
> - power-button
> 
> This patch adds support for tps65219 PMIC. At this time only
> the functionalities listed below are made available:
> 
> - Regulators probe and functionalities
> - warm and cold reset support
> - SW shutdown support
> - Regulator warnings via IRQs
> - Power-button via IRQ
> 
> Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
> 
> Notes:
>     Changes in v4:
>     - Removed unused fields from struct tps65219
>     - Added description for the fields in struct tps65219
>     - Fixed coding style
>     - Squash all patches into one mfd patch
>     - Call devm_mfd_add_devices multiple times to clean up the code
>     - Remove debug prints and fixup other messages
>     - Use new_probe instead of probe
> 
>  MAINTAINERS                  |   1 +
>  drivers/mfd/Kconfig          |  14 ++
>  drivers/mfd/Makefile         |   1 +
>  drivers/mfd/tps65219.c       | 357 +++++++++++++++++++++++++++++++++++
>  include/linux/mfd/tps65219.h | 345 +++++++++++++++++++++++++++++++++

Use subject prefixes matching the subsystem (git log --oneline -- ...).

Best regards,
Krzysztof
