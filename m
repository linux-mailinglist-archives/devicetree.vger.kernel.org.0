Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6470687680
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 08:41:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231806AbjBBHl2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 02:41:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231752AbjBBHlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 02:41:24 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 379A184195
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 23:41:23 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id d26so713333eds.12
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 23:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0XfLDxYfYEm9uICYaRyGxwWvu+NhtT5TwzHgJOvcQu8=;
        b=OrIVTRxoibIG5KE7331yEhEGKvE5mrNtLpkSI43ZdsFTxO4TtLhO9XsSS2mQa/CPMd
         V5CJalKWi7ArMqYNl5uOLUgql07vG/csSL3BkHwAWIV9TzIRLHTyONiACBj98wJu0MEX
         EuK5Di4edF3XJ50pU9ohcEWxarSS2UPtezTF68IYNK4ayk+jzkM8nIriSGC+7BHFl4TZ
         auqoaOMupwieCBt723nmFr2j2DHvlY3NNDsrMYjburknv7UxbJ1nVIYcXTe+HksyJfP5
         I67gwVo3oQSgvhX9S8cwpkB2G43+rhxK5GF//+Nk6F5LbQPUc/5YdlkIYtKpItHcyVkw
         hRLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0XfLDxYfYEm9uICYaRyGxwWvu+NhtT5TwzHgJOvcQu8=;
        b=FPEWzz+C1J6YF3EwyPJzSsC8lJQDdgAiEiMZI3/7NX721pNBor/ZW1B69fRLECAg0i
         QMkRRigCvgAm0tkN+YT+3gFRubr74TV8mGeblLI9HU365Czm9MK4RyEj2Wkyuv8vyL+s
         6IBp5AVCZqBBsTqDx259FB8o58BQeKuwarG1m01CGkIQp6k4ejHNp2vYFKm2/wcFKLYz
         wgA7QXH2THK5n8fvSuWXnLjCQRu4j5t06VJEPNw/+mXGr1V6MMD/t8p9nkgcTNr3hvG7
         ubpY4EQzD7PSCgHKCJYn50qLLZ6det2Q3VlFp7kxNxl1Y30KzYPD0XeTfJ8o+JHuk0t6
         mJCQ==
X-Gm-Message-State: AO0yUKXVTDHbr6Zb6C0qYGjWUrgPC98hjtijQrlAX+8SB2DrckUW/5MC
        3rYUai63ST8Az19szuiiO9x2Ig==
X-Google-Smtp-Source: AK7set9JQjvEEzaQ2A8VNenoBStXX2n8F5JIwi0iVQYzqIh/lm+SWeDrmTFt983wP10AeD0F3U316w==
X-Received: by 2002:aa7:d49a:0:b0:49d:a87f:ba78 with SMTP id b26-20020aa7d49a000000b0049da87fba78mr5241731edr.35.1675323681711;
        Wed, 01 Feb 2023 23:41:21 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id l13-20020a170906938d00b00889db195470sm5226067ejx.82.2023.02.01.23.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 23:41:21 -0800 (PST)
Date:   Thu, 2 Feb 2023 08:41:20 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, apatel@ventanamicro.com,
        Atish Patra <atishp@rivosinc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, Conor Dooley <conor.dooley@microchip.com>,
        robh@kernel.org, jszhang@kernel.org
Subject: Re: [PATCH v3 4/6] RISC-V: Use Zicboz in clear_page when available
Message-ID: <20230202074120.ogqowzpzcopwpb5z@orel>
References: <20230130120128.1349464-5-ajones@ventanamicro.com>
 <mhng-39982208-6bbb-4be7-83c6-5c05da8bebc1@palmer-ri-x1c9>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mhng-39982208-6bbb-4be7-83c6-5c05da8bebc1@palmer-ri-x1c9>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 01, 2023 at 08:35:54PM -0800, Palmer Dabbelt wrote:
> On Mon, 30 Jan 2023 04:01:26 PST (-0800), ajones@ventanamicro.com wrote:
> > Using memset() to zero a 4K page takes 563 total instructions
> > where 20 are branches. clear_page() with Zicboz takes 150 total
> > instructions where 16 are branches. We could reduce the numbers
> > by further unrolling, but, since the cboz block size isn't fixed,
> > we'd need a Duff device to ensure we don't execute too many
> > unrolled steps. Also, cbo.zero doesn't take an offset, so each
> > unrolled step requires it and an add instruction. This increases
> > the chance for icache misses if we unroll many times. For these
> > reasons we only unroll four times. Unrolling four times should be
> > safe as it supports cboz block sizes up to 1K when used with 4K
> > pages and it's only 24 to 32 bytes of unrolled instructions.
> > 
> > Another note about the Duff device idea is that it would probably
> > be best to store the number of steps needed at boot time and then
> > load the value in clear_page(). Calculating it in clear_page(),
> > particularly without the Zbb extension, would not be efficient.
> > 
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> >  arch/riscv/Kconfig                | 13 +++++++++++
> >  arch/riscv/include/asm/insn-def.h |  4 ++++
> >  arch/riscv/include/asm/page.h     |  6 +++++-
> >  arch/riscv/lib/Makefile           |  1 +
> >  arch/riscv/lib/clear_page.S       | 36 +++++++++++++++++++++++++++++++
> >  5 files changed, 59 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/riscv/lib/clear_page.S
> > 
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index 33bbdc33cef8..3759a2f6edd5 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -432,6 +432,19 @@ config RISCV_ISA_ZICBOM
> > 
> >  	   If you don't know what to do here, say Y.
> > 
> > +config RISCV_ISA_ZICBOZ
> > +	bool "Zicboz extension support for faster zeroing of memory"
> > +	depends on !XIP_KERNEL && MMU
> > +	select RISCV_ALTERNATIVE
> > +	default y
> > +	help
> > +	   Enable the use of the ZICBOZ extension (cbo.zero instruction)
> > +	   when available.
> > +
> > +	   The Zicboz extension is used for faster zeroing of memory.
> > +
> > +	   If you don't know what to do here, say Y.
> > +
> >  config TOOLCHAIN_HAS_ZIHINTPAUSE
> >  	bool
> >  	default y
> > diff --git a/arch/riscv/include/asm/insn-def.h b/arch/riscv/include/asm/insn-def.h
> > index e01ab51f50d2..6960beb75f32 100644
> > --- a/arch/riscv/include/asm/insn-def.h
> > +++ b/arch/riscv/include/asm/insn-def.h
> > @@ -192,4 +192,8 @@
> >  	INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),		\
> >  	       RS1(base), SIMM12(2))
> > 
> > +#define CBO_zero(base)						\
> > +	INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),		\
> > +	       RS1(base), SIMM12(4))
> > +
> >  #endif /* __ASM_INSN_DEF_H */
> > diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
> > index 9f432c1b5289..ccd168fe29d2 100644
> > --- a/arch/riscv/include/asm/page.h
> > +++ b/arch/riscv/include/asm/page.h
> > @@ -49,10 +49,14 @@
> > 
> >  #ifndef __ASSEMBLY__
> > 
> > +#ifdef CONFIG_RISCV_ISA_ZICBOZ
> > +void clear_page(void *page);
> > +#else
> >  #define clear_page(pgaddr)			memset((pgaddr), 0, PAGE_SIZE)
> > +#endif
> >  #define copy_page(to, from)			memcpy((to), (from), PAGE_SIZE)
> > 
> > -#define clear_user_page(pgaddr, vaddr, page)	memset((pgaddr), 0, PAGE_SIZE)
> > +#define clear_user_page(pgaddr, vaddr, page)	clear_page(pgaddr)
> >  #define copy_user_page(vto, vfrom, vaddr, topg) \
> >  			memcpy((vto), (vfrom), PAGE_SIZE)
> > 
> > diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
> > index 25d5c9664e57..9ee5e2ab5143 100644
> > --- a/arch/riscv/lib/Makefile
> > +++ b/arch/riscv/lib/Makefile
> > @@ -5,5 +5,6 @@ lib-y			+= memset.o
> >  lib-y			+= memmove.o
> >  lib-$(CONFIG_MMU)	+= uaccess.o
> >  lib-$(CONFIG_64BIT)	+= tishift.o
> > +lib-$(CONFIG_RISCV_ISA_ZICBOZ)	+= clear_page.o
> > 
> >  obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> > diff --git a/arch/riscv/lib/clear_page.S b/arch/riscv/lib/clear_page.S
> > new file mode 100644
> > index 000000000000..49f29139a5b6
> > --- /dev/null
> > +++ b/arch/riscv/lib/clear_page.S
> > @@ -0,0 +1,36 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (c) 2023 Ventana Micro Systems Inc.
> > + */
> > +
> > +#include <linux/linkage.h>
> > +#include <asm/asm.h>
> > +#include <asm/alternative-macros.h>
> > +#include <asm/hwcap.h>
> > +#include <asm/insn-def.h>
> > +#include <asm/page.h>
> > +
> > +/* void clear_page(void *page) */
> > +ENTRY(__clear_page)
> > +WEAK(clear_page)
> > +	li	a2, PAGE_SIZE
> > +	ALTERNATIVE("j .Lno_zicboz", "nop",
> > +		    0, RISCV_ISA_EXT_ZICBOZ, CONFIG_RISCV_ISA_ZICBOZ)
> > +	la	a1, riscv_cboz_block_size
> > +	lw	a1, 0(a1)
> 
> You should be able to just "lw a1, riscv_cboz_block_size", which can
> sometimes generate better code.
> 
> > +	add	a2, a0, a2
> > +.Lzero_loop:
> > +	CBO_zero(a0)
> > +	add	a0, a0, a1
> > +	CBO_zero(a0)
> > +	add	a0, a0, a1
> 
> We were talking about this in the patchwork call: this risks overflow if the
> block size is bigger than a quarter of a page.  That's probably pretty rare,
> but given that there's already an alternative for the jump it's easy to
> check.

I'll pull v4 together with your fixes.

Thanks!

drew

> 
> > +	CBO_zero(a0)
> > +	add	a0, a0, a1
> > +	CBO_zero(a0)
> > +	add	a0, a0, a1
> > +	bltu	a0, a2, .Lzero_loop
> > +	ret
> > +.Lno_zicboz:
> > +	li	a1, 0
> > +	tail	__memset
> > +END(__clear_page)
