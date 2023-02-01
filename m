Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CC7A686D19
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 18:33:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230268AbjBARdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 12:33:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbjBARdj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 12:33:39 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 524A37A91
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 09:33:01 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so1966086wmb.2
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 09:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yTNQ69NaFESesDbKqqHzZsJ1GdW9dr4YOTSclaVyT/c=;
        b=kv1tR49gFxGRDQXeZOsKND0zxUUWwjW9gdj3y9HET/ctPq4Vk6FIivSiQTvDu4UYV8
         Z7rJlXm6zqzBH8+DbDK3/YCmsJCLHvYu4JuFrPUxNtP5cNh+OzHStuBMWmLwl0NYP/GA
         a1A138Ibt4yu2i4Pzd6tA1eFc8GgQKYZKe/eAx96mQnravY/9rJhQLSZs+eXs6PrzwcT
         UfvYYlMxQ7vXXL4K7poqAtROdVO4cclBjH21tUbRJuGW8wRdTGT9BWoBEoO2QBncSpC3
         YJgGkT2H91Lm0RHWmAZvbQs+7zIhyquK0Xv3hWA76q59qL1HHfHjJcsoCYGY99mX20sP
         6/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yTNQ69NaFESesDbKqqHzZsJ1GdW9dr4YOTSclaVyT/c=;
        b=1VmDe3J302kIhMEp176RzYfYiQjxQ8qzE6gRQTMyVROsUXxZJWItz+mrWEnFY5d4VX
         rzTPA9dHPJYWUIXcYA8CoG1lagDuQBZ58oohURrfhUXB9LrYfyjI3RGz309aRBKC3y8D
         FNAxrSIMrtQQciRVFFJWYrxMNx3tz/xAAnhqJeDOoMvddoPKDco/2uzR765PeD2V+lFm
         +TWGSsZJ5rV4ReTcn8BiL9d/rtbU96PR/jn25V7b7PlRKdNKeb9gVQKiFjijqZ8pB1nK
         ejrsRrFB7z/nqk7bYA/rDcsenFxJKUypZP6yu4WrV7uQgaTLLy8bJWgtrpac/sJkmqvB
         OTcg==
X-Gm-Message-State: AO0yUKVpP+94x8+jWMc+N4eiKF6SEW75l/kpeIDwpeIhoqzzuv/FMLGZ
        AP0cEc9aOKBv+e7zEFmkmsyWJw==
X-Google-Smtp-Source: AK7set+uLoGEVOb+Dqvby0dr6kUPyElhg73To3RP0NFn9EcKfqx/HKG4tTB+yqyrt2Yet6n25v/HDg==
X-Received: by 2002:a05:600c:3547:b0:3dd:1c45:fe3a with SMTP id i7-20020a05600c354700b003dd1c45fe3amr8090592wmq.16.1675272777906;
        Wed, 01 Feb 2023 09:32:57 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bad9:621b:618e:38d6? ([2a01:e0a:982:cbb0:bad9:621b:618e:38d6])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c158900b003dc4ecfc4d7sm2239253wmf.29.2023.02.01.09.32.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 09:32:57 -0800 (PST)
Message-ID: <b5a29098-53b2-c940-0b1f-4dff40d97e44@linaro.org>
Date:   Wed, 1 Feb 2023 18:32:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm(64): dts: meson: adjust order of some compatibles
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <e7b3fd1e-69eb-e66e-8abc-72b7c5fa975d@gmail.com>
Content-Language: en-US
Organization: Linaro Developer Services
In-Reply-To: <e7b3fd1e-69eb-e66e-8abc-72b7c5fa975d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiner,

On 01/02/2023 18:30, Heiner Kallweit wrote:
> During review of a new yaml binding, affecting these dts, it turned out
> that some compatibles aren't ordered as they should be. Order should be
> most specific to least specific.
> 
> Suggested-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>   arch/arm/boot/dts/meson8b.dtsi              | 4 ++--
>   arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 4 ++--
>   arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 4 ++--
>   3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
> index d5a3fe21e..5979209fe 100644
> --- a/arch/arm/boot/dts/meson8b.dtsi
> +++ b/arch/arm/boot/dts/meson8b.dtsi
> @@ -580,8 +580,8 @@ &ethmac {
>   };
>   
>   &gpio_intc {
> -	compatible = "amlogic,meson-gpio-intc",
> -		     "amlogic,meson8b-gpio-intc";
> +	compatible = "amlogic,meson8b-gpio-intc",
> +		     "amlogic,meson-gpio-intc";
>   	status = "okay";
>   };
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> index 923d2d8bb..12ef6e81c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> @@ -300,8 +300,8 @@ &ethmac {
>   };
>   
>   &gpio_intc {
> -	compatible = "amlogic,meson-gpio-intc",
> -		     "amlogic,meson-gxbb-gpio-intc";
> +	compatible = "amlogic,meson-gxbb-gpio-intc",
> +		     "amlogic,meson-gpio-intc";
>   	status = "okay";
>   };
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> index 04e9d0f1b..af912f698 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> @@ -312,8 +312,8 @@ &clkc_AO {
>   };
>   
>   &gpio_intc {
> -	compatible = "amlogic,meson-gpio-intc",
> -		     "amlogic,meson-gxl-gpio-intc";
> +	compatible = "amlogic,meson-gxl-gpio-intc",
> +		     "amlogic,meson-gpio-intc";
>   	status = "okay";
>   };
>   

Please send a new clean patchset with the associated bindings changes then this patch,
and split ARM and arm64 in 2 patches.

Neil
