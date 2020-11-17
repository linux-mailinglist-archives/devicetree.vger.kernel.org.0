Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DAC82B6D10
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:20:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731251AbgKQSSD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:18:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730675AbgKQSQc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:16:32 -0500
Received: from mail-ed1-x54a.google.com (mail-ed1-x54a.google.com [IPv6:2a00:1450:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07BFAC061A47
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:32 -0800 (PST)
Received: by mail-ed1-x54a.google.com with SMTP id l24so9977939edt.16
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=NAAv66aNUaltEt0mONTaW9BQUFoOFbMtL1i8hZDZuGs=;
        b=lNGeNA+zGfHwCaxYy0TrJSE1pl2oq3vvwMkxyPjR74vzMfWQMK1AHp2yCHnWdNCzXT
         SKJ0EyWSPKtiPU3Wh2G9XDOR5Y1cjmB7NRaJEONE0OXpf5p3XNmXzb90URbBEsu0OiMG
         KuXcCgSExkU9INz54eIwLV4KcmNLH/I9a0/DDvClup2XnMQzTU+/aAnYh5EhesGt/A7s
         qFxI65OjN5RHOHpWYJu5e+gN57HAzMgmW6bGR1CZy3/rKzcs8kJUQWw+4bFdSnzI54qo
         Py6oernt+i8KqdH6xBSdPV2GkNn6JTGC8WeFqhURYfWCHRkbLG4rP+XZYrsjO7KLM2cu
         CPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=NAAv66aNUaltEt0mONTaW9BQUFoOFbMtL1i8hZDZuGs=;
        b=eB4Zu2OYjvuR+DI593o5bQO6d0FHT399EUihKREG8inshRqZIApGtAC0TBVTFSm2uK
         UyEkttV3iIgkR+WDIaLGUJQD7bFjt0D/xAR/fPjmgVbuifn8qelpB3/smcQ/MAoMDfR8
         5VLCkqAVQ/ksjUvIZaJUO8JWql4eVEE65+0iIygxzxBtnhntJfGzaD8ulmYGL/uMLQ25
         AYyjnPFen42s1QAZTmadz7uPa6zOU+yCAKowlMigVch5ORbQdFvZuBLqSJZNm+dzOspl
         ETC5955K8X7ttgPTNQXUmH+hDRRcYrnBJU5NOfZX76FRSBXxSnvGEZi2MfssA0RJe1XO
         jziw==
X-Gm-Message-State: AOAM5313J0iTHtf8ix1IAa7fuT3FLtjgZtmdlQYvqQoDOlqS6dF/7S5p
        67Z0k5eRuPZGDLQqedhRHU5tIGeXORXj
X-Google-Smtp-Source: ABdhPJwRKjykeVPq3BUBGAvQxs6YtxOlWZ1XX97g5ZVMcWNcwBONleeq9otY9dDDVDJIIzj6jTLQHcAJgIdB
Sender: "qperret via sendgmr" <qperret@luke.lon.corp.google.com>
X-Received: from luke.lon.corp.google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
 (user=qperret job=sendgmr) by 2002:a17:906:6414:: with SMTP id
 d20mr19849332ejm.82.1605636990564; Tue, 17 Nov 2020 10:16:30 -0800 (PST)
Date:   Tue, 17 Nov 2020 18:15:45 +0000
In-Reply-To: <20201117181607.1761516-1-qperret@google.com>
Message-Id: <20201117181607.1761516-6-qperret@google.com>
Mime-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [RFC PATCH 05/27] KVM: arm64: Avoid free_page() in page-table allocator
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

Currently, the KVM page-table allocator uses a mix of put_page() and
free_page() calls depending on the context even though page-allocation
is always achieved using variants of __get_free_page().

Make the code consitent by using put_page() throughout, and reduce the
memory management API surface used by the page-table code. This will
ease factoring out page-alloction from pgtable.c, which is a
pre-requisite to creating page-tables at EL2.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/kvm/hyp/pgtable.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kvm/hyp/pgtable.c b/arch/arm64/kvm/hyp/pgtable.c
index 0271b4a3b9fe..d7122c5eac24 100644
--- a/arch/arm64/kvm/hyp/pgtable.c
+++ b/arch/arm64/kvm/hyp/pgtable.c
@@ -410,7 +410,7 @@ int kvm_pgtable_hyp_init(struct kvm_pgtable *pgt, u32 va_bits)
 static int hyp_free_walker(u64 addr, u64 end, u32 level, kvm_pte_t *ptep,
 			   enum kvm_pgtable_walk_flags flag, void * const arg)
 {
-	free_page((unsigned long)kvm_pte_follow(*ptep));
+	put_page(virt_to_page(kvm_pte_follow(*ptep)));
 	return 0;
 }
 
@@ -422,7 +422,7 @@ void kvm_pgtable_hyp_destroy(struct kvm_pgtable *pgt)
 	};
 
 	WARN_ON(kvm_pgtable_walk(pgt, 0, BIT(pgt->ia_bits), &walker));
-	free_page((unsigned long)pgt->pgd);
+	put_page(virt_to_page(pgt->pgd));
 	pgt->pgd = NULL;
 }
 
@@ -551,7 +551,7 @@ static int stage2_map_walk_table_post(u64 addr, u64 end, u32 level,
 	if (!data->anchor)
 		return 0;
 
-	free_page((unsigned long)kvm_pte_follow(*ptep));
+	put_page(virt_to_page(kvm_pte_follow(*ptep)));
 	put_page(virt_to_page(ptep));
 
 	if (data->anchor == ptep) {
@@ -674,7 +674,7 @@ static int stage2_unmap_walker(u64 addr, u64 end, u32 level, kvm_pte_t *ptep,
 	}
 
 	if (childp)
-		free_page((unsigned long)childp);
+		put_page(virt_to_page(childp));
 
 	return 0;
 }
@@ -871,7 +871,7 @@ static int stage2_free_walker(u64 addr, u64 end, u32 level, kvm_pte_t *ptep,
 	put_page(virt_to_page(ptep));
 
 	if (kvm_pte_table(pte, level))
-		free_page((unsigned long)kvm_pte_follow(pte));
+		put_page(virt_to_page(kvm_pte_follow(pte)));
 
 	return 0;
 }
-- 
2.29.2.299.gdc1121823c-goog

