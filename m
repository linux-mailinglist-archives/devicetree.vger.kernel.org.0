Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 900E72EF267
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 13:19:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727895AbhAHMRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 07:17:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727760AbhAHMRH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 07:17:07 -0500
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11C3DC061240
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 04:15:57 -0800 (PST)
Received: by mail-qk1-x749.google.com with SMTP id e25so9162955qka.3
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 04:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=Qr6fo9oQ1pXE+2ggRpUPc27A93CFNZ1q8V/bSIAa7vQ=;
        b=Lgsjd8FEXR/txZoyV8WuF4f0d4YJhY9e1uIwY2ZKBxuqtEnQJg33daGu1ILE6X1yVm
         3bmI+xMaWKSUxl2SagC/g4n5Md9L7G3vxikeo+mdAU7BfccT5W+kxzU5S7UG3feLKbme
         ERxijuVD+57qQr/KtwpIs8VkMV1mg6FWqyYzHjswMh2hCX94sLdVeK/2UtrPFh000pBo
         Wat+4kpdcMUp41zMURoOa/5m18zhBYzly85HHjcR5ZjnghiaHqmXLElzNX1WkR3dAuv3
         zJfl09gvrPAlyBaybMTEqu+Yz+UH5M+Wv3AdrSOkrKLW83DqbiuFH6Ipyx6juV7+q36G
         PnNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Qr6fo9oQ1pXE+2ggRpUPc27A93CFNZ1q8V/bSIAa7vQ=;
        b=HVyU3hkfoLiqUUa2WDyjzi8mfqfJxR2Tun3dP9hHi5OLJAZrP/SLZn6rnbR1oy0tlQ
         zAYwOfanCl9zJzvRUyqEipbTR8G90sgerrSwocjrNSv59eRNwLC4GYuwxUSq9zvsz6DS
         rUtGNW29bc6nYtjqhPjYxPHV/VdvOUhaNYotRLBU2El9HMnz6q392z1zwyXNai73PSOV
         VO1H+3VgRXld7EaFc8oP7H90q23dzBIhCAfk7yC9xmJN9Y0bXk5fAoqzvwR4rOeiiDYi
         hL7GL3kzAXPPtoOJHq3j9gTmgijOAvRKer0uMZQOOSWpnTo5PvOOUFpu+lnFcc8kA0Y/
         4sIw==
X-Gm-Message-State: AOAM533EK38GxFVh1d961Gmk3yndeW37nwI+fOdD5BbXNB1qiUarM9X3
        kY2AkgVORxL+g+9NbpGYiAlmXflxmsOT
X-Google-Smtp-Source: ABdhPJzRr7svgpB722+nCLZgCDSVanauE2weLVt/XbLAdLhD6Eu5KBqqXCwGoYrf6841yPmBUrW5blfOV65g
Sender: "qperret via sendgmr" <qperret@r2d2-qp.c.googlers.com>
X-Received: from r2d2-qp.c.googlers.com ([fda3:e722:ac3:10:28:9cb1:c0a8:1652])
 (user=qperret job=sendgmr) by 2002:a0c:edab:: with SMTP id
 h11mr3057028qvr.23.1610108156221; Fri, 08 Jan 2021 04:15:56 -0800 (PST)
Date:   Fri,  8 Jan 2021 12:15:12 +0000
In-Reply-To: <20210108121524.656872-1-qperret@google.com>
Message-Id: <20210108121524.656872-15-qperret@google.com>
Mime-Version: 1.0
References: <20210108121524.656872-1-qperret@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [RFC PATCH v2 14/26] KVM: arm64: Factor out vector address calculation
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

In order to re-map the guest vectors at EL2 when pKVM is enabled,
refactor __kvm_vector_slot2idx() and kvm_init_vector_slot() to move all
the address calculation logic in a static inline function.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/include/asm/kvm_mmu.h | 8 ++++++++
 arch/arm64/kvm/arm.c             | 9 +--------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index e52d82aeadca..d7ebd73ec86f 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -195,6 +195,14 @@ phys_addr_t kvm_mmu_get_httbr(void);
 phys_addr_t kvm_get_idmap_vector(void);
 int kvm_mmu_init(void);
 
+static inline void *__kvm_vector_slot2addr(void *base,
+					   enum arm64_hyp_spectre_vector slot)
+{
+	int idx = slot - (slot != HYP_VECTOR_DIRECT);
+
+	return base + (idx * SZ_2K);
+}
+
 struct kvm;
 
 #define kvm_flush_dcache_to_poc(a,l)	__flush_dcache_area((a), (l))
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 9fd769349e9e..6af9204bcd5b 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -1346,16 +1346,9 @@ static unsigned long nvhe_percpu_order(void)
 /* A lookup table holding the hypervisor VA for each vector slot */
 static void *hyp_spectre_vector_selector[BP_HARDEN_EL2_SLOTS];
 
-static int __kvm_vector_slot2idx(enum arm64_hyp_spectre_vector slot)
-{
-	return slot - (slot != HYP_VECTOR_DIRECT);
-}
-
 static void kvm_init_vector_slot(void *base, enum arm64_hyp_spectre_vector slot)
 {
-	int idx = __kvm_vector_slot2idx(slot);
-
-	hyp_spectre_vector_selector[slot] = base + (idx * SZ_2K);
+	hyp_spectre_vector_selector[slot] = __kvm_vector_slot2addr(base, slot);
 }
 
 static int kvm_init_vector_slots(void)
-- 
2.30.0.284.gd98b1dd5eaa7-goog

