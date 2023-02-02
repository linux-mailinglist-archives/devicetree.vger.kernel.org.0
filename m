Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40B32687474
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 05:35:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230481AbjBBEf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 23:35:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229881AbjBBEf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 23:35:57 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8D1253E54
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 20:35:55 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id 88so783163pjo.3
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 20:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Gkj3ggiCbZ84l1wyhC/7UEwOHQf/756d2zbjoNC2xI=;
        b=tSWFxMLyPur9VVM50fXn79GYe93MgfsPKzfSizif+0vHEffezrLR3YcDXoOA6rGsLg
         MOBTDILMkZSEsNlYkGjhpRgdiJxvSsgSA1VSYAPqK3/GQ2qcf+Xxx2DhDrtwf21eFjKm
         j0RSfNrSKcCqjRkqRvkjvZPIiAybg44ogWSroRsToDsF1JfG65C6EcKMAx91Foa8ZOXh
         sbMyPIgY1fnz+y4OM1plJLMstbMHQJFLn36g14hhU7r9hNYYG214fQKFvlQpBQZfcTdO
         ltr1BW1fhDjzvqC5coJtii2YxxKlWZi71Uos1Vaw++ZqTwKDhOrGOlCsWwMl6wmxsP1T
         YS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Gkj3ggiCbZ84l1wyhC/7UEwOHQf/756d2zbjoNC2xI=;
        b=o8eJd1gnj5l7sqf7FcsjzguTAaKX4ScSIOcsl/Gusx6aOWh6MT6dfWnVoJ71Cx6hm9
         ty/QCxr35k/0cLWLqg4JaTFDfC7v+nd1J1zUzfd5NgSqjMD2jMLbFr5c8Tk2BNWvitPq
         5lJAMXeHZgE0ZbKhut53wfc8XdArPuivIR94Qh4s5QY8zn+uefZ6oBChoPL1r/dxZ9Oh
         RJ/+hv63f1dxfga7TVc6JBJ+Q+u5WRk2SZbZIfyP7OwNT62yrmz8/NTRxJnCnkeI3EHv
         Xp94CojMUwGqHVa+zuPI2Hbq+2kzOhfweEoTknldDgK4sfEtuSCnqh83XRaxIyQGUBmg
         njJA==
X-Gm-Message-State: AO0yUKUz+4uZJRxpVEgiqr+ASAJy5oTdL1k4sh2uTV0qnyMwmaJLMBWw
        BEGxPXLcmCnJ8rYU7MRv3dxf0Q==
X-Google-Smtp-Source: AK7set8f1+cC9uG76QNxKI3IoHCHwtn0yh/uZ8Peu6TYqhnAR5vbM7P0GbvjYHbUJXmDA+4KeDBYRg==
X-Received: by 2002:a05:6a20:428b:b0:be:982b:ed86 with SMTP id o11-20020a056a20428b00b000be982bed86mr6930315pzj.29.1675312554962;
        Wed, 01 Feb 2023 20:35:54 -0800 (PST)
Received: from localhost ([135.180.226.51])
        by smtp.gmail.com with ESMTPSA id j26-20020a633c1a000000b004daae45558dsm11431697pga.8.2023.02.01.20.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 20:35:54 -0800 (PST)
Date:   Wed, 01 Feb 2023 20:35:54 -0800 (PST)
X-Google-Original-Date: Wed, 01 Feb 2023 07:43:28 PST (-0800)
Subject:     Re: [PATCH v3 4/6] RISC-V: Use Zicboz in clear_page when available
In-Reply-To: <20230130120128.1349464-5-ajones@ventanamicro.com>
CC:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, apatel@ventanamicro.com,
        Atish Patra <atishp@rivosinc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, Conor Dooley <conor.dooley@microchip.com>,
        robh@kernel.org, jszhang@kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     ajones@ventanamicro.com
Message-ID: <mhng-39982208-6bbb-4be7-83c6-5c05da8bebc1@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 30 Jan 2023 04:01:26 PST (-0800), ajones@ventanamicro.com wrote:
> Using memset() to zero a 4K page takes 563 total instructions
> where 20 are branches. clear_page() with Zicboz takes 150 total
> instructions where 16 are branches. We could reduce the numbers
> by further unrolling, but, since the cboz block size isn't fixed,
> we'd need a Duff device to ensure we don't execute too many
> unrolled steps. Also, cbo.zero doesn't take an offset, so each
> unrolled step requires it and an add instruction. This increases
> the chance for icache misses if we unroll many times. For these
> reasons we only unroll four times. Unrolling four times should be
> safe as it supports cboz block sizes up to 1K when used with 4K
> pages and it's only 24 to 32 bytes of unrolled instructions.
>
> Another note about the Duff device idea is that it would probably
> be best to store the number of steps needed at boot time and then
> load the value in clear_page(). Calculating it in clear_page(),
> particularly without the Zbb extension, would not be efficient.
>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/Kconfig                | 13 +++++++++++
>  arch/riscv/include/asm/insn-def.h |  4 ++++
>  arch/riscv/include/asm/page.h     |  6 +++++-
>  arch/riscv/lib/Makefile           |  1 +
>  arch/riscv/lib/clear_page.S       | 36 +++++++++++++++++++++++++++++++
>  5 files changed, 59 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/lib/clear_page.S
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 33bbdc33cef8..3759a2f6edd5 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -432,6 +432,19 @@ config RISCV_ISA_ZICBOM
>
>  	   If you don't know what to do here, say Y.
>
> +config RISCV_ISA_ZICBOZ
> +	bool "Zicboz extension support for faster zeroing of memory"
> +	depends on !XIP_KERNEL && MMU
> +	select RISCV_ALTERNATIVE
> +	default y
> +	help
> +	   Enable the use of the ZICBOZ extension (cbo.zero instruction)
> +	   when available.
> +
> +	   The Zicboz extension is used for faster zeroing of memory.
> +
> +	   If you don't know what to do here, say Y.
> +
>  config TOOLCHAIN_HAS_ZIHINTPAUSE
>  	bool
>  	default y
> diff --git a/arch/riscv/include/asm/insn-def.h b/arch/riscv/include/asm/insn-def.h
> index e01ab51f50d2..6960beb75f32 100644
> --- a/arch/riscv/include/asm/insn-def.h
> +++ b/arch/riscv/include/asm/insn-def.h
> @@ -192,4 +192,8 @@
>  	INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),		\
>  	       RS1(base), SIMM12(2))
>
> +#define CBO_zero(base)						\
> +	INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),		\
> +	       RS1(base), SIMM12(4))
> +
>  #endif /* __ASM_INSN_DEF_H */
> diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
> index 9f432c1b5289..ccd168fe29d2 100644
> --- a/arch/riscv/include/asm/page.h
> +++ b/arch/riscv/include/asm/page.h
> @@ -49,10 +49,14 @@
>
>  #ifndef __ASSEMBLY__
>
> +#ifdef CONFIG_RISCV_ISA_ZICBOZ
> +void clear_page(void *page);
> +#else
>  #define clear_page(pgaddr)			memset((pgaddr), 0, PAGE_SIZE)
> +#endif
>  #define copy_page(to, from)			memcpy((to), (from), PAGE_SIZE)
>
> -#define clear_user_page(pgaddr, vaddr, page)	memset((pgaddr), 0, PAGE_SIZE)
> +#define clear_user_page(pgaddr, vaddr, page)	clear_page(pgaddr)
>  #define copy_user_page(vto, vfrom, vaddr, topg) \
>  			memcpy((vto), (vfrom), PAGE_SIZE)
>
> diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
> index 25d5c9664e57..9ee5e2ab5143 100644
> --- a/arch/riscv/lib/Makefile
> +++ b/arch/riscv/lib/Makefile
> @@ -5,5 +5,6 @@ lib-y			+= memset.o
>  lib-y			+= memmove.o
>  lib-$(CONFIG_MMU)	+= uaccess.o
>  lib-$(CONFIG_64BIT)	+= tishift.o
> +lib-$(CONFIG_RISCV_ISA_ZICBOZ)	+= clear_page.o
>
>  obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> diff --git a/arch/riscv/lib/clear_page.S b/arch/riscv/lib/clear_page.S
> new file mode 100644
> index 000000000000..49f29139a5b6
> --- /dev/null
> +++ b/arch/riscv/lib/clear_page.S
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2023 Ventana Micro Systems Inc.
> + */
> +
> +#include <linux/linkage.h>
> +#include <asm/asm.h>
> +#include <asm/alternative-macros.h>
> +#include <asm/hwcap.h>
> +#include <asm/insn-def.h>
> +#include <asm/page.h>
> +
> +/* void clear_page(void *page) */
> +ENTRY(__clear_page)
> +WEAK(clear_page)
> +	li	a2, PAGE_SIZE
> +	ALTERNATIVE("j .Lno_zicboz", "nop",
> +		    0, RISCV_ISA_EXT_ZICBOZ, CONFIG_RISCV_ISA_ZICBOZ)
> +	la	a1, riscv_cboz_block_size
> +	lw	a1, 0(a1)

You should be able to just "lw a1, riscv_cboz_block_size", which can 
sometimes generate better code.

> +	add	a2, a0, a2
> +.Lzero_loop:
> +	CBO_zero(a0)
> +	add	a0, a0, a1
> +	CBO_zero(a0)
> +	add	a0, a0, a1

We were talking about this in the patchwork call: this risks overflow if 
the block size is bigger than a quarter of a page.  That's probably 
pretty rare, but given that there's already an alternative for the jump 
it's easy to check.

> +	CBO_zero(a0)
> +	add	a0, a0, a1
> +	CBO_zero(a0)
> +	add	a0, a0, a1
> +	bltu	a0, a2, .Lzero_loop
> +	ret
> +.Lno_zicboz:
> +	li	a1, 0
> +	tail	__memset
> +END(__clear_page)
