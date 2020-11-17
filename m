Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F6FD2B6CCB
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:16:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730853AbgKQSQm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:16:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730812AbgKQSQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:16:42 -0500
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com [IPv6:2607:f8b0:4864:20::f4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FCCDC0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:40 -0800 (PST)
Received: by mail-qv1-xf4a.google.com with SMTP id ek3so7956533qvb.0
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=TDLolWJ6DLDdLZxFLwTPZoAbRqc8wO9K1ZVQwJmhgQI=;
        b=E0fCuokET/iSPfCmN0hv1bpwVzG19gOi60bqbVg4tbU/MXV8JkAYrWoJTWsyKtcZmb
         NCzh+HSrGM/VrpPjSSavb+jAMioMF4i51wNcX3ISkV63+fEwxFrZc6vXKw/yNZVQcwCy
         05Hvg2hX6rvUiRO1FEufam8DDHknNkWZPYw2fzBkTd8AuB8YloMYzzbBHwuePeZao66I
         UYUGCo9WEpMJep8NfwFKG2NCoQu+vd/Oqeqg/bAdwkpHhbpnuHl+hVrGxKJS3KlbgYWl
         e+Gk+eHeUbd/8E9fdjlIquCJgsoKzgzbJUq0eQYXqTuK5nk5LEhfuIzVSQAxYT+jwcTN
         pZ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=TDLolWJ6DLDdLZxFLwTPZoAbRqc8wO9K1ZVQwJmhgQI=;
        b=I3Hf2iQUVZs+/yAZMkkRKBFkKlZBKIn+icGMaVvUOCqQhAnSqZzbfdIjVRS0jiwQ02
         pVPXFMK4VAiOdH0Szwf/dccLYmjn6NkFNxaOAV1ZphB2FQN75YkecAMY+rJUC6ggdRQN
         TTz5ADbP137rzxBAKcc5RAGz/VQDwqniuCkQ7ApQPFiecZEj6J/0pNYbaYvEzZz0w5v3
         1Bke30L3yMkoZAYSW9Ll2EeUNrSgxnkMc0oiR+RNoZJ//ntOYRBXB1wqgt+ZTqvl/SLd
         2qZ2766MeZsh94GYKhYcS+XpEaOngmhMTW3dbNT1+KpyxwJmw9kvBq9gU8U8TbJNM6Nw
         pHJg==
X-Gm-Message-State: AOAM530r74X7tsTZcSXDqWSqVDsSaCBYybUBon/2x7XpRZSVSs4AMPYE
        tp3ZziPn6lb9Q1o3BrHUIr0BTBAnP/pD
X-Google-Smtp-Source: ABdhPJzbODkjl7s4UxQH0AkdtMhlkcj6CRSeDqE2+AHaFV3kAPIwJibRapqdnHmTcqcB2PiXnAFDr9sXfpa9
Sender: "qperret via sendgmr" <qperret@luke.lon.corp.google.com>
X-Received: from luke.lon.corp.google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
 (user=qperret job=sendgmr) by 2002:a0c:df08:: with SMTP id
 g8mr854334qvl.17.1605636999772; Tue, 17 Nov 2020 10:16:39 -0800 (PST)
Date:   Tue, 17 Nov 2020 18:15:49 +0000
In-Reply-To: <20201117181607.1761516-1-qperret@google.com>
Message-Id: <20201117181607.1761516-10-qperret@google.com>
Mime-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [RFC PATCH 09/27] KVM: arm64: Allow using kvm_nvhe_sym() in hyp code
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

In order to allow the usage of code shared by the host and the hyp in
static inline library function, allow the usage of kvm_nvhe_sym() at el2
by defaulting to the raw symbol name.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/include/asm/hyp_image.h | 4 ++++
 arch/arm64/include/asm/kvm_asm.h   | 4 ++--
 arch/arm64/kvm/arm.c               | 2 +-
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/hyp_image.h b/arch/arm64/include/asm/hyp_image.h
index daa1a1da539e..8b807b646b8f 100644
--- a/arch/arm64/include/asm/hyp_image.h
+++ b/arch/arm64/include/asm/hyp_image.h
@@ -7,11 +7,15 @@
 #ifndef __ARM64_HYP_IMAGE_H__
 #define __ARM64_HYP_IMAGE_H__
 
+#ifndef __KVM_NVHE_HYPERVISOR__
 /*
  * KVM nVHE code has its own symbol namespace prefixed with __kvm_nvhe_,
  * to separate it from the kernel proper.
  */
 #define kvm_nvhe_sym(sym)	__kvm_nvhe_##sym
+#else
+#define kvm_nvhe_sym(sym)	sym
+#endif
 
 #ifdef LINKER_SCRIPT
 
diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 1a86581e581e..e4934f5e4234 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -173,11 +173,11 @@ struct kvm_s2_mmu;
 DECLARE_KVM_NVHE_SYM(__kvm_hyp_init);
 DECLARE_KVM_NVHE_SYM(__kvm_hyp_host_vector);
 DECLARE_KVM_HYP_SYM(__kvm_hyp_vector);
-DECLARE_KVM_NVHE_SYM(__kvm_hyp_psci_cpu_entry);
 #define __kvm_hyp_init			CHOOSE_NVHE_SYM(__kvm_hyp_init)
 #define __kvm_hyp_host_vector		CHOOSE_NVHE_SYM(__kvm_hyp_host_vector)
 #define __kvm_hyp_vector		CHOOSE_HYP_SYM(__kvm_hyp_vector)
-#define __kvm_hyp_psci_cpu_entry	CHOOSE_NVHE_SYM(__kvm_hyp_psci_cpu_entry)
+
+void kvm_nvhe_sym(__kvm_hyp_psci_cpu_entry)(void);
 
 extern unsigned long kvm_arm_hyp_percpu_base[NR_CPUS];
 DECLARE_KVM_NVHE_SYM(__per_cpu_start);
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 882eb383bd75..391cf6753a13 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -1369,7 +1369,7 @@ static void cpu_prepare_hyp_mode(int cpu)
 
 	params->vector_hyp_va = kern_hyp_va((unsigned long)kvm_ksym_ref(__kvm_hyp_host_vector));
 	params->stack_hyp_va = kern_hyp_va(per_cpu(kvm_arm_hyp_stack_page, cpu) + PAGE_SIZE);
-	params->entry_hyp_va = kern_hyp_va((unsigned long)kvm_ksym_ref(__kvm_hyp_psci_cpu_entry));
+	params->entry_hyp_va = kern_hyp_va((unsigned long)kvm_ksym_ref_nvhe(__kvm_hyp_psci_cpu_entry));
 	params->pgd_pa = kvm_mmu_get_httbr();
 
 	/*
-- 
2.29.2.299.gdc1121823c-goog

