Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE5B079D7F9
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 19:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236904AbjILRvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 13:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236903AbjILRvF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 13:51:05 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9418810EF
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 10:51:01 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1c39bc0439bso743265ad.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 10:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694541061; x=1695145861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKnkNq9mHXbpDqEgJF2mGpUUpQc6aLvqIlFOdqDcBBw=;
        b=S4E/jZuXTiWMIg/NaauFCatHPXcoIAmMsfBaYhPHgTs/TUjUSQpJBOnfuyqdnThfnM
         +oim4iR+aa1mZXZ7+QqMhtH7FpolcmRybPicqskLj5WBQk6BZ5kh6XpESKCJR9WTmLtf
         memS/0bhuWIRZNyO+n7OREH8Ml/aEoJGyr32F1NIkS3JixNonyotcOjjJYCiSP6hQP+4
         FAH0f1AlJwMtmOZKblBMZQQioCgiSfN/IoxaUESmLylkZvnF2aipwFex3SwdgvT9/YIQ
         kshb7O1hwdgYKaSiX68Rw8PMduyvWNa3TDUfVAOCGQe9gwRRjY4ftOMLgrOg0iyAUmiv
         Pb/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694541061; x=1695145861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VKnkNq9mHXbpDqEgJF2mGpUUpQc6aLvqIlFOdqDcBBw=;
        b=Rhol5ZVp45LFp/B466fxYSkNScAlsuodjNlYe+YfW9qLgzYr5Ima1guAzS6eOQtdIi
         SKUnQu3pbks2GK6XMTUutP4wAHWunL04ACBdu4e4r229vi9i3YqYxvVOhlSRmiqTixJZ
         rgEA42ITO+PTR5xBwa0UaKUtCrRun8yrhOSMUxgfyyLqCHROJGS9ltuCsMpKE/feiHN1
         cke789qGD8P9NVtviLW6fpS9ekfsIH4rKbsEoWH6T6Ah/vwO4qanNHlPaI2W190i6di1
         K01GLplOj6TphszaMaDVieC0I1Z7zOFMAmyiaSoCFBbMnibm991U3UMtdXwoPqKJXB1n
         ZTdA==
X-Gm-Message-State: AOJu0YxX8kmSrtkVbqphCAbeGVGo5YN0emyHECUkn5y4VuG7wlNq4IgZ
        TV/CK2luPR+p/EdEZsV2lryqfg==
X-Google-Smtp-Source: AGHT+IEdBdHH9Btet5Ich4bV21wPWcrSfaR/35rHv6Xb+ixcfghTnrQH+Q3+fa97LNZiXr4guWt+zQ==
X-Received: by 2002:a17:903:22c7:b0:1bc:4415:3c1 with SMTP id y7-20020a17090322c700b001bc441503c1mr4832136plg.7.1694541061020;
        Tue, 12 Sep 2023 10:51:01 -0700 (PDT)
Received: from localhost.localdomain ([171.76.81.83])
        by smtp.gmail.com with ESMTPSA id p12-20020a170902a40c00b001b891259eddsm8691440plq.197.2023.09.12.10.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 10:51:00 -0700 (PDT)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Saravana Kannan <saravanak@google.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v8 07/16] irqchip/riscv-intc: Add support for RISC-V AIA
Date:   Tue, 12 Sep 2023 23:19:19 +0530
Message-Id: <20230912174928.528414-8-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230912174928.528414-1-apatel@ventanamicro.com>
References: <20230912174928.528414-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

We add support for #1 and #2 described above in the RISC-V intc driver.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-riscv-intc.c | 34 ++++++++++++++++++++++++++------
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index 4e2704bc25fb..1a0fc87152c5 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -17,6 +17,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/smp.h>
+#include <asm/hwcap.h>
 
 static struct irq_domain *intc_domain;
 
@@ -30,6 +31,15 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
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
@@ -39,12 +49,18 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
 
 static void riscv_intc_irq_mask(struct irq_data *d)
 {
-	csr_clear(CSR_IE, BIT(d->hwirq));
+	if (IS_ENABLED(CONFIG_32BIT) && d->hwirq >= BITS_PER_LONG)
+		csr_clear(CSR_IEH, BIT(d->hwirq - BITS_PER_LONG));
+	else
+		csr_clear(CSR_IE, BIT(d->hwirq));
 }
 
 static void riscv_intc_irq_unmask(struct irq_data *d)
 {
-	csr_set(CSR_IE, BIT(d->hwirq));
+	if (IS_ENABLED(CONFIG_32BIT) && d->hwirq >= BITS_PER_LONG)
+		csr_set(CSR_IEH, BIT(d->hwirq - BITS_PER_LONG));
+	else
+		csr_set(CSR_IE, BIT(d->hwirq));
 }
 
 static void riscv_intc_irq_eoi(struct irq_data *d)
@@ -115,16 +131,20 @@ static struct fwnode_handle *riscv_intc_hwnode(void)
 
 static int __init riscv_intc_init_common(struct fwnode_handle *fn)
 {
-	int rc;
+	int rc, nr_irqs = riscv_isa_extension_available(NULL, SxAIA) ?
+			  64 : BITS_PER_LONG;
 
-	intc_domain = irq_domain_create_linear(fn, BITS_PER_LONG,
+	intc_domain = irq_domain_create_linear(fn, nr_irqs,
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
@@ -132,7 +152,9 @@ static int __init riscv_intc_init_common(struct fwnode_handle *fn)
 
 	riscv_set_intc_hwnode_fn(riscv_intc_hwnode);
 
-	pr_info("%d local interrupts mapped\n", BITS_PER_LONG);
+	pr_info("%d local interrupts mapped%s\n",
+		nr_irqs, riscv_isa_extension_available(NULL, SxAIA) ?
+			 " using AIA" : "");
 
 	return 0;
 }
-- 
2.34.1

