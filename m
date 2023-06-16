Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39EBE732C9A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 11:59:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbjFPJ7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 05:59:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbjFPJ7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 05:59:34 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFFBC2D71
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:59:17 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-518ff822360so632498a12.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686909556; x=1689501556;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z0kVN4uJ2t6EXhxGAHJQ7Af/HYSNhGQj+DL7pRhqY+A=;
        b=liDkAwN+gjKjXNRRQ/j5BbR2bHRs+ioFBaRsdJyeB6BaB+k55wVdUrAICLpQ3q/c+d
         +x9YqitUwz2laN87zOH95H+OQIW1AqYhGp/KL3VD83VLgDi5Mf6hTotj+nnOWEZHIEkI
         pNjKr0KARmuNd/UXKILCs7g5rWWmZM7WNqhteJYbOg4ZbwD/syEPAvUHHy85PVXodFcm
         9ORNIBX3IjNokCaPY3vzXtYG+n5Q9RTzl2KL9HuicXiYDZeZvsil9GiB+s+436MnwJU6
         75T6wXM2r5JvVAWJWBEoIS8s2kKOxdT9zJdKZ5BMAXxZ7PcTZLt2Tb7tGAD41LkowIwj
         IQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686909556; x=1689501556;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z0kVN4uJ2t6EXhxGAHJQ7Af/HYSNhGQj+DL7pRhqY+A=;
        b=VQuQdPp+1dQ7Eq9VrhXKyilimmMoJWT3mDlaIUdavw9DCyGzEEZs5w+r4RQjR4AJIJ
         LWds/VUJIhJBbEGGlsXBYvrcah/c4ulZmpKYrWBo6MWXmONexe0dY3DZraNbHsfrmbLu
         4WVA55UUwPGt0UoS6TgBIzmt6rt6tZoJ4jVK8bO1D4pZr6APFyPyKkCcGvkZMWv9YlUI
         gG+TVeBw7UYjQbf3kCd7RGKBLQniZELYEzQw/xHmXBU59CtoZ5v6KjUk97yAZVYJd3bx
         nZ0v5zHm2zmkJcxUifmVUnkCCql0xAK01aW5fn0WamPmvom64xuxJts17SjP0zK/mMdu
         MZOA==
X-Gm-Message-State: AC+VfDzUcSYS/Epdaq6fiY2ddA25WpkjowWgTaH34YPs7cHv+OzFQHfh
        DRN8zoBqByf6E0Uh+/8KU89I2w==
X-Google-Smtp-Source: ACHHUZ4E4gTgAo61EQOIM9JWP0xKrmQTtHA1n0R7+mNOO3uVHQxrA8Gb7YCsXU9CoyVkm7HHqjyj2Q==
X-Received: by 2002:a05:6402:354:b0:519:a5cc:e66e with SMTP id r20-20020a056402035400b00519a5cce66emr789487edw.18.1686909556514;
        Fri, 16 Jun 2023 02:59:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id j17-20020aa7ca51000000b00518710798b3sm4578496edt.50.2023.06.16.02.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 02:59:16 -0700 (PDT)
Message-ID: <493a28b2-8ad5-2e9a-462b-bdc7d585b722@linaro.org>
Date:   Fri, 16 Jun 2023 11:59:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 5/6] LoongArch: DeviceTree for Loongson-2K1000
Content-Language: en-US
To:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
 <99bdbfc66604b4700e3e22e28c3d27ef7c9c9af7.1686882123.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <99bdbfc66604b4700e3e22e28c3d27ef7c9c9af7.1686882123.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 08:11, Binbin Zhou wrote:
> Add DeviceTree file for Loongson-2K1000 processor, which integrates two
> 64-bit dual emission superscalar LA264 processor cores.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  arch/loongarch/boot/dts/Makefile            |   3 +-
>  arch/loongarch/boot/dts/loongson_2k1000.dts | 565 ++++++++++++++++++++
>  2 files changed, 567 insertions(+), 1 deletion(-)
>  create mode 100644 arch/loongarch/boot/dts/loongson_2k1000.dts
> 
> diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
> index 0e5ed373b1b4..c0464bb8e430 100644
> --- a/arch/loongarch/boot/dts/Makefile
> +++ b/arch/loongarch/boot/dts/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> -dtb-$(CONFIG_MACH_LOONGSON64)	= loongson_2k0500.dtb
> +dtb-$(CONFIG_MACH_LOONGSON64)	= loongson_2k0500.dtb \
> +				  loongson_2k1000.dtb
>  
>  obj-$(CONFIG_BUILTIN_DTB)	+= $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
> diff --git a/arch/loongarch/boot/dts/loongson_2k1000.dts b/arch/loongarch/boot/dts/loongson_2k1000.dts
> new file mode 100644
> index 000000000000..9fd9d400d97f
> --- /dev/null
> +++ b/arch/loongarch/boot/dts/loongson_2k1000.dts
> @@ -0,0 +1,565 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/clock/loongson,ls2k-clk.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	model = "LS2K1000 Reference Board";
> +	compatible = "loongson,ls2k1000";
> +

All the same comments apply here. Don't mix SoC (DTSI) with boards.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof

