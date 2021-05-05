Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 800BD3737AE
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 11:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232109AbhEEJjx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 05:39:53 -0400
Received: from foss.arm.com ([217.140.110.172]:41208 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232073AbhEEJjx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 5 May 2021 05:39:53 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BD9E1063;
        Wed,  5 May 2021 02:38:57 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AF1E23F70D;
        Wed,  5 May 2021 02:38:55 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, arve@google.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>,
        Michael Kelley <mikelley@microsoft.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v6 1/6] arm64: smccc: Add support for SMCCCv1.2 extended input/output registers
Date:   Wed,  5 May 2021 10:38:38 +0100
Message-Id: <20210505093843.3308691-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210505093843.3308691-1-sudeep.holla@arm.com>
References: <20210505093843.3308691-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4—x17
to be used as result registers in SMC64/HVC64. Arm Firmware Framework
for Armv8-A specification makes use of x0-x7 as parameter and result
registers. There are other users like Hyper-V who intend to use beyond
x0-x7 as well.

Current SMCCC interface in the kernel just use x0-x7 as parameter and
x0-x3 as result registers as required by SMCCCv1.0. Let us add new
interface to support this extended set of input/output registers namely
x0-x17 as both parameter and result registers.

Cc: Michael Kelley <mikelley@microsoft.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc:Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/kernel/asm-offsets.c |  9 ++++++
 arch/arm64/kernel/smccc-call.S  | 57 +++++++++++++++++++++++++++++++++
 include/linux/arm-smccc.h       | 55 +++++++++++++++++++++++++++++++
 3 files changed, 121 insertions(+)

diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 0cb34ccb6e73..74321bc9a459 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -138,6 +138,15 @@ int main(void)
   DEFINE(ARM_SMCCC_RES_X2_OFFS,		offsetof(struct arm_smccc_res, a2));
   DEFINE(ARM_SMCCC_QUIRK_ID_OFFS,	offsetof(struct arm_smccc_quirk, id));
   DEFINE(ARM_SMCCC_QUIRK_STATE_OFFS,	offsetof(struct arm_smccc_quirk, state));
+  DEFINE(ARM_SMCCC_1_2_REGS_X0_OFFS,	offsetof(struct arm_smccc_1_2_regs, a0));
+  DEFINE(ARM_SMCCC_1_2_REGS_X2_OFFS,	offsetof(struct arm_smccc_1_2_regs, a2));
+  DEFINE(ARM_SMCCC_1_2_REGS_X4_OFFS,	offsetof(struct arm_smccc_1_2_regs, a4));
+  DEFINE(ARM_SMCCC_1_2_REGS_X6_OFFS,	offsetof(struct arm_smccc_1_2_regs, a6));
+  DEFINE(ARM_SMCCC_1_2_REGS_X8_OFFS,	offsetof(struct arm_smccc_1_2_regs, a8));
+  DEFINE(ARM_SMCCC_1_2_REGS_X10_OFFS,	offsetof(struct arm_smccc_1_2_regs, a10));
+  DEFINE(ARM_SMCCC_1_2_REGS_X12_OFFS,	offsetof(struct arm_smccc_1_2_regs, a12));
+  DEFINE(ARM_SMCCC_1_2_REGS_X14_OFFS,	offsetof(struct arm_smccc_1_2_regs, a14));
+  DEFINE(ARM_SMCCC_1_2_REGS_X16_OFFS,	offsetof(struct arm_smccc_1_2_regs, a16));
   BLANK();
   DEFINE(HIBERN_PBE_ORIG,	offsetof(struct pbe, orig_address));
   DEFINE(HIBERN_PBE_ADDR,	offsetof(struct pbe, address));
diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index d62447964ed9..7d79c5062c5d 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -43,3 +43,60 @@ SYM_FUNC_START(__arm_smccc_hvc)
 	SMCCC	hvc
 SYM_FUNC_END(__arm_smccc_hvc)
 EXPORT_SYMBOL(__arm_smccc_hvc)
+
+	.macro SMCCC_1_2 instr
+	/* Save `res` and free a GPR that won't be clobbered */
+	stp     x1, x19, [sp, #-16]!
+
+	/* Ensure `args` won't be clobbered while loading regs in next step */
+	mov	x19, x0
+
+	/* Load the registers x0 - x17 from the struct arm_smccc_1_2_regs */
+	ldp	x0, x1, [x19, #ARM_SMCCC_1_2_REGS_X0_OFFS]
+	ldp	x2, x3, [x19, #ARM_SMCCC_1_2_REGS_X2_OFFS]
+	ldp	x4, x5, [x19, #ARM_SMCCC_1_2_REGS_X4_OFFS]
+	ldp	x6, x7, [x19, #ARM_SMCCC_1_2_REGS_X6_OFFS]
+	ldp	x8, x9, [x19, #ARM_SMCCC_1_2_REGS_X8_OFFS]
+	ldp	x10, x11, [x19, #ARM_SMCCC_1_2_REGS_X10_OFFS]
+	ldp	x12, x13, [x19, #ARM_SMCCC_1_2_REGS_X12_OFFS]
+	ldp	x14, x15, [x19, #ARM_SMCCC_1_2_REGS_X14_OFFS]
+	ldp	x16, x17, [x19, #ARM_SMCCC_1_2_REGS_X16_OFFS]
+
+	\instr #0
+
+	/* Load the `res` from the stack */
+	ldr	x19, [sp]
+
+	/* Store the registers x0 - x17 into the result structure */
+	stp	x0, x1, [x19, #ARM_SMCCC_1_2_REGS_X0_OFFS]
+	stp	x2, x3, [x19, #ARM_SMCCC_1_2_REGS_X2_OFFS]
+	stp	x4, x5, [x19, #ARM_SMCCC_1_2_REGS_X4_OFFS]
+	stp	x6, x7, [x19, #ARM_SMCCC_1_2_REGS_X6_OFFS]
+	stp	x8, x9, [x19, #ARM_SMCCC_1_2_REGS_X8_OFFS]
+	stp	x10, x11, [x19, #ARM_SMCCC_1_2_REGS_X10_OFFS]
+	stp	x12, x13, [x19, #ARM_SMCCC_1_2_REGS_X12_OFFS]
+	stp	x14, x15, [x19, #ARM_SMCCC_1_2_REGS_X14_OFFS]
+	stp	x16, x17, [x19, #ARM_SMCCC_1_2_REGS_X16_OFFS]
+
+	/* Restore original x19 */
+	ldp     xzr, x19, [sp], #16
+	ret
+.endm
+
+/*
+ * void arm_smccc_1_2_hvc(struct arm_smccc_1_2_regs *args,
+ *			  struct arm_smccc_1_2_regs *res);
+ */
+SYM_FUNC_START(arm_smccc_1_2_hvc)
+	SMCCC_1_2 hvc
+SYM_FUNC_END(arm_smccc_1_2_hvc)
+EXPORT_SYMBOL(arm_smccc_1_2_hvc)
+
+/*
+ * void arm_smccc_1_2_smc(struct arm_smccc_1_2_regs *args,
+ *			  struct arm_smccc_1_2_regs *res);
+ */
+SYM_FUNC_START(arm_smccc_1_2_smc)
+	SMCCC_1_2 smc
+SYM_FUNC_END(arm_smccc_1_2_smc)
+EXPORT_SYMBOL(arm_smccc_1_2_smc)
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 6861489a1890..a9e0a6d68754 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -227,6 +227,61 @@ struct arm_smccc_res {
 	unsigned long a3;
 };
 
+#ifdef CONFIG_ARM64
+/**
+ * struct arm_smccc_1_2_regs - Arguments for or Results from SMC/HVC call
+ * @a0-a17 argument values from registers 0 to 17
+ */
+struct arm_smccc_1_2_regs {
+	unsigned long a0;
+	unsigned long a1;
+	unsigned long a2;
+	unsigned long a3;
+	unsigned long a4;
+	unsigned long a5;
+	unsigned long a6;
+	unsigned long a7;
+	unsigned long a8;
+	unsigned long a9;
+	unsigned long a10;
+	unsigned long a11;
+	unsigned long a12;
+	unsigned long a13;
+	unsigned long a14;
+	unsigned long a15;
+	unsigned long a16;
+	unsigned long a17;
+};
+
+/**
+ * arm_smccc_1_2_hvc() - make HVC calls
+ * @args: arguments passed via struct arm_smccc_1_2_regs
+ * @res: result values via struct arm_smccc_1_2_regs
+ *
+ * This function is used to make HVC calls following SMC Calling Convention
+ * v1.2 or above. The content of the supplied param are copied from the
+ * structure to registers prior to the HVC instruction. The return values
+ * are updated with the content from registers on return from the HVC
+ * instruction.
+ */
+asmlinkage void arm_smccc_1_2_hvc(struct arm_smccc_1_2_regs *args,
+				  struct arm_smccc_1_2_regs *res);
+
+/**
+ * arm_smccc_1_2_smc() - make SMC calls
+ * @args: arguments passed via struct arm_smccc_1_2_regs
+ * @res: result values via struct arm_smccc_1_2_regs
+ *
+ * This function is used to make SMC calls following SMC Calling Convention
+ * v1.2 or above. The content of the supplied param are copied from the
+ * structure to registers prior to the SMC instruction. The return values
+ * are updated with the content from registers on return from the SMC
+ * instruction.
+ */
+asmlinkage void arm_smccc_1_2_smc(struct arm_smccc_1_2_regs *args,
+				  struct arm_smccc_1_2_regs *res);
+#endif
+
 /**
  * struct arm_smccc_quirk - Contains quirk information
  * @id: quirk identification
-- 
2.25.1

