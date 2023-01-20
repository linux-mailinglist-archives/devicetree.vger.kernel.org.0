Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D6B067537A
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 12:35:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbjATLfq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 06:35:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjATLfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 06:35:46 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3CB922DF7
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 03:35:44 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id l8so3800581wms.3
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 03:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oiLo50zLWaBfUJvjG3ysz38J7lOZ3fyCmP2qfPH4NeY=;
        b=D64Bge+NpDXedt+5U+Wf4+saMotIwKyx0qEfNfKFZ0udoULzy08wNMmOtYH4WK0RK0
         bi0R9fe53C2QyAujyBjGC7bj18+79GAO1v0Qw9OkRwxzOLlkEEUrwCUx3YUOustjac/G
         hDRaip7mYKIif9zrh0rButGXHFNfxhd8ic899KoGln3OApDV8LTyhOxfLZsea+wy9tQg
         4amdK/tfJdjGaCrjcA85CXRNAw/zuxvhmgFpGCNMCHZ8A1wceBDys1bDJWnEl/PuEq05
         N/ZGW+R3Z6dFYmmxU0OwGs0hvXnD8qiW3TDxAR4j2aY6uajkISKfGXw8phJNM2pQKFMW
         ZTNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oiLo50zLWaBfUJvjG3ysz38J7lOZ3fyCmP2qfPH4NeY=;
        b=Js8NEOhCTse6cxhR+I+VZldQwHVDhHcrNJHnXduv+UHTZ8nTmXcmXfMjRpzjutlN3Y
         Fe7PHJ+GByt9hpVHT4URH5gk4hfpI85x4QCE8om0IuaYhV600CEPNdKzO4CWd/kxJ3Bk
         +7vkHihjxWt5u3hFQfuKcjMiMHeHig0ZNFmHHV+Xoaz4GLTVkgrZNx0YgO8BMVgC4ou7
         zu5wu33i6c4JTrKYNMgoy8JzGf3WU1pmwvLDUTkWZeZLgQmIwKHm8JBGNAPF7zaQxp6o
         tHUmlXw9jc6Ou0DsjvujMXCiJ1cYUjKwrxEwOHiK+UiI2/uMD/LY0F21kst+13AuaZQz
         nucQ==
X-Gm-Message-State: AFqh2kqpB2E5qhY1PfA94pH0Mz43G80GTjXUMqu07Y329uUzJE3bgthU
        HuNtahrxN1lkXcXizMN/738hlQ==
X-Google-Smtp-Source: AMrXdXuUA/Pb9jhHTP9FE85iv1I7iEAXH53Z2NCbSRafWbH0B+8CfAceeFknKzBJ7yBXIywvzl8u0A==
X-Received: by 2002:a05:600c:684:b0:3cf:5d41:b748 with SMTP id a4-20020a05600c068400b003cf5d41b748mr22155606wmn.36.1674214543389;
        Fri, 20 Jan 2023 03:35:43 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u3-20020a7bc043000000b003d1d5a83b2esm1999359wmc.35.2023.01.20.03.35.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 03:35:42 -0800 (PST)
Message-ID: <e08e6325-4b2b-c1ce-b33a-877de2c0babe@linaro.org>
Date:   Fri, 20 Jan 2023 12:35:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 8/9] ARM: multi_v7_defconfig: Add options to support
 TQMLS102xA series
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
 <20230119144236.3541751-9-alexander.stein@ew.tq-group.com>
 <acab1d7a-ef00-a3be-f73c-6cb9d01687b9@linaro.org>
 <2168770.1BCLMh4Saa@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2168770.1BCLMh4Saa@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75 autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 12:12, Alexander Stein wrote:
>>>  CONFIG_GPIO_MXC=y
>>>  CONFIG_GPIO_RCAR=y
>>>  CONFIG_GPIO_SYSCON=y
>>>
>>> @@ -493,6 +497,7 @@ CONFIG_GPIO_PCA953X=y
>>>
>>>  CONFIG_GPIO_PCA953X_IRQ=y
>>>  CONFIG_GPIO_PCF857X=y
>>>  CONFIG_GPIO_PALMAS=y
>>>
>>> +CONFIG_GPIO_STMPE=y
>>
>> module
> 
> That one as well, it's just a bool.

OK

> 
>>>  CONFIG_GPIO_TPS6586X=y
>>>  CONFIG_GPIO_TPS65910=y
>>>  CONFIG_GPIO_TWL4030=y
>>>
>>> @@ -533,6 +538,7 @@ CONFIG_SENSORS_INA2XX=m
>>>
>>>  CONFIG_CPU_THERMAL=y
>>>  CONFIG_DEVFREQ_THERMAL=y
>>>  CONFIG_IMX_THERMAL=y
>>>
>>> +CONFIG_QORIQ_THERMAL=m
>>>
>>>  CONFIG_ROCKCHIP_THERMAL=y
>>>  CONFIG_RCAR_THERMAL=y
>>>  CONFIG_ARMADA_THERMAL=y
>>>
>>> @@ -821,6 +827,8 @@ CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
>>>
>>>  CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
>>>  CONFIG_SND_SOC_SGTL5000=m
>>>  CONFIG_SND_SOC_STI_SAS=m
>>>
>>> +CONFIG_SND_SOC_TLV320AIC32X4=m
>>> +CONFIG_SND_SOC_TLV320AIC32X4_I2C=m
>>>
>>>  CONFIG_SND_SOC_WM8978=m
>>>  CONFIG_SND_AUDIO_GRAPH_CARD=m
>>>  CONFIG_USB=y
>>>
>>> @@ -830,6 +838,7 @@ CONFIG_USB_XHCI_MVEBU=y
>>>
>>>  CONFIG_USB_XHCI_TEGRA=m
>>>  CONFIG_USB_BRCMSTB=m
>>>  CONFIG_USB_EHCI_HCD=y
>>>
>>> +CONFIG_USB_EHCI_FSL=y
>>
>> module
> 
> Well, apparently module autoload is broken due to wrong modalias value of ehci 
> node created by fsl-mph-dr-of. This setting this as a module is currently not 
> working.

But this is not valid argument for defconfig change. This must be
module. If autoloading does not work, fix that one.

> 
>>>  CONFIG_USB_EHCI_HCD_STI=y
>>>  CONFIG_USB_EHCI_EXYNOS=m
>>>  CONFIG_USB_EHCI_MV=m
>>>
>>> @@ -933,6 +942,8 @@ CONFIG_NEW_LEDS=y
>>>
>>>  CONFIG_LEDS_CLASS=y
>>>  CONFIG_LEDS_CLASS_FLASH=m
>>>  CONFIG_LEDS_CPCAP=m
>>>
>>> +CONFIG_LEDS_PCA9532=m
>>> +CONFIG_LEDS_PCA9532_GPIO=y
>>>
>>>  CONFIG_LEDS_GPIO=y
>>>  CONFIG_LEDS_PWM=y
>>>  CONFIG_LEDS_MAX8997=m
>>>
>>> @@ -949,6 +960,7 @@ CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
>>>
>>>  CONFIG_LEDS_TRIGGER_TRANSIENT=y
>>>  CONFIG_LEDS_TRIGGER_CAMERA=y
>>>  CONFIG_EDAC=y
>>>
>>> +CONFIG_EDAC_LAYERSCAPE=y
>>>
>>>  CONFIG_EDAC_HIGHBANK_MC=y
>>>  CONFIG_EDAC_HIGHBANK_L2=y
>>>  CONFIG_RTC_CLASS=y
>>>
>>> @@ -962,6 +974,7 @@ CONFIG_RTC_DRV_MAX8997=m
>>>
>>>  CONFIG_RTC_DRV_MAX77686=y
>>>  CONFIG_RTC_DRV_RK808=m
>>>  CONFIG_RTC_DRV_RS5C372=m
>>>
>>> +CONFIG_RTC_DRV_PCF85063=y
>>
>> module
> 
> Okay, module it is. So I assume it is acceptable the system time is set much 
> later after mounting rootfs then?

Modules can be loaded from initramfs, not rootfs.

Defconfig=y is only for critical stuff needed to bring initramfs. Time
is not needed for initramfs.

Best regards,
Krzysztof

