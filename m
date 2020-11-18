Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 461922B7F73
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 15:32:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726837AbgKRObt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 09:31:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726519AbgKRObt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 09:31:49 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92B55C0613D6
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 06:31:48 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id a3so2906793wmb.5
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 06:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=77gMImcbngsyFF3Kh1bUZt4EqmcmVNO0vErBUFdwx2w=;
        b=v2fvZNY+grT4giPGpG9AfdPemDFWlwFtdYpSOwbiaa6C9E4b1baIyzdWzuiGTlP7eS
         x7msBmtS2wkxDsy31kncXI7VGq0s/mnzfn74IKGpc1i9+QNjhLrd7j+dFe092Cn0dDjV
         KDBBZOuI5jZ5RjWsPPQtrwxEdGd6luqcgoD6zYO/sgtdKiCG8KBvsAVG/Iv4p8wQs65p
         mC5FtsmnqYnaDPfAvok/8WjV3T/akvz3RfZ2fgPXDWOAAS9WeK3XU9DWqe06ehUMfZRc
         /cUuRFAjKY3RD2J+A4EDKh5NRVcvHAClSrOyTCdwStFA3FuqGktmyzt85/OESDbT0Ssf
         k3Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=77gMImcbngsyFF3Kh1bUZt4EqmcmVNO0vErBUFdwx2w=;
        b=Ge6bEcdaL6EBPoibPLOWvz5BNNvq+IyhqYJaVQRwbxeAJ77+HjRhk/63nXPxDskyPQ
         QdW7Dsfyv2LVP7AHMBbu1ieA/SDYvs+NRz0uWjI7SQ9j4k4hYWTEDsFFZGWZc9Foafk/
         GkVJwVubxAucTLoskQ3PlfBSfndPGjuQnqikoypM2cfmtjIX7egAw/FuwSkYr2z37ixv
         l3IKzF84GmMsaVjitlXjka4HKVIN8FLHcLKGKsMMxs74ionAmEfCYUVMB4cpJ/IoiR7H
         EuNYvOr2Eroxd2B5g3KdsXMGJkAy831Jcvr1P8GuMwR7qIf56hMhK5KO5ywkWzE8zjub
         C/1g==
X-Gm-Message-State: AOAM531yp6QCLHc+uILmPotBXrmtes4NAZmmkOCXkpY9L92+OiD+5EaG
        XAFdlU5+GZpU+euokhFmxNbAoA==
X-Google-Smtp-Source: ABdhPJyiO0C6fIniO9A8G4+oXO/BFYBEEq1ifMK+gP7zPSNkLa+obZh4pOi4zfnF+eiaqN3P59YUgA==
X-Received: by 2002:a7b:cbc8:: with SMTP id n8mr334272wmi.124.1605709906953;
        Wed, 18 Nov 2020 06:31:46 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id u5sm28800161wro.56.2020.11.18.06.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 06:31:45 -0800 (PST)
Date:   Wed, 18 Nov 2020 14:31:42 +0000
From:   Quentin Perret <qperret@google.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)" 
        <kvmarm@lists.cs.columbia.edu>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>,
        Android Kernel Team <kernel-team@android.com>,
        android-kvm@google.com
Subject: Re: [RFC PATCH 15/27] of/fdt: Introduce
 early_init_dt_add_memory_hyp()
Message-ID: <20201118143142.GA2220979@google.com>
References: <20201117181607.1761516-1-qperret@google.com>
 <20201117181607.1761516-16-qperret@google.com>
 <CAL_Jsq+xAy9+HjH6vqfmaAEKBe9MMm+wWvUtiz5dFnHmMneqNw@mail.gmail.com>
 <20201118092547.GA2031536@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201118092547.GA2031536@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wednesday 18 Nov 2020 at 09:25:47 (+0000), Quentin Perret wrote:
> I'll have a go at the memblock stuff to see if I find a way to make it
> work from that angle.

OK, no luck with the memblock API, but I figured that I can actually
postpone the KVM memory reservation to a later point, after
unflatten_device_tree(), which lets me iterate over the memory nodes
directly rather than having the fdt driver do it for me.

The below seems to boot alright (though I'm not too familiar with
of_address_to_resource() so I may not be using right) and keeps the
whole thing in arch/arm64. Thoughts?

Thanks,
Quentin

---8<---
diff --git a/arch/arm64/kvm/hyp/reserved_mem.c b/arch/arm64/kvm/hyp/reserved_mem.c
index 7da8e2915c1c..cab5ad587a3a 100644
--- a/arch/arm64/kvm/hyp/reserved_mem.c
+++ b/arch/arm64/kvm/hyp/reserved_mem.c
@@ -6,6 +6,7 @@
 
 #include <linux/kvm_host.h>
 #include <linux/memblock.h>
+#include <linux/of_address.h>
 #include <linux/sort.h>
 
 #include <asm/kvm_host.h>
@@ -16,7 +17,7 @@
 phys_addr_t hyp_mem_base;
 phys_addr_t hyp_mem_size;
 
-void __init early_init_dt_add_memory_hyp(u64 base, u64 size)
+static int __init add_hyp_memblock_region(struct resource *rsrc)
 {
 	struct hyp_memblock_region *reg;
 
@@ -24,12 +25,14 @@ void __init early_init_dt_add_memory_hyp(u64 base, u64 size)
 		kvm_nvhe_sym(hyp_memblock_nr) = -1;
 
 	if (kvm_nvhe_sym(hyp_memblock_nr) < 0)
-		return;
+		return -ENOMEM;
 
 	reg = kvm_nvhe_sym(hyp_memory);
-	reg[kvm_nvhe_sym(hyp_memblock_nr)].start = base;
-	reg[kvm_nvhe_sym(hyp_memblock_nr)].end = base + size;
+	reg[kvm_nvhe_sym(hyp_memblock_nr)].start = rsrc->start;
+	reg[kvm_nvhe_sym(hyp_memblock_nr)].end = rsrc->end;
 	kvm_nvhe_sym(hyp_memblock_nr)++;
+
+	return 0;
 }
 
 static int cmp_hyp_memblock(const void *p1, const void *p2)
@@ -52,7 +55,10 @@ void kvm_sort_memblock_regions(void)
 extern bool enable_protected_kvm;
 void __init reserve_kvm_hyp(void)
 {
+	struct device_node *np;
+	struct resource rsrc;
 	u64 nr_pages, prev;
+	int i;
 
 	if (!enable_protected_kvm)
 		return;
@@ -60,8 +66,14 @@ void __init reserve_kvm_hyp(void)
 	if (!is_hyp_mode_available() || is_kernel_in_hyp_mode())
 		return;
 
-	if (kvm_nvhe_sym(hyp_memblock_nr) <= 0)
-		return;
+	for_each_node_by_type(np, "memory") {
+		for (i = 0; !of_address_to_resource(np, i, &rsrc); i++) {
+			if (!add_hyp_memblock_region(&rsrc))
+				continue;
+			kvm_err("Failed to add hyp memblock\n");
+			return;
+		}
+	}
 
 	hyp_mem_size += num_possible_cpus() << PAGE_SHIFT;
 	hyp_mem_size += hyp_s1_pgtable_size();
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index f81da019b677..114f788a4da4 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -391,7 +391,6 @@ void __init arm64_memblock_init(void)
 
 	reserve_elfcorehdr();
 
-	reserve_kvm_hyp();
 
 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
 
@@ -423,6 +422,8 @@ void __init bootmem_init(void)
 
 	dma_pernuma_cma_reserve();
 
+	reserve_kvm_hyp();
+
 	/*
 	 * sparse_init() tries to allocate memory from memblock, so must be
 	 * done after the fixed reservations
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index af2b5a09c5b4..4602e467ca8b 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1099,10 +1099,6 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 #define MAX_MEMBLOCK_ADDR	((phys_addr_t)~0)
 #endif
 
-void __init __weak early_init_dt_add_memory_hyp(u64 base, u64 size)
-{
-}
-
 void __init __weak early_init_dt_add_memory_arch(u64 base, u64 size)
 {
 	const u64 phys_offset = MIN_MEMBLOCK_ADDR;
@@ -1143,7 +1139,6 @@ void __init __weak early_init_dt_add_memory_arch(u64 base, u64 size)
 		base = phys_offset;
 	}
 	memblock_add(base, size);
-	early_init_dt_add_memory_hyp(base, size);
 }
 
 int __init __weak early_init_dt_mark_hotplug_memory_arch(u64 base, u64 size)
