Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D13576307B
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 10:51:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232143AbjGZIvD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 04:51:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233404AbjGZIuh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 04:50:37 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FAEF658B
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:29 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1bb7b8390e8so21056555ad.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690361069; x=1690965869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xkwt55ASzalurZDhelB085cYknOoaxiIqUh90s6et6s=;
        b=eG630qlQB7KXIlEHP1M7zhLY6CuIH2iNku217voDlUNi4pBNWZwHDFYX3sq2PtfjGW
         GrZ8BIeEsbR7+gZdEwo6KiBr2w64+E1sr+f400qWzSiRL75idQbOMMYQeGrUqwa9TLAo
         ZEsL1FP43CCXvd1cB8txpwcibQabdlBKIeIkOFXAXa4mJQDnvYCso4xQpb/ZphCYcx8R
         x2LeDRSMb8Yf44ZfvmWKqlhPY3ugrDLp2Bu/WaEkM6Lo4BfuOplbgXMjuzKwBlFbscYn
         5jL2+8466PpVe9n7u12pa571CH+zGwpiek1m/cdzK4L0wXdVz3yqRE+VZeDzXAErTxsX
         +i+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690361069; x=1690965869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xkwt55ASzalurZDhelB085cYknOoaxiIqUh90s6et6s=;
        b=FGlmdkA0K5D/w0GlMoiX+bhgjMt9Z6MNeMOxT3tctzgz4E11BRhUmAHH4S9okQobrO
         GRyaawks7Cg1BroY+3xNHV6FjNw0EVR4Fh0ZCuYAOGC0nZ2KiXJmx8O/fKQ6aHW+MjBL
         gtSS6j4n2XFFBrdxmQHZNBHi1GD6MbwE6qyrt40B5E3U424i8XHF31WXfNDjn47xkkhB
         +tDmNHzgVPP2RO6HFoWcm8jK9eMc9KuEBQ/V1d5w9agDORvS67Pig4E3MKzlKsEPvzd2
         OffuXIc5EqaNda4zk1T4by/pKNmWSOrHK4xsJfvej73scWZ7+I2tgYvWvV0umKQ36A1J
         jE9A==
X-Gm-Message-State: ABy/qLYeygIx35fGiKhVX+uGSTtvNoU6HWKNXoBn49SV4DrZVVZOidK0
        oykADPgoHEY5dsgVFHhxLExF7L4G6en5D2AFWzEA2w==
X-Google-Smtp-Source: APBJJlE3K7rG2ZbmVz2XlDZyVkQYtuoWgWvqT+MC5/m/wIva7uAAwsTNT0Zp52al8a0wgpSLotCZPA==
X-Received: by 2002:a17:903:50e:b0:1b8:50ae:557 with SMTP id jn14-20020a170903050e00b001b850ae0557mr977806plb.36.1690361068391;
        Wed, 26 Jul 2023 01:44:28 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id y19-20020a170902ed5300b001b3bf8001a9sm3978637plb.48.2023.07.26.01.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 01:44:28 -0700 (PDT)
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
Subject: [PATCH v4 5/7] RISCV: KVM: Add senvcfg context save/restore
Date:   Wed, 26 Jul 2023 14:13:50 +0530
Message-Id: <20230726084352.2136377-6-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726084352.2136377-1-mchitale@ventanamicro.com>
References: <20230726084352.2136377-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
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
index d00b61620f54..53d1c7e1eea4 100644
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
index dc185e7875ce..7a43d08c3eed 100644
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
index 7ce250087aed..0f4f0d6032cc 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -601,6 +601,20 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
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
@@ -610,10 +624,12 @@ static void kvm_riscv_update_hvip(struct kvm_vcpu *vcpu)
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

