Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 715F4475E20
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 18:04:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245115AbhLOREw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 12:04:52 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:52560
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S245109AbhLOREv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 12:04:51 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 672A43F4B3
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 17:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639587889;
        bh=lND4OoA35DC/nm8kOM3LCMts4j9XNowECufJcxr7lKM=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=gz9O440pHBWszIBRUkGfj+q+X3IgZRQxJSsUBwaiuintYNVAA4EvbgltXaA61Ojh0
         PbJg3bZXfQYQ0ZoB68sDiReHunMGrX6bGt3yVHZwlVkyD3xI2s1cnAp4tryNOSmYH2
         9HFH9tWA7UZLALF8zMyWksybb1UCczO4q2DOHggFHF6Luceb/JdIugsWoJUdP4LKF6
         D16sCQB/kSTCZAI8HuCmZTOxqSoKkM34Pb6i8jZ5Wodilli6Xea2lS/yGxSQq5fznS
         9ajmgE8MH+/MR3U5SyE8hZOL99F+b+LEbHTGvRg9iHG5A8dZkZa45a8H5mRHyV9p/5
         0dUU3MK3DIYkA==
Received: by mail-lf1-f72.google.com with SMTP id q13-20020a19f20d000000b0041fcb65b6c7so7616514lfh.8
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 09:04:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lND4OoA35DC/nm8kOM3LCMts4j9XNowECufJcxr7lKM=;
        b=JswX7XyQlppYCptj0Q862QECuIc9/erXkw/0XvrL4ZcKFH8GeSjzpp+Z24CMk6Mzc9
         wHGjMXNaGwbzzJS76sRtbieCq3ilk+mYLjTKVFSuIOUCO1Md/dUo95tg5CnyEEaMFMJ5
         JHlrf8tBwjM2Wi6hDeKN1XPn8wYb0MPWV5Rw/K5AmStv2J9u9UJITnyoCie83PQG+EHi
         8TJOyJzubMSrJpDvkGGqND1stfuy+kZF9mSFTKySiqp6aODyie6XmM/OCQgJdUu3tVIP
         Jq76QJPAz3B+qX45+jQaC8BulUbMoAXb2axLIAEbymZxP4ydpc7znINGKuHoIwFeBdXH
         CIXA==
X-Gm-Message-State: AOAM5330ZNcoJ0ihcoVPNY6iS1Rrz3m/zRbyx49HQq8KIzNXqrFyWQzM
        HQXB0IY6Q573ZQb51LZgDpJUrN7Vb6INs6NFQ+wE1UtHVsxeysgk98XajbjJ93je5QKV2M1Qm6o
        AgVsie715BTc+ZOhODwBr03Zz/RUavMGGSRRK0WE=
X-Received: by 2002:ac2:4c0b:: with SMTP id t11mr10861619lfq.520.1639587888815;
        Wed, 15 Dec 2021 09:04:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyDC7Uhq9X079aLTRRyBWwLifon/fdJaMDRQkGk4uaeEYd+dFFSVGtgZL0YygKIzNYGxnNIDg==
X-Received: by 2002:ac2:4c0b:: with SMTP id t11mr10861579lfq.520.1639587888551;
        Wed, 15 Dec 2021 09:04:48 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id u23sm407224lfo.35.2021.12.15.09.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Dec 2021 09:04:48 -0800 (PST)
Message-ID: <b998809c-9d33-cd42-ebfd-7cce620a6ed8@canonical.com>
Date:   Wed, 15 Dec 2021 18:04:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 7/7] arm64: dts: exynos: Add initial E850-96 board support
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        Hao Fang <fanghao11@huawei.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20211215160906.17451-1-semen.protsenko@linaro.org>
 <20211215160906.17451-8-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211215160906.17451-8-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2021 17:09, Sam Protsenko wrote:
> E850-96 is a 96boards development board manufactured by WinLink. It
> incorporates Samsung Exynos850 SoC, and is compatible with 96boards
> mezzanine boards [1], as it follows 96boards standards.
> 
> This patch adds minimal support for E850-96 board. Next features are
> enabled in board dts file and verified with minimal BusyBox rootfs:
> 
>  * User buttons
>  * LEDs
>  * Serial console
>  * Watchdog timers
>  * RTC
>  * eMMC
> 
> [1] https://www.96boards.org/products/mezzanine/
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/Makefile           |   3 +-
>  .../boot/dts/exynos/exynos850-e850-96.dts     | 157 ++++++++++++++++++
>  2 files changed, 159 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
> 
> diff --git a/arch/arm64/boot/dts/exynos/Makefile b/arch/arm64/boot/dts/exynos/Makefile
> index b41e86df0a84..803548ccc537 100644
> --- a/arch/arm64/boot/dts/exynos/Makefile
> +++ b/arch/arm64/boot/dts/exynos/Makefile
> @@ -3,4 +3,5 @@ dtb-$(CONFIG_ARCH_EXYNOS) += \
>  	exynos5433-tm2.dtb	\
>  	exynos5433-tm2e.dtb	\
>  	exynos7-espresso.dtb	\
> -	exynosautov9-sadk.dtb
> +	exynosautov9-sadk.dtb	\
> +	exynos850-e850-96.dtb
> diff --git a/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts b/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
> new file mode 100644
> index 000000000000..fd611906d81c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
> @@ -0,0 +1,157 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * WinLink E850-96 board device tree source
> + *
> + * Copyright (C) 2018 Samsung Electronics Co., Ltd.
> + * Copyright (C) 2021 Linaro Ltd.
> + *
> + * Device tree source file for WinLink's E850-96 board which is based on
> + * Samsung Exynos850 SoC.
> + */
> +
> +/dts-v1/;
> +
> +#include "exynos850.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#define BOARD_ID	0x0
> +#define BOARD_REV	0x2
> +
> +/ {
> +	model = "WinLink E850-96 board";
> +	compatible = "winlink,e850-96", "samsung,exynos850";
> +	board_id = <BOARD_ID>;
> +	board_rev = <BOARD_REV>;
> +
> +	chosen {
> +		stdout-path = &serial_0;
> +	};
> +

You did not define memory node. Do you expect bootloader to fill it?
Does it change between different boards?


Best regards,
Krzysztof
