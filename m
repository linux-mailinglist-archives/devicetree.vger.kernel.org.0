Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C13E975F9AE
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 16:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231329AbjGXOVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 10:21:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230382AbjGXOVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 10:21:18 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71D52E64
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:21:17 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1b890e2b9b7so21421025ad.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690208477; x=1690813277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jeBit2HNTThkMI6F9leen3WIW5NeA5jHqdoTdMy2SDk=;
        b=INcMG8ZHx0b8yfXTa2Nj1yn9yJzBsKD7W25MzHKKGgHItU7yakStopz7HNm1MSMcTJ
         AtsmHaKRlKVr8GCryip+h5f6EYkGEqmZVziwvppe324DWYDe67Q8sxaWt9fqAVuaI5mc
         k4q07y4+Fqe+pk3oi25OcyYeNOp2AqMZmsmKRA8VA5NZ3QoLZNeqmM07GY7B5+d+ybR0
         ez/vhIhy8dvyUPUasZpRb9ih8g7BTuCvNzVMzqSOn+z7Qyh0OHubG6bcV5K8zPdFZEcv
         lNZQe0+2tB9lShpnD+DZJ1r8dKIqhjmmD6NJaHS7YzUEonqwJwT+ECR7sla0J4k2fIvc
         WldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690208477; x=1690813277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jeBit2HNTThkMI6F9leen3WIW5NeA5jHqdoTdMy2SDk=;
        b=Clfk4b7i9yvdEwQG8mgLWAD139KWoZdKr2tepjGJ6Zv7alIUnjp6h8pejHnnGejx0o
         vVQmgBZLL/Qj1GXwDjWy687aDpwBW8d5UzPIo37VGXLzNhNZdhlIJSyXeTfnWcnjTmKz
         7dnBBvB+YaNyBg4NIES5/PI3brOtTpdlkxKN5TdRKZHM4kX6o9c9U138v4bBB/8Ya0Wi
         xgqU1VoqClo0lfjzLl3HxbGrziRdFOYbFcU62xiM8ZKy4vyHgG6tqt/xMfiVkZocsy5m
         moPBwg36GjSrjtD6A1Y7Vvpe5IKbLxXSgJ/sNKynCASEQ/fZUaNlL0Z3RHcl8UHXASNE
         X+/w==
X-Gm-Message-State: ABy/qLb8Bd0AOlREFio3uFw0xwNhe67Dr4qzfaT+s+q6fG9cdDLvFsDK
        F9B1sb95zhAH7QW5Lx9VOruvGw==
X-Google-Smtp-Source: APBJJlHyb3xgYcT32yxcD6LZM8/JX0OSj9UH9wSW6Xf5zDVZwj+PE3K8EqFFsMz45s2HtuqN8R5IZg==
X-Received: by 2002:a17:902:8693:b0:1b1:753a:49ce with SMTP id g19-20020a170902869300b001b1753a49cemr689867plo.53.1690208476936;
        Mon, 24 Jul 2023 07:21:16 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id s10-20020a170902a50a00b001b8307c81c8sm9009821plq.121.2023.07.24.07.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 07:21:16 -0700 (PDT)
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
Subject: [PATCH v3 6/7] RISCV: KVM: Add sstateen0 context save/restore
Date:   Mon, 24 Jul 2023 19:50:32 +0530
Message-Id: <20230724142033.306538-7-mchitale@ventanamicro.com>
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

Define sstateen0 and add sstateen0 save/restore for guest VCPUs.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/csr.h      |  1 +
 arch/riscv/include/asm/kvm_host.h |  8 ++++++++
 arch/riscv/kvm/vcpu.c             | 12 ++++++++++++
 3 files changed, 21 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index b52270278733..5168f37d8e75 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -286,6 +286,7 @@
 #define CSR_STVEC		0x105
 #define CSR_SCOUNTEREN		0x106
 #define CSR_SENVCFG		0x10a
+#define CSR_SSTATEEN0		0x10c
 #define CSR_SSCRATCH		0x140
 #define CSR_SEPC		0x141
 #define CSR_SCAUSE		0x142
diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index c3cc0cb39cf8..c9837772b109 100644
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
index 5764d22efa29..1f8e8b5f659b 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -1131,16 +1131,28 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
 
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

