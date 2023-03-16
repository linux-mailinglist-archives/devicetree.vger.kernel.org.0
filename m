Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 122A66BD0A2
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 14:19:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230154AbjCPNS7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 09:18:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230075AbjCPNS6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 09:18:58 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 286CFCD669
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 06:18:22 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id ay8so1242900wmb.1
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 06:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112; t=1678972698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tp3HoPN4Gc82+RijS+v6sxY9JgB+vr3DxCDQErkACNI=;
        b=PToYMu0cKs8JYZ6vE0jZ7YqptxvvNxzJLVidWaPVHOytoFMIFwdTLHn0duEcW9msRA
         1DEp4a1ec5G0nWISGMpEGtVdHHRcqLIy32AocIm6p96VGsWXu1VqxQPHrribt2ncNfPa
         IT7NvAy3f1XFXxF4ab7MvjC7CER1BZR7JNhxXrN5STyfV/hVjikL5OIksSxcZfM5NZ7b
         p+sKuSERVfHhmhbBauv0yFqr6stSOvpGururNP0b9AutYpWisTZOOvIyYvb+WKc3PTc5
         kSNH7H862sCAjFRcT5NtWiledbRkxgFXVqgQFo/OSB2M+TbcKKYrTnLSa0NrQWaJraNx
         warg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678972698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tp3HoPN4Gc82+RijS+v6sxY9JgB+vr3DxCDQErkACNI=;
        b=6mjMJJ5iuvokWjl5fX0v8ExXzKYH4a1lP5wYdD5yBCTKLsuaxtfMLSgmR0KGMqgh0o
         +G8KdzzWl9zoI5wVilvOqY+VdBbNbcLExOmC00spaklJ/VG3Tuu+2cBuvc9q6XwBE/2l
         IDuyo0SJi8wwdd7ZekyZ6Z0khnCZYEuxERyPM19RtvDjsBJaGkq95s9Elpk1rtq0WWhN
         Kra5bWZgT3cF2NU6a2YhKglnM5Iz40fMs6Mf6+nrHSa7xv0n4eStavgu/bjJBqr+3kmM
         CFsZGX3NM6AqGD5yC4GWhcgKK69FlHew/3FfIfW7t8+qKIXInyQW6HtDcfpR2FY9Y0TV
         Nn9A==
X-Gm-Message-State: AO0yUKXJ/zIGDnCenphVF3h66MYjoKmHJyHAhu1RyK5GxF0Z9DPqURuh
        jPyEfYPdNYrdOb/kkE5bBgd7Rg==
X-Google-Smtp-Source: AK7set/fPYDWjI/nDNH4Tp4cX0o/pdQFhcmC6kakh/lPH0h+uqTf9K4xF0cfCvGEO1gwABpPdHlqIw==
X-Received: by 2002:a05:600c:a46:b0:3ec:4621:680b with SMTP id c6-20020a05600c0a4600b003ec4621680bmr17906976wmq.14.1678972698428;
        Thu, 16 Mar 2023 06:18:18 -0700 (PDT)
Received: from alex-rivos.ba.rivosinc.com (238.174.185.81.rev.sfr.net. [81.185.174.238])
        by smtp.gmail.com with ESMTPSA id c16-20020adffb50000000b002d2f0e23acbsm24648wrs.12.2023.03.16.06.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 06:18:18 -0700 (PDT)
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
Subject: [PATCH v8 1/4] riscv: Get rid of riscv_pfn_base variable
Date:   Thu, 16 Mar 2023 14:17:08 +0100
Message-Id: <20230316131711.1284451-2-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230316131711.1284451-1-alexghiti@rivosinc.com>
References: <20230316131711.1284451-1-alexghiti@rivosinc.com>
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
Reviewed-by: Anup Patel <anup@brainfault.org>
Tested-by: Anup Patel <anup@brainfault.org>
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
index 87f6a5d475a6..cc558d94559a 100644
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

