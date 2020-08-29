Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E710925693E
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 19:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728412AbgH2RJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 13:09:37 -0400
Received: from foss.arm.com ([217.140.110.172]:45052 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728452AbgH2RJg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Aug 2020 13:09:36 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89A6811D4;
        Sat, 29 Aug 2020 10:09:35 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8A89F3F71F;
        Sat, 29 Aug 2020 10:09:34 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, kernel-team@android.com,
        Will Deacon <will@kernel.org>, tsoni@quicinc.com,
        pratikp@quicinc.com
Subject: [PATCH 3/9] arm64: smccc: Add support for SMCCCv1.2 input/output registers
Date:   Sat, 29 Aug 2020 18:09:17 +0100
Message-Id: <20200829170923.29949-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200829170923.29949-1-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4—x17
to be used as result registers in SMC64/HVC64. Arm Firmware Framework
for Armv8-A specification makes use of x0-x7 as parameter and result
registers.

Current SMCCC interface in the kernel just use x0-x7 as parameter and
x0-x3 as result registers. Let us add new interface to support x0-x7
as parameter and result registers. This can be extended to include
x8-x17 when there are users for the same.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/kernel/asm-offsets.c |  4 +++
 arch/arm64/kernel/smccc-call.S  | 22 +++++++++++++++
 include/linux/arm-smccc.h       | 50 +++++++++++++++++++++++++++++++++
 3 files changed, 76 insertions(+)

diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 7d32fc959b1a..32bcc25337ce 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -122,6 +122,10 @@ int main(void)
   DEFINE(ARM_SMCCC_RES_X2_OFFS,		offsetof(struct arm_smccc_res, a2));
   DEFINE(ARM_SMCCC_QUIRK_ID_OFFS,	offsetof(struct arm_smccc_quirk, id));
   DEFINE(ARM_SMCCC_QUIRK_STATE_OFFS,	offsetof(struct arm_smccc_quirk, state));
+  DEFINE(ARM_SMCCC_V1_2_RES_X0_OFFS,	offsetof(struct arm_smccc_v1_2_res, a0));
+  DEFINE(ARM_SMCCC_V1_2_RES_X2_OFFS,	offsetof(struct arm_smccc_v1_2_res, a2));
+  DEFINE(ARM_SMCCC_V1_2_RES_X4_OFFS,	offsetof(struct arm_smccc_v1_2_res, a4));
+  DEFINE(ARM_SMCCC_V1_2_RES_X6_OFFS,	offsetof(struct arm_smccc_v1_2_res, a6));
   BLANK();
   DEFINE(HIBERN_PBE_ORIG,	offsetof(struct pbe, orig_address));
   DEFINE(HIBERN_PBE_ADDR,	offsetof(struct pbe, address));
diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index 1f93809528a4..70e3749b44cf 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -45,3 +45,25 @@ SYM_FUNC_START(__arm_smccc_hvc)
 	SMCCC	hvc
 SYM_FUNC_END(__arm_smccc_hvc)
 EXPORT_SYMBOL(__arm_smccc_hvc)
+
+	.macro SMCCC_v1_2 instr
+	.cfi_startproc
+	\instr #0
+	ldr x8, [sp]
+	stp x0, x1, [x8, #ARM_SMCCC_V1_2_RES_X0_OFFS]
+	stp x2, x3, [x8, #ARM_SMCCC_V1_2_RES_X2_OFFS]
+	stp x4, x5, [x8, #ARM_SMCCC_V1_2_RES_X4_OFFS]
+	stp x6, x7, [x8, #ARM_SMCCC_V1_2_RES_X6_OFFS]
+	ret
+	.cfi_endproc
+.endm
+
+SYM_FUNC_START(arm_smccc_v1_2_hvc)
+	SMCCC_v1_2 hvc
+SYM_FUNC_END(arm_smccc_v1_2_hvc)
+EXPORT_SYMBOL(arm_smccc_v1_2_hvc)
+
+SYM_FUNC_START(arm_smccc_v1_2_smc)
+	SMCCC_v1_2 smc
+SYM_FUNC_END(arm_smccc_v1_2_smc)
+EXPORT_SYMBOL(arm_smccc_v1_2_smc)
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 15c706fb0a37..b64552076b7e 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -152,6 +152,56 @@ struct arm_smccc_res {
 	unsigned long a3;
 };
 
+#ifdef CONFIG_ARM64
+/* TODO Need to implement for ARM too */
+/**
+ * struct arm_smccc_v1_2_res - Result from SMC/HVC call
+ * @a0-a3 result values from registers 0 to 3
+ */
+struct arm_smccc_v1_2_res {
+	unsigned long a0;
+	unsigned long a1;
+	unsigned long a2;
+	unsigned long a3;
+	unsigned long a4;
+	unsigned long a5;
+	unsigned long a6;
+	unsigned long a7;
+};
+
+/**
+ * arm_smccc_v1_2_hvc() - make HVC calls
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 7
+ *
+ * This function is used to make SMC calls following SMC Calling Convention
+ * v1.2 or above. The content of the supplied param are copied to registers
+ * 0 to 7 prior to the SMC instruction. The return values are updated with
+ * the content from register 0 to 7 on return from the SMC instruction.
+ */
+asmlinkage
+void arm_smccc_v1_2_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
+			unsigned long a3, unsigned long a4, unsigned long a5,
+			unsigned long a6, unsigned long a7,
+			struct arm_smccc_v1_2_res  *res);
+
+/**
+ * arm_smccc_v1_2_smc() - make SMC calls
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 7
+ *
+ * This function is used to make SMC calls following SMC Calling Convention
+ * v1.2 or above. The content of the supplied param are copied to registers
+ * 0 to 7 prior to the SMC instruction. The return values are updated with
+ * the content from register 0 to 7 on return from the SMC instruction.
+ */
+asmlinkage
+void arm_smccc_v1_2_smc(unsigned long a0, unsigned long a1, unsigned long a2,
+			unsigned long a3, unsigned long a4, unsigned long a5,
+			unsigned long a6, unsigned long a7,
+			struct arm_smccc_v1_2_res  *res);
+#endif
+
 /**
  * struct arm_smccc_quirk - Contains quirk information
  * @id: quirk identification
-- 
2.17.1

