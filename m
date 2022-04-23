Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75A5850CCF0
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 20:44:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229930AbiDWSri (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 14:47:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236772AbiDWSrV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 14:47:21 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F6861A0E16
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 11:44:24 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id d6so8976396ede.8
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 11:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4IaqoV2aer2ghFwptz6czU9/m6KAIR9YxsYbGNc2GUo=;
        b=Z1ZeEVzC1VvY3AdAu4mV/yDyIjapQmjj+PVR2QXHLOdgESIJBMnx8kfv3AYks7oOpW
         vRSWOJ6PmkEa/ih62LCvcP2aGNoLhQIiPrjrZ9g0H7bLJ7GXN6nSLYiP0OsuM5/CVkHY
         ubztUbbeCKvJeTIrmVozO9lTnCL/UcW+kWcRt8pNeiSSwPsyPK/J7qDQdliASeTfICHL
         mvmFL0KilpGvS3bZQ+LvMyn+lb0MjOI1VFdWdwPL16wmcEaDxAMLYsnS3bVsbi7Gf6ej
         1mrPbhcKsY2MZblQ/OIg1seL00/A54DEqTEU+V2jnLujvgbCc+ktw6au5v3Ux7Ngso5V
         ePsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4IaqoV2aer2ghFwptz6czU9/m6KAIR9YxsYbGNc2GUo=;
        b=CZOkD837punTqcpcWQMx5OnB2Rmlk+X5V0VPixIkxn/hjLwkdp3fBjQP2mSI7mk1Xy
         0lg9w5kqAzj4F+wrmiXrR6svHYUbMzWl85ZH2HoRy6VqZkIeBdBKNd3wZNeG8pqlTRTd
         lEW1INCSktYdhbCQgRlBsMDrSoK4f5I2J6Ucpnd+tCNFsunarHOr7rpHrtO8fS5YWUf8
         mnMSyyoSI3xvrxN6RFPvdziKl42xaqsVB6CGLbaoeBLreXfBoqk0e3xiT4sffNzChuRB
         ku6q8Vqq0tQX3q+3DwPfu/KjN7hXpAi7ae9/0WHokek4y3gh6gAFxUgVG9fz5wApbeU1
         /q3w==
X-Gm-Message-State: AOAM530AW09GS2hvw1OZoQbYfoI1eVKX0CVFxE7Jgha55rykIxdYEhFu
        2ddxmWpYru8kYKIppuD8XqCA8CeAmnRpLw==
X-Google-Smtp-Source: ABdhPJysu/N9ZmoV+TvxH4Hab8PZ640rwRA0heikAoh8g5hbAmxzP50T5zIfII15paVch3cH/zDorQ==
X-Received: by 2002:a05:6402:268f:b0:423:e68b:1942 with SMTP id w15-20020a056402268f00b00423e68b1942mr11381141edd.73.1650739462636;
        Sat, 23 Apr 2022 11:44:22 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id x18-20020a170906b09200b006e8baac3a09sm1913007ejy.157.2022.04.23.11.44.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 11:44:22 -0700 (PDT)
Message-ID: <469d7ac0-7cf6-af91-7e24-1d9df88c9221@linaro.org>
Date:   Sat, 23 Apr 2022 20:44:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: eeprom/at24: Add samsung,s524ad0xd1
 compatible
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220422192355.2597523-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422192355.2597523-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2022 21:23, Rob Herring wrote:
> The samsung,s524ad0xd1 compatible is in use, but not documented. According
> to arch/arm/mach-s3c/mach-smdk6410.c, the samsung,s524ad0xd1 is compatible
> with the 24c128.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

The compatible - without 24c128 fallback - is used also in
arch/arm/boot/dts/exynos5250-smdk5250.dts and
Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml, so these
files should be fixed as well.

Best regards,
Krzysztof
