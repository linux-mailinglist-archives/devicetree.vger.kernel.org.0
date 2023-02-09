Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2B98690CE7
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 16:26:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231230AbjBIP0n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 10:26:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbjBIP0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 10:26:43 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57D67B4
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 07:26:41 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id p26so7349130ejx.13
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 07:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1oHufzTgPc+PiE00xt5wrFDwXqQ2Os+gU6/z1IuTgSA=;
        b=lXqDySttBEhS4jkmRUgQgZvu3JfLD3cArXdtDCAVgpeJEqV1PaIr2DDhCXwg1MKQai
         7b1x2BLy7bknpjrCvgVltZpUiUZntUK13XvYK5MLPmEvG8Yyzd8rGT27t25JKtT0OhGm
         1vUw3DXKoNs4k30U+x1X/h3Uudy8PCLyQyK19hnqTj0RpmfejEEIb7Gw19Za7jIudPK6
         J9SSU/WyDHsI4FLnDWV7+UhXp19qQFCZu3v2vfMdMHUk1H9YQjxq9rl1XLfXD4hsfDYQ
         eeQ182HPBBefF5zJB+a6/TsLDnrUQaYmmcyu1lMrlpZZLICNqG3cew7XTJK4BHgAnPNY
         HzoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1oHufzTgPc+PiE00xt5wrFDwXqQ2Os+gU6/z1IuTgSA=;
        b=JFQkj9PZeXQLBFYHQJ2VLibfAeThsi5RSQ0Sc07a9rUYVn/ifvXQ8HNMg4nf/jVkOY
         EuWW51q2cDjxGXsWYtFSYDtDx7/AYgI0VfHYMdiNbMnT094ol7oA14wPnE5VWCUYyTyi
         yobYwDtJ1aKhXiNA9S+YP9vi+BiSxk7dytr6EKUvda8kCysrkpZ+qrrVfP2crivBOiLt
         TrZWSPqDHO698j8+AHqqBC4+bzYYA/wI6OikD6hRfcm8AQrjqbIv20kwU6MQMq6VKoXj
         yoHpozNyZ2W0jYO0XGzwWuWH3w2agaihP1V3fnli1EeuThT68Sqne5KcACyapBj4T6zP
         yz3g==
X-Gm-Message-State: AO0yUKX0hmkPYUsNL/X4bRBJCxOlb1dCxvlX8IsT0YGORyD7kgauApJN
        a499jHagyS8DU7JCe3c1AwCkog==
X-Google-Smtp-Source: AK7set9ukORH6S/OSZPqgidF6u8flLrDmpCIkksKewApJPaQfMxbHZDi4p3KT9goGlR7obUpf7iWUw==
X-Received: by 2002:a17:906:1249:b0:88b:4962:b72f with SMTP id u9-20020a170906124900b0088b4962b72fmr11437787eja.20.1675956400920;
        Thu, 09 Feb 2023 07:26:40 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id z15-20020a1709064e0f00b008af424d4d75sm614058eju.194.2023.02.09.07.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 07:26:40 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: [PATCH v4 6/8] RISC-V: Use Zicboz in clear_page when available
Date:   Thu,  9 Feb 2023 16:26:26 +0100
Message-Id: <20230209152628.129914-7-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230209152628.129914-1-ajones@ventanamicro.com>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
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
calculations. This is achieved by taking advantage of 'vendor_id'
being used as application-specific data for alternatives, enabling us
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
 arch/riscv/lib/clear_page.S       | 71 +++++++++++++++++++++++++++++++
 6 files changed, 105 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/lib/clear_page.S

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 029d1d3b40bd..9590a1661caf 100644
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
index 74736b4f0624..42246bbfa532 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -280,6 +280,17 @@ void __init riscv_fill_hwcap(void)
 #ifdef CONFIG_RISCV_ALTERNATIVE
 static bool riscv_cpufeature_application_check(u32 feature, u16 data)
 {
+	switch (feature) {
+	case RISCV_ISA_EXT_ZICBOZ:
+		/*
+		 * Zicboz alternative applications provide the maximum
+		 * supported block size order, or zero when it doesn't
+		 * matter. If the current block size exceeds the maximum,
+		 * then the alternative cannot be applied.
+		 */
+		return data == 0 || riscv_cboz_block_size <= (1U << data);
+	}
+
 	return data == 0;
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
index 000000000000..5b851e727f7c
--- /dev/null
+++ b/arch/riscv/lib/clear_page.S
@@ -0,0 +1,71 @@
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
+#define CBOZ_ALT(order, old, new)	\
+	ALTERNATIVE(old, new, order, RISCV_ISA_EXT_ZICBOZ, CONFIG_RISCV_ISA_ZICBOZ)
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

