Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CB47627815
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 09:47:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236021AbiKNIrh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 03:47:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236597AbiKNIrf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 03:47:35 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF2871C42C
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:47:34 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id x21so12214748ljg.10
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k91EaasDqzf3M0hclk+HOgqxB1/9a3hKPkC8Mb7Jsz4=;
        b=hrReG26IsAMZsEqRhDQsQBx08ryyZf+HwjMn4SKJod+yPvdoVJdQXyFpCfB70I/57l
         ZaUihBH4gmegaNhtKiGEH8daaMC1xf0V6joWEeK5b6QWrPZG1sLyHU/lPKCu0EdGlq7s
         PeRvnG9k6ihY8epsSz4SswwkF2x4WEv6F7dR5BjV0jPjc9SvW4CGIEe75Z7fnqLgoP7w
         vEB0hpFUIWLqliX6vzvrjnrzL8i+D4Q1tszVknzGhZiJVSyKFs50GccKuiAIshySgA+y
         iKXr88TdSEGo6KFl7GxUtQJUxmCnWIAmihKBvvDvRnCW1ZmKWDI20tC+5C86sS9+DCrU
         +a/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k91EaasDqzf3M0hclk+HOgqxB1/9a3hKPkC8Mb7Jsz4=;
        b=sZtfU2LjkI85u8magr5gtOwyQ+YxKNJ9neqEXT9WE+nWKiqeBV4HWFuTkgpDQGjXhY
         tlzcjRaxhkORgi1j3qU4zc1dcBEma3WYm3uh6vUuPGOeVhi/jR/cWStMNwhiCpU4XI7h
         1BUn7Gp0M0VbEtl01pF2QZewbf6rCvwXA+V25QfShoyAn/HT6SF+/OdGiUgKxFpJoVf8
         u3LwYrkOxvDbgmvMENPUotHZzv7Gi5u0DgcjwECDPSgftKcMG03Zcqg+BNcJGnM38Ilv
         Qf2dyPs4IlRwgBMFt03/GOhGwfwQXzsWzqPAycYdN37rM+EeGfmwka4fncG1ZgO49yqD
         PCWA==
X-Gm-Message-State: ANoB5pk3Kc/UMs8kF0Q6/UB4l1nW45TyOoTCdf57iOgGWHI03fJ0zCqu
        F9aJNL7c4+N9pr5fdzyoKc6dhg==
X-Google-Smtp-Source: AA0mqf7REd8RQNZERPsnfhg0u7qbW4FY+JeeTm1lJQdoB6KrFHIHNxu05lgvKLyciUACCd9BVrOa+w==
X-Received: by 2002:a2e:9812:0:b0:26d:eaeb:cfb8 with SMTP id a18-20020a2e9812000000b0026deaebcfb8mr3618458ljj.226.1668415653004;
        Mon, 14 Nov 2022 00:47:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j6-20020a056512344600b004978e51b691sm1730554lfr.266.2022.11.14.00.47.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:47:32 -0800 (PST)
Message-ID: <88ab9c26-4727-f3f5-64e6-904e5ec38434@linaro.org>
Date:   Mon, 14 Nov 2022 09:47:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 4/5] arm64: dts: rockchip: Add Odroid Go Super
Content-Language: en-US
To:     Maya Matuszczyk <maccraft123mc@gmail.com>,
        linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     =?UTF-8?B?Sm/Do28gSCAuIFNwaWVz?= <jhlspies@gmail.com>,
        Chris Morgan <macroalpha82@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221112143411.517906-1-maccraft123mc@gmail.com>
 <20221112143411.517906-5-maccraft123mc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221112143411.517906-5-maccraft123mc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/11/2022 15:34, Maya Matuszczyk wrote:
> This device is another revision of Odroid Go Advance, with added two
> volume buttons, a second analog stick and a bigger screen that isn't yet
> supported in the Mainline Kernel.
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3326-odroid-go3.dts   | 161 ++++++++++++++++++
>  2 files changed, 162 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 12446f531d29..142c83d2e5aa 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2-v11.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
> new file mode 100644
> index 000000000000..4b6c896d8abd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
> @@ -0,0 +1,161 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Hardkernel Co., Ltd
> + * Copyright (c) 2020 Theobroma Systems Design und Consulting GmbH
> + * Copyright (c) 2022 Maya Matuszczyk <maccraft123mc@gmail.com>
> + */
> +
> +/dts-v1/;
> +#include "rk3326-odroid-go.dtsi"
> +
> +/ {
> +	model = "ODROID-GO Super";
> +	compatible = "hardkernel,rk3326-odroid-go3", "rockchip,rk3326";
> +
> +	joystick_mux_controller: mux-controller {
> +		status = "okay";

Why adding status? Also, it's not a first property...

> +		compatible = "gpio-mux";
> +		pinctrl = <&mux_en_pins>;
> +		#mux-control-cells = <0>;
> +
> +		mux-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>,
> +			    <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	joystick_mux: adc-mux {
> +		status = "okay";

Why status? Is it a node override?

> +		compatible = "io-channel-mux";
> +		io-channels = <&saradc 1>;
> +		io-channel-names = "parent

Best regards,
Krzysztof

