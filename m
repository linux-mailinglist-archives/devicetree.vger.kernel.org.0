Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99D115A43EF
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 09:41:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbiH2Hlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 03:41:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiH2Hl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 03:41:29 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 542FF4C60A
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 00:41:27 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id bs25so9068700wrb.2
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 00:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc;
        bh=5up3cUBmqLmN/N4JsoGSCpsquDZUxfx3SQvM9VcSSqw=;
        b=YuPbkZr0Ax4OGbfNlSy3XGJ1Ho31X7gBNQTXMazlCaETwKK9GDqXs3uG0+jn8EvRPP
         GlaxYOmBEY9SC8WAs82C9ADhKCmlxGkRAbKCoG0btJPCcrdmzxZHHZvRT5EnZlxDJY4s
         ic3WYpgsIDj/OS+VB3ynaAgYCvUeBZoVxXJCyHqmpXj17QPogEfJy+jXKCYh5W/U24E4
         DLvW7XMoR5/2HRuSFCbeSgaiRZsEDu6hUxwytB89remwuL6kmT8yDGetlz4b9J0MgcNp
         ZF5JMnCVdyQWwxwUELqxwh+ZM2ASzzCdSZgznsjuSxEh/oV6BQmUdV945DjSPU7D+F/O
         omoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc;
        bh=5up3cUBmqLmN/N4JsoGSCpsquDZUxfx3SQvM9VcSSqw=;
        b=0uW4WGwP2KHg75Kfityk4A+1CPm7GBRmF6YmdGLWflUC2gO2I1n6BCc3LKys6BhQtC
         QF0cotp29v2ULH2HC5nzA2AQWEik4MQqt96cpmzab9/K/PxP0XGjVINg9ZQdCFGaWyYz
         DCH/KpHfOOY/Z+Ke0fLeuZzdYXO8HkF5qGXSbM3mCiYpCqpgN5gZJtESSrACd6wmu/WX
         zPo2bdJlS9U24U7XeJF3iDIz/LPowpuxsEHzgGZcfkDi1RnorbacHTOvn5ThRyn+JZ4S
         jA1G3V4wZqfRWpvkJXt+3xSqD394E6ueYMIvv0MQf6OnPb2SnSV+0ch2jkObtUVv33ro
         AjxA==
X-Gm-Message-State: ACgBeo24y4akJgrK5jeR+tO6Gu7Yul9YbywNFAPrMXz0s/7bw7kLFtdT
        vmRZBGpOddxmMzTPZKokHQF4gw==
X-Google-Smtp-Source: AA6agR6NLCGeE1ZIf8UdYmeZQOwbczj92cej7w+PZTtWO71lnImArQKYk0kqLF1viANjjlBGYnQ4Ew==
X-Received: by 2002:a5d:6b46:0:b0:225:3510:a130 with SMTP id x6-20020a5d6b46000000b002253510a130mr5446784wrw.46.1661758885778;
        Mon, 29 Aug 2022 00:41:25 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:6124:6b74:2847:d37b? ([2a01:e0a:982:cbb0:6124:6b74:2847:d37b])
        by smtp.gmail.com with ESMTPSA id q16-20020adff950000000b002251639bfd0sm6230191wrr.59.2022.08.29.00.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 00:41:25 -0700 (PDT)
Message-ID: <a9072e3a-2ea5-9da0-a1ba-2be67857e1ba@baylibre.com>
Date:   Mon, 29 Aug 2022 09:41:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] arm64: dts: meson-s4: include meson-s4-gpio.h
Content-Language: en-US
To:     Huqiang Qin <huqiang.qin@amlogic.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <e32a8c39-1e47-cad1-e093-2cabb2dd37a4@amlogic.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <e32a8c39-1e47-cad1-e093-2cabb2dd37a4@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/08/2022 13:32, Huqiang Qin wrote:
> Hi Krzysztof,
> 
> On 2022/8/25 20:02, Krzysztof Kozlowski wrote:
>> Why? We can see what you did here, but commit msg should explain why you
>> do it...
> 
> Sorry, I didn't describe this commit message clearly.
> 
> In the future, meson-s4.dtsi will have some nodes that need
> to use the meson-s4-gpio.h file.
> 
> e.g.
>      (1) Bluetooth enable pin:
>          bt_en-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
>      (2) Audio mute pin:
>          spk_mute-gpios = <&gpio GPIOH_8 GPIO_ACTIVE_LOW>;
>      (3) ...
> 
> So, this patch was born.

We understand, but since the Upstream linux codebase want to avoid dead code
as much as possible, please defer this patch when node will actually use these gpio defines.

Neil

> 
> Best regards,
> Huqiang
> 

