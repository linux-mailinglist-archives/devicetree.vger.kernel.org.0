Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4B3479EF02
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 18:42:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231420AbjIMQmy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 12:42:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230433AbjIMQm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 12:42:28 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 997E1358A
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:40:12 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-68fbd31d9deso3288688b3a.3
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694623212; x=1695228012; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qenuytjXSLiGJ5kC+qcQ9TcZYC4A59ZzfaqAy8GW1hM=;
        b=H4XWYjc2MD+KG0vjLWnsrzrg2b4+n08AoGCg9pQMzznVWmfe1mMIiUk3+IkRd6Hz/N
         sd5cAlWmtD+391/EBsYuRKccgj5JVpHL00NEsCNtApTX28nbr3gvY23WNbvJhGGjnLI6
         m+gvztalCbm1bbbtZ9GEx+w5L9d96J3N8wfoXNkq5BF5lszu5/AwmUF+ss2UuufewNnq
         xMHu2mo+MFsrg/90/ZzDN1o5OJeb4/rD0zmfEhZ8YxhY1E79JM7VdpjLdEtJNbFIY5rp
         WINErL+mA8QDvMg/soGiHVpCQi0vD9mmLJzbxu1hBiBAD5qVePyZcKdEglC3dcfoTtGL
         DzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694623212; x=1695228012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qenuytjXSLiGJ5kC+qcQ9TcZYC4A59ZzfaqAy8GW1hM=;
        b=DNVk0s0T3hfbkG0d9BKFSI3+DD4iTtXTMKKJvABa7Q/qPUnYF3G/5EReOC4g/+Mh1h
         wAOHAxyeYcv5Nskdjf05bcv6uAOt4nZmsO2DqZn2OxSLEE1yVlHY1HUgLaEta7eOIjPr
         n1wr27HfVrMueYkUhK1uU5f2Wt7NSsy1LBUpxJA0CNAdkqhxXgAtPmEx5mSnyLLNpWTY
         mN9Sa4U5qYRS66bLpc6Moyj8HoZoSM8VLwSMJgYzC0Ui2oOtIgCC+lSHerHxRTm0iwMT
         W5cpmSZKcU7ODDgzli6nZFAobc9m3LF4OYRF0ukA8i3Hz4POhEyEjjnFVuIisP9v3lbG
         b3BA==
X-Gm-Message-State: AOJu0YzufdDYLkH7m491UoonucXyriJqaQM2KNRbZjE3yHgP1mWz00GU
        ZfBRwkiempfwlZuh4GsErBDa9A==
X-Google-Smtp-Source: AGHT+IEdFy3Ow6J8ZnhgA5RICyAg1M67g+2y3qpcX9JXSprca6USli5lcOy8CCm03zHegv6l3xiriQ==
X-Received: by 2002:a05:6a20:d426:b0:14c:6cd9:bf9d with SMTP id il38-20020a056a20d42600b0014c6cd9bf9dmr2589416pzb.35.1694623212048;
        Wed, 13 Sep 2023 09:40:12 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id je15-20020a170903264f00b001b243a20f26sm10577756plb.273.2023.09.13.09.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 09:40:11 -0700 (PDT)
From:   Mayuresh Chitale <mchitale@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>
Cc:     Mayuresh Chitale <mchitale@ventanamicro.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Conor Dooley <conor@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v5 6/7] RISCV: KVM: Add sstateen0 context save/restore
Date:   Wed, 13 Sep 2023 22:09:04 +0530
Message-Id: <20230913163905.480819-7-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230913163905.480819-1-mchitale@ventanamicro.com>
References: <20230913163905.480819-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define sstateen0 and add sstateen0 save/restore for guest VCPUs.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/csr.h      |  1 +
 arch/riscv/include/asm/kvm_host.h |  8 ++++++++
 arch/riscv/kvm/vcpu.c             | 12 ++++++++++++
 3 files changed, 21 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 65b871dbf7e8..306a19a5509c 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -288,6 +288,7 @@
 #define CSR_STVEC		0x105
 #define CSR_SCOUNTEREN		0x106
 #define CSR_SENVCFG		0x10a
+#define CSR_SSTATEEN0		0x10c
 #define CSR_SSCRATCH		0x140
 #define CSR_SEPC		0x141
 #define CSR_SCAUSE		0x142
diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 1980be6a3e79..0eefd9c991ae 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -170,6 +170,10 @@ struct kvm_vcpu_config {
 	u64 hstateen0;
 };
 
+struct kvm_vcpu_smstateen_csr {
+	unsigned long sstateen0;
+};
+
 struct kvm_vcpu_arch {
 	/* VCPU ran at least once */
 	bool ran_atleast_once;
@@ -190,6 +194,7 @@ struct kvm_vcpu_arch {
 	unsigned long host_stvec;
 	unsigned long host_scounteren;
 	unsigned long host_senvcfg;
+	unsigned long host_sstateen0;
 
 	/* CPU context of Host */
 	struct kvm_cpu_context host_context;
@@ -200,6 +205,9 @@ struct kvm_vcpu_arch {
 	/* CPU CSR context of Guest VCPU */
 	struct kvm_vcpu_csr guest_csr;
 
+	/* CPU Smstateen CSR context of Guest VCPU */
+	struct kvm_vcpu_smstateen_csr smstateen_csr;
+
 	/* CPU context upon Guest VCPU reset */
 	struct kvm_cpu_context guest_reset_context;
 
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 3013ae30c3af..c061a1c5fe98 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -621,16 +621,28 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
 
 static __always_inline void kvm_riscv_vcpu_swap_in_guest_state(struct kvm_vcpu *vcpu)
 {
+	struct kvm_vcpu_smstateen_csr *smcsr = &vcpu->arch.smstateen_csr;
 	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+	struct kvm_vcpu_config *cfg = &vcpu->arch.cfg;
 
 	vcpu->arch.host_senvcfg = csr_swap(CSR_SENVCFG, csr->senvcfg);
+	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_SMSTATEEN) &&
+	    (cfg->hstateen0 & SMSTATEEN0_SSTATEEN0))
+		vcpu->arch.host_sstateen0 = csr_swap(CSR_SSTATEEN0,
+						     smcsr->sstateen0);
 }
 
 static __always_inline void kvm_riscv_vcpu_swap_in_host_state(struct kvm_vcpu *vcpu)
 {
+	struct kvm_vcpu_smstateen_csr *smcsr = &vcpu->arch.smstateen_csr;
 	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+	struct kvm_vcpu_config *cfg = &vcpu->arch.cfg;
 
 	csr->senvcfg = csr_swap(CSR_SENVCFG, vcpu->arch.host_senvcfg);
+	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_SMSTATEEN) &&
+	    (cfg->hstateen0 & SMSTATEEN0_SSTATEEN0))
+		smcsr->sstateen0 = csr_swap(CSR_SSTATEEN0,
+					    vcpu->arch.host_sstateen0);
 }
 
 /*
-- 
2.34.1

