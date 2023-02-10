Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36C986921BA
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 16:14:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232511AbjBJPO2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 10:14:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232427AbjBJPO1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 10:14:27 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CB0A56EFC
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:14:24 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id u10so4048410wmj.3
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Z9lQ8uRKJ4zCzCOi0nvl4MdqLTZxWppuqi+n32H1GYQ=;
        b=hj+QMza7DNox+OyZeLzPOOElr4SfHk8jgodB8hWRJ6+a8D8Eh6Xvi77s88yqWbBi3W
         n7WdDWWT9O+csAALJl9qRSBRtxZ8IaNIiFnKHrZXgp9aN4K2DQ+nfe1s+SGQFy+duAKg
         YspdHEwrU+C0OGIFrnwqSoLvsuAp7iwJ6wL/w3X97iH+zN13FzijZ6R6AWsQKIdVuPTQ
         KCepheNg2tciPuxLQOoTBPul0SCSlvNFCGA2/nxm5Zh0vYhOidGQpOWLhzMKPt2XX0p9
         tB8FVhSgfrmWDvRPk9eQ3VAD9dVnfxAupV/e3ChK6k9L0F98lR6862aeCr6ffrFshILP
         A3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z9lQ8uRKJ4zCzCOi0nvl4MdqLTZxWppuqi+n32H1GYQ=;
        b=g5pOgbqmn0laqyxYm+/Tboa8H7HLIR9iMeFwAogbwkcwXkuVm5FOtDcLWKU3JkHQsa
         kCKBmp/A9uD6DOoZkSkBQzVYN8Sl5ETK3+8cXVprVKsXwYmcVNDMunN7ZJpSUsSoDPby
         jviF8n/2PjwTHLGTjfGTSnwFx8nhzjYTyW4XjadqPlpxUfSLyTZR5xzhAhaR4/i4CStr
         Q0wW78yx1zxzSrao48GedlDDizytmP7IRvVDWQK6uAAmpnMzYhpBACGE8lqMFdbGxW7b
         Tys/JtuXG+VxZvw7q+ovWKdI6hb0GFokpg727Wy0P/E1JJcD/Z+TcDnCmpX371LnryeE
         YyMA==
X-Gm-Message-State: AO0yUKVFUyUihmkvMxFCQt9VKdxS076/6IfAfbGAfp578kXQT1aRf+WQ
        Ld9dfTNffliWSifG6IFJ2CMtxg==
X-Google-Smtp-Source: AK7set8V+rKzNRUCEWjmI4sIj9cMaVcPbkVCCfL/z2U9yBJmXJS4axHG6YC1utnnaC8o5nwW8NpjJg==
X-Received: by 2002:a05:600c:18a6:b0:3e0:e77:3056 with SMTP id x38-20020a05600c18a600b003e00e773056mr13187148wmp.30.1676042062768;
        Fri, 10 Feb 2023 07:14:22 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5a65:5553:55cf:3027? ([2a01:e0a:982:cbb0:5a65:5553:55cf:3027])
        by smtp.gmail.com with ESMTPSA id j37-20020a05600c1c2500b003daf6e3bc2fsm13887109wms.1.2023.02.10.07.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 07:14:21 -0800 (PST)
Message-ID: <3184693a-93c2-6c86-d960-a578e8486e89@linaro.org>
Date:   Fri, 10 Feb 2023 16:14:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/3] arm64: dts: meson: gxbb-kii-pro: sort and tidy the
 dts
Content-Language: en-US
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Ferass El Hafidi <vitali64pmemail@protonmail.com>
References: <20230210122817.1027765-1-christianshewitt@gmail.com>
 <20230210122817.1027765-2-christianshewitt@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <20230210122817.1027765-2-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2023 13:28, Christian Hewitt wrote:
> Alpha-sort the nodes, move the default line in the LED node to where it's
> normally found, and remove excess spacing. No functional changes.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Ferass El Hafidi <vitali64pmemail@protonmail.com>
> ---
>   .../boot/dts/amlogic/meson-gxbb-kii-pro.dts   | 32 ++++++++-----------
>   1 file changed, 14 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> index 6d8cc00fedc7..9bfdb54d912a 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> @@ -6,21 +6,22 @@
>   /dts-v1/;
>   
>   #include "meson-gxbb-p20x.dtsi"
> -
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/input/input.h>
>   #include <dt-bindings/leds/common.h>
> +
>   / {
>   	compatible = "videostrong,kii-pro", "amlogic,meson-gxbb";
>   	model = "Videostrong KII Pro";
>   
>   	leds {
>   		compatible = "gpio-leds";
> +
>   		status {
>   			gpios = <&gpio_ao GPIOAO_13 GPIO_ACTIVE_LOW>;
> -			default-state = "off";
>   			color = <LED_COLOR_ID_RED>;
>   			function = LED_FUNCTION_STATUS;
> +			default-state = "off";
>   		};
>   	};
>   
> @@ -34,24 +35,8 @@ button-reset {
>   			gpios = <&gpio_ao GPIOAO_3 GPIO_ACTIVE_HIGH>;
>   		};
>   	};
> -
> -};
> -
> -
> -
> -&uart_A {
> -	status = "okay";
> -	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
> -	pinctrl-names = "default";
> -	uart-has-rtscts;
> -
> -	bluetooth {
> -		compatible = "brcm,bcm4335a0";
> -	};
>   };
>   
> -
> -
>   &ethmac {
>   	status = "okay";
>   	pinctrl-0 = <&eth_rmii_pins>;
> @@ -78,3 +63,14 @@ eth_phy0: ethernet-phy@0 {
>   &ir {
>   	linux,rc-map-name = "rc-videostrong-kii-pro";
>   };
> +
> +&uart_A {
> +	status = "okay";
> +	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
> +	pinctrl-names = "default";
> +	uart-has-rtscts;
> +
> +	bluetooth {
> +		compatible = "brcm,bcm4335a0";
> +	};
> +};

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
