Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68CFC2B6CCE
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:16:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730854AbgKQSQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:16:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730812AbgKQSQp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:16:45 -0500
Received: from mail-wm1-x349.google.com (mail-wm1-x349.google.com [IPv6:2a00:1450:4864:20::349])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAD4FC0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:44 -0800 (PST)
Received: by mail-wm1-x349.google.com with SMTP id a134so1895979wmd.8
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=Nx9TzG8OmvjJxKNgiM/4waPsacypWhGMNqjRf5oXlbQ=;
        b=gOHYeik0Afu79DkLLq77U6M3Z0aWksdQKzAaxc0pEuoi6vq+mZ+7aoUPAYEia6bkBQ
         9IrUSm0MEJOXZ7x6ny2axoWaZn00V/b44gHHx63cD9WwcGzTfW5WifeWGoTFivw+WX/P
         KkfodH14f9sfhSpiwxbImnoa9TFjZnqQOyEpgrf0mwsbW11qOp5BtIrM2nYLu5g9/Ln+
         Rz3PmqagXh38rv9cjiqPGgYn2U/plPy31Md0cZbeZKwT+2qZUIeZhE5sc+u2dCpMfpvF
         gEqfzsNnU4cJx98r2oU7plVAULgQrF0izi2qcXfZ/80LI1tJ7Fsh7hga4tXYeN1pdo3c
         CU7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Nx9TzG8OmvjJxKNgiM/4waPsacypWhGMNqjRf5oXlbQ=;
        b=P7vnjxLJZ/bjyrOmCnml5Fp3qpnRLLpR4XPhghI53Fy/GmZYJE29VNTsnhB7HqbIVa
         okKV04CSA0MCLSt7aRPmijH+2oaNJ0ps659eEhLxbkaf97JO7OWx6T7uQNXvPybZSd2d
         y3anhgNfCg2j53Qk1lVDZ//YOQJ8UIJsbyNdKcvpWU4MGhdK2yK8L1Inw1UV5Fo+FY8/
         EaiveQUXVkiCXPQHNczvfTM18BNXWQpTSEhv+nStwmasHIDaVk8OFSVSo2CRzIv2juQw
         kY9xysZCvbVUq4UZS5r2U6TNqBV9sBYJXnCpHVmjE4yZexSN8yVw+AlcRlqdetmefXX0
         c8/g==
X-Gm-Message-State: AOAM532wtg5LWssA+7qasuVaCi6JzGtvUMr+SNEK2wgSnvQ+mF1GouRm
        5/L40GZILIqoylH43877fiFZFP5Lx7bd
X-Google-Smtp-Source: ABdhPJyhHRlIsUkfi/eYpmMORHp5D3o0p7xzGK05hQPhQ5wLmsbUlLSI6op+6zLdgW/DN66bUlH0P+0JVW6S
Sender: "qperret via sendgmr" <qperret@luke.lon.corp.google.com>
X-Received: from luke.lon.corp.google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
 (user=qperret job=sendgmr) by 2002:adf:ebc5:: with SMTP id
 v5mr876894wrn.392.1605637003434; Tue, 17 Nov 2020 10:16:43 -0800 (PST)
Date:   Tue, 17 Nov 2020 18:15:50 +0000
In-Reply-To: <20201117181607.1761516-1-qperret@google.com>
Message-Id: <20201117181607.1761516-11-qperret@google.com>
Mime-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [RFC PATCH 10/27] KVM: arm64: Introduce an early Hyp page allocator
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

With nVHE, the host currently creates all s1 hypervisor mappings at EL1
during boot, installs them at EL2, and extends them as required (e.g.
when creating a new VM). But in a world where the host is no longer
trusted, it cannot have full control over the code mapped in the
hypervisor.

In preparation for enabling the hypervisor to create its own s1 mappings
during boot, introduce an early page allocator, with minimal
functionality. This allocator is designed to be used only during early
bootstrap of the hyp code when memory protection is enabled, which will
then switch to using a full-fledged page allocator after init.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/kvm/hyp/include/nvhe/early_alloc.h | 14 +++++
 arch/arm64/kvm/hyp/include/nvhe/memory.h      | 24 ++++++++
 arch/arm64/kvm/hyp/nvhe/Makefile              |  2 +-
 arch/arm64/kvm/hyp/nvhe/early_alloc.c         | 60 +++++++++++++++++++
 arch/arm64/kvm/hyp/nvhe/psci-relay.c          |  5 +-
 5 files changed, 101 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/kvm/hyp/include/nvhe/early_alloc.h
 create mode 100644 arch/arm64/kvm/hyp/include/nvhe/memory.h
 create mode 100644 arch/arm64/kvm/hyp/nvhe/early_alloc.c

diff --git a/arch/arm64/kvm/hyp/include/nvhe/early_alloc.h b/arch/arm64/kvm/hyp/include/nvhe/early_alloc.h
new file mode 100644
index 000000000000..68ce2bf9a718
--- /dev/null
+++ b/arch/arm64/kvm/hyp/include/nvhe/early_alloc.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __KVM_HYP_EARLY_ALLOC_H
+#define __KVM_HYP_EARLY_ALLOC_H
+
+#include <asm/kvm_pgtable.h>
+
+void hyp_early_alloc_init(void *virt, unsigned long size);
+unsigned long hyp_early_alloc_nr_pages(void);
+void *hyp_early_alloc_page(void *arg);
+void *hyp_early_alloc_contig(unsigned int nr_pages);
+
+extern struct kvm_pgtable_mm_ops hyp_early_alloc_mm_ops;
+
+#endif /* __KVM_HYP_EARLY_ALLOC_H */
diff --git a/arch/arm64/kvm/hyp/include/nvhe/memory.h b/arch/arm64/kvm/hyp/include/nvhe/memory.h
new file mode 100644
index 000000000000..64c44c142c95
--- /dev/null
+++ b/arch/arm64/kvm/hyp/include/nvhe/memory.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __KVM_HYP_MEMORY_H
+#define __KVM_HYP_MEMORY_H
+
+#include <asm/page.h>
+
+#include <linux/types.h>
+
+extern s64 hyp_physvirt_offset;
+
+#define __hyp_pa(virt)	((phys_addr_t)(virt) + hyp_physvirt_offset)
+#define __hyp_va(virt)	((void *)((phys_addr_t)(virt) - hyp_physvirt_offset))
+
+static inline void *hyp_phys_to_virt(phys_addr_t phys)
+{
+	return __hyp_va(phys);
+}
+
+static inline phys_addr_t hyp_virt_to_phys(void *addr)
+{
+	return __hyp_pa(addr);
+}
+
+#endif /* __KVM_HYP_MEMORY_H */
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 590fdefb42dd..1fc0684a7678 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -10,7 +10,7 @@ lib-objs := clear_page.o copy_page.o memcpy.o memset.o
 lib-objs := $(addprefix ../../../lib/, $(lib-objs))
 
 obj-y := timer-sr.o sysreg-sr.o debug-sr.o switch.o tlb.o hyp-init.o host.o \
-	 hyp-main.o hyp-smp.o psci-relay.o
+	 hyp-main.o hyp-smp.o psci-relay.o early_alloc.o
 obj-y += ../vgic-v3-sr.o ../aarch32.o ../vgic-v2-cpuif-proxy.o ../entry.o \
 	 ../fpsimd.o ../hyp-entry.o ../exception.o
 obj-y += $(lib-objs)
diff --git a/arch/arm64/kvm/hyp/nvhe/early_alloc.c b/arch/arm64/kvm/hyp/nvhe/early_alloc.c
new file mode 100644
index 000000000000..de4c45662970
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/early_alloc.c
@@ -0,0 +1,60 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 Google LLC
+ * Author: Quentin Perret <qperret@google.com>
+ */
+
+#include <asm/kvm_pgtable.h>
+
+#include <nvhe/memory.h>
+
+struct kvm_pgtable_mm_ops hyp_early_alloc_mm_ops;
+s64 __ro_after_init hyp_physvirt_offset;
+
+static unsigned long base;
+static unsigned long end;
+static unsigned long cur;
+
+unsigned long hyp_early_alloc_nr_pages(void)
+{
+	return (cur - base) >> PAGE_SHIFT;
+}
+
+extern void clear_page(void *to);
+
+void *hyp_early_alloc_contig(unsigned int nr_pages)
+{
+	unsigned long ret = cur, i, p;
+
+	if (!nr_pages)
+		return NULL;
+
+	cur += nr_pages << PAGE_SHIFT;
+	if (cur > end) {
+		cur = ret;
+		return NULL;
+	}
+
+	for (i = 0; i < nr_pages; i++) {
+		p = ret + (i << PAGE_SHIFT);
+		clear_page((void *)(p));
+	}
+
+	return (void *)ret;
+}
+
+void *hyp_early_alloc_page(void *arg)
+{
+	return hyp_early_alloc_contig(1);
+}
+
+void hyp_early_alloc_init(unsigned long virt, unsigned long size)
+{
+	base = virt;
+	end = virt + size;
+	cur = virt;
+
+	hyp_early_alloc_mm_ops.zalloc_page = hyp_early_alloc_page;
+	hyp_early_alloc_mm_ops.phys_to_virt = hyp_phys_to_virt;
+	hyp_early_alloc_mm_ops.virt_to_phys = hyp_virt_to_phys;
+}
diff --git a/arch/arm64/kvm/hyp/nvhe/psci-relay.c b/arch/arm64/kvm/hyp/nvhe/psci-relay.c
index 313ef42f0eab..dbe57ae84a0c 100644
--- a/arch/arm64/kvm/hyp/nvhe/psci-relay.c
+++ b/arch/arm64/kvm/hyp/nvhe/psci-relay.c
@@ -14,6 +14,8 @@
 #include <kvm/arm_psci.h>
 #include <uapi/linux/psci.h>
 
+#include <nvhe/memory.h>
+
 #define INVALID_CPU_ID UINT_MAX
 
 extern char __kvm_hyp_cpu_entry[];
@@ -21,9 +23,6 @@ extern char __kvm_hyp_cpu_entry[];
 /* Config options set by the host. */
 u32 __ro_after_init kvm_host_psci_version = PSCI_VERSION(0, 0);
 u32 __ro_after_init kvm_host_psci_function_id[PSCI_FN_MAX];
-s64 __ro_after_init hyp_physvirt_offset;
-
-#define __hyp_pa(x) ((phys_addr_t)((x)) + hyp_physvirt_offset)
 
 struct kvm_host_psci_state {
 	atomic_t pending_on;
-- 
2.29.2.299.gdc1121823c-goog

