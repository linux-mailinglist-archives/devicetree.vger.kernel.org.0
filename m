Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 006DC2E9538
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 13:46:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726614AbhADMq1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 07:46:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726602AbhADMq0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 07:46:26 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43DF8C061793
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 04:45:46 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id b2so27225052edm.3
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 04:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CuNuwNPfijpuOBaWzlXtwbGMCXD1JMeJ1Mw1oOpUEwI=;
        b=aMaSeiP7KGjA0OhAkOvLzSLVjFZdVsZ85/cizFv8E+NSdJRTvvX2B3Ni6fVe9sUKNq
         qy1EaxZOrmPlwo1CyyvpUZirfa9fMK3WDNgjDhniKi1CDIgjYY7V2rkLKticUOnVADEl
         R02Zu1Jfz60Yj9NjNqfUp+o8RbpJDe0ax1AvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CuNuwNPfijpuOBaWzlXtwbGMCXD1JMeJ1Mw1oOpUEwI=;
        b=fNp7I8b6ixKEL6jQ0gIslbQahcUMfFDDtrRPjXA0gKssmzLKmkUrHwhgb0hh28icp/
         haf8D25HoKGXETixcxMu01OREfLmGdQThjeeY7nouHgdyFF0GWz/o+0wPPNGuJb/TMpq
         g/GSlT65L0Xd+Hn1uaPCitLrAe4SnFVFEQFirnHQAJ86NNP3aPxMUN7NLG8DfPiK4gRq
         lJCW+iHN6VLlL4RlZUsK0GZlLOF1II4Y1rds6Q+bT/lOXrD90TPDmYBQ0YkCRnYlh66b
         DGEhtNJYJS3vZMaYdMnR6UwTr+pOYqVmnwza9zZlACeRquQ1/pPo9UcaGF5C7JVRCsv0
         WjlQ==
X-Gm-Message-State: AOAM532H8pXFYoAwdRMEicYHjfO87LbRc1WfHg5tesNPvMHPaYyJ+F0s
        qW/ctv5eY46Zdu7GT/fR7e26Pg==
X-Google-Smtp-Source: ABdhPJz1KtHMUthPUBeUyVRx9fuh2PGb9Fx0q0E3aCfc4hmnurWmE0pnveDcE/KyB/+cWsFCHLfPjQ==
X-Received: by 2002:aa7:c3cd:: with SMTP id l13mr69825763edr.97.1609764344822;
        Mon, 04 Jan 2021 04:45:44 -0800 (PST)
Received: from lootbox.konsulko.bg (lan.nucleusys.com. [92.247.61.126])
        by smtp.gmail.com with ESMTPSA id r18sm25359916edx.41.2021.01.04.04.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 04:45:44 -0800 (PST)
From:   Vitaly Wool <vitaly.wool@konsulko.com>
To:     linux-riscv@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, Bin Meng <bin.meng@windriver.com>,
        Anup Patel <anup@brainfault.org>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        damien.lemoal@wdc.com, devicetree@vger.kernel.org,
        Vitaly Wool <vitaly.wool@konsulko.com>
Subject: [PATCH v2] riscv: add BUILTIN_DTB support for MMU-enabled targets
Date:   Mon,  4 Jan 2021 14:43:15 +0200
Message-Id: <20210104124314.7489-1-vitaly.wool@konsulko.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sometimes, especially in a production system we may not want to
use a "smart bootloader" like u-boot to load kernel, ramdisk and
device tree from a filesystem on eMMC, but rather load the kernel
from a NAND partition and just run it as soon as we can, and in
this case it is convenient to have device tree compiled into the
kernel binary. Since this case is not limited to MMU-less systems,
let's support it for these which have MMU enabled too.

Signed-off-by: Vitaly Wool <vitaly.wool@konsulko.com>
---
Changelog from v1:
* no direct initial_boot_params assignment
* skips the temporary mapping for DT if BUILTIN_DTB=y 

 arch/riscv/Kconfig   |  1 -
 arch/riscv/mm/init.c | 15 +++++++++++++--
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 81b76d44725d..07a8bdcc423f 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -416,7 +416,6 @@ endmenu
 
 config BUILTIN_DTB
 	def_bool n
-	depends on RISCV_M_MODE
 	depends on OF
 
 menu "Power management options"
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 13ba533f462b..04aeee276817 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -191,10 +191,13 @@ void __init setup_bootmem(void)
 #endif /* CONFIG_BLK_DEV_INITRD */
 
 	/*
-	 * Avoid using early_init_fdt_reserve_self() since __pa() does
+	 * If DTB is built in, no need to reserve its memblock.
+	 * Otherwise, do reserve it but avoid using
+	 * early_init_fdt_reserve_self() since __pa() does
 	 * not work for DTB pointers that are fixmap addresses
 	 */
-	memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
+	if (!IS_ENABLED(CONFIG_BUILTIN_DTB))
+		memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
 
 	early_init_fdt_scan_reserved_mem();
 	dma_contiguous_reserve(dma32_phys_limit);
@@ -499,6 +502,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	/* Setup early PMD for DTB */
 	create_pgd_mapping(early_pg_dir, DTB_EARLY_BASE_VA,
 			   (uintptr_t)early_dtb_pmd, PGDIR_SIZE, PAGE_TABLE);
+#ifndef CONFIG_BUILTIN_DTB
 	/* Create two consecutive PMD mappings for FDT early scan */
 	pa = dtb_pa & ~(PMD_SIZE - 1);
 	create_pmd_mapping(early_dtb_pmd, DTB_EARLY_BASE_VA,
@@ -506,7 +510,11 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	create_pmd_mapping(early_dtb_pmd, DTB_EARLY_BASE_VA + PMD_SIZE,
 			   pa + PMD_SIZE, PMD_SIZE, PAGE_KERNEL);
 	dtb_early_va = (void *)DTB_EARLY_BASE_VA + (dtb_pa & (PMD_SIZE - 1));
+#else /* CONFIG_BUILTIN_DTB */
+	dtb_early_va = __va(dtb_pa);
+#endif /* CONFIG_BUILTIN_DTB */
 #else
+#ifndef CONFIG_BUILTIN_DTB
 	/* Create two consecutive PGD mappings for FDT early scan */
 	pa = dtb_pa & ~(PGDIR_SIZE - 1);
 	create_pgd_mapping(early_pg_dir, DTB_EARLY_BASE_VA,
@@ -514,6 +522,9 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	create_pgd_mapping(early_pg_dir, DTB_EARLY_BASE_VA + PGDIR_SIZE,
 			   pa + PGDIR_SIZE, PGDIR_SIZE, PAGE_KERNEL);
 	dtb_early_va = (void *)DTB_EARLY_BASE_VA + (dtb_pa & (PGDIR_SIZE - 1));
+#else /* CONFIG_BUILTIN_DTB */
+	dtb_early_va = __va(dtb_pa);
+#endif /* CONFIG_BUILTIN_DTB */
 #endif
 	dtb_early_pa = dtb_pa;
 
-- 
2.20.1

