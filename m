Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B7BE2B6D03
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:20:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731130AbgKQSRV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:17:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731090AbgKQSRU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:17:20 -0500
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 351E9C0617A6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:17:20 -0800 (PST)
Received: by mail-qt1-x849.google.com with SMTP id e22so12978445qte.22
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=E22eq9BAxEe+AO1nuitRnkTYq4b0+jwZ2QqbOY4WjS4=;
        b=BwMpHLzzaf2zH+ej4IZ+ZkIk/2jWr7L+FHUmN9hGsyCqOGOmdabExESKfOLgOuQEMx
         NHx/9YL1ICL/V6NTINPSEuafCnh+jEpymTyAt+ffdheOuo7jOJ8vS/yeL41NvksNjLOE
         x8t+7P7Bm81+jxi2AQWLRtbYG98F660Av+2v6E1SVR18iUDIbjud6M7WtnnUxBYtf4yg
         aCkEG1Nbb7InqizJzHfB0W0Noq7MOQtxHUbyYkRV8CEDKX/4SUjh+2KgSkkYcs5KTcOv
         9gcPbPB/EtvtRoo0fWhkrwKl79dMwsmHYYo8KVVxYYexbKJ9YZA/vmIK3+v8nlSTkUDs
         TWaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=E22eq9BAxEe+AO1nuitRnkTYq4b0+jwZ2QqbOY4WjS4=;
        b=JZAaCruKhayjwNT/P5MwiL31HlhJ41/cp0LKifH5S7Fdy59YaYF71NwiuLjW61rBrv
         TvU8x7WEKmaunJNbLGgJtStXohvGZ8y7CJsd147vXoL03M7TbMfkWvycPq2zENnZ5wbw
         DkQbT7eaD9IkAQr3p6Lkw9zvs5BRYSN2kuPGKz3uap1Vct8pDRg8LKILOe/mcraXGALH
         VFpoSeLKq0XWPPex0ET1rEIBQlCNNRj35+7N1lAKTkg1Dv12BLJQCxw57VZp5w0pGCyS
         wg1sGQCFBfzdnQPkiIVn0He0T92vyGWnkqbWOqu81Q/N/jJFbBPmEfIdwWLBCH3dymG2
         pCsQ==
X-Gm-Message-State: AOAM5312w/6+P+j+oghagELVmJClzdKQT49fOZv1alaH6yUb6xpZfRA2
        YNtE1yl+mWq7oDJ9qXqMQAHn0mXWC25O
X-Google-Smtp-Source: ABdhPJz/mVc1v+qYJqOE8yeahxM0e0LR02PFTS4Ofl1niXl14opy+AyQuh/+jpD0RcsQFfuxJf4epmdjTYs2
Sender: "qperret via sendgmr" <qperret@luke.lon.corp.google.com>
X-Received: from luke.lon.corp.google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
 (user=qperret job=sendgmr) by 2002:ad4:53c8:: with SMTP id
 k8mr531726qvv.40.1605637039404; Tue, 17 Nov 2020 10:17:19 -0800 (PST)
Date:   Tue, 17 Nov 2020 18:16:06 +0000
In-Reply-To: <20201117181607.1761516-1-qperret@google.com>
Message-Id: <20201117181607.1761516-27-qperret@google.com>
Mime-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [RFC PATCH 26/27] KVM: arm64: Sort the memblock regions list
From:   Quentin Perret <qperret@google.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)" 
        <kvmarm@lists.cs.columbia.edu>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>, kernel-team@android.com,
        android-kvm@google.com, Quentin Perret <qperret@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The hypervisor will need the list of memblock regions sorted by
increasing start address to make look-ups more efficient. Make the
host do the hard work early while it is still trusted to avoid the need
for a sorting library at EL2.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/include/asm/kvm_host.h |  1 +
 arch/arm64/kvm/arm.c              |  1 +
 arch/arm64/kvm/hyp/reserved_mem.c | 18 ++++++++++++++++++
 3 files changed, 20 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 53b01d25e7d9..ec304a5c728b 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -746,6 +746,7 @@ bool kvm_arm_vcpu_is_finalized(struct kvm_vcpu *vcpu);
 extern phys_addr_t hyp_mem_base;
 extern phys_addr_t hyp_mem_size;
 void __init reserve_kvm_hyp(void);
+void kvm_sort_memblock_regions(void);
 #else
 static inline void reserve_kvm_hyp(void) { }
 #endif
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index e06c95a10dba..8160a0d12a58 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -1685,6 +1685,7 @@ static int kvm_hyp_enable_protection(void)
 		return ret;
 
 	kvm_set_hyp_vector();
+	kvm_sort_memblock_regions();
 	ret = kvm_call_hyp_nvhe(__kvm_hyp_protect, hyp_mem_base, hyp_mem_size,
 				num_possible_cpus(), kern_hyp_va(per_cpu_base));
 	if (ret)
diff --git a/arch/arm64/kvm/hyp/reserved_mem.c b/arch/arm64/kvm/hyp/reserved_mem.c
index c2c0484b6211..7da8e2915c1c 100644
--- a/arch/arm64/kvm/hyp/reserved_mem.c
+++ b/arch/arm64/kvm/hyp/reserved_mem.c
@@ -6,6 +6,7 @@
 
 #include <linux/kvm_host.h>
 #include <linux/memblock.h>
+#include <linux/sort.h>
 
 #include <asm/kvm_host.h>
 
@@ -31,6 +32,23 @@ void __init early_init_dt_add_memory_hyp(u64 base, u64 size)
 	kvm_nvhe_sym(hyp_memblock_nr)++;
 }
 
+static int cmp_hyp_memblock(const void *p1, const void *p2)
+{
+	const struct hyp_memblock_region *r1 = p1;
+	const struct hyp_memblock_region *r2 = p2;
+
+	return r1->start < r2->start ? -1 : (r1->start > r2->start);
+}
+
+void kvm_sort_memblock_regions(void)
+{
+	sort(kvm_nvhe_sym(hyp_memory),
+	     kvm_nvhe_sym(hyp_memblock_nr),
+	     sizeof(struct hyp_memblock_region),
+	     cmp_hyp_memblock,
+	     NULL);
+}
+
 extern bool enable_protected_kvm;
 void __init reserve_kvm_hyp(void)
 {
-- 
2.29.2.299.gdc1121823c-goog

