Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89ADE654D4C
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 09:13:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235853AbiLWINi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 03:13:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235811AbiLWINh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 03:13:37 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE0222876B
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:13:35 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id g13so6161261lfv.7
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TA2BGY1wVbwWPsphtJ+F62BTUuCaxa/hXodpbqAoUoI=;
        b=d/a80LWvYTRczqijfxBvEDPt0xWxyz9N8w1KXKV7H4QjGxooMX8h47gUEqN6IDpFSI
         gEORAgoBVQaqmoPC0KIN6MzPb4FigxrWezf0Cq4bn25HPgT76ANTo/EioqwS56UVbXUc
         Sjpzs34frIei8M6O6iuIXDaNebMBZ7aC0gaBW+obV0ee38CWocKEKCfHCbVfqpXtqULv
         paLbL81UMvTNd7m1hwx+6K6FzoKMB5ECNYXvt3u0w6FkSMoa0KHFUa8L2c5MU0h6wLyC
         IsZIhCuKEeu6MSlK+K4N1Y6wvdejBo5AWxckjqbx7CWCR+1ruRnRReeleuQTFfcaC1mq
         gCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TA2BGY1wVbwWPsphtJ+F62BTUuCaxa/hXodpbqAoUoI=;
        b=MNuZk4HwbYQ/6Z/3iCP56YlXbBYryU5JBzR5ytPW5eekc2wzzKmWCWZnuwkeltLrrd
         y6uqCQFuWZMSTJPiwnsBtn+rS5QRjKJYWMCMbaycIK0RgLicmFZ6UXroglhGrd5EH/mN
         ZSRz5iUlcORiX2VwTq+tZCQ1U32AMpYN3REt/j3Us4Q/Dk0+v1vgn2NOePCep1oHd0gR
         HOOOZfvDQudLmwAD/xHH9AqxlF9Jumo/ajVHBEkoFmz0zxhGU6zeRd8dbzr87PUiYMDy
         VYVWOU1WZYwcOU2obq8wAXZIBKWsKBht6WhtWoOviCQi7vKfsYw6V5WnYEJlMPd/i4lq
         fwAw==
X-Gm-Message-State: AFqh2kokaLHcC44+E5jBl5qRol/Gx1htqXLzhVxFAwWhb+V3uS8azD18
        u3f1sJpOIlg4CNFCCVOd+wW+QA==
X-Google-Smtp-Source: AMrXdXssGFk983o11wyLQ7fcGYNFhp/dqGFKrBxt7YAFhJJbiLMZVXeG6Ipt+ZYEUn0GjY+xWaa7fw==
X-Received: by 2002:a05:6512:2216:b0:4b5:959f:6498 with SMTP id h22-20020a056512221600b004b5959f6498mr3100804lfu.62.1671783214357;
        Fri, 23 Dec 2022 00:13:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z21-20020a196515000000b004b4bab7d5a9sm428412lfb.46.2022.12.23.00.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:13:33 -0800 (PST)
Message-ID: <a73d99fb-0d47-ad93-27e2-9b51dba4b824@linaro.org>
Date:   Fri, 23 Dec 2022 09:13:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
Content-Language: en-US
To:     Javier Martinez Canillas <javierm@redhat.com>,
        linux-kernel@vger.kernel.org
Cc:     Ondrej Jirman <megi@xff.cz>, Robert Mader <robert.mader@posteo.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20221222223830.2494900-1-javierm@redhat.com>
 <20221222223830.2494900-5-javierm@redhat.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222223830.2494900-5-javierm@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/12/2022 23:38, Javier Martinez Canillas wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> The phone's display is using Hannstar LCD panel, and Goodix based
> touchscreen. Support it.
> 
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Co-developed-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
> Signed-off-by: Kamil Trzciński <ayufan@ayufan.eu>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
> 
>  .../dts/rockchip/rk3399-pinephone-pro.dts     | 124 ++++++++++++++++++
>  1 file changed, 124 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 0e4442b59a55..a0439a60395e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -29,6 +29,12 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm0 0 1000000 0>;
> +		pwm-delay-us = <10000>;
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  		pinctrl-names = "default";
> @@ -81,6 +87,32 @@ vcc1v8_codec: vcc1v8-codec-regulator {
>  		regulator-max-microvolt = <1800000>;
>  		vin-supply = <&vcc3v3_sys>;
>  	};
> +
> +	/* MIPI DSI panel 1.8v supply */
> +	vcc1v8_lcd: vcc1v8-lcd {

Node names should be generic, so regulator suffix or prefix (looks like
other nodes already use suffix)

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		regulator-name = "vcc1v8_lcd";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys>;
> +		gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&display_pwren1>;
> +	};
> +
> +	/* MIPI DSI panel 2.8v supply */
> +	vcc2v8_lcd: vcc2v8-lcd {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Best regards,
Krzysztof

