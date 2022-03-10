Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 365F14D4371
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 10:25:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240778AbiCJJ03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 04:26:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240777AbiCJJ03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 04:26:29 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6232139CC5
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 01:25:28 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 61E093F1AF
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 09:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646904327;
        bh=8VH86XSG05XZnr7KhrYjAiNSOrKYTAdZ5E6887Xqi70=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=FYsNjd2o50ljzJ3q5f0gryRM3+k0dJvqPM3ySCW0ZQcWPCz4bzdgSoLd5lNEFJmEp
         szo4ohx1ulg/rsN7Dcmf5JWh1ZWbc/SCfABXB68ukFQdNWrLHu6vYaH4qgvJYVOHmm
         Exd1/MCMMe3bfFqPDeOSfWgX0i5O6uSo6NJv59GAaf5BF+xfMvD0SH2tO3t5AW9v+Y
         Vw6WOaM2fDaHFV3u//q5EF7WieEmLM6n1/FKXO+oA0zs05AgX1twj4ZeUDtU8Wo03z
         +8edJ1NWpfpE+EGYfmGBR6by2nrzcNT3Vh8ROYwFft+kBGQckIsqUsYaakRkCXZqzC
         V9o/YMzEglTyw==
Received: by mail-ed1-f70.google.com with SMTP id co2-20020a0564020c0200b00415f9fa6ca8so2792311edb.6
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 01:25:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8VH86XSG05XZnr7KhrYjAiNSOrKYTAdZ5E6887Xqi70=;
        b=OHep6L6GkjP0bDXMRx+PQdeWCo9ElG29Y7dOG96bFS4vDHDp9RwIWfxcwzCD0l6GmJ
         0SEu1CexhKjy58rQWWaaybk5g1GxaPqcWAFxRm435FYFJLP0SRzSy0LKISB0JZHo3WW5
         G9bOK1EzYp5TR77H3nvOIqqYYabBnZVkB0Mtqz/+FcgQmSP+hkTZjszCbz3EPVEV1erh
         l1CCZPN8zIVKGEQLaGiNGQKzRyNFH9t/9fmA47xzAdExoJVCWJYg+fRchl/yK+zxnh5A
         /c9nJLX5Nf+Jxy3l2/UBg51HLPUEZSuWwZpHwBCjXtQY2/do6+v6mgjGY3+log5EYoxE
         xqUQ==
X-Gm-Message-State: AOAM530V5X54HyzcrAu4fsKNxFgfYolBZXvw7HRFuhbGOYIvGnTF2HFd
        q2JDRRV0VAOzKlTLDjFCrNN7ZFilceb/uBLDHXuLRu5bMb1Fs5oybXXtMT2PlT+LUzZ6qYK2BUQ
        hRU1TRp+r2mQH6YELaTA/Y1Ori2LWxfdmQ/F/DzA=
X-Received: by 2002:a17:906:66cb:b0:6cf:e4f7:9504 with SMTP id k11-20020a17090666cb00b006cfe4f79504mr3468808ejp.142.1646904327055;
        Thu, 10 Mar 2022 01:25:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz7zLQvxZkdMq8Qn/LICz+w12g1uzQpkJyJ7/WO3jbitmNhGvXhoPUNdhbdRtW5mYwdyVEs/g==
X-Received: by 2002:a17:906:66cb:b0:6cf:e4f7:9504 with SMTP id k11-20020a17090666cb00b006cfe4f79504mr3468777ejp.142.1646904326808;
        Thu, 10 Mar 2022 01:25:26 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id l9-20020a056402254900b00416b0ec98b5sm508583edb.45.2022.03.10.01.25.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 01:25:26 -0800 (PST)
Message-ID: <ecfe1f3b-3eb7-6676-6f1d-4403b7365ea0@canonical.com>
Date:   Thu, 10 Mar 2022 10:25:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v10 06/10] clk: Add Sunplus SP7021 clock driver
Content-Language: en-US
To:     Qin Jian <qinjian@cqplus1.com>, robh+dt@kernel.org
Cc:     mturquette@baylibre.com, sboyd@kernel.org, tglx@linutronix.de,
        maz@kernel.org, p.zabel@pengutronix.de, linux@armlinux.org.uk,
        broonie@kernel.org, arnd@arndb.de, stefan.wahren@i2se.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1646892810.git.qinjian@cqplus1.com>
 <d8b68c5f77cea516504984470c5b93f8df42bbec.1646892811.git.qinjian@cqplus1.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <d8b68c5f77cea516504984470c5b93f8df42bbec.1646892811.git.qinjian@cqplus1.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2022 07:28, Qin Jian wrote:
> Add clock driver for Sunplus SP7021 SoC.
> 
> Signed-off-by: Qin Jian <qinjian@cqplus1.com>
> ---
> Refine the macro DBG_CLK
> Refine the clock_parent_data
> ---
>  MAINTAINERS              |   1 +
>  drivers/clk/Kconfig      |  10 +
>  drivers/clk/Makefile     |   1 +
>  drivers/clk/clk-sp7021.c | 741 +++++++++++++++++++++++++++++++++++++++
>  4 files changed, 753 insertions(+)
>  create mode 100644 drivers/clk/clk-sp7021.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90ebb823f..5069f552f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2663,6 +2663,7 @@ W:	https://sunplus-tibbo.atlassian.net/wiki/spaces/doc/overview
>  F:	Documentation/devicetree/bindings/arm/sunplus,sp7021.yaml
>  F:	Documentation/devicetree/bindings/clock/sunplus,sp7021-clkc.yaml
>  F:	Documentation/devicetree/bindings/reset/sunplus,reset.yaml
> +F:	drivers/clk/clk-sp7021.c
>  F:	drivers/reset/reset-sunplus.c
>  F:	include/dt-bindings/clock/sp-sp7021.h
>  F:	include/dt-bindings/reset/sp-sp7021.h
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index c5b3dc973..39751f9b9 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -334,6 +334,16 @@ config COMMON_CLK_VC5
>  	  This driver supports the IDT VersaClock 5 and VersaClock 6
>  	  programmable clock generators.
>  
> +config COMMON_CLK_SP7021
> +	bool "Clock driver for Sunplus SP7021 SoC"
> +	depends on SOC_SP7021 || COMPILE_TEST
> +	default SOC_SP7021
> +	help
> +	  This driver supports the Sunplus SP7021 SoC clocks.
> +	  It implements SP7021 PLLs/gate.
> +	  Not all features of the PLL are currently supported
> +	  by the driver.
> +
>  config COMMON_CLK_STM32MP157
>  	def_bool COMMON_CLK && MACH_STM32MP157
>  	help
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index e42312121..f15bb5070 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -60,6 +60,7 @@ obj-$(CONFIG_COMMON_CLK_SI5351)		+= clk-si5351.o
>  obj-$(CONFIG_COMMON_CLK_SI514)		+= clk-si514.o
>  obj-$(CONFIG_COMMON_CLK_SI544)		+= clk-si544.o
>  obj-$(CONFIG_COMMON_CLK_SI570)		+= clk-si570.o
> +obj-$(CONFIG_COMMON_CLK_SP7021)		+= clk-sp7021.o
>  obj-$(CONFIG_COMMON_CLK_STM32F)		+= clk-stm32f4.o
>  obj-$(CONFIG_COMMON_CLK_STM32H7)	+= clk-stm32h7.o
>  obj-$(CONFIG_COMMON_CLK_STM32MP157)	+= clk-stm32mp1.o
> diff --git a/drivers/clk/clk-sp7021.c b/drivers/clk/clk-sp7021.c
> new file mode 100644
> index 000000000..35ae19d65
> --- /dev/null
> +++ b/drivers/clk/clk-sp7021.c
> @@ -0,0 +1,741 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (C) Sunplus Technology Co., Ltd.
> + *       All rights reserved.
> + */
> +//#define DEBUG

No dead code, please.


Best regards,
Krzysztof
