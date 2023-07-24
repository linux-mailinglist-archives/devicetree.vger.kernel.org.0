Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6042875F9AD
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 16:21:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230210AbjGXOVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 10:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231329AbjGXOVM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 10:21:12 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4DCCE64
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:21:11 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1bb81809ca8so17845525ad.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690208471; x=1690813271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XWBcboB8FAg6vBr25GMQxT+1AebhzKVOh/ZnCapT0AM=;
        b=GwCKeAuwMXS6oAjq/vrTYy+q9hMY7Sgf2HRFtNraIw3ybHmiZoXVC3nrk8MRWIsNLP
         O5eGN0u7oz+g/RQo5WgHKu0YspuojUGe+BoRVaT7bSw3f+ro/pbpfHUywDfmo1ZSpH8z
         0iAU1z9LfUepTFzWPjiZrIR+mA6t9pIliSHVwx5E6nfXGp9vkSZAGaU2Bv8+5wUVScew
         an4P4XHBQQxrIWkcgup6J1a7MbYLW2WnsYOKqC0y2QxvBXY1gsIJRj8ZxdpM2GnrGe++
         DGvHEOPIF0b2cewgGo8hoPmgQ72Kp5KqyncqT2WhLtU/a/nm3DAclGrOPJzuAhdSw4pj
         0otQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690208471; x=1690813271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XWBcboB8FAg6vBr25GMQxT+1AebhzKVOh/ZnCapT0AM=;
        b=C3jj2kRvEfI2fhMPnvF2XgVLsTY9n3ENPRJfiBQPBXI7ht5veeURMM9GNOvSkFeajF
         MVC9P3jTBF44Jw8bAFS+TYN3F1z5cwD63fMA4I34SdEltzYrdkb29ykgtLLEkYWx96H9
         IvTJXSmKnytnaCjom1Jsua7oViQ9bte0As4tf9uCx4KZzPBAQVb92s9bDCzfv+uSj48X
         R8aT/bo+okUhUZN5Ze/iJd7NpAphtbYS670qsLUUeipIGkItjePTJx6vnGfZRpLucdgF
         EmzZFOb82TmjeLwaXXAMO88Zq8vht3Ul6BiybmerW3CxcvTwfFRAyCdvc/OjbfpGkqjU
         brpw==
X-Gm-Message-State: ABy/qLaD7A4rGvahCnIGGm+93IqriP1RqyiPxUqwBcdB0xEyMItOib4e
        DjRXE0ZuUnqc01QmGAJGqMAcVg==
X-Google-Smtp-Source: APBJJlF5Wc1/nlIL2etddXdNd4kj854cm697DfDflaN4tDLhlkCN8ioug7vmn37Pl6VoNQ2tctbFNQ==
X-Received: by 2002:a17:902:c945:b0:1b8:88c5:2d2f with SMTP id i5-20020a170902c94500b001b888c52d2fmr13294720pla.64.1690208471129;
        Mon, 24 Jul 2023 07:21:11 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id s10-20020a170902a50a00b001b8307c81c8sm9009821plq.121.2023.07.24.07.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 07:21:10 -0700 (PDT)
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
Subject: [PATCH v3 5/7] RISCV: KVM: Add senvcfg context save/restore
Date:   Mon, 24 Jul 2023 19:50:31 +0530
Message-Id: <20230724142033.306538-6-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230724142033.306538-1-mchitale@ventanamicro.com>
References: <20230724142033.306538-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
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
index 38730677dcd5..b52270278733 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -285,6 +285,7 @@
 #define CSR_SIE			0x104
 #define CSR_STVEC		0x105
 #define CSR_SCOUNTEREN		0x106
+#define CSR_SENVCFG		0x10a
 #define CSR_SSCRATCH		0x140
 #define CSR_SEPC		0x141
 #define CSR_SCAUSE		0x142
diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index ee55e5fc8b84..c3cc0cb39cf8 100644
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
index 7bc1634b0a89..74c7f42de29d 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -79,6 +79,7 @@ struct kvm_riscv_csr {
 	unsigned long sip;
 	unsigned long satp;
 	unsigned long scounteren;
+	unsigned long senvcfg;
 };
 
 /* AIA CSR registers for KVM_GET_ONE_REG and KVM_SET_ONE_REG */
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index d3166b676430..5764d22efa29 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -1129,6 +1129,20 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
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
@@ -1138,10 +1152,12 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
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

