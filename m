Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E87F79EF00
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 18:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbjIMQmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 12:42:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231147AbjIMQlw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 12:41:52 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3D4130CA
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:40:04 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1c364fb8a4cso63979645ad.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694623204; x=1695228004; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UpDGxdAkaTix/lMebh/AJw7X+2Z+zb9n7VJIfbFHEeU=;
        b=SRGBy6Cca1aMyObAUlF6+VNJeOBuoqUnf1CLwedjrX4eu4w5GezqhUuKlzHmkNQSCY
         Y7b4bnHkYah77ZH44j9whi+a7EjFrleiP8p0Uym4NSbgRYv1f9x7LUGQ/QNgLRY0MBri
         BQUwrzdeAoUxPLyA2KyMNrybGDjbj3wMrTNDcWqUSq/mBQtRpmD2OeyI5WrhDL9FlGkn
         ZoFBF+1NSMdLvSDaN1axlweM4hBmXJvak0ghs7o8AkZC6IzrQyk/9zTY2B0XvjWIXbm1
         SJ1zkI8WMSHw+2WXu883VavFgyH0FRFSMheTx8wqlUVkypLbBf83t7RHFDDGNGkN/f4b
         zfCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694623204; x=1695228004;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UpDGxdAkaTix/lMebh/AJw7X+2Z+zb9n7VJIfbFHEeU=;
        b=IDJZy4qPimtoA0JED2LIri5R5FAzyhGCKmUo0wtODLmaMNgeDCpF4bkw6X8oKluyBS
         Po3ncyCg5cO5fOYKMAjJiDfJd0c4DcR3gx+BJP5C44a5OrI0KX6CXGBrUJ8i1HQA1sDD
         0LIXnneTqYScydN5a0+f6yfslwcW3PEb7cz+qF+aneflNsY4uyd+Ywi8yynywb00i1O4
         rKA+gqSXQ9249cF7tYubZ57Dukn3jmrCem1eW+ElgoNaS/28hb9gzmBUoXqXC2uh261A
         fnLMds7nTqfCG9HGk86gvhZBR/j1ot9LJewXYC6nTzp7JC7ol0o63moWDsAGvcT17fIl
         MZfQ==
X-Gm-Message-State: AOJu0Yzqprh49mGrfgqgx8MQCXeDlCZWhyQlCnFEUn6Y/IplDwbe8FDk
        MVUNKlZrdusIRiluB5XuxJqqug==
X-Google-Smtp-Source: AGHT+IGA1WOJYLDGQUomcSSw3guS1RSAiU4giKEeopu9k/Z85Fhy1fzcPdSwpomLBiS1MCh86s+LfA==
X-Received: by 2002:a17:902:e84e:b0:1ab:11c8:777a with SMTP id t14-20020a170902e84e00b001ab11c8777amr4237227plg.13.1694623204096;
        Wed, 13 Sep 2023 09:40:04 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id je15-20020a170903264f00b001b243a20f26sm10577756plb.273.2023.09.13.09.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 09:40:03 -0700 (PDT)
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
Subject: [PATCH v5 5/7] RISCV: KVM: Add senvcfg context save/restore
Date:   Wed, 13 Sep 2023 22:09:03 +0530
Message-Id: <20230913163905.480819-6-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230913163905.480819-1-mchitale@ventanamicro.com>
References: <20230913163905.480819-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add senvcfg context save/restore for guest VCPUs and also add it to the
ONE_REG interface to allow its access from user space.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/csr.h      |  1 +
 arch/riscv/include/asm/kvm_host.h |  2 ++
 arch/riscv/include/uapi/asm/kvm.h |  1 +
 arch/riscv/kvm/vcpu.c             | 16 ++++++++++++++++
 4 files changed, 20 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 5717004d80fb..65b871dbf7e8 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -287,6 +287,7 @@
 #define CSR_SIE			0x104
 #define CSR_STVEC		0x105
 #define CSR_SCOUNTEREN		0x106
+#define CSR_SENVCFG		0x10a
 #define CSR_SSCRATCH		0x140
 #define CSR_SEPC		0x141
 #define CSR_SCAUSE		0x142
diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 50f3d6393d50..1980be6a3e79 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -162,6 +162,7 @@ struct kvm_vcpu_csr {
 	unsigned long hvip;
 	unsigned long vsatp;
 	unsigned long scounteren;
+	unsigned long senvcfg;
 };
 
 struct kvm_vcpu_config {
@@ -188,6 +189,7 @@ struct kvm_vcpu_arch {
 	unsigned long host_sscratch;
 	unsigned long host_stvec;
 	unsigned long host_scounteren;
+	unsigned long host_senvcfg;
 
 	/* CPU context of Host */
 	struct kvm_cpu_context host_context;
diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 12c17656c156..c161791f55cb 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -80,6 +80,7 @@ struct kvm_riscv_csr {
 	unsigned long sip;
 	unsigned long satp;
 	unsigned long scounteren;
+	unsigned long senvcfg;
 };
 
 /* AIA CSR registers for KVM_GET_ONE_REG and KVM_SET_ONE_REG */
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 417e257e05e1..3013ae30c3af 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -619,6 +619,20 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
 	kvm_riscv_vcpu_aia_update_hvip(vcpu);
 }
 
+static __always_inline void kvm_riscv_vcpu_swap_in_guest_state(struct kvm_vcpu *vcpu)
+{
+	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+
+	vcpu->arch.host_senvcfg = csr_swap(CSR_SENVCFG, csr->senvcfg);
+}
+
+static __always_inline void kvm_riscv_vcpu_swap_in_host_state(struct kvm_vcpu *vcpu)
+{
+	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+
+	csr->senvcfg = csr_swap(CSR_SENVCFG, vcpu->arch.host_senvcfg);
+}
+
 /*
  * Actually run the vCPU, entering an RCU extended quiescent state (EQS) while
  * the vCPU is running.
@@ -628,10 +642,12 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
  */
 static void noinstr kvm_riscv_vcpu_enter_exit(struct kvm_vcpu *vcpu)
 {
+	kvm_riscv_vcpu_swap_in_guest_state(vcpu);
 	guest_state_enter_irqoff();
 	__kvm_riscv_switch_to(&vcpu->arch);
 	vcpu->arch.last_exit_cpu = vcpu->cpu;
 	guest_state_exit_irqoff();
+	kvm_riscv_vcpu_swap_in_host_state(vcpu);
 }
 
 int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
-- 
2.34.1

