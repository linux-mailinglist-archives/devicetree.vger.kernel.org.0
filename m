Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13F1E622E01
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 15:34:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231523AbiKIOeA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 09:34:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230194AbiKIOd7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 09:33:59 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A0D15F72
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 06:33:57 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id p8so25811050lfu.11
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 06:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FnUPYP2h27BzISDsj7V+1I2jQhwKwLDiGh3xRv0iTSc=;
        b=e/2T/j7hPCweP+e8pMtGK+rUEdcrLHT6n9wFz0MQPEpsv/HxClr3AbCtH1HNS1OVyY
         C8N88+/NTcCalaM4Ikd5y92MnzKts1kU3t2yj4YroD0oxoAZiIh4Q4oRDsTDi5tSv+Ho
         5Y9Zs8ULIh5v2nOrpScHWWMp/ZWUILWlihbmswT6KeJL9T657RQyAGVzPXAvtNW+LP81
         uPby8OkdS34THfrtU1hcezi1ddtibJX8LbfqVCFRL2dZJd7zmmP1Kbgsf/Apj5/oOYAy
         FfIf1IXGdypWvKrByafg0seytW8QfGLwy0bUr1e/r8f99zFmVa7f0eFTH1C1nsS4PIVm
         GBYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FnUPYP2h27BzISDsj7V+1I2jQhwKwLDiGh3xRv0iTSc=;
        b=unSn+kDuzspgrt6XAYJ0hRXBKzeWb8X4W+xLsx19h4m6nFPDNHWOjw9IpWp0jeeLFr
         Mt2+2GUbqpXkMRv//Q/7UhGF5YPQssW/ZPi8xp459dwatSbjYszUaHECPB7Xv5iXbXAU
         rGZRHhceUMiK1ksst4xaj+UPkXlIIKorLDC70TF2ZhivX1TfRqkBIgtjJLmXnce7F/z/
         puHzqLMnlyW6IxBKw5GK3fU0p3JsUDB93lT+GSp3bm12zdGO8E+BcmKvHrJh+CcB06sC
         DJywUoR+Hr/z63WMO8GG8urOD2F8sEZtlWUDz79HV3ehywZXv7dpEFrDwnwW2rXNTMyR
         Yezw==
X-Gm-Message-State: ACrzQf2L/uzlve51oD4F9n9mbtKa5YlGbWW/X8NN5mY2q5kPFm8BtxgT
        +efS8Kg4sAixgfcgUSANOAGXJA==
X-Google-Smtp-Source: AMsMyM7XVLQwoA9r8OJtwaF9vPBXBxQiqp/yQiOjMX6umhm8vGRj4xNfxRcCIHOY4Gs2LZQtVqfWHA==
X-Received: by 2002:a05:6512:3b95:b0:4a4:798d:c9a6 with SMTP id g21-20020a0565123b9500b004a4798dc9a6mr20449661lfv.463.1668004435520;
        Wed, 09 Nov 2022 06:33:55 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id w21-20020a194915000000b004a8b9c68728sm2247669lfa.105.2022.11.09.06.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 06:33:54 -0800 (PST)
Message-ID: <58c2ca66-94cf-292a-5973-cb2add0ab964@linaro.org>
Date:   Wed, 9 Nov 2022 15:33:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] ARM: dts: Update Nanobone DTS
Content-Language: en-US
To:     Mark Jackson <mpfj@newflow.co.uk>,
        =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221109143003.81463-1-mpfj@newflow.co.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221109143003.81463-1-mpfj@newflow.co.uk>
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

On 09/11/2022 15:30, Mark Jackson wrote:
> Update Nanobone DTS file as follows:-

Drop trailing dash.

Use subject prefixes matching the subsystem (git log --oneline -- ...).

> - Fix GPIO settings for RTS/CTS pins on UART3 & 4
> - Enable RS485 mode for UART3 & 4
> - Enable LM75 temperature sensor
> - Fix GPIO settings for MMC pins
> - Enable USB

Split patch per logical changes so your subject summarizes the change,
not just "update".

Missing Signed-off-by, so you also did not run checkpatch. Please run
scripts/checkpatch.pl and fix reported warnings.

> ---
>  arch/arm/boot/dts/am335x-nano.dts | 33 +++++++++++++++++++++++++------
>  1 file changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/am335x-nano.dts b/arch/arm/boot/dts/am335x-nano.dts
> index b6f2567bd65a..1f613e879c53 100644
> --- a/arch/arm/boot/dts/am335x-nano.dts
> +++ b/arch/arm/boot/dts/am335x-nano.dts
> @@ -120,8 +120,8 @@ AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE1)		/* spi0_d0.uart2_txd
>  
>  	uart3_pins: uart3_pins {
>  		pinctrl-single,pins = <
> -			AM33XX_PADCONF(AM335X_PIN_LCD_DATA10, PIN_INPUT_PULLUP, MUX_MODE6)	/* lcd_data10.uart3_ctsn */
> -			AM33XX_PADCONF(AM335X_PIN_LCD_DATA11, PIN_OUTPUT, MUX_MODE6)		/* lcd_data11.uart3_rtsn */
> +			AM33XX_PADCONF(AM335X_PIN_LCD_DATA10, PIN_INPUT_PULLUP, MUX_MODE7)	/* lcd_data10.gpio2[16] */
> +			AM33XX_PADCONF(AM335X_PIN_LCD_DATA11, PIN_OUTPUT, MUX_MODE7)		/* lcd_data11.gpio2[17] */
>  			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE1)		/* spi0_cs1.uart3_rxd */
>  			AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, PIN_OUTPUT, MUX_MODE1)		/* ecap0_in_pwm0_out.uart3_txd */
>  		>;
> @@ -129,8 +129,8 @@ AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, PIN_OUTPUT, MUX_MODE1)		/* ecap0_in
>  
>  	uart4_pins: uart4_pins {
>  		pinctrl-single,pins = <
> -			AM33XX_PADCONF(AM335X_PIN_LCD_DATA12, PIN_INPUT_PULLUP, MUX_MODE6)	/* lcd_data12.uart4_ctsn */
> -			AM33XX_PADCONF(AM335X_PIN_LCD_DATA13, PIN_OUTPUT, MUX_MODE6)		/* lcd_data13.uart4_rtsn */
> +			AM33XX_PADCONF(AM335X_PIN_LCD_DATA12, PIN_INPUT_PULLUP, MUX_MODE7)	/* lcd_data12.gpio0[8] */
> +			AM33XX_PADCONF(AM335X_PIN_LCD_DATA13, PIN_OUTPUT, MUX_MODE7)		/* lcd_data13.gpio0[9] */
>  			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_INPUT, MUX_MODE1)		/* uart0_ctsn.uart4_rxd */
>  			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_OUTPUT, MUX_MODE1)		/* uart0_rtsn.uart4_txd */
>  		>;
> @@ -188,12 +188,22 @@ &uart3 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart3_pins>;
>  	status = "okay";

Status is the last property.

> +	rts-gpio = <&gpio2 17 GPIO_ACTIVE_HIGH>;
> +	rs485-rts-active-high;
> +	rs485-rx-during-tx;
> +	rs485-rts-delay = <1 1>;
> +	linux,rs485-enabled-at-boot-time;
>  };
>  
>  &uart4 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart4_pins>;
>  	status = "okay";

Ditto

> +	rts-gpio = <&gpio0 9 GPIO_ACTIVE_HIGH>;
> +	rs485-rts-active-high;
> +	rs485-rx-during-tx;
> +	rs485-rts-delay = <1 1>;
> +	linux,rs485-enabled-at-boot-time;
>  };
>  
>  &uart5 {
> @@ -220,6 +230,12 @@ tps: tps@24 {
>  		reg = <0x24>;
>  	};
>  
> +	lm75@48 {

Generic node names, so probably "temperature-sensor". Check existing
sources.

> +		compatible = "lm75";
> +		reg = <0x48>;
> +		status = "okay";

No need, drop.


Best regards,
Krzysztof

