Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A79976D0CD
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 17:00:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234709AbjHBPAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 11:00:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234725AbjHBPAq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 11:00:46 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6E182D4C
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 08:00:41 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1bc02bd4eafso34473485ad.1
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 08:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690988441; x=1691593241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MFifZoeBHO5EvFOj+ZbSo7s64eoTFIfH2fAZl0Owb5c=;
        b=n+5956oQdCieWbAT985RXUNhoICmFY5KgB5CPz+S1dAzLwHhVtlyrfMhzuDo1pgn5i
         I103huNg2rg1eFNtxP09qVmV4M9cz0zRaxFYZIPK0OqcXkIU9Dt/P0PFXjWbQa/hw2rv
         RaCOvHsBCOWQU0SDy2Lqy9tQe2CXWRs6S80S5zHd08NkAn6DwYNV3Vor7TT+0tCdFdCK
         1cVGYmc6eX1EDceYb8v21y2D2EHcvaKFA0ZXexb1GyirZ7/kPmYXud67u+RtWKlWSBSB
         V1KtS5XIQHaRMOmI3fq+ZfRDvwmRzNvzUhj8hr1t7ITYJqLbsoVsp8ouE9ruzOm+9Fxa
         gv1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690988441; x=1691593241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MFifZoeBHO5EvFOj+ZbSo7s64eoTFIfH2fAZl0Owb5c=;
        b=Rw7p/t6FORpZiOG0PKm3FzBZw7lXLX3K1pKLzRFsN/ccSB52Rg/V4s9bjq3c/2vgcG
         bpjskiI/Y/wrwATv9cRTJ69qGaAB+KkHLIR9OL4Nqjrn10CWYqw9jCQkHWtyBTFJE0Yl
         ykHuSeXphWpqdK6kB6S5z8G8cqVCReo8ZZ7aMCMPbwWevphsxe2VRaNx1WdZfI0Nue/Q
         qudKrC7To10JQnQ3X9TEy1apHW+cOezD/WdDy9kMEmi5WHJFJRunGYdMhCOvUtJBNyIB
         ndbLyyeyQf5E8FL3oTo0mc1i6N552uB9fanAsA1epF1jO2ZQCNq+fMaiEuP4FzgFaNh3
         urqw==
X-Gm-Message-State: ABy/qLZ8xtC4spxDYCwiDACz2znIbbAulk8dIhnb+2Nz1beiWIxliQRv
        8ZGnmp+DIRTHarn5Pm1J2rrUTg==
X-Google-Smtp-Source: APBJJlFcsFE4thzxrSFwk3JFPJgrjeItq2mzQ0ltJzpgGpoYYpR5L/UVU8HTXe82BLKT8FGXj90qSQ==
X-Received: by 2002:a17:903:41cf:b0:1b8:a65f:b49d with SMTP id u15-20020a17090341cf00b001b8a65fb49dmr19389598ple.12.1690988441018;
        Wed, 02 Aug 2023 08:00:41 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id v11-20020a1709028d8b00b001bb99e188fcsm12503963plo.194.2023.08.02.08.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 08:00:40 -0700 (PDT)
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
Subject: [PATCH v7 01/15] RISC-V: Add riscv_get_intc_hartid() function
Date:   Wed,  2 Aug 2023 20:30:04 +0530
Message-Id: <20230802150018.327079-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230802150018.327079-1-apatel@ventanamicro.com>
References: <20230802150018.327079-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We add a common riscv_get_intc_hartid() which help device drivers to
get hartid of the HART associated with a INTC (i.e. local interrupt
controller) fwnode. This new function is more generic compared to
the existing riscv_of_parent_hartid() function hence we also replace
use of riscv_of_parent_hartid() with riscv_get_intc_hartid().

Also, while we are here let us update riscv_of_parent_hartid() to
always return the hartid irrespective whether the CPU/HART DT node
is disabled or not.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/processor.h |  4 +++-
 arch/riscv/kernel/cpu.c            | 26 ++++++++++++++++++++------
 drivers/irqchip/irq-riscv-intc.c   |  2 +-
 drivers/irqchip/irq-sifive-plic.c  |  3 ++-
 4 files changed, 26 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index c950a8d9edef..662da1e112dd 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -79,7 +79,9 @@ static inline void wait_for_interrupt(void)
 struct device_node;
 int riscv_of_processor_hartid(struct device_node *node, unsigned long *hartid);
 int riscv_early_of_processor_hartid(struct device_node *node, unsigned long *hartid);
-int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid);
+
+struct fwnode_handle;
+int riscv_get_intc_hartid(struct fwnode_handle *node, unsigned long *hartid);
 
 extern void riscv_fill_hwcap(void);
 extern int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src);
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index a2fc952318e9..c3eaa8a55bbe 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -81,21 +81,35 @@ int riscv_early_of_processor_hartid(struct device_node *node, unsigned long *har
  * To achieve this, we walk up the DT tree until we find an active
  * RISC-V core (HART) node and extract the cpuid from it.
  */
-int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid)
+static int riscv_of_parent_hartid(struct device_node *node,
+				  unsigned long *hartid)
 {
-	int rc;
-
 	for (; node; node = node->parent) {
 		if (of_device_is_compatible(node, "riscv")) {
-			rc = riscv_of_processor_hartid(node, hartid);
-			if (!rc)
-				return 0;
+			*hartid = (unsigned long)of_get_cpu_hwid(node, 0);
+			return 0;
 		}
 	}
 
 	return -1;
 }
 
+/* Find hart ID of the INTC fwnode. */
+int riscv_get_intc_hartid(struct fwnode_handle *node, unsigned long *hartid)
+{
+	int rc;
+	u64 temp;
+
+	if (!is_of_node(node)) {
+		rc = fwnode_property_read_u64_array(node, "hartid", &temp, 1);
+		if (!rc)
+			*hartid = temp;
+	} else
+		rc = riscv_of_parent_hartid(to_of_node(node), hartid);
+
+	return rc;
+}
+
 DEFINE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
 
 unsigned long riscv_cached_mvendorid(unsigned int cpu_id)
diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index 4adeee1bc391..65f4a2afb381 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -143,7 +143,7 @@ static int __init riscv_intc_init(struct device_node *node,
 	int rc;
 	unsigned long hartid;
 
-	rc = riscv_of_parent_hartid(node, &hartid);
+	rc = riscv_get_intc_hartid(of_fwnode_handle(node), &hartid);
 	if (rc < 0) {
 		pr_warn("unable to find hart id for %pOF\n", node);
 		return 0;
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index e1484905b7bd..56b0544b1f27 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -477,7 +477,8 @@ static int __init __plic_init(struct device_node *node,
 			continue;
 		}
 
-		error = riscv_of_parent_hartid(parent.np, &hartid);
+		error = riscv_get_intc_hartid(of_fwnode_handle(parent.np),
+					      &hartid);
 		if (error < 0) {
 			pr_warn("failed to parse hart ID for context %d.\n", i);
 			continue;
-- 
2.34.1

