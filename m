Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09E8A2EF250
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 13:19:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728133AbhAHMRk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 07:17:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728129AbhAHMRk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 07:17:40 -0500
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6161DC061261
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 04:16:21 -0800 (PST)
Received: by mail-qt1-x849.google.com with SMTP id b11so8119002qtj.11
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 04:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=ubj9eKj6feW724lUWuvX7193xJxAVUWYCd7LIBt/xZM=;
        b=ZyLpAlcpBv9O9CVzJMFTVvbJ+v6N6/MlI5lagtaZQ42jam3KCDm199szqV8m1XH6vm
         6GtLu1qOGyZthvo9l8MWkzfw/K4Xl7I4QFtfnfMIduarldtpphBLWUhCRFPwAl/SpFil
         MHMQ6ecjKrZdBANGg/u/TkAGtRynKiY+Sk/NiOrxwBMvVNpOuaEXjziQfL/DUqHuhahi
         0r6ZiITozRE25Td67i0Nq3Ldf5/d3TJNfFj9+Nl3f3DybGKwfPV2ON93JUo21Higyxi8
         P7ZnY2P8LAGAth/TT6nZsVWvGdmVB6IOZcbIPfZk4vnIxtEk1euUBNhPnbgVeBpb5uEQ
         KI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=ubj9eKj6feW724lUWuvX7193xJxAVUWYCd7LIBt/xZM=;
        b=JFOhkgfJHkkOwYXE0oLGlAyXmsWzVFNi/eyulj9h9T0748faXnX21gcgR+CE+Ft0Go
         Dyt4Bb6bXV2uzCY1R8tv5Qr82eQaJCZjj8LXMBTtOYr/hHHCCSJSu/uaXniVQ4fpPSMq
         U+LU0RRbiRks58vdiRVTU7P4nYSmij8JuM0akNpiN3T1/wRI21Q0iTsgl0W/XDCyoa0c
         EjCZtDjR+VqHKLPyUfzqQZ6VVVLg9Plq3t3O/JHaqI+rwcfvzRM3W1Xr3TJMM/KJZk5f
         M6N0mmNY2Ysys6IptHCSRM2cTFqSbs5ILY+enP+fptRF8LDJGaXLyxyYUSSchV4b9Ipf
         L/hQ==
X-Gm-Message-State: AOAM530jXrgyfpogH/cHSf3QNMQ3f9IwMHJOrZ/eG/G+dk4Yy8+UNJPZ
        0MHVg7YVHUImNo1jLzLfEluvt9i7PK69
X-Google-Smtp-Source: ABdhPJwsPu8BKRBWZUjzdMSkwBKnShyda60jjXL5FbZKOAM/v5VuP41Mk0K0+RI4xm3tuDvT7Z/bcAxZqOYT
Sender: "qperret via sendgmr" <qperret@r2d2-qp.c.googlers.com>
X-Received: from r2d2-qp.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:1652])
 (user=qperret job=sendgmr) by 2002:ad4:4b21:: with SMTP id
 s1mr6284968qvw.59.1610108180588; Fri, 08 Jan 2021 04:16:20 -0800 (PST)
Date:   Fri,  8 Jan 2021 12:15:23 +0000
In-Reply-To: <20210108121524.656872-1-qperret@google.com>
Message-Id: <20210108121524.656872-26-qperret@google.com>
Mime-Version: 1.0
References: <20210108121524.656872-1-qperret@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [RFC PATCH v2 25/26] KVM: arm64: Reserve memory for host stage 2
From:   Quentin Perret <qperret@google.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, android-kvm@google.com,
        linux-kernel@vger.kernel.org, kernel-team@android.com,
        kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
        Fuad Tabba <tabba@google.com>,
        Mark Rutland <mark.rutland@arm.com>,
        David Brazdil <dbrazdil@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Extend the memory pool allocated for the hypervisor to include enough
pages to map all of memory at page granularity for the host stage 2.
While at it, also reserve some memory for device mappings.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/kvm/hyp/include/nvhe/mm.h | 36 ++++++++++++++++++++++++----
 arch/arm64/kvm/hyp/nvhe/setup.c      | 12 ++++++++++
 arch/arm64/kvm/hyp/reserved_mem.c    |  2 ++
 3 files changed, 46 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/hyp/include/nvhe/mm.h b/arch/arm64/kvm/hyp/include/nvhe/mm.h
index f0cc09b127a5..cdf2e3447b2a 100644
--- a/arch/arm64/kvm/hyp/include/nvhe/mm.h
+++ b/arch/arm64/kvm/hyp/include/nvhe/mm.h
@@ -52,15 +52,12 @@ static inline unsigned long __hyp_pgtable_max_pages(unsigned long nr_pages)
 	return total;
 }
 
-static inline unsigned long hyp_s1_pgtable_size(void)
+static inline unsigned long __hyp_pgtable_total_size(void)
 {
 	struct hyp_memblock_region *reg;
 	unsigned long nr_pages, res = 0;
 	int i;
 
-	if (kvm_nvhe_sym(hyp_memblock_nr) <= 0)
-		return 0;
-
 	for (i = 0; i < kvm_nvhe_sym(hyp_memblock_nr); i++) {
 		reg = &kvm_nvhe_sym(hyp_memory)[i];
 		nr_pages = (reg->end - reg->start) >> PAGE_SHIFT;
@@ -68,6 +65,18 @@ static inline unsigned long hyp_s1_pgtable_size(void)
 		res += nr_pages << PAGE_SHIFT;
 	}
 
+	return res;
+}
+
+static inline unsigned long hyp_s1_pgtable_size(void)
+{
+	unsigned long res, nr_pages;
+
+	if (kvm_nvhe_sym(hyp_memblock_nr) <= 0)
+		return 0;
+
+	res = __hyp_pgtable_total_size();
+
 	/* Allow 1 GiB for private mappings */
 	nr_pages = (1 << 30) >> PAGE_SHIFT;
 	nr_pages = __hyp_pgtable_max_pages(nr_pages);
@@ -76,4 +85,23 @@ static inline unsigned long hyp_s1_pgtable_size(void)
 	return res;
 }
 
+static inline unsigned long host_s2_mem_pgtable_size(void)
+{
+	unsigned long max_pgd_sz = 16 << PAGE_SHIFT;
+
+	if (kvm_nvhe_sym(hyp_memblock_nr) <= 0)
+		return 0;
+
+	return __hyp_pgtable_total_size() + max_pgd_sz;
+}
+
+static inline unsigned long host_s2_dev_pgtable_size(void)
+{
+	if (kvm_nvhe_sym(hyp_memblock_nr) <= 0)
+		return 0;
+
+	/* Allow 1 GiB for private mappings */
+	return __hyp_pgtable_max_pages((1 << 30) >> PAGE_SHIFT) << PAGE_SHIFT;
+}
+
 #endif /* __KVM_HYP_MM_H */
diff --git a/arch/arm64/kvm/hyp/nvhe/setup.c b/arch/arm64/kvm/hyp/nvhe/setup.c
index 6d1faede86ae..79b697df01e2 100644
--- a/arch/arm64/kvm/hyp/nvhe/setup.c
+++ b/arch/arm64/kvm/hyp/nvhe/setup.c
@@ -24,6 +24,8 @@ unsigned long hyp_nr_cpus;
 static void *stacks_base;
 static void *vmemmap_base;
 static void *hyp_pgt_base;
+static void *host_s2_mem_pgt_base;
+static void *host_s2_dev_pgt_base;
 
 static int divide_memory_pool(void *virt, unsigned long size)
 {
@@ -46,6 +48,16 @@ static int divide_memory_pool(void *virt, unsigned long size)
 	if (!hyp_pgt_base)
 		return -ENOMEM;
 
+	nr_pages = host_s2_mem_pgtable_size() >> PAGE_SHIFT;
+	host_s2_mem_pgt_base = hyp_early_alloc_contig(nr_pages);
+	if (!host_s2_mem_pgt_base)
+		return -ENOMEM;
+
+	nr_pages = host_s2_dev_pgtable_size() >> PAGE_SHIFT;
+	host_s2_dev_pgt_base = hyp_early_alloc_contig(nr_pages);
+	if (!host_s2_dev_pgt_base)
+		return -ENOMEM;
+
 	return 0;
 }
 
diff --git a/arch/arm64/kvm/hyp/reserved_mem.c b/arch/arm64/kvm/hyp/reserved_mem.c
index 32f648992835..ee97e55e3c59 100644
--- a/arch/arm64/kvm/hyp/reserved_mem.c
+++ b/arch/arm64/kvm/hyp/reserved_mem.c
@@ -74,6 +74,8 @@ void __init kvm_hyp_reserve(void)
 	 */
 	hyp_mem_size += NR_CPUS << PAGE_SHIFT;
 	hyp_mem_size += hyp_s1_pgtable_size();
+	hyp_mem_size += host_s2_mem_pgtable_size();
+	hyp_mem_size += host_s2_dev_pgtable_size();
 
 	/*
 	 * The hyp_vmemmap needs to be backed by pages, but these pages
-- 
2.30.0.284.gd98b1dd5eaa7-goog

