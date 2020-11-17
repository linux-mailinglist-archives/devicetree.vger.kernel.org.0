Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDCB62B6CCC
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:16:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730832AbgKQSQk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:16:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729124AbgKQSQk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:16:40 -0500
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F36AC0617A6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:38 -0800 (PST)
Received: by mail-qk1-x749.google.com with SMTP id d206so5341670qkc.23
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=lh2wfGLmmAYfouTWYrt95KjC1/ZF6WAi7ZBhV5AjDD0=;
        b=nNRoD2M9XXWoWM8NgpAlnEhXBoYa9xn/smGakcLCZJxBll99tRVH7XlZ6kpAfLmDzS
         YEBOp/igtTiXRZTz+j56GXi5pzEcTsxtC69P2Bv0KA1AZUyCDWPY853b0xcR0BXqNsjY
         zzoThHvrbMLTNPm/8mNuW8sATGGuqFD6NUWfoAWRd9Krb9CmjdTe3yBuDe1UP2ALLPRo
         K9J+hEQ46hZWlOQ5xsj57z6jJFoBPfuEglscL+ZMWfWKy3HK4Aci7rdN/cI80VZX34fB
         Q8O1Od1+22A+zc26YZLJls0NZORus1Ag2kLC1/y6w0rVECW+qKDUHu2XDuWGww78dUnJ
         85Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=lh2wfGLmmAYfouTWYrt95KjC1/ZF6WAi7ZBhV5AjDD0=;
        b=EHFtIbshHkJgXHtqnBzPfrSwUmThqX8aCnQZe6zdbmH/QxxD8npkx2kv6Yl6gOzMjo
         G0BMbp0wQtlaX2aJWt2awPfuYO2bKicNyKoTu8y6XhpmFEluK2WmxDMNj4ae4hr/PObG
         K1CJAfMYcdMb4D/IY3u73/IAV38wlXViItdlNdUPM+dJaTeMVvD8hUcN7X3DugZitNvB
         JHdLcybOvq6ZZF55fTyWU+9OGs7BgnaKEUh9ugH3+9qjieTDEKLGPREYE1MNy+Dfu+FZ
         kcr/EezB0xFXIHKbgHimuDTi3lxByigN3LzLxzQtXb5sMWJBUvaG5ZM6rIt00z1LZH5S
         Q7Tg==
X-Gm-Message-State: AOAM530Vn4ncc9s5/jo/yV2jSDQOWRN7Gn0Gl0+QyVXRa+zgN2+K9XN3
        iGc/SykO8OHAkT+eikWnE6NpFgCQPeGo
X-Google-Smtp-Source: ABdhPJw9IfFuggDXuw8zeDBboBwHrDiqLV2n/32la8Pmpb9DK5T8ZLl8MJjnvcQGvWKpPM+6LkFNsSmTdWC9
Sender: "qperret via sendgmr" <qperret@luke.lon.corp.google.com>
X-Received: from luke.lon.corp.google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
 (user=qperret job=sendgmr) by 2002:a0c:80e1:: with SMTP id
 88mr995546qvb.10.1605636997650; Tue, 17 Nov 2020 10:16:37 -0800 (PST)
Date:   Tue, 17 Nov 2020 18:15:48 +0000
In-Reply-To: <20201117181607.1761516-1-qperret@google.com>
Message-Id: <20201117181607.1761516-9-qperret@google.com>
Mime-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [RFC PATCH 08/27] KVM: arm64: Make kvm_call_hyp() a function call at Hyp
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

kvm_call_hyp() has some logic to issue a function call or a hypercall
depending the EL at which the kernel is running. However, all the code
compiled under __KVM_NVHE_HYPERVISOR__ is guaranteed to run only at EL2,
and in this case a simple function call is needed.

Add ifdefery to kvm_host.h to symplify kvm_call_hyp() in .hyp.text.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/include/asm/kvm_host.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index ac11adab6602..7a5d5f4b3351 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -557,6 +557,7 @@ int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
 void kvm_arm_halt_guest(struct kvm *kvm);
 void kvm_arm_resume_guest(struct kvm *kvm);
 
+#ifndef __KVM_NVHE_HYPERVISOR__
 #define kvm_call_hyp_nvhe(f, ...)						\
 	({								\
 		struct arm_smccc_res res;				\
@@ -596,6 +597,11 @@ void kvm_arm_resume_guest(struct kvm *kvm);
 									\
 		ret;							\
 	})
+#else /* __KVM_NVHE_HYPERVISOR__ */
+#define kvm_call_hyp(f, ...) f(__VA_ARGS__)
+#define kvm_call_hyp_ret(f, ...) f(__VA_ARGS__)
+#define kvm_call_hyp_nvhe(f, ...) f(__VA_ARGS__)
+#endif /* __KVM_NVHE_HYPERVISOR__ */
 
 void force_vm_exit(const cpumask_t *mask);
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
-- 
2.29.2.299.gdc1121823c-goog

