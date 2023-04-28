Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00F726F19FB
	for <lists+devicetree@lfdr.de>; Fri, 28 Apr 2023 15:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346354AbjD1NuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Apr 2023 09:50:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346314AbjD1NuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Apr 2023 09:50:15 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20062171E
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 06:50:14 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f18335a870so65472585e9.0
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 06:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682689812; x=1685281812;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fua5L+GNbpNJBh6UH6chMqiXo63OJdmhHHYy87puBPY=;
        b=eMBBRLhFC+6vz3jOhN6FMOyVs5gbkZOcg/x8JSfQmDi2/k5vlUWyj/cklU4oH5Foaw
         DRW2/5zVoidzUV1l51P6LhyOApdMPtou8khWZB/l4U00hDooRNKLlZjMKYY1ttl2YTQQ
         Ldx9EDRW9WDlL07rnYbXAm6i0FnmSHMscHXk0Ayxi5w6bKs6X2FCFKzd49rYsUEmnugC
         wD0aPhR6LXWv+rrMiHy5Jr41PjWSLnQ2r4mAfa4Kx28nvtD76Rh1c330552gDnxqI4sz
         p8QyYFy/w4yyJaxHjlhIjBlo26tmwJ2rbdvsfrtVedw/MlzOZ7zCyAnqeSrczVowgHWf
         HSYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682689812; x=1685281812;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fua5L+GNbpNJBh6UH6chMqiXo63OJdmhHHYy87puBPY=;
        b=XdGwoK8/ITN4QOdtvQ5prDVa6yXFyVfwULYAiSLTmXCX0QZM0g+RB/M31VqSBjdbGe
         NgSQF9eH5sskbxzJMYIHmYcAkteQKB/kBHaZzLFQtonT5KE0zzGqzdSa2l7F8o6bgK0K
         R8b7zVWDIgveEVtk5pFHkYmaDd8rhJM0jMOqQkhhkdWzRY6XaEwl6DVLhQjIEA9L4x7i
         q0//fnlZ0I8sB15RdSSBLzrmH66ybxzkCh/wrsxZcYDZz3rj/5xT3lA5RrpxQXdzTdOK
         PXPGUPlA4v8BscTJk9+LWCF06G6TvbS4QSZVJxmhDWsXysqYgxVTY2nMwuOF8Tiwv26m
         w7gg==
X-Gm-Message-State: AC+VfDysbxpVzRba/wVw5rRD5DZSpiv7Z/96pXMdTINotlNn7axPOGyY
        ainZ6z0PFodSv+QzsRe2RBd1Gw==
X-Google-Smtp-Source: ACHHUZ5Vd+iqT0hbusVDkDcn7XSOgXz4sQDdS0+3AkFybnT7jUueynuIQU87BKnhFDxGLCnhx55gPg==
X-Received: by 2002:a05:600c:b45:b0:3f2:5922:d955 with SMTP id k5-20020a05600c0b4500b003f25922d955mr4904783wmr.8.1682689812594;
        Fri, 28 Apr 2023 06:50:12 -0700 (PDT)
Received: from [172.23.2.142] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id t13-20020a7bc3cd000000b003f173c566b5sm24514410wmj.5.2023.04.28.06.50.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 06:50:11 -0700 (PDT)
Message-ID: <8e1ee169-603f-4aa4-9f02-68520d708d57@linaro.org>
Date:   Fri, 28 Apr 2023 15:50:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] arm: dts: Add am335x-boneblack-pps.dts
Content-Language: en-US
To:     Julien Panis <jpanis@baylibre.com>, arnd@arndb.de, olof@lixom.net,
        soc@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, tony@atomide.com
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
References: <20230428105453.110254-1-jpanis@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230428105453.110254-1-jpanis@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/2023 12:54, Julien Panis wrote:
> From: Lokesh Vutla <lokeshvutla@ti.com>
> 
> Add a new am335x-boneblack-pps.dts that can be used to configure TIMER7
> in PWM mode. This PWM signal can be used as a PPS signal when
> synchronized to PTP clock. Typically this synchronization is done by a
> userspace program. This PPS signal can be observed on pin P8.8.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
> Signed-off-by: Julien Panis <jpanis@baylibre.com>

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching). Missing soemthing identifying sub-arch.

> ---
>  arch/arm/boot/dts/Makefile                 |  1 +
>  arch/arm/boot/dts/am335x-boneblack-pps.dts | 25 ++++++++++++++++++++++
>  2 files changed, 26 insertions(+)
>  create mode 100644 arch/arm/boot/dts/am335x-boneblack-pps.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index efe4152e5846..d74158aae72d 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -939,6 +939,7 @@ dtb-$(CONFIG_SOC_AM33XX) += \
>  	am335x-base0033.dtb \
>  	am335x-bone.dtb \
>  	am335x-boneblack.dtb \
> +	am335x-boneblack-pps.dtb \
>  	am335x-boneblack-wireless.dtb \
>  	am335x-boneblue.dtb \
>  	am335x-bonegreen.dtb \
> diff --git a/arch/arm/boot/dts/am335x-boneblack-pps.dts b/arch/arm/boot/dts/am335x-boneblack-pps.dts
> new file mode 100644
> index 000000000000..88d2bc3fd759
> --- /dev/null
> +++ b/arch/arm/boot/dts/am335x-boneblack-pps.dts
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2023 Texas Instruments Incorporated - http://www.ti.com/
> + */
> +
> +#include "am335x-boneblack.dts"

Probably you need here compatible (and binding as separate patch).

> +
> +&am33xx_pinmux {
> +	pwm7_pins: pinmux_pwm7_pins {

No underscores in node names.


> +		pinctrl-single,pins = <
> +			AM33XX_PADCONF(AM335X_PIN_GPMC_OEN_REN, PIN_OUTPUT_PULLDOWN, MUX_MODE2)
> +		>;
> +	};
> +};
> +
> +/{
> +	pwm7: dmtimer-pwm7 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "ti,omap-dmtimer-pwm";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwm7_pins>;
> +		#pwm-cells = <3>;
> +		ti,timers = <&timer7>;
> +		ti,clock-source = <0x00>; /* timer_sys_ck */

Why this is hex? Should be just 0/1/2?


> +	};
> +};
> 
> base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6

Best regards,
Krzysztof

