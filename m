Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AA746B3B41
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 10:47:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230145AbjCJJrZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 04:47:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbjCJJrH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 04:47:07 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1F34EB54
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 01:46:46 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id az36so2982975wmb.1
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 01:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112; t=1678441605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KgQQy0WOaC8x36p48NSIJDImmcDBT39MIpy6PGzDwU8=;
        b=DK0AVNF24CSovjJHjfX2BnbZdKEc3SCRhmed7jkWmNWONYRQJpkIDL/dDxC8+TqV4s
         iPdx2usmr4K0UsSvTjdyMJmHIJpwPpBtCXOt0TWuokX7Zry9p/D+3rjrf+QNRJWTAH9d
         FjemEPIjcSPl6Z/IT3jQJZ+EuCULRYq4LA1+kUq2ILkogKGSgomgez1hILg2QQS3XD5g
         MnLjt536CUEpLSQiQqLquY6n4kpR5vSmgTKTmGbi96kMFXMKcVgHdPrFYi3R8Xkr71dD
         FrlWWYDKsTczd5y5BLAiMFpgQ4ohQfrZRU/KQHi3A7pE0F0Ua9QPnaql2wwabry3iuEd
         DTwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678441605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KgQQy0WOaC8x36p48NSIJDImmcDBT39MIpy6PGzDwU8=;
        b=SIkJ1ROWBG6a7CmV5mEDylXcccgLr48e9cM/OzNIQoFdMtoRt0kXWi89dC6vgQWudP
         MHDUu4EPeHzYjdhgZkAJjobgOYDY4SIHuYwvSaYlq9hXAMSzZCPm7X3WG3JDKPQZ13L5
         W7CzWwdKkFO2peo+D8NT4zy/RAV7eG7738RxP2QGRKOE2+ev5ruR1e6T267RpciEL6n0
         RGLVNtmISD9pZMvwWEr5f6FfarBpPf3qxy0ONMZESqgWE1T5O38AynaONBfjiPQ0aiCB
         lpy8lMtXQrxxDEKIAZYUr2h9ZIJ9oKgK7EjOOkI2b6l38usH4TnvJEWsEPnvV/6isw29
         xKYQ==
X-Gm-Message-State: AO0yUKWutHDzJ7AZOGvUDKiKkWmMF4+/rvdYxjxJ6RxLy1SGozmPSa+2
        K+HUmjldZX6Bb89UoqX5CZcwOg==
X-Google-Smtp-Source: AK7set8b349TneToQStuc8wRqpg6p575gxaExAvpkNXCodRjWOTreYyk5UxGc9fCPDchPDs9B8XsoA==
X-Received: by 2002:a05:600c:4452:b0:3eb:2de8:b739 with SMTP id v18-20020a05600c445200b003eb2de8b739mr1958858wmn.37.1678441605417;
        Fri, 10 Mar 2023 01:46:45 -0800 (PST)
Received: from alex-rivos.ba.rivosinc.com (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id iz9-20020a05600c554900b003eb369abd92sm2461929wmb.2.2023.03.10.01.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 01:46:45 -0800 (PST)
From:   Alexandre Ghiti <alexghiti@rivosinc.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mike Rapoport <rppt@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Anup Patel <anup@brainfault.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Alexandre Ghiti <alexghiti@rivosinc.com>,
        Andrew Jones <ajones@ventanamicro.com>
Subject: [PATCH v7 1/4] riscv: Get rid of riscv_pfn_base variable
Date:   Fri, 10 Mar 2023 10:45:36 +0100
Message-Id: <20230310094539.764357-2-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230310094539.764357-1-alexghiti@rivosinc.com>
References: <20230310094539.764357-1-alexghiti@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use directly phys_ram_base instead, riscv_pfn_base is just the pfn of
the address contained in phys_ram_base.

Even if there is no functional change intended in this patch, actually
setting phys_ram_base that early changes the behaviour of
kernel_mapping_pa_to_va during the early boot: phys_ram_base used to be
zero before this patch and now it is set to the physical start address of
the kernel. But it does not break the conversion of a kernel physical
address into a virtual address since kernel_mapping_pa_to_va should only
be used on kernel physical addresses, i.e. addresses greater than the
physical start address of the kernel.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/page.h | 3 +--
 arch/riscv/mm/init.c          | 6 +-----
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 7fed7c431928..8dc686f549b6 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -91,8 +91,7 @@ typedef struct page *pgtable_t;
 #endif
 
 #ifdef CONFIG_MMU
-extern unsigned long riscv_pfn_base;
-#define ARCH_PFN_OFFSET		(riscv_pfn_base)
+#define ARCH_PFN_OFFSET		(PFN_DOWN((unsigned long)phys_ram_base))
 #else
 #define ARCH_PFN_OFFSET		(PAGE_OFFSET >> PAGE_SHIFT)
 #endif /* CONFIG_MMU */
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 478d6763a01a..225a7d2b65cc 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -271,9 +271,6 @@ static void __init setup_bootmem(void)
 #ifdef CONFIG_MMU
 struct pt_alloc_ops pt_ops __initdata;
 
-unsigned long riscv_pfn_base __ro_after_init;
-EXPORT_SYMBOL(riscv_pfn_base);
-
 pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
 pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
 static pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
@@ -285,7 +282,6 @@ static pmd_t __maybe_unused early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAG
 
 #ifdef CONFIG_XIP_KERNEL
 #define pt_ops			(*(struct pt_alloc_ops *)XIP_FIXUP(&pt_ops))
-#define riscv_pfn_base         (*(unsigned long  *)XIP_FIXUP(&riscv_pfn_base))
 #define trampoline_pg_dir      ((pgd_t *)XIP_FIXUP(trampoline_pg_dir))
 #define fixmap_pte             ((pte_t *)XIP_FIXUP(fixmap_pte))
 #define early_pg_dir           ((pgd_t *)XIP_FIXUP(early_pg_dir))
@@ -985,7 +981,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	kernel_map.va_pa_offset = PAGE_OFFSET - kernel_map.phys_addr;
 	kernel_map.va_kernel_pa_offset = kernel_map.virt_addr - kernel_map.phys_addr;
 
-	riscv_pfn_base = PFN_DOWN(kernel_map.phys_addr);
+	phys_ram_base = kernel_map.phys_addr;
 
 	/*
 	 * The default maximal physical memory size is KERN_VIRT_SIZE for 32-bit
-- 
2.37.2

