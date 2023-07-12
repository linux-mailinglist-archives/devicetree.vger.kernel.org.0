Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F3747501E4
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 10:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjGLIlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 04:41:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232772AbjGLIlt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 04:41:49 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15E5FCF
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:41:48 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3fb4146e8fcso2845845e9.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1689151306; x=1691743306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2f9QGzip5+pACFq28gF27wBxnLW2cvXWZAANuTU4vJY=;
        b=RyybzuawSrIwX935H9lZcY7MHvabwPZqAhDMhz8FSxnVZ89twHobBelMctHy5lqgVT
         KH86wRZCxTlNAdMkFkAfjnJXtEHHqHYRWxEAtQql9nFgKiOpIdpYH72hKUh/QkYZtVQP
         pSIlWo3lCuXrO7GDDe7dHzGpVEd6+g0B/kOS+lK/v6N36XMxNOejef8ITqBB76Nj1Th8
         m1Xka4EHzAcl/dHa+HPdqUChKntZq7JSB4wrq/PbwEF9dDsIhZi1vPUX6ipzI2SoeyM6
         8pvlsD3BvhEQ7bgb8idT36+yz/EckqWKRP1A4GtK1+fwo1EDIPKw6P5F2hPBGHsfRcpM
         n9oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689151306; x=1691743306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2f9QGzip5+pACFq28gF27wBxnLW2cvXWZAANuTU4vJY=;
        b=QaBya+SwLQQ/G9XMRy4KjhfkqCVMdOnQUR7oeLzF/pc8n3qMEeSXUcXIV1Qg7b1Lvr
         PjZhQttZeOvw5NjARz7Fk6K6GICYU29zBDk3tYwn814F5DaLm5lrWPOydxl31aIDKq8Z
         PP9VUFuvbaElMsQ7ruT7coO8xGOgpzUs24MYP7r1QqtUC2mjPSnIB+hYuiVaH1ux7KJC
         I/8oXN/2do6U51vFMCpE741cZvgqSU25ZWrLf9Rn0NMEMnOL8xFpAcBlr9VCn33uQjl+
         eTaxMpc1MP3VIGf3nOodKigd+724VXCsVUqnTicpd8d/nZgcYhJkJxgK2ah283MC3Q6j
         6nvA==
X-Gm-Message-State: ABy/qLbHKIuT6HfRTsNKhPCb0XJ79BRkvxck7Oo+7hNfp+VSwAXX+BRF
        oFKmMcqoOrpjUlzk9sLD9sO5Gw==
X-Google-Smtp-Source: APBJJlEU3NK50Kh9pXt7iHmTfe78cJtw+t/ezgEo2hT3zj1sTNwb/NkencXzliamXXiXHbb2a6jaUQ==
X-Received: by 2002:a7b:cbc7:0:b0:3f7:a20a:561d with SMTP id n7-20020a7bcbc7000000b003f7a20a561dmr1121551wmi.8.1689151306617;
        Wed, 12 Jul 2023 01:41:46 -0700 (PDT)
Received: from vermeer.tail79c99.ts.net ([2a01:cb1d:81a9:dd00:b570:b34c:ffd4:c805])
        by smtp.gmail.com with ESMTPSA id z13-20020adfe54d000000b003143ac73fd0sm4496122wrm.1.2023.07.12.01.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 01:41:46 -0700 (PDT)
From:   Samuel Ortiz <sameo@rivosinc.com>
To:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org
Cc:     Samuel Ortiz <sameo@rivosinc.com>, linux@rivosinc.com,
        Conor Dooley <conor.dooley@microchip.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Heiko Stuebner <heiko.stuebner@vrull.eu>,
        Anup Patel <apatel@ventanamicro.com>,
        linux-kernel@vger.kernel.org,
        "Hongren (Zenithal) Zheng" <i@zenithal.me>,
        Guo Ren <guoren@kernel.org>, Atish Patra <atishp@rivosinc.com>,
        =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
        Evan Green <evan@rivosinc.com>, devicetree@vger.kernel.org,
        sorear@fastmail.com
Subject: [PATCH v4 4/4] RISC-V: Implement archrandom when Zkr is available
Date:   Wed, 12 Jul 2023 10:41:20 +0200
Message-ID: <20230712084134.1648008-5-sameo@rivosinc.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230712084134.1648008-1-sameo@rivosinc.com>
References: <20230712084134.1648008-1-sameo@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Zkr extension is ratified and provides 16 bits of entropy seed when
reading the SEED CSR.

We can implement arch_get_random_seed_longs() by doing multiple csrrw to
that CSR and filling an unsigned long with valid entropy bits.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Samuel Ortiz <sameo@rivosinc.com>
---
 arch/riscv/include/asm/archrandom.h | 70 +++++++++++++++++++++++++++++
 arch/riscv/include/asm/csr.h        |  9 ++++
 2 files changed, 79 insertions(+)
 create mode 100644 arch/riscv/include/asm/archrandom.h

diff --git a/arch/riscv/include/asm/archrandom.h b/arch/riscv/include/asm/archrandom.h
new file mode 100644
index 000000000000..38f3cced0fd0
--- /dev/null
+++ b/arch/riscv/include/asm/archrandom.h
@@ -0,0 +1,70 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Kernel interface for the RISCV arch_random_* functions
+ *
+ * Copyright (c) 2023 by Rivos Inc.
+ *
+ */
+
+#ifndef ASM_RISCV_ARCHRANDOM_H
+#define ASM_RISCV_ARCHRANDOM_H
+
+#include <asm/csr.h>
+
+#define SEED_RETRY_LOOPS 100
+
+static inline bool __must_check csr_seed_long(unsigned long *v)
+{
+	unsigned int retry = SEED_RETRY_LOOPS, valid_seeds = 0;
+	const int needed_seeds = sizeof(long) / sizeof(u16);
+	u16 *entropy = (u16 *)v;
+
+	do {
+		/*
+		 * The SEED CSR (0x015) must be accessed with a read-write
+		 * instruction.
+		 */
+		unsigned long csr_seed = csr_swap(CSR_SEED, 0);
+
+		switch (csr_seed & SEED_OPST_MASK) {
+		case SEED_OPST_ES16:
+			entropy[valid_seeds++] = csr_seed & SEED_ENTROPY_MASK;
+			if (valid_seeds == needed_seeds)
+				return true;
+			break;
+
+		case SEED_OPST_DEAD:
+			pr_err_once("archrandom: Unrecoverable error\n");
+			return false;
+
+		case SEED_OPST_BIST:
+		case SEED_OPST_WAIT:
+		default:
+			continue;
+		}
+	} while (--retry);
+
+	return false;
+}
+
+static inline size_t __must_check arch_get_random_longs(unsigned long *v, size_t max_longs)
+{
+	return 0;
+}
+
+static inline size_t __must_check arch_get_random_seed_longs(unsigned long *v, size_t max_longs)
+{
+	if (!max_longs)
+		return 0;
+
+	/*
+	 * If Zkr is supported and csr_seed_long succeeds, we return one long
+	 * worth of entropy.
+	 */
+	if (riscv_has_extension_likely(RISCV_ISA_EXT_ZKR) && csr_seed_long(v))
+		return 1;
+
+	return 0;
+}
+
+#endif /* ASM_RISCV_ARCHRANDOM_H */
diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 7bac43a3176e..ff6f570487b9 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -391,6 +391,15 @@
 #define CSR_VTYPE		0xc21
 #define CSR_VLENB		0xc22
 
+/* Scalar Crypto Extension - Entropy */
+#define CSR_SEED		0x015
+#define SEED_OPST_MASK		_AC(0xC0000000, UL)
+#define SEED_OPST_BIST		_AC(0x00000000, UL)
+#define SEED_OPST_WAIT		_AC(0x40000000, UL)
+#define SEED_OPST_ES16		_AC(0x80000000, UL)
+#define SEED_OPST_DEAD		_AC(0xC0000000, UL)
+#define SEED_ENTROPY_MASK	_AC(0xFFFF, UL)
+
 #ifdef CONFIG_RISCV_M_MODE
 # define CSR_STATUS	CSR_MSTATUS
 # define CSR_IE		CSR_MIE
-- 
2.41.0

