Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A021B2B6CC2
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:16:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730589AbgKQSQZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:16:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726731AbgKQSQY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:16:24 -0500
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3505C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:24 -0800 (PST)
Received: by mail-qv1-xf49.google.com with SMTP id ek3so7956048qvb.0
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=BJadavlyJaEECXi/UfC92ghmWl3ZHk3QkybvjorYO/E=;
        b=Dnk6DEKLEHkZgTwkTbD6MYFgmWYFpJl2OGFyj4gCuoFYePt7Mtzuqdl8/Pq1pvD11U
         BWX8ZkLWbm00UHzCwQKUlwmt7cxlXEikfwIeaywi0jAmubiAVQC6UFZRSD64nhv4OajC
         8GM+OO1cEmHVMjDnBj1yjfr+CpFs5FuisgZcCrst6Kti8soVn7OtELYLgmoHevMNGj7L
         Ui7OZS+hF5d9GnfYGHSfJS66fNDOL0URBhlRZdoDaUHxQZNAySSvA8fmrx/lkyK/2roN
         5HV6l22AiuuUqQ38FO7K47r4nUDftLLbmFziAUUXdVz5RHqS++6+XcMJfWYt3sxg7qBB
         Li+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=BJadavlyJaEECXi/UfC92ghmWl3ZHk3QkybvjorYO/E=;
        b=NyYNztUdPlYEGqyzvGTyDGfjf7+1aqmNtPKBG5sp64keWToDmG1YNo0waF6G/agJG9
         jIvru7GAAsOyA/wbeBvQ3VVVE+47HRceC8c76yVFK1TYZmtBfOL9t+gpHt+R/l1HjUsS
         xzdguYa3ndgped5RAUP3rnzSnPr2xV3v1YlsQ8m8G1h+6uqyILrB6yIjOnfL5h04Y/Hz
         u7dpnlTUYb8vmraZ50FfWn/mN7jMJoZpWJUrAVM1qlHVpa+UOqPJ7aq8S5LMJoSkOA04
         Bqr874BxOEcB+t1dPIVfZpFYljKjE6gC4uNRikP86giZn4wPpU6K+7sKGDuiG7/Dju+y
         /01A==
X-Gm-Message-State: AOAM530d3SAoRA2i1Cb+t06jebZQn5m+ZKpJ5iG9s+9FEk5HCkMOMps3
        OgRymcPv21uryIawLe5tqQxeKFqSJf7Y
X-Google-Smtp-Source: ABdhPJwADVZ7KA4lluf+rS88dHojtzpcrwFUrsFZ5Z/Kf+n3XgZdS9/NeT5dfwme4Jn7l/egpgFYp8Qa6c6N
Sender: "qperret via sendgmr" <qperret@luke.lon.corp.google.com>
X-Received: from luke.lon.corp.google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
 (user=qperret job=sendgmr) by 2002:a0c:cd92:: with SMTP id
 v18mr884407qvm.47.1605636983901; Tue, 17 Nov 2020 10:16:23 -0800 (PST)
Date:   Tue, 17 Nov 2020 18:15:42 +0000
In-Reply-To: <20201117181607.1761516-1-qperret@google.com>
Message-Id: <20201117181607.1761516-3-qperret@google.com>
Mime-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [RFC PATCH 02/27] KVM: arm64: Link position-independent string
 routines into .hyp.text
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

From: Will Deacon <will@kernel.org>

Pull clear_page(), copy_page(), memcpy() and memset() into the nVHE hyp
code and ensure that we always execute the '__pi_' entry point on the
offchance that it changes in future.

[ qperret: Commit title nits ]

Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/kernel/image-vars.h   | 11 +++++++++++
 arch/arm64/kvm/hyp/nvhe/Makefile |  4 ++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 8539f34d7538..dd8ccc9efb6a 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -105,6 +105,17 @@ KVM_NVHE_ALIAS(__stop___kvm_ex_table);
 /* Array containing bases of nVHE per-CPU memory regions. */
 KVM_NVHE_ALIAS(kvm_arm_hyp_percpu_base);
 
+/* Position-independent library routines */
+__kvm_nvhe_clear_page			= __kvm_nvhe___pi_clear_page;
+__kvm_nvhe_copy_page			= __kvm_nvhe___pi_copy_page;
+__kvm_nvhe_memcpy			= __kvm_nvhe___pi_memcpy;
+__kvm_nvhe_memset			= __kvm_nvhe___pi_memset;
+
+#ifdef CONFIG_KASAN
+__kvm_nvhe___memcpy			= __kvm_nvhe___pi_memcpy;
+__kvm_nvhe___memset			= __kvm_nvhe___pi_memset;
+#endif
+
 #endif /* CONFIG_KVM */
 
 #endif /* __ARM64_KERNEL_IMAGE_VARS_H */
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 1f1e351c5fe2..590fdefb42dd 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -6,10 +6,14 @@
 asflags-y := -D__KVM_NVHE_HYPERVISOR__
 ccflags-y := -D__KVM_NVHE_HYPERVISOR__
 
+lib-objs := clear_page.o copy_page.o memcpy.o memset.o
+lib-objs := $(addprefix ../../../lib/, $(lib-objs))
+
 obj-y := timer-sr.o sysreg-sr.o debug-sr.o switch.o tlb.o hyp-init.o host.o \
 	 hyp-main.o hyp-smp.o psci-relay.o
 obj-y += ../vgic-v3-sr.o ../aarch32.o ../vgic-v2-cpuif-proxy.o ../entry.o \
 	 ../fpsimd.o ../hyp-entry.o ../exception.o
+obj-y += $(lib-objs)
 
 ##
 ## Build rules for compiling nVHE hyp code
-- 
2.29.2.299.gdc1121823c-goog

