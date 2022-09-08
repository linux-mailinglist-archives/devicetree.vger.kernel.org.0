Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6F125B1D2F
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 14:35:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230474AbiIHMfZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 08:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230370AbiIHMfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 08:35:14 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B746F22B36
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 05:35:12 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id m15so7792113lfl.9
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 05:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=MtvDPwj1xj98pXvIJlBDsjDT7GOeTmv6R4xmR0F7h50=;
        b=ucFDlTPKrAXCjsKtyiEsczadOihwVme4pmfa92cwDRzdU5ydN1T+oxzE49b1O4MzYQ
         /SDRABklxJrzY13pXcXVE6T43qjHK1tmp3ffLimBe+BEtPKsFhMhrvHhQFw10wQo4UMY
         QH2g/KHlt6WK/anxVHDlCmparhH43DRUlHLxNjGTIaSwmh/lippSbERMFm5CY8GaiOMq
         Yux3EwzYYbR7ml3R1QlCRwWDYc62eon4ZGTRPdHVjVV5eAC1gFLsLIx3pkwmhUsv7y19
         EBkug2XFehtF7k2SscPy5nqKdkBk6AAIBCgJsLLwflySfa/J4IlNiBKJYMrGV5n3dQO6
         wb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=MtvDPwj1xj98pXvIJlBDsjDT7GOeTmv6R4xmR0F7h50=;
        b=XjgUeRMizqCZlGFmFaGeIuDBP+G4OgwdEjkANOh+diE1vsDklml3qqRwEV3Y0YPs5F
         QDlQ+NWmKIaabFz+eMiX1b75vsFup8nPcv8DGSJYGJ6JfIO2HO8NV8ZdFFPJrYBfYGhS
         mIQHv1q5baifXC1QvmMI/d6IhILBMSQezOR8vtdXsEVFAvKWtszkRGa/0yR6HZjyohME
         J12SBJHPvwBf9golUnZWhAUPOMWwcnmvl6la3lzMn9ikT6I+91Ba76LYNggQH8sVMrl0
         1Fteb1xnqQQRgCBB7nGkf6oGLo4W/QN+/MeOai7YO12DkzzupO09kUkRG/bpAiVBMzqX
         WpnQ==
X-Gm-Message-State: ACgBeo2/yxWCQmfvyi3OJc77sxadt/4a1slJLlGYYXyiK3/B7rZ3PFlY
        MRyL8lTWI6aol161ipceKhAlAA==
X-Google-Smtp-Source: AA6agR6mbkVKvTFOT42qF/i7lu1Gz70hK93yc9UJvNcVj5Z6ed6r33DSj5rC/gPINepqjhD/JWdAfA==
X-Received: by 2002:a05:6512:5c5:b0:497:f192:78ac with SMTP id o5-20020a05651205c500b00497f19278acmr1214013lfo.63.1662640511127;
        Thu, 08 Sep 2022 05:35:11 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w9-20020a19c509000000b004947984b385sm635694lfe.87.2022.09.08.05.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 05:35:10 -0700 (PDT)
Message-ID: <e93ef041-89d3-5718-4b1d-55bfd0c72797@linaro.org>
Date:   Thu, 8 Sep 2022 14:35:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 13/13] dt-bindings: serial: atmel,at91-usart: Add gclk
 as a possible USART clock
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, richard.genoud@gmail.com,
        radu_nicolae.pirea@upb.ro, gregkh@linuxfoundation.org,
        broonie@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        jirislaby@kernel.org, admin@hifiphile.com,
        kavyasree.kotagiri@microchip.com, tudor.ambarus@microchip.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-clk@vger.kernel.org
References: <20220906135511.144725-1-sergiu.moga@microchip.com>
 <20220906135511.144725-14-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906135511.144725-14-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 15:55, Sergiu Moga wrote:
> The Devicetree nodes for FLEXCOM's USART can also have an alternative
> clock source for the baudrate generator (other than the peripheral
> clock), namely the Generick Clock. Thus make the binding aware of
> this potential clock that someone may place in the clock related
> properties of the USART node.

Last sentence is confusing - what is the potential? Just skip it.

> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
> 
> 
> 
> v1 -> v2:
> - Nothing, this patch was not here before

You have confusing order of patches. Bindings mixed with DTS mixed with
drivers. Keep things ordered.
1. DTS changes needed for aligning to schema.
2. all bindings
3. rest

Best regards,
Krzysztof
