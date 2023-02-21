Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE79C69E813
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:09:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbjBUTJf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229846AbjBUTJa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:30 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B4ED2BEFC
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:28 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id g1so21132426edz.7
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8S+XYy12JZsXVFfKIyUi1nIupPzXfiQ+NXxg+VU2ykw=;
        b=NcjwsDPzCzzl7IU7KmAT3C0cHSa9dnBMwfvf/ePCglGQwgK299eBEIKILm/428uQya
         OZ51tMuy7wOQ1p2QZt3gOpMAcNjddAxUqKYEjDNLjo9xMwt8TigPZ+esVX0TCEssAocl
         p+mn5qDAzPt75Vtokuc9DGn0Hu2TI+VIAFE2xockIH1Zw/q/ueBq6TQcbqG6N8W0Jf8J
         tS4pSdSrr6tsvMJkr7FRyqCvDu/HPJIpbO6+IRa3aBcBT4582wSYtoUrSFT0PYF3EiHB
         2k2AytcwUEu/iYxTsCPQ5YbLjJu6aj2N+1i5Fuqy4xJWBiTKjTgRxYWUOxCJOuUVc6w4
         iFpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8S+XYy12JZsXVFfKIyUi1nIupPzXfiQ+NXxg+VU2ykw=;
        b=HyvNi6p/+N07lKptGn0Pd8O1YGFD81KJKYPvPgrCTTI24qVySQ8cUr9XLhVlUBP4CZ
         V7tTERDQ7rsattJhRhrnGEtJ/jxsB1/FYW39B+eTemwSztFhQ40iNH+/RweElPukLBab
         wvkI7JVrVoorajfg2FXT/qkVuL7kwiNannIu4H+zcv3poXZCYezmXxCyYWKrWAVenQvx
         7kEyTRddBPj50qtZlaSRPxaky+jSowgYNT15QsBwsBL8prTamlRHvopOuaRbiitShRSP
         VOWzsoFBzK2OXUdKF8trVS1DrDwbd0A2guGY8ZHGrxiJQrB8LoQKAOpyZSQ6K+ZuTBwz
         D9Ww==
X-Gm-Message-State: AO0yUKVeZSzxTpyjn+Czu42ih9gPye9KVhzYBABtuwq0CxDAfdyWcKyR
        x1MxIg/UX7Livkt7w8kaXR0Fkg==
X-Google-Smtp-Source: AK7set8lywRDYYj/sCGuAccQ8jI4g1DwGbTEkkC3GMmLISPTXn6PeXZU4cGsZ34cUgJdVmXau3tCbg==
X-Received: by 2002:a17:906:37cb:b0:879:ab3:93cd with SMTP id o11-20020a17090637cb00b008790ab393cdmr13401168ejc.46.1677006566798;
        Tue, 21 Feb 2023 11:09:26 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id lf13-20020a170906ae4d00b008b12c318622sm7502111ejb.29.2023.02.21.11.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:26 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org
Cc:     'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: [PATCH v5 6/8] RISC-V: Use Zicboz in clear_page when available
Date:   Tue, 21 Feb 2023 20:09:14 +0100
Message-Id: <20230221190916.572454-7-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221190916.572454-1-ajones@ventanamicro.com>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Using memset() to zero a 4K page takes 563 total instructions, where
20 are branches. clear_page(), with Zicboz and a 64 byte block size,
takes 169 total instructions, where 4 are branches and 33 are nops.
Even though the block size is a variable, thanks to alternatives, we
can still implement a Duff device without having to do any preliminary
calculations. This is achieved by using the alternatives' cpufeature
value (the upper 16 bits of patch_id). The value used is the maximum
zicboz block size order accepted at the patch site. This enables us
to stop patching / unrolling when 4K bytes have been zeroed (we would
loop and continue after 4K if the page size would be larger)

For 4K pages, unrolling 16 times allows block sizes of 64 and 128 to
only loop a few times and larger block sizes to not loop at all. Since
cbo.zero doesn't take an offset, we also need an 'add' after each
instruction, making the loop body 112 to 160 bytes. Hopefully this
is small enough to not cause icache misses.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/Kconfig                | 13 ++++++
 arch/riscv/include/asm/insn-def.h |  4 ++
 arch/riscv/include/asm/page.h     |  6 ++-
 arch/riscv/kernel/cpufeature.c    | 11 +++++
 arch/riscv/lib/Makefile           |  1 +
 arch/riscv/lib/clear_page.S       | 73 +++++++++++++++++++++++++++++++
 6 files changed, 107 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/lib/clear_page.S

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 0c494c36e911..c9006bcf912d 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -456,6 +456,19 @@ config RISCV_ISA_ZICBOM
 
 	   If you don't know what to do here, say Y.
 
+config RISCV_ISA_ZICBOZ
+	bool "Zicboz extension support for faster zeroing of memory"
+	depends on !XIP_KERNEL && MMU
+	select RISCV_ALTERNATIVE
+	default y
+	help
+	   Enable the use of the ZICBOZ extension (cbo.zero instruction)
+	   when available.
+
+	   The Zicboz extension is used for faster zeroing of memory.
+
+	   If you don't know what to do here, say Y.
+
 config TOOLCHAIN_HAS_ZIHINTPAUSE
 	bool
 	default y
diff --git a/arch/riscv/include/asm/insn-def.h b/arch/riscv/include/asm/insn-def.h
index e01ab51f50d2..6960beb75f32 100644
--- a/arch/riscv/include/asm/insn-def.h
+++ b/arch/riscv/include/asm/insn-def.h
@@ -192,4 +192,8 @@
 	INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),		\
 	       RS1(base), SIMM12(2))
 
+#define CBO_zero(base)						\
+	INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),		\
+	       RS1(base), SIMM12(4))
+
 #endif /* __ASM_INSN_DEF_H */
diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 9f432c1b5289..ccd168fe29d2 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -49,10 +49,14 @@
 
 #ifndef __ASSEMBLY__
 
+#ifdef CONFIG_RISCV_ISA_ZICBOZ
+void clear_page(void *page);
+#else
 #define clear_page(pgaddr)			memset((pgaddr), 0, PAGE_SIZE)
+#endif
 #define copy_page(to, from)			memcpy((to), (from), PAGE_SIZE)
 
-#define clear_user_page(pgaddr, vaddr, page)	memset((pgaddr), 0, PAGE_SIZE)
+#define clear_user_page(pgaddr, vaddr, page)	clear_page(pgaddr)
 #define copy_user_page(vto, vfrom, vaddr, topg) \
 			memcpy((vto), (vfrom), PAGE_SIZE)
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 0594989ead63..4a496552b812 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -292,6 +292,17 @@ static bool riscv_cpufeature_patch_check(u16 id, u16 value)
 	if (!value)
 		return true;
 
+	switch (id) {
+	case RISCV_ISA_EXT_ZICBOZ:
+		/*
+		 * Zicboz alternative applications provide the maximum
+		 * supported block size order, or zero when it doesn't
+		 * matter. If the current block size exceeds the maximum,
+		 * then the alternative cannot be applied.
+		 */
+		return riscv_cboz_block_size <= (1U << value);
+	}
+
 	return false;
 }
 
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 6c74b0bedd60..26cb2502ecf8 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -8,5 +8,6 @@ lib-y			+= strlen.o
 lib-y			+= strncmp.o
 lib-$(CONFIG_MMU)	+= uaccess.o
 lib-$(CONFIG_64BIT)	+= tishift.o
+lib-$(CONFIG_RISCV_ISA_ZICBOZ)	+= clear_page.o
 
 obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
diff --git a/arch/riscv/lib/clear_page.S b/arch/riscv/lib/clear_page.S
new file mode 100644
index 000000000000..7c7fa45b5ab5
--- /dev/null
+++ b/arch/riscv/lib/clear_page.S
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2023 Ventana Micro Systems Inc.
+ */
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+#include <asm/alternative-macros.h>
+#include <asm/hwcap.h>
+#include <asm/insn-def.h>
+#include <asm/page.h>
+
+#define CBOZ_ALT(order, old, new)				\
+	ALTERNATIVE(old, new, 0,				\
+		    ((order) << 16) | RISCV_ISA_EXT_ZICBOZ,	\
+		    CONFIG_RISCV_ISA_ZICBOZ)
+
+/* void clear_page(void *page) */
+ENTRY(__clear_page)
+WEAK(clear_page)
+	li	a2, PAGE_SIZE
+
+	/*
+	 * If Zicboz isn't present, or somehow has a block
+	 * size larger than 4K, then fallback to memset.
+	 */
+	CBOZ_ALT(12, "j .Lno_zicboz", "nop")
+
+	lw	a1, riscv_cboz_block_size
+	add	a2, a0, a2
+.Lzero_loop:
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBOZ_ALT(11, "bltu a0, a2, .Lzero_loop; ret", "nop; nop")
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBOZ_ALT(10, "bltu a0, a2, .Lzero_loop; ret", "nop; nop")
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBOZ_ALT(9, "bltu a0, a2, .Lzero_loop; ret", "nop; nop")
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBOZ_ALT(8, "bltu a0, a2, .Lzero_loop; ret", "nop; nop")
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	CBO_zero(a0)
+	add	a0, a0, a1
+	bltu	a0, a2, .Lzero_loop
+	ret
+.Lno_zicboz:
+	li	a1, 0
+	tail	__memset
+END(__clear_page)
-- 
2.39.1

