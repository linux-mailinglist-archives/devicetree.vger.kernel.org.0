Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A228632099
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 12:29:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230293AbiKUL3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 06:29:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230368AbiKUL3d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 06:29:33 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89F82B4801
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 03:24:10 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id l8so14117362ljh.13
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 03:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F3ha/lY5Ic8T9/pCMhQS0VzAXItA9akOxGeE3iE2uwg=;
        b=GXCPV1qg5gXY/PDtUcQ5XlqtZc0WaW6/R+AQdSy4J6fNUA2kMwhmpXcmAwB3gQy+kx
         sUncmxtaYpV+AE4H3RgpXonMJQphQHBQZGrkhQwabA9lUavPxadIglXaiIfdjEEVyvvp
         PwzWl2KOp7+O86OjPcBRcrogJHPr5HnSBwjhZHfmAb8BgQoz+BhC7SrDIk87M3DaLyku
         WPlkPgGdU6qehFDFgrBVbilol/Si1EL4u+IZIyGUFrsxxJuLBuFVaayWPNxkONpWdDpa
         DVnINZ7cP+xis2xgjmAa2eJtLLrsyJhRU9sWSIjwfX/ZcykvuXceKhTj+547lgeuddTW
         sU0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F3ha/lY5Ic8T9/pCMhQS0VzAXItA9akOxGeE3iE2uwg=;
        b=Hpqc9cHIrQ5sSnhIOT0NhMB3ZgHvkdrdIP5rT7399cIv+sLKjx4WqLDV0AcASlsxDE
         nGh8lElpugKVqtvBDILCWVHuPZBa4AmDF4rWjpLV7D54FJlE9t47gNnQEiOb7EhbJWxV
         YEnjdRH5ixywjFHu7amIThXbQYajwZmlJdNyxAfrYt6J9AFm/0ejcS6+PH46DA9B1Pce
         59NSt2Pc3rs3ozSHqhcPwFoj+tlZEI7oB9HzMNwsUAK/Q5UNfsGI2LEQotRV9qgW6qML
         vkoQNdkgJyhALHewSs9a7qO/mS2nmcNxO8qodBrPKdloNLj0EB8Wz3MHCiDj9J3pWkMh
         eVoA==
X-Gm-Message-State: ANoB5pm7z/WILuyqx3aSmvnihojOtqh+oviS+n6JGrbUlAqW1sZn6LhK
        OQdbUKjzRDeYYycmYsikJfC8Nw==
X-Google-Smtp-Source: AA0mqf66DZenK4y500jeKMjTP4Not4u/MjCX3D1Jk8QFNOUrjnMJcaJzdtrYf5kGec2pITVSiMd80g==
X-Received: by 2002:a2e:a810:0:b0:277:9e5:6cc8 with SMTP id l16-20020a2ea810000000b0027709e56cc8mr5199074ljq.105.1669029849369;
        Mon, 21 Nov 2022 03:24:09 -0800 (PST)
Received: from [192.168.1.101] (95.49.32.48.neoplus.adsl.tpnet.pl. [95.49.32.48])
        by smtp.gmail.com with ESMTPSA id s9-20020a056512214900b004acff58a951sm2000032lfr.133.2022.11.21.03.24.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 03:24:08 -0800 (PST)
Message-ID: <5eb40c7d-6663-68c1-d9f9-70a117cc3b26@linaro.org>
Date:   Mon, 21 Nov 2022 12:24:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 5/5] arm64: dts: qcom: msm8916-gplus-fl8005a: Add flash
 LED
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20221119202316.93142-1-linmengbo0689@protonmail.com>
 <20221119202659.93667-1-linmengbo0689@protonmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221119202659.93667-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 19.11.2022 21:28, Lin, Meng-Bo wrote:
> FL8005A uses SGM3140 Flash LED driver. Add it to the device tree.
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../boot/dts/qcom/msm8916-gplus-fl8005a.dts   | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts b/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts
> index cc81880f7c42..131e12ae510e 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts
> @@ -21,6 +21,21 @@ chosen {
>  		stdout-path = "serial0";
>  	};
>  
> +	flash-led-controller {
> +		compatible = "sgmicro,sgm3140";
> +		enable-gpios = <&msmgpio 31 GPIO_ACTIVE_HIGH>;
> +		flash-gpios = <&msmgpio 32 GPIO_ACTIVE_HIGH>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&camera_flash_default>;
> +
> +		flash_led: led {
> +			function = LED_FUNCTION_FLASH;
> +			color = <LED_COLOR_ID_WHITE>;
> +			flash-max-timeout-us = <250000>;
> +		};
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  
> @@ -239,6 +254,14 @@ l18 {
>  };
>  
>  &msmgpio {
> +	camera_flash_default: camera-flash-default-state {
> +		pins = "gpio31", "gpio32";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
>  	gpio_keys_default: gpio-keys-default-state {
>  		pins = "gpio107";
>  		function = "gpio";
