Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C162676307C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 10:51:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232313AbjGZIvD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 04:51:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232664AbjGZIuk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 04:50:40 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 582EE6593
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:34 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1bb7b8390e8so21056875ad.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690361074; x=1690965874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S83lKR12v2b2CNGJrryAuoUc3tc0JGwPpbCg6Cfe0sw=;
        b=l2nOi3hjUjFYAo6UFU2jZf5p8Gl38Itq2YMWjZ7bvNI/X/4dFCvWvAAlE82lz9yoXA
         dL2dwlNoAg9jlrI/9cgJJAiwIO4XTwJnaX2mObAPSRDfZRhojD1wMi5WO4e8od/UC/mS
         PuZUeJqr/yc2wiryM5ymzvv6HzsSqmWQ/qwRwatuAjQcazaxdp7XiXwy3IiYZgrZx4EF
         HaUXM4Ly2TuAd1FuhcC5ZrmTCbEKlNucs5nik9N/rvOMtMomqgO6gVZovtQW/QKnAXaU
         6UE7YPwM2WSX7htDvElxOBO6VAsibhSp3CwXluVDCofEQ4AZKOhonc0tRKA4dpNmVlhM
         7JxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690361074; x=1690965874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S83lKR12v2b2CNGJrryAuoUc3tc0JGwPpbCg6Cfe0sw=;
        b=KCYcgGSaiZ6EGdcAsd3CUKPl+PLknE7jiSmc1Ow3tY+vb7h94JXUBNtjXada0vKMy1
         iscKPd8bMTyOQxi/qT/Yupxr0j8gDf6d0gl3OzjxeSkhpXFh36Qb7PvoTQ+XZArStkh2
         ocQN8Ld2L6vNxkaQFON18JdAlxFp8r5qEvZB39URYMLZ0yXgw5lSU7oSKU1YiM5Fg/1X
         6pQ0saU8Z3yg38jfcPXka/MoFgm9MzUAHYQ5pYWDuCjGxOvd6yTuUrHfA0gtC7NQ2fSw
         e0rhKVMezZ6ZaWxmcOuZNXU5WUxP14qrM0a3wFnISyLF5lb1v/TPG1e7ReFp/QCXnNO3
         cjmw==
X-Gm-Message-State: ABy/qLYDMoPL1md/MFPaXMSd+MM2PzjCRaR12hDCIuUQhqqCUd/lYaj3
        6NDEeHwcQZK2Xk6nAb1v2jOfWg==
X-Google-Smtp-Source: APBJJlFV12aMDrfin7w7RiKN4BpdcTNkkbIpQhNmJ8MHeh9fkEHIdAwkqwkq5bxoypKSwltyMqTZ+Q==
X-Received: by 2002:a17:902:e80f:b0:1bb:3406:a612 with SMTP id u15-20020a170902e80f00b001bb3406a612mr1358952plg.57.1690361073815;
        Wed, 26 Jul 2023 01:44:33 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id y19-20020a170902ed5300b001b3bf8001a9sm3978637plb.48.2023.07.26.01.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 01:44:33 -0700 (PDT)
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
Subject: [PATCH v4 6/7] RISCV: KVM: Add sstateen0 context save/restore
Date:   Wed, 26 Jul 2023 14:13:51 +0530
Message-Id: <20230726084352.2136377-7-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726084352.2136377-1-mchitale@ventanamicro.com>
References: <20230726084352.2136377-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
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
index 53d1c7e1eea4..6d614022bf3e 100644
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
index 0f4f0d6032cc..30dd9e3261dd 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -603,16 +603,28 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
 
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

