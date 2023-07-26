Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5BFA76307E
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 10:51:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232860AbjGZIvE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 04:51:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232239AbjGZIul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 04:50:41 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C8566598
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:39 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1bba2318546so23599225ad.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690361079; x=1690965879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jq7CatpLvEuamo8s3Q0+Xj2eL2B+J8eMtzZwBU9xifI=;
        b=CDJ5Frer1O2G8FhQCsxljDvfHgI9sNZeIBtVCrG0/I8KI2DfKVMIXtK1f3WPBe183c
         6AWp5YaRzM0WQWqzJJXfxFTgPjw2/MANBEfvTz4hK9cLmcVp7hHJte3tHgUJHxz1AdAV
         liQ8mMsLBq6Q0KDHYaJP8C11hC4n5dZSXmoQI067n6TCkGfz0Ov7ulE2XYnXUZqmSxLK
         9kCaMGfRFBxEOrtoh9h+xc2yTnKxUKU22XkHPpZP9zgWYirxod2BPBz4Elk5UuUfPhX+
         v9ss9A1s/iTgE8O8UPD+XVNuPHlSSVCCUuwfhw62KxbdbabnvNwuXQokX3rdxvD5h5Of
         xAHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690361079; x=1690965879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jq7CatpLvEuamo8s3Q0+Xj2eL2B+J8eMtzZwBU9xifI=;
        b=RWf6Cr13MyC+1/N+uSRay+k4tdO3S/9obOvNW7cQJTKErHTYxLPJnNe7CaexfdQtFM
         jNVflWIoNJ6GjmtPkVmDTjDUuUvel2XG6qFL/WmJMVmzSv02LOc2m9g+H++gWH/cdjPb
         S+xm8mAM8xCd73t4NfdZNc4INTvb+/xn/uJchK6nYM5KcI65iB+QxDGpPXfDi751Imsz
         RpLZG+j7s1MF6QvCxB+ekvrDS9Z/kLl7KYnTNuYS2EeS5MX7dabaK7u0w994ibFilGy3
         Fscyrlw2nlAPzh491GnyoqfThjSgoA16OGeGDO8BSpJZBYgdAmzlnSonqW48+ltbdZ6Z
         YK3g==
X-Gm-Message-State: ABy/qLb+y/vfm2WbPCL7Lh3sUS8/G4HQ0inlDqyQJDv7CImdMbYc/Mrq
        V9nAtWWKgqJyfHkVrgY+i9ZClw==
X-Google-Smtp-Source: APBJJlHz6r3/3jHGuEGLyXcyY2FTESfSup8IkUNWJtj0Ni8hH5kEK3u0sqlFMldEiX74b/dZ7oFlFg==
X-Received: by 2002:a17:902:e88a:b0:1bb:1e69:28c0 with SMTP id w10-20020a170902e88a00b001bb1e6928c0mr1885397plg.30.1690361078782;
        Wed, 26 Jul 2023 01:44:38 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id y19-20020a170902ed5300b001b3bf8001a9sm3978637plb.48.2023.07.26.01.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 01:44:38 -0700 (PDT)
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
Subject: [PATCH v4 7/7] RISCV: KVM: Add sstateen0 to ONE_REG
Date:   Wed, 26 Jul 2023 14:13:52 +0530
Message-Id: <20230726084352.2136377-8-mchitale@ventanamicro.com>
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

Add support for sstateen0 CSR to the ONE_REG interface to allow its
access from user space.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/uapi/asm/kvm.h |  9 +++++++
 arch/riscv/kvm/vcpu_onereg.c      | 41 +++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 7a43d08c3eed..fd3866cc08a2 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -93,6 +93,11 @@ struct kvm_riscv_aia_csr {
 	unsigned long iprio2h;
 };
 
+/* Smstateen CSR for KVM_GET_ONE_REG and KVM_SET_ONE_REG */
+struct kvm_riscv_smstateen_csr {
+	unsigned long sstateen0;
+};
+
 /* TIMER registers for KVM_GET_ONE_REG and KVM_SET_ONE_REG */
 struct kvm_riscv_timer {
 	__u64 frequency;
@@ -179,10 +184,14 @@ enum KVM_RISCV_SBI_EXT_ID {
 #define KVM_REG_RISCV_CSR		(0x03 << KVM_REG_RISCV_TYPE_SHIFT)
 #define KVM_REG_RISCV_CSR_GENERAL	(0x0 << KVM_REG_RISCV_SUBTYPE_SHIFT)
 #define KVM_REG_RISCV_CSR_AIA		(0x1 << KVM_REG_RISCV_SUBTYPE_SHIFT)
+#define KVM_REG_RISCV_CSR_SMSTATEEN	(0x2 << KVM_REG_RISCV_SUBTYPE_SHIFT)
+
 #define KVM_REG_RISCV_CSR_REG(name)	\
 		(offsetof(struct kvm_riscv_csr, name) / sizeof(unsigned long))
 #define KVM_REG_RISCV_CSR_AIA_REG(name)	\
 	(offsetof(struct kvm_riscv_aia_csr, name) / sizeof(unsigned long))
+#define KVM_REG_RISCV_CSR_SMSTATEEN_REG(name)	\
+	(offsetof(struct kvm_riscv_smstateen_csr, name) / sizeof(unsigned long))
 
 /* Timer registers are mapped as type 4 */
 #define KVM_REG_RISCV_TIMER		(0x04 << KVM_REG_RISCV_TYPE_SHIFT)
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index 0dc2c2cecb45..2d1ea5bb2a1d 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -49,6 +49,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZIFENCEI),
 	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
 	KVM_ISA_EXT_ARR(ZIHPM),
+	KVM_ISA_EXT_ARR(SMSTATEEN),
 };
 
 static unsigned long kvm_riscv_vcpu_base2isa_ext(unsigned long base_ext)
@@ -350,6 +351,34 @@ static int kvm_riscv_vcpu_general_set_csr(struct kvm_vcpu *vcpu,
 	return 0;
 }
 
+static inline int kvm_riscv_vcpu_smstateen_set_csr(struct kvm_vcpu *vcpu,
+						   unsigned long reg_num,
+						   unsigned long reg_val)
+{
+	struct kvm_vcpu_smstateen_csr *csr = &vcpu->arch.smstateen_csr;
+
+	if (reg_num >= sizeof(struct kvm_riscv_smstateen_csr) /
+	    sizeof(unsigned long))
+		return -EINVAL;
+
+	((unsigned long *)csr)[reg_num] = reg_val;
+	return 0;
+}
+
+static int kvm_riscv_vcpu_smstateen_get_csr(struct kvm_vcpu *vcpu,
+					    unsigned long reg_num,
+					    unsigned long *out_val)
+{
+	struct kvm_vcpu_smstateen_csr *csr = &vcpu->arch.smstateen_csr;
+
+	if (reg_num >= sizeof(struct kvm_riscv_smstateen_csr) /
+	    sizeof(unsigned long))
+		return -EINVAL;
+
+	*out_val = ((unsigned long *)csr)[reg_num];
+	return 0;
+}
+
 static int kvm_riscv_vcpu_get_reg_csr(struct kvm_vcpu *vcpu,
 				      const struct kvm_one_reg *reg)
 {
@@ -373,6 +402,12 @@ static int kvm_riscv_vcpu_get_reg_csr(struct kvm_vcpu *vcpu,
 	case KVM_REG_RISCV_CSR_AIA:
 		rc = kvm_riscv_vcpu_aia_get_csr(vcpu, reg_num, &reg_val);
 		break;
+	case KVM_REG_RISCV_CSR_SMSTATEEN:
+		rc = -EINVAL;
+		if (riscv_has_extension_unlikely(RISCV_ISA_EXT_SMSTATEEN))
+			rc = kvm_riscv_vcpu_smstateen_get_csr(vcpu, reg_num,
+							      &reg_val);
+		break;
 	default:
 		rc = -EINVAL;
 		break;
@@ -412,6 +447,12 @@ static int kvm_riscv_vcpu_set_reg_csr(struct kvm_vcpu *vcpu,
 	case KVM_REG_RISCV_CSR_AIA:
 		rc = kvm_riscv_vcpu_aia_set_csr(vcpu, reg_num, reg_val);
 		break;
+	case KVM_REG_RISCV_CSR_SMSTATEEN:
+		rc = -EINVAL;
+		if (riscv_has_extension_unlikely(RISCV_ISA_EXT_SMSTATEEN))
+			rc = kvm_riscv_vcpu_smstateen_set_csr(vcpu, reg_num,
+							      reg_val);
+		break;
 	default:
 		rc = -EINVAL;
 		break;
-- 
2.34.1

