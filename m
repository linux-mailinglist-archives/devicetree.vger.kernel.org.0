Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BB6A2EF23A
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 13:17:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726418AbhAHMQw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 07:16:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727484AbhAHMQv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 07:16:51 -0500
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com [IPv6:2607:f8b0:4864:20::84a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1059C0612FE
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 04:15:35 -0800 (PST)
Received: by mail-qt1-x84a.google.com with SMTP id e14so8137861qtr.8
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 04:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=RWcnIk+Zz+pG3Av2Dxn/kb2+XtU0B6nl5U7IxSgo4iw=;
        b=wNDXx/sD5GcSm/A2PTYKJfLmxpXERQHCwjVkRWUnY9K+2OAVeVfYr/UCXk9mDcjoMp
         vJKYCy75bWYTCgFQ1ptMnhasFa5sou7N8b/rWBAkDQEQ11itqD0Ptok7bcwYArwv8MTT
         9TdaY+L2RigUm80IdI2+QXKM7SSGNfVKsoakb54xiYsDiKfTpVORSAlTWKiRhFJiYmI7
         ft3aZUjZ78GH8luL/PoDAYpN0RFLmsGt7EKO9aYJyfcBeHWNAsof0F5HnfdZV4a9lKUP
         s1fPLO8kVOYYtT/nh9NctbbbsnRbvfWLwrHL6PED18gm4ShxMOZWiyUWpfdmAM78/ZM1
         x0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=RWcnIk+Zz+pG3Av2Dxn/kb2+XtU0B6nl5U7IxSgo4iw=;
        b=alih5Z/3Od8cRs7FP6qPNFzYfnUCzB5qt8c07k1Q/dDdsH8TvzWzKfvX2Aq2txxUvA
         xK4nt3nWYjyhncw0cvKj0Rj42YA3CxgFKrtgMdMeDG0+qj5JVs02ukwS+veeEtbF0rSe
         4c29gEKdmi3eYxoFXFSJzzAXcokzP7rvOkZxjGdQiTuyNTs8VaxwGRT6JsB8y+Jlkt90
         M14lRUtZgDgOeI/uBZHEeN+D+vlZtd1FM0yJIuKjCm9xfmDzsbMY3WTs7ZSEYCvyR/eR
         18NigLA1DHU1pPDJPfc+xhlkbOgUNvSAi5k3SUoQK+qHb4KjLp6+D7nXlsHgxNI3zwe/
         3A+g==
X-Gm-Message-State: AOAM531qc4LAYTsnQy9fDGVVilm0cdhikLtJTAwNsbsrcwx03X9+qbPZ
        K/YwjGBECvS36eJEgkR6/tWvjF+I+bMc
X-Google-Smtp-Source: ABdhPJzjzlzr8QnoGpMUomUK/uLWkut64kFG4OYSU3shcMs3B8KGc+9cpRoXp++qeovMbvcWCVJNIGFBfZa5
Sender: "qperret via sendgmr" <qperret@r2d2-qp.c.googlers.com>
X-Received: from r2d2-qp.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:1652])
 (user=qperret job=sendgmr) by 2002:a0c:f812:: with SMTP id
 r18mr3189415qvn.39.1610108135126; Fri, 08 Jan 2021 04:15:35 -0800 (PST)
Date:   Fri,  8 Jan 2021 12:15:02 +0000
In-Reply-To: <20210108121524.656872-1-qperret@google.com>
Message-Id: <20210108121524.656872-5-qperret@google.com>
Mime-Version: 1.0
References: <20210108121524.656872-1-qperret@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [RFC PATCH v2 04/26] KVM: arm64: Initialize kvm_nvhe_init_params early
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

Move the initialization of kvm_nvhe_init_params in a dedicated function
that is run early, and only once during KVM init, rather than every time
the KVM vectors are set and reset.

This also opens the opportunity for the hypervisor to change the init
structs during boot, hence simplifying the replacement of host-provided
page-tables and stacks by the ones the hypervisor will create for
itself.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/kvm/arm.c | 28 ++++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 04c44853b103..3ac0f3425833 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -1383,21 +1383,17 @@ static int kvm_init_vector_slots(void)
 	return 0;
 }
 
-static void cpu_init_hyp_mode(void)
+static void cpu_prepare_hyp_mode(int cpu)
 {
-	struct kvm_nvhe_init_params *params = this_cpu_ptr_nvhe_sym(kvm_init_params);
-	struct arm_smccc_res res;
+	struct kvm_nvhe_init_params *params = per_cpu_ptr_nvhe_sym(kvm_init_params, cpu);
 	unsigned long tcr;
 
-	/* Switch from the HYP stub to our own HYP init vector */
-	__hyp_set_vectors(kvm_get_idmap_vector());
-
 	/*
 	 * Calculate the raw per-cpu offset without a translation from the
 	 * kernel's mapping to the linear mapping, and store it in tpidr_el2
 	 * so that we can use adr_l to access per-cpu variables in EL2.
 	 */
-	params->tpidr_el2 = (unsigned long)this_cpu_ptr_nvhe_sym(__per_cpu_start) -
+	params->tpidr_el2 = (unsigned long)per_cpu_ptr_nvhe_sym(__per_cpu_start, cpu) -
 			    (unsigned long)kvm_ksym_ref(CHOOSE_NVHE_SYM(__per_cpu_start));
 
 	params->mair_el2 = read_sysreg(mair_el1);
@@ -1421,7 +1417,7 @@ static void cpu_init_hyp_mode(void)
 	tcr |= (idmap_t0sz & GENMASK(TCR_TxSZ_WIDTH - 1, 0)) << TCR_T0SZ_OFFSET;
 	params->tcr_el2 = tcr;
 
-	params->stack_hyp_va = kern_hyp_va(__this_cpu_read(kvm_arm_hyp_stack_page) + PAGE_SIZE);
+	params->stack_hyp_va = kern_hyp_va(per_cpu(kvm_arm_hyp_stack_page, cpu) + PAGE_SIZE);
 	params->pgd_pa = kvm_mmu_get_httbr();
 
 	/*
@@ -1429,6 +1425,15 @@ static void cpu_init_hyp_mode(void)
 	 * be read while the MMU is off.
 	 */
 	kvm_flush_dcache_to_poc(params, sizeof(*params));
+}
+
+static void cpu_init_hyp_mode(void)
+{
+	struct kvm_nvhe_init_params *params;
+	struct arm_smccc_res res;
+
+	/* Switch from the HYP stub to our own HYP init vector */
+	__hyp_set_vectors(kvm_get_idmap_vector());
 
 	/*
 	 * Call initialization code, and switch to the full blown HYP code.
@@ -1437,6 +1442,7 @@ static void cpu_init_hyp_mode(void)
 	 * cpus_have_const_cap() wrapper.
 	 */
 	BUG_ON(!system_capabilities_finalized());
+	params = this_cpu_ptr_nvhe_sym(kvm_init_params);
 	arm_smccc_1_1_hvc(KVM_HOST_SMCCC_FUNC(__kvm_hyp_init), virt_to_phys(params), &res);
 	WARN_ON(res.a0 != SMCCC_RET_SUCCESS);
 
@@ -1807,6 +1813,12 @@ static int init_hyp_mode(void)
 			goto out_err;
 	}
 
+	/*
+	 * Prepare the CPU initialization parameters
+	 */
+	for_each_possible_cpu(cpu)
+		cpu_prepare_hyp_mode(cpu);
+
 	return 0;
 
 out_err:
-- 
2.30.0.284.gd98b1dd5eaa7-goog

