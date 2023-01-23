Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA6D0677FE7
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:35:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232623AbjAWPft (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:35:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232409AbjAWPfs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:35:48 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90EA52915F
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:35:47 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id g10so9342124wmo.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZV/YupdBHfYEgxMNJ/vNSCWnKrdy7rcoPltaDFLsCpE=;
        b=BUMAANqbKkian0KWpTAwTx7mPcxBcConTeVmyWCjq5Kzn8SbuLc4CtuebTKN9J3iMP
         JSv7/gXEkjdu5rBaCy//KstbYcBQBzEZ6IcYzJgWoYafO2igUiY/rbnRs68/9ANW1X3v
         I8vd5jcmZgJylW3o+04nOQ3Mx6DIix6ru33mdEJKdipJIM5JrEFxqsopuvK+Fg3UwQqG
         dX8cSOLrqHfPJjiNtvkTrzbv/1oO5i6VIkMTnL0XVlis7IzvOlybQ6wRvbelmwgkFOpw
         Yh939Cheh5P7ZxSN8E3qZWRSGqb6BimxDLQQqpigOWbzN9TpVm4BLBI4DKaxsHWwI/ZE
         qUrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZV/YupdBHfYEgxMNJ/vNSCWnKrdy7rcoPltaDFLsCpE=;
        b=45sdxNWqL4F6fhOcfxljZR6P6Df2H/YjvInPc4mDtjz8G+qLvcT1UJQNlqH59/z0S+
         L5CNNtVX7srd8IQFpE5W+DX88V6run6ljskFwZ7o1kAsTLuff6VmxegAYiIbL1iMLgO6
         vLouvD7T7nhuD15jiaNdQeulz4nk7BMbCOmhcGFktE35QcBGkvZzIqTeaijwD/FkI+MN
         o8vljxtuBnyohSR5fg1hEMTWRvplOEs6kijrjzfi1tjSBhkqLLIVoCsUWhina/KrM3nd
         7CwlrgXHtvB1HvLcp9Q2HjlxQA2LjENk5coHT/7+RUqIJJRaM1cm+U/C70c9jGYOm8fj
         Htzg==
X-Gm-Message-State: AFqh2koSejdt8C2loSISMEqqvY2iiO5bysrJyDluG2uGKyD6Z76RsGpV
        A8Fc/abXOE52V2hKPkBGCHFDmA==
X-Google-Smtp-Source: AMrXdXv8boPuYWxImbIFEMrMA8f8P8adojZQbCuvYWC6/21kKUR23nqIM4iyDG6Uy1+FC2jzl1Siww==
X-Received: by 2002:a05:600c:4f83:b0:3db:eab:a600 with SMTP id n3-20020a05600c4f8300b003db0eaba600mr21346884wmq.7.1674488146174;
        Mon, 23 Jan 2023 07:35:46 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t13-20020a1c770d000000b003db0ee277b2sm10948154wmi.5.2023.01.23.07.35.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 07:35:45 -0800 (PST)
Message-ID: <51e31914-6b86-b83b-898e-2d2d31a59620@linaro.org>
Date:   Mon, 23 Jan 2023 16:35:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 2/2] arm: dts: exynos5422: Add device-tree for Samsung
 Galaxy S5 (SM-G900H)
Content-Language: en-US
To:     Markuss Broks <markuss.broks@gmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
References: <20230121201926.46990-1-markuss.broks@gmail.com>
 <20230121201926.46990-3-markuss.broks@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230121201926.46990-3-markuss.broks@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/01/2023 21:19, Markuss Broks wrote:
> Samsung Galaxy S5 (SM-G900H) was sold alongside Samsung Galaxy S5
> with Snapdragon SoC, however the Exynos version features a 3G
> capable Intel modem instead of Qualcomm version featuring LTE modem.
> This phone is based on Exynos5422. Currently, the touchscreen,
> USB, eMMC and the PMIC are enabled in the device-tree.
> 
> Signed-off-by: Markuss Broks <markuss.broks@gmail.com>
> ---
>  arch/arm/boot/dts/Makefile                   |   1 +
>  arch/arm/boot/dts/exynos5422-samsung-k3g.dts | 676 +++++++++++++++++++
>  2 files changed, 677 insertions(+)
>  create mode 100644 arch/arm/boot/dts/exynos5422-samsung-k3g.dts
> 

I gave it a try but dtbs_check complain:

/home/krzk/dev/linux/linux/out/arch/arm/boot/dts/exynos5422-samsung-k3g.dtb:
pinctrl@13400000: 's2mps11-irq-pin', 'touch-int-pin' do not match any of
the regexes: '^(initial|sleep)-state$', '^[a-z0-9-]+-pins$',
'^[a-z]+[0-9]*-gpio-bank$', 'pinctrl-[0-9]+'
	From schema:
/home/krzk/dev/linux/linux/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml


Best regards,
Krzysztof

