Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B6A065C1A6
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 15:16:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237815AbjACOPc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 09:15:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237956AbjACOOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 09:14:33 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69D3711445
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 06:14:24 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id 36so20182616pgp.10
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 06:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=daXlLeLw3kNDzBbMmxQMtFlEI6BHAyH4slFZ3YIhVkM=;
        b=evMFet2z+EJ1hVR3HKuxGmSdEu6XPwfvkzgldhBr6la+uO4K2yOWPednaoXcqmEknE
         89P9OaRMVph4Du8nIirIU7ZJjT/TUImmEI8fpiwTDi601XCzKT0q817yz0B1rof3aKwC
         Hku0T5rwU+1eouvUbIHI9V7C40yiEKNufRZG8JzuMrYRZJeSnwlHrpG5v+j/IN31SLsD
         cJdsIMyLpwjxLVHlBV07TLirdSUxknJULDXDT8N7rbxHSLGcP6IrnWtezAxGZVkwbHkS
         iZ5WIn8PTVfK3dPtThCIrL6UiTG6FrmOIn/xdULqPMEkyxqyLEgAf94yjngdxtiwhBiS
         2uHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=daXlLeLw3kNDzBbMmxQMtFlEI6BHAyH4slFZ3YIhVkM=;
        b=S5gA12pRDMsf5WdRPZrm4LcIftI1+gNk4k7VK64yHXn2VP2w+ffh53quXXqhK3jj76
         Q5fdqw6AQGUznruGq2s+HopLKS3rppDbcQeHPx7rDO2jKDxPOzB+XEjXQL4s30oZsG5p
         mLe6lcX5fkdVAOnZktrHY9UmbGuyE0wZjbtBZyZy3xJ9qMc0wklQlxAc96nHsvCqsiyv
         V8AStY5FHGjPDbDiUebIlkKJn81jVNjWn8ygozIIcoI7nm1oZNHk/T475j2aijRq4sF7
         UQe5OI8P0cC0+FAYN5L9TYpL+x/J9bwv/vpw5zkt7yc9QSbBX8rrprsWkFKpj2xOjdPm
         o2Mg==
X-Gm-Message-State: AFqh2koQVSdJAbGOAsqC9aYyZLwt15UanREBaG6e/tDbQCfK3L7p9QBN
        2vRaNYL4e8cytiK342oOx91X3Q==
X-Google-Smtp-Source: AMrXdXvVyhWM9MkWqENdqR09xUyoArxlPBiWBymqYDKzgQxLglEHoKaV3YlNAApGwngdrvlfG5EfQA==
X-Received: by 2002:a62:2903:0:b0:57f:f2cd:6180 with SMTP id p3-20020a622903000000b0057ff2cd6180mr43349748pfp.0.1672755263781;
        Tue, 03 Jan 2023 06:14:23 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.85.241])
        by smtp.gmail.com with ESMTPSA id h1-20020a628301000000b0056be4dbd4besm5936035pfe.111.2023.01.03.06.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 06:14:23 -0800 (PST)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 1/9] RISC-V: Add AIA related CSR defines
Date:   Tue,  3 Jan 2023 19:44:01 +0530
Message-Id: <20230103141409.772298-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103141409.772298-1-apatel@ventanamicro.com>
References: <20230103141409.772298-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RISC-V AIA specification improves handling per-HART local interrupts
in a backward compatible manner. This patch adds defines for new RISC-V
AIA CSRs.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/csr.h | 92 ++++++++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 0e571f6483d9..4e1356bad7b2 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -73,7 +73,10 @@
 #define IRQ_S_EXT		9
 #define IRQ_VS_EXT		10
 #define IRQ_M_EXT		11
+#define IRQ_S_GEXT		12
 #define IRQ_PMU_OVF		13
+#define IRQ_LOCAL_MAX		(IRQ_PMU_OVF + 1)
+#define IRQ_LOCAL_MASK		((_AC(1, UL) << IRQ_LOCAL_MAX) - 1)
 
 /* Exception causes */
 #define EXC_INST_MISALIGNED	0
@@ -156,6 +159,26 @@
 				 (_AC(1, UL) << IRQ_S_TIMER) | \
 				 (_AC(1, UL) << IRQ_S_EXT))
 
+/* AIA CSR bits */
+#define TOPI_IID_SHIFT		16
+#define TOPI_IID_MASK		0xfff
+#define TOPI_IPRIO_MASK		0xff
+#define TOPI_IPRIO_BITS		8
+
+#define TOPEI_ID_SHIFT		16
+#define TOPEI_ID_MASK		0x7ff
+#define TOPEI_PRIO_MASK		0x7ff
+
+#define ISELECT_IPRIO0		0x30
+#define ISELECT_IPRIO15		0x3f
+#define ISELECT_MASK		0x1ff
+
+#define HVICTL_VTI		0x40000000
+#define HVICTL_IID		0x0fff0000
+#define HVICTL_IID_SHIFT	16
+#define HVICTL_IPRIOM		0x00000100
+#define HVICTL_IPRIO		0x000000ff
+
 /* xENVCFG flags */
 #define ENVCFG_STCE			(_AC(1, ULL) << 63)
 #define ENVCFG_PBMTE			(_AC(1, ULL) << 62)
@@ -250,6 +273,18 @@
 #define CSR_STIMECMP		0x14D
 #define CSR_STIMECMPH		0x15D
 
+/* Supervisor-Level Window to Indirectly Accessed Registers (AIA) */
+#define CSR_SISELECT		0x150
+#define CSR_SIREG		0x151
+
+/* Supervisor-Level Interrupts (AIA) */
+#define CSR_STOPEI		0x15c
+#define CSR_STOPI		0xdb0
+
+/* Supervisor-Level High-Half CSRs (AIA) */
+#define CSR_SIEH		0x114
+#define CSR_SIPH		0x154
+
 #define CSR_VSSTATUS		0x200
 #define CSR_VSIE		0x204
 #define CSR_VSTVEC		0x205
@@ -279,8 +314,32 @@
 #define CSR_HGATP		0x680
 #define CSR_HGEIP		0xe12
 
+/* Virtual Interrupts and Interrupt Priorities (H-extension with AIA) */
+#define CSR_HVIEN		0x608
+#define CSR_HVICTL		0x609
+#define CSR_HVIPRIO1		0x646
+#define CSR_HVIPRIO2		0x647
+
+/* VS-Level Window to Indirectly Accessed Registers (H-extension with AIA) */
+#define CSR_VSISELECT		0x250
+#define CSR_VSIREG		0x251
+
+/* VS-Level Interrupts (H-extension with AIA) */
+#define CSR_VSTOPEI		0x25c
+#define CSR_VSTOPI		0xeb0
+
+/* Hypervisor and VS-Level High-Half CSRs (H-extension with AIA) */
+#define CSR_HIDELEGH		0x613
+#define CSR_HVIENH		0x618
+#define CSR_HVIPH		0x655
+#define CSR_HVIPRIO1H		0x656
+#define CSR_HVIPRIO2H		0x657
+#define CSR_VSIEH		0x214
+#define CSR_VSIPH		0x254
+
 #define CSR_MSTATUS		0x300
 #define CSR_MISA		0x301
+#define CSR_MIDELEG		0x303
 #define CSR_MIE			0x304
 #define CSR_MTVEC		0x305
 #define CSR_MENVCFG		0x30a
@@ -297,6 +356,25 @@
 #define CSR_MIMPID		0xf13
 #define CSR_MHARTID		0xf14
 
+/* Machine-Level Window to Indirectly Accessed Registers (AIA) */
+#define CSR_MISELECT		0x350
+#define CSR_MIREG		0x351
+
+/* Machine-Level Interrupts (AIA) */
+#define CSR_MTOPEI		0x35c
+#define CSR_MTOPI		0xfb0
+
+/* Virtual Interrupts for Supervisor Level (AIA) */
+#define CSR_MVIEN		0x308
+#define CSR_MVIP		0x309
+
+/* Machine-Level High-Half CSRs (AIA) */
+#define CSR_MIDELEGH		0x313
+#define CSR_MIEH		0x314
+#define CSR_MVIENH		0x318
+#define CSR_MVIPH		0x319
+#define CSR_MIPH		0x354
+
 #ifdef CONFIG_RISCV_M_MODE
 # define CSR_STATUS	CSR_MSTATUS
 # define CSR_IE		CSR_MIE
@@ -307,6 +385,13 @@
 # define CSR_TVAL	CSR_MTVAL
 # define CSR_IP		CSR_MIP
 
+# define CSR_IEH		CSR_MIEH
+# define CSR_ISELECT	CSR_MISELECT
+# define CSR_IREG	CSR_MIREG
+# define CSR_IPH		CSR_MIPH
+# define CSR_TOPEI	CSR_MTOPEI
+# define CSR_TOPI	CSR_MTOPI
+
 # define SR_IE		SR_MIE
 # define SR_PIE		SR_MPIE
 # define SR_PP		SR_MPP
@@ -324,6 +409,13 @@
 # define CSR_TVAL	CSR_STVAL
 # define CSR_IP		CSR_SIP
 
+# define CSR_IEH		CSR_SIEH
+# define CSR_ISELECT	CSR_SISELECT
+# define CSR_IREG	CSR_SIREG
+# define CSR_IPH		CSR_SIPH
+# define CSR_TOPEI	CSR_STOPEI
+# define CSR_TOPI	CSR_STOPI
+
 # define SR_IE		SR_SIE
 # define SR_PIE		SR_SPIE
 # define SR_PP		SR_SPP
-- 
2.34.1

