Return-Path: <devicetree+bounces-417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E40AB7A178F
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05B391C2110F
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FFE2D295;
	Fri, 15 Sep 2023 07:35:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30DED292
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:35:00 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 148E7B8
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:34:59 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31c3df710bdso1649584f8f.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694763297; x=1695368097; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qOhwwySDKn21smjpOk6dEq+GSuFI63bl1UFYi1EKI04=;
        b=S2ajIbeYZYyTxsEYGmgWJPM9xwmLu7ijk0YL49umjAtFn8R8WN+895HHJGC7MxEpNd
         s1doNM5/JqYzgFoG6nikIaGseeQnNZc9NsoCebUdusj982F2A+kO7Zxm8xb3xAgxulFD
         FV7mvoCWhy/hIrtDHWEhmVkOABcJE5e4dnyWaxSE9yiz/iugtAq3ALnZJ5IGoyxElwR/
         tW12+tyKNEbUurCBdC1Oc4ionblUfISkB9wuZdfmy7A4aQ/K/idxPd6aUO+wUkLF1ell
         fWZiK0urWXkfTA1GQAvUQyI3SDZTc/TY0SjwvL2E5ViPsZ/UXYvDgslhWMsoxPKY8rKb
         uX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694763297; x=1695368097;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qOhwwySDKn21smjpOk6dEq+GSuFI63bl1UFYi1EKI04=;
        b=dbhR7+SgdZTbMZ8z7mO6p8n+mx7Wyj1GhDIZGLninlMHvsXYNcbmOMzxz38Aoh9SAS
         Y19CA2KEHlLtAWCw9FcKKPXeO1shUEXM7qCP9XDUqcKUQ4U0gxW0UhL+BGOg0wyHKzUu
         2fA51m7z+dTwfvohLlgimaJcTUyU9tmDDNRGQ0/LAqDXKyoElbjMLiPgEs8syskPcH19
         tR2mKQfRSSuRe+r1rYZ0SCsdK7DKqh0hWsr2nvfsk5oS6MJbEXeMzG2XJFEDDNXtKcIW
         rcMuVvtaanMEqDK/kDn/f9p6LXmpFHN6e+EE8dwCDahJhvx6Nh/ITT1GTjh3zf0J1dD+
         ijnw==
X-Gm-Message-State: AOJu0YwESQnY8ZEs3f7edEzgGOj0xE3IAKQOSdSeuYYwkYhRMo2WgCnr
	PoKZ+mfnq7Kn6bDtAaB/IrH4hQ==
X-Google-Smtp-Source: AGHT+IExuGBnRGeiPUMGNEcpJuC9JYDa0ARcsc3STMPxBsCsHrtn9sUbxB+m5v9Cwhl0shqQDvwc+g==
X-Received: by 2002:adf:eec5:0:b0:31f:9860:2325 with SMTP id a5-20020adfeec5000000b0031f98602325mr610529wrp.67.1694763297409;
        Fri, 15 Sep 2023 00:34:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id u8-20020a5d6ac8000000b0031416362e23sm3731001wrw.3.2023.09.15.00.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:34:56 -0700 (PDT)
Message-ID: <fa554890-7315-97cb-a9d3-d0acf18d0ff2@linaro.org>
Date: Fri, 15 Sep 2023 09:34:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 08/12] riscv: dts: sophgo: add Milk-V Pioneer board device
 tree
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>,
 Inochi Amaoto <inochiama@outlook.com>
References: <20230915072451.118209-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915072451.118209-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:24, Wang Chen wrote:
> Milk-V Pioneer [1] is a developer motherboard based on SOPHON
> SG2042 in a standard mATX form factor. It is a good
> choice for RISC-V developers and hardware pioneers to
> experience the cutting edge technology of RISC-V.
> 
> Currently only support booting into console with only uart
> enabled, other features will be added soon later.
> 
> [1]: https://milkv.io/pioneer
> 
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> ---
>  arch/riscv/boot/dts/Makefile                     |  1 +
>  arch/riscv/boot/dts/sophgo/Makefile              |  3 +++
>  .../boot/dts/sophgo/sg2042-milkv-pioneer.dts     | 16 ++++++++++++++++
>  3 files changed, 20 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/sophgo/Makefile
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
> 
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> index f60a280abb15..94788486f13e 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -6,5 +6,6 @@ subdir-y += renesas
>  subdir-y += sifive
>  subdir-y += starfive
>  subdir-y += thead
> +subdir-y += sophgo
>  
>  obj-$(CONFIG_BUILTIN_DTB) := $(addsuffix /, $(subdir-y))
> diff --git a/arch/riscv/boot/dts/sophgo/Makefile b/arch/riscv/boot/dts/sophgo/Makefile
> new file mode 100644
> index 000000000000..5a471b19df22
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-milkv-pioneer.dtb
> +
> diff --git a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
> new file mode 100644
> index 000000000000..4f480ff88fbd
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2022 Sophgo Technology Inc. All rights reserved.
> + */
> +
> +#include "sg2042.dtsi"
> +
> +/ {
> +	model = "Milk-V Pioneer";
> +	compatible = "milkv,pioneer", "sophgo,sg2042";
> +
> +	info {

Drop, there is no such node. Otherwise, please point me where are the
bindings for it?

Anyway your submissions is incomplete. Your DTS should enable some
peripherals, like serials etc.

Best regards,
Krzysztof


