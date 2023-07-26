Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7631763078
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 10:51:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232761AbjGZIvA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 04:51:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232279AbjGZIue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 04:50:34 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE28B61BD
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:18 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1bb8e45185bso19266215ad.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690361058; x=1690965858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bSl78JKjr1Ozi5FVfVkKZdxT71ozQmSZWCuKqW85yyQ=;
        b=AqEQZOAF8/hH3MUoAOP+XSxHAk++rZYA0dqm8HRoAQkIO7MoM2fbaeAjoZuGALh+QL
         +7SLmLuYen/TMdB5lKolShu2TN8tD0H44Os8gvqPNZSTZ8mD6TtzEk5VSzOpVBIIrc+1
         5Jh9SCPpbuCNttNwWm1zqAli2IbOllrmUIOKP/VBMUXKIyzWv4/gAlmGiENgvB5zOlEr
         htNU3JFuqPa6Np6nIrtR1gQacTe94rJOk+kNZOfW74ryGJeFyed7fGkrbv+H8Haz5z69
         RNZuc9RGhJGKDzg66HwmXT4cFAg/OiOFXLBKIt+5hjVgrOZfL+X6ZRiOwmQiPa/OJ59C
         GozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690361058; x=1690965858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bSl78JKjr1Ozi5FVfVkKZdxT71ozQmSZWCuKqW85yyQ=;
        b=g4QPtyqlD8k+rNS55SFKDhTGRnaiTvaaDOXEILeN8kXVNFdflt8izjSmZXO37nN7mF
         jgqp8Q64OrnBePZOXd02iVMkyr9/SIS/TymNu5kx0GFRmPNpGr0NljIy09JXdaV5/L4B
         woNgzgZqhYprPHZkgqFS7g56JhJVoXUbmD6xjx94xrdg+tU5HMgLMGWksC7BTbvMUrTW
         VLvLQAei+A+/61xO4mUi5oEgiMCuAvrCZHiy5pB7CwhSMY5uno2rvfE+WGmDqf0Tic0s
         zxNoOcP11s/CNdeabW6Fiw8AShFd1yXZ0SQNC0cNCmIvIOLni/cxnWyb1TkdrXLMVlNs
         bsMQ==
X-Gm-Message-State: ABy/qLZjnQmKa+PfTpW+7a9e+TmPp+iREju8ECceu5G01xF/Ncm0LGNl
        1Szh/8uF+F2fgogbb0jq1bFjbw==
X-Google-Smtp-Source: APBJJlFsfjAuUtDTwjbGLMPtbitCif0Sa9s+E7FgVEnnWkxQxV371oOJKzePeoRwrOEXAKyOueKiuA==
X-Received: by 2002:a17:902:f815:b0:1b5:49fc:e336 with SMTP id ix21-20020a170902f81500b001b549fce336mr990692plb.42.1690361058349;
        Wed, 26 Jul 2023 01:44:18 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id y19-20020a170902ed5300b001b3bf8001a9sm3978637plb.48.2023.07.26.01.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 01:44:18 -0700 (PDT)
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
Subject: [PATCH v4 3/7] RISC-V: KVM: Add kvm_vcpu_config
Date:   Wed, 26 Jul 2023 14:13:48 +0530
Message-Id: <20230726084352.2136377-4-mchitale@ventanamicro.com>
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

Add a placeholder for all registers such as henvcfg, hstateen etc
which have 'static' configurations depending on extensions supported by
the guest. The values are derived once and are then subsequently written
to the corresponding CSRs while switching to the vcpu.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/kvm_host.h |  7 +++++++
 arch/riscv/kvm/vcpu.c             | 27 ++++++++++++++-------------
 2 files changed, 21 insertions(+), 13 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 55bc7bdbff48..c0fb54d164c7 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -164,6 +164,10 @@ struct kvm_vcpu_csr {
 	unsigned long scounteren;
 };
 
+struct kvm_vcpu_config {
+	u64 henvcfg;
+};
+
 struct kvm_vcpu_arch {
 	/* VCPU ran at least once */
 	bool ran_atleast_once;
@@ -244,6 +248,9 @@ struct kvm_vcpu_arch {
 
 	/* Performance monitoring context */
 	struct kvm_pmu pmu_context;
+
+	/* 'static' configurations which are set only once */
+	struct kvm_vcpu_config cfg;
 };
 
 static inline void kvm_arch_sync_events(struct kvm *kvm) {}
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 452d6548e951..43d955eca286 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -453,31 +453,28 @@ int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
 	return -EINVAL;
 }
 
-static void kvm_riscv_vcpu_update_config(const unsigned long *isa)
+static void kvm_riscv_vcpu_setup_config(struct kvm_vcpu *vcpu)
 {
-	u64 henvcfg = 0;
+	const unsigned long *isa = vcpu->arch.isa;
+	struct kvm_vcpu_config *cfg = &vcpu->arch.cfg;
 
 	if (riscv_isa_extension_available(isa, SVPBMT))
-		henvcfg |= ENVCFG_PBMTE;
+		cfg->henvcfg |= ENVCFG_PBMTE;
 
 	if (riscv_isa_extension_available(isa, SSTC))
-		henvcfg |= ENVCFG_STCE;
+		cfg->henvcfg |= ENVCFG_STCE;
 
 	if (riscv_isa_extension_available(isa, ZICBOM))
-		henvcfg |= (ENVCFG_CBIE | ENVCFG_CBCFE);
+		cfg->henvcfg |= (ENVCFG_CBIE | ENVCFG_CBCFE);
 
 	if (riscv_isa_extension_available(isa, ZICBOZ))
-		henvcfg |= ENVCFG_CBZE;
-
-	csr_write(CSR_HENVCFG, henvcfg);
-#ifdef CONFIG_32BIT
-	csr_write(CSR_HENVCFGH, henvcfg >> 32);
-#endif
+		cfg->henvcfg |= ENVCFG_CBZE;
 }
 
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
 	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+	struct kvm_vcpu_config *cfg = &vcpu->arch.cfg;
 
 	csr_write(CSR_VSSTATUS, csr->vsstatus);
 	csr_write(CSR_VSIE, csr->vsie);
@@ -488,8 +485,9 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	csr_write(CSR_VSTVAL, csr->vstval);
 	csr_write(CSR_HVIP, csr->hvip);
 	csr_write(CSR_VSATP, csr->vsatp);
-
-	kvm_riscv_vcpu_update_config(vcpu->arch.isa);
+	csr_write(CSR_HENVCFG, cfg->henvcfg);
+	if (IS_ENABLED(CONFIG_32BIT))
+		csr_write(CSR_HENVCFGH, cfg->henvcfg >> 32);
 
 	kvm_riscv_gstage_update_hgatp(vcpu);
 
@@ -609,6 +607,9 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
 	struct kvm_cpu_trap trap;
 	struct kvm_run *run = vcpu->run;
 
+	if (!vcpu->arch.ran_atleast_once)
+		kvm_riscv_vcpu_setup_config(vcpu);
+
 	/* Mark this VCPU ran at least once */
 	vcpu->arch.ran_atleast_once = true;
 
-- 
2.34.1

