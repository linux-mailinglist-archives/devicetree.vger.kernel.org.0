Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D092692258
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 16:36:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232792AbjBJPgL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 10:36:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232789AbjBJPgK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 10:36:10 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EF7177BA0
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:36:08 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so6570619wma.1
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=B0iJ9ifSxWtyxJLdg8qNKxhkPjPgSJPt4W8qmCIqg0Q=;
        b=HfNMVsmPPDvMYvt5+tJkozBjMlVdYJItOX28z5S2ADhR2yM3++LVa0ez+38on/yuKa
         HqsAaYjJ2EtFYAa3Yh8caBZG+2cJfnlULiqsNBt9Lhp/pd2iY3s6pPSC5eD7wQFAkho2
         x6yD+LC3ka9DW/O1HzcoxLSdpocpgptkr4VEmzxBpNFgWJOqE/RhpLWcrFC1Zikm1IGD
         8FnPhEGX3RH4GRbiSoncBItI/i8fgJUjtMIJVKspNKu/oQH5fsF26ebzcXrERaJszpCE
         ha9nM6Y5qlVn7z9YIQRbaBUgKe0AWXnuuOJOsv1hECz3O9p9mlLgSLQlDCI+o5iIwPYV
         qf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B0iJ9ifSxWtyxJLdg8qNKxhkPjPgSJPt4W8qmCIqg0Q=;
        b=UsTWeO50OSTs+D57NJjjY6mwdT/N46iAdP2+/TOcxIEQqn0FuJmDNBePHY/0Xv7GI4
         ZWbFKyg6Oc2HSQNq3e+Tp8+B8OFhwDI96M6U35psgjzDyLIBxgaXg6aiPcomn0yQR2Pn
         uB17RBId2mm7lA0t1cKiPJ43EJOAzwN2lXvoGty6F89gMTsLHDBpqsG2OWY6XwtoQj9n
         6W7kvyQNhNPvAlWPrZVa3nSgFi8OKsj6eNffB9pFzDzRBR8eF3BcYmKNTTA033e9O6PJ
         0ITNH3fecGKiNX8ptQIHJKSoniXzPcg13n5uVhr2c6/02FeA7tAcUYPheei95z0AD1f4
         aApg==
X-Gm-Message-State: AO0yUKX9UgMqNHd6T4FISjrq30CITZSFu7fu5Vf8is+F3aOs1twc2OQS
        S5n5NGsmNPJFjbSAzvUgOd0wFA==
X-Google-Smtp-Source: AK7set9f0qq7kzrpbHSL06E28VSOJyoJFskmV0IOe9AnouV/GnHZKvzhSNxuFumH/NZ3ZMOfYhmZVg==
X-Received: by 2002:a05:600c:a68f:b0:3db:1f68:28f with SMTP id ip15-20020a05600ca68f00b003db1f68028fmr12508990wmb.24.1676043366716;
        Fri, 10 Feb 2023 07:36:06 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5a65:5553:55cf:3027? ([2a01:e0a:982:cbb0:5a65:5553:55cf:3027])
        by smtp.gmail.com with ESMTPSA id p1-20020a1c7401000000b003cfa622a18asm8806159wmc.3.2023.02.10.07.36.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 07:36:06 -0800 (PST)
Message-ID: <09b018a6-ffd7-b929-4ce0-bac18ebcb2b1@linaro.org>
Date:   Fri, 10 Feb 2023 16:36:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: meson: gxbb-kii-pro: add initial audio
 support
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
 <20230210122817.1027765-4-christianshewitt@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <20230210122817.1027765-4-christianshewitt@gmail.com>
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
> Add initial support for HDMI and S/PDIF audio output.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Ferass El Hafidi <vitali64pmemail@protonmail.com>
> ---
>   .../boot/dts/amlogic/meson-gxbb-kii-pro.dts   | 61 +++++++++++++++++++
>   1 file changed, 61 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> index 435ae2aa404e..b6ee76011d82 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> @@ -9,11 +9,19 @@
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/input/input.h>
>   #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/sound/meson-aiu.h>
>   
>   / {
>   	compatible = "videostrong,kii-pro", "amlogic,meson-gxbb";
>   	model = "Videostrong KII Pro";
>   
> +	spdif_dit: audio-codec-0 {
> +		#sound-dai-cells = <0>;
> +		compatible = "linux,spdif-dit";
> +		status = "okay";
> +		sound-name-prefix = "DIT";
> +	};
> +
>   	leds {
>   		compatible = "gpio-leds";
>   
> @@ -35,6 +43,59 @@ button-reset {
>   			gpios = <&gpio_ao GPIOAO_3 GPIO_ACTIVE_HIGH>;
>   		};
>   	};
> +
> +	sound {
> +		compatible = "amlogic,gx-sound-card";
> +		model = "KII-PRO";
> +		assigned-clocks = <&clkc CLKID_MPLL0>,
> +				  <&clkc CLKID_MPLL1>,
> +				  <&clkc CLKID_MPLL2>;
> +		assigned-clock-parents = <0>, <0>, <0>;
> +		assigned-clock-rates = <294912000>,
> +				       <270950400>,
> +				       <393216000>;
> +		status = "okay";

Drop this okay

> +
> +		dai-link-0 {
> +			sound-dai = <&aiu AIU_CPU CPU_I2S_FIFO>;
> +		};
> +
> +		dai-link-1 {
> +			sound-dai = <&aiu AIU_CPU CPU_SPDIF_FIFO>;
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&aiu AIU_CPU CPU_I2S_ENCODER>;
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +
> +			codec-0 {
> +				sound-dai = <&aiu AIU_HDMI CTRL_I2S>;
> +			};
> +		};
> +
> +		dai-link-3 {
> +			sound-dai = <&aiu AIU_CPU CPU_SPDIF_ENCODER>;
> +
> +			codec-0 {
> +				sound-dai = <&spdif_dit>;
> +			};
> +		};
> +
> +		dai-link-4 {
> +			sound-dai = <&aiu AIU_HDMI CTRL_OUT>;
> +
> +			codec-0 {
> +				sound-dai = <&hdmi_tx>;
> +			};
> +		};
> +	};
> +};
> +
> +&aiu {
> +	status = "okay";
> +	pinctrl-0 = <&spdif_out_y_pins>;
> +	pinctrl-names = "default";
>   };
>   
>   &ethmac {


With that change:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

