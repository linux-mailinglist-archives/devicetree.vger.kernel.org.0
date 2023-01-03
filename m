Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B0E565C1AD
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 15:16:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237873AbjACOPd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 09:15:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237982AbjACOOi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 09:14:38 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F5371181E
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 06:14:33 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id f3so20210595pgc.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 06:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sMnEu1L7WFfep+GtEK3XbJoNHy7vRLVmrYxDUF3pXUo=;
        b=SiKPY3h/+9QEDnzkM6/2/4jx9hnsbrjoGkusw+bqIV00BTHZgnJU/z3vR7NH8UkLCX
         MVCfaH2Ullt0x5D0HZZKT5PPk9gnALZQoecgANY7tgYoy/Ek3vzTCVq8IsvkwwyvZaRz
         hfvy8BD5m7FHvUxCJZ2/THWuUht24BdVVooFkzN8qG5HUMd2zejSzHFqjTSzKiAn4SoN
         lPC7iA6xcFKqUTF1vdxfGG4fR9ux91j9f2wtRDYPeIMgm8A4sIhaIxvEy3UKxEMlY1AO
         Yd7DZu3x1fg6Amhv6We8zy4YMbnfOsLahh7dmS7LsFVj9UT8dSZtIJJJegt0uGAJy6lX
         thEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sMnEu1L7WFfep+GtEK3XbJoNHy7vRLVmrYxDUF3pXUo=;
        b=Clh9LOm6yH27aTXkMFnZwx6KaYxQPHu4VirbIMb2K1xgwBR1QSNvZpGLwez8pmgcNn
         6GLsn1XUeZ1jHHlICxKrbu6ZEPTQTeSLLX5nP4CymcaYOdpzCRJWQODbCEHBwf/meL1/
         BKVSZuQPsQqE5ADgsx8c7jJYT25Q4oJaYaBic4ugFi4n9cjyN3iGYaSv5o+Yzmp+yLT6
         fBtBxdu/BGa0vbAi5F8j355YP33gPlSnENaBPCxE3f/1H5sve28NBAqdViMEr2H/7BMY
         /soSAU57+8jJ+HK7ft0Gc5NmBiEJf34t3sugcz9wVYqQyWvebs6If7Tdpw7zel6ouen/
         ioRw==
X-Gm-Message-State: AFqh2krkNy1ajka+2Kxj7KZfRzlX3iVI+5J1oafzAWoINDRhY2dymCY4
        lM+E/DjiLR0bihd/XYYlnd0MlA==
X-Google-Smtp-Source: AMrXdXtXDJqCqs/z8eCUFfnfYZgkufc/9nvHnLgJ8ivBhVDFka0v/ZeE33WoH5DpPi+xlC2/Yvfdxw==
X-Received: by 2002:aa7:99cb:0:b0:580:d188:f516 with SMTP id v11-20020aa799cb000000b00580d188f516mr41042481pfi.19.1672755272500;
        Tue, 03 Jan 2023 06:14:32 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.85.241])
        by smtp.gmail.com with ESMTPSA id h1-20020a628301000000b0056be4dbd4besm5936035pfe.111.2023.01.03.06.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 06:14:32 -0800 (PST)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 3/9] irqchip/riscv-intc: Add support for RISC-V AIA
Date:   Tue,  3 Jan 2023 19:44:03 +0530
Message-Id: <20230103141409.772298-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103141409.772298-1-apatel@ventanamicro.com>
References: <20230103141409.772298-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RISC-V advanced interrupt architecture (AIA) extends the per-HART
local interrupts in following ways:
1. Minimum 64 local interrupts for both RV32 and RV64
2. Ability to process multiple pending local interrupts in same
   interrupt handler
3. Priority configuration for each local interrupts
4. Special CSRs to configure/access the per-HART MSI controller

This patch adds support for RISC-V AIA in the RISC-V intc driver.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-riscv-intc.c | 37 ++++++++++++++++++++++++++------
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index f229e3e66387..880d1639aadc 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -16,6 +16,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/smp.h>
+#include <asm/hwcap.h>
 
 static struct irq_domain *intc_domain;
 
@@ -29,6 +30,15 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
 	generic_handle_domain_irq(intc_domain, cause);
 }
 
+static asmlinkage void riscv_intc_aia_irq(struct pt_regs *regs)
+{
+	unsigned long topi;
+
+	while ((topi = csr_read(CSR_TOPI)))
+		generic_handle_domain_irq(intc_domain,
+					  topi >> TOPI_IID_SHIFT);
+}
+
 /*
  * On RISC-V systems local interrupts are masked or unmasked by writing
  * the SIE (Supervisor Interrupt Enable) CSR.  As CSRs can only be written
@@ -38,12 +48,18 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
 
 static void riscv_intc_irq_mask(struct irq_data *d)
 {
-	csr_clear(CSR_IE, BIT(d->hwirq));
+	if (d->hwirq < BITS_PER_LONG)
+		csr_clear(CSR_IE, BIT(d->hwirq));
+	else
+		csr_clear(CSR_IEH, BIT(d->hwirq - BITS_PER_LONG));
 }
 
 static void riscv_intc_irq_unmask(struct irq_data *d)
 {
-	csr_set(CSR_IE, BIT(d->hwirq));
+	if (d->hwirq < BITS_PER_LONG)
+		csr_set(CSR_IE, BIT(d->hwirq));
+	else
+		csr_set(CSR_IEH, BIT(d->hwirq - BITS_PER_LONG));
 }
 
 static void riscv_intc_irq_eoi(struct irq_data *d)
@@ -115,7 +131,7 @@ static struct fwnode_handle *riscv_intc_hwnode(void)
 static int __init riscv_intc_init(struct device_node *node,
 				  struct device_node *parent)
 {
-	int rc;
+	int rc, nr_irqs;
 	unsigned long hartid;
 
 	rc = riscv_of_parent_hartid(node, &hartid);
@@ -133,14 +149,21 @@ static int __init riscv_intc_init(struct device_node *node,
 	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
 		return 0;
 
-	intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
+	nr_irqs = BITS_PER_LONG;
+	if (riscv_isa_extension_available(NULL, SxAIA) && BITS_PER_LONG == 32)
+		nr_irqs = nr_irqs * 2;
+
+	intc_domain = irq_domain_add_linear(node, nr_irqs,
 					    &riscv_intc_domain_ops, NULL);
 	if (!intc_domain) {
 		pr_err("unable to add IRQ domain\n");
 		return -ENXIO;
 	}
 
-	rc = set_handle_irq(&riscv_intc_irq);
+	if (riscv_isa_extension_available(NULL, SxAIA))
+		rc = set_handle_irq(&riscv_intc_aia_irq);
+	else
+		rc = set_handle_irq(&riscv_intc_irq);
 	if (rc) {
 		pr_err("failed to set irq handler\n");
 		return rc;
@@ -148,7 +171,9 @@ static int __init riscv_intc_init(struct device_node *node,
 
 	riscv_set_intc_hwnode_fn(riscv_intc_hwnode);
 
-	pr_info("%d local interrupts mapped\n", BITS_PER_LONG);
+	pr_info("%d local interrupts mapped%s\n",
+		nr_irqs, (riscv_isa_extension_available(NULL, SxAIA)) ?
+			 " using AIA" : "");
 
 	return 0;
 }
-- 
2.34.1

