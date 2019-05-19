Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 513CB22774
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2019 19:04:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726696AbfESREc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 May 2019 13:04:32 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:39142 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725777AbfESREb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 May 2019 13:04:31 -0400
Received: by mail-pf1-f195.google.com with SMTP id z26so6040741pfg.6
        for <devicetree@vger.kernel.org>; Sun, 19 May 2019 10:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HjgKgNWvkrWu2AB4Hfm3UsbNqpkTfiMRDxIt6YpDrD8=;
        b=F1SPpDoL5/a/tOtnEuMPcZHUmxrlYpCW55VLRABVi8Ktcj+pFOspwPpb/QdIdtJBsz
         41Nz2EnmkcnqlqMJ4FH9DYTW9qOWF3B9mwhUR4kc12EXddRoh1xcNY+hvWUgG0kVZaSO
         nmtAnQFNNwpNY2cb4wM/TTE7HA6icohq7g9rs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HjgKgNWvkrWu2AB4Hfm3UsbNqpkTfiMRDxIt6YpDrD8=;
        b=bngvQqhhlfNP3ih/bzI/oM9U9iUVJ5tynpA8WevUQWz3sNZGOdW++5WWJkzh/guJET
         YvDcC1YKMGNSCc2cy89sMYYjHSDW4C9sUpfgQgWiWLrOYNoui1hIzIFoUlDFFXbFMBHW
         GBLMTQgb+0brcrOtGH68WMNiVLZqmpGoZ0E/JRWFAF8LpWiU/TqQgK7ei3VoQnxtakvO
         WDATBSm83RybaRWC7+0jgaJw/wwf7MyfFf9lYD3VXH+XWSPScQaZKo9H8FHCHEHc8Ok7
         mWoc4dcjovP9yJjj5MqVG4mVvvuQdJadZgQ7thcHutOguGr+a64cP2Bm7K2f5hz8EAW+
         ToNA==
X-Gm-Message-State: APjAAAXpwScahFWjYjG7wh++l/izpSl/1uf4ueCA9E9Z1zQrVqrbBLmn
        iSL8OkrxGNQsbsoCyj88w7ayJ+Thq2zR8g==
X-Google-Smtp-Source: APXvYqzq2wiw9TB3Jsn9Sm+quwS8aysurwuin7NtHbnbO84Ogl+zCj5bZND02CjmQyW98Mvom1I2XQ==
X-Received: by 2002:a62:e10f:: with SMTP id q15mr74698143pfh.56.1558281904958;
        Sun, 19 May 2019 09:05:04 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id b23sm17547007pfi.6.2019.05.19.09.05.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 May 2019 09:05:04 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Subject: [PATCH v4 1/3] amr64: map FDT as RW for early_init_dt_scan()
Date:   Mon, 20 May 2019 00:04:44 +0800
Message-Id: <20190519160446.320-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently in arm64, FDT is mapped to RO before it's passed to
early_init_dt_scan(). However, there might be some code that needs
to modify FDT during init. Map FDT to RW until unflatten DT.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change log v2->v4:
* v3 abandoned
* add an arg pgprot_t to fixmap_remap_fdt()
---
 arch/arm64/include/asm/mmu.h | 2 +-
 arch/arm64/kernel/setup.c    | 5 ++++-
 arch/arm64/mm/mmu.c          | 4 ++--
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 67ef25d037ea..4499cb00ece7 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -137,7 +137,7 @@ extern void init_mem_pgprot(void);
 extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 			       unsigned long virt, phys_addr_t size,
 			       pgprot_t prot, bool page_mappings_only);
-extern void *fixmap_remap_fdt(phys_addr_t dt_phys);
+extern void *fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot);
 extern void mark_linear_text_alias_ro(void);
 
 #define INIT_MM_CONTEXT(name)	\
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..064df3de1d14 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -181,7 +181,7 @@ static void __init smp_build_mpidr_hash(void)
 
 static void __init setup_machine_fdt(phys_addr_t dt_phys)
 {
-	void *dt_virt = fixmap_remap_fdt(dt_phys);
+	void *dt_virt = fixmap_remap_fdt(dt_phys, PAGE_KERNEL);
 	const char *name;
 
 	if (!dt_virt || !early_init_dt_scan(dt_virt)) {
@@ -320,6 +320,9 @@ void __init setup_arch(char **cmdline_p)
 	/* Parse the ACPI tables for possible boot-time configuration */
 	acpi_boot_table_init();
 
+	/* remap fdt to RO */
+	fixmap_remap_fdt(__fdt_pointer, PAGE_KERNEL_RO);
+
 	if (acpi_disabled)
 		unflatten_device_tree();
 
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a170c6369a68..29648e86f7e5 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -940,12 +940,12 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
 	return dt_virt;
 }
 
-void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
+void *__init fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot)
 {
 	void *dt_virt;
 	int size;
 
-	dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
+	dt_virt = __fixmap_remap_fdt(dt_phys, &size, prot);
 	if (!dt_virt)
 		return NULL;
 
-- 
2.20.1

