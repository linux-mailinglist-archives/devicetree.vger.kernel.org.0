Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6226879D7F0
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 19:50:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237031AbjILRuu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 13:50:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236840AbjILRur (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 13:50:47 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 571E21708
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 10:50:43 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1bc0d39b52cso44449435ad.2
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 10:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694541043; x=1695145843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQiwHLQTp/8j8gItu3f4LCSePQxOFgN8ncFMh196Onk=;
        b=o8oicXFZRIf/pt60zd/YZysbGGj4Xr3aPhFkPQGUR/qXmkUayQMcXt5H+KJbGCNxQG
         TMjL01ISotYVOZsstGcnqIOM8KDdVqtYJ1Gm/e01OVTCoVIq/nLh0SZ0R39CD7QSbfIt
         1FLEkNQ8lfjRShLAD8NTHWbJX1/OPCgFZVWUs9Z6uaTtHE9l5ewN54cdRjMQGubq0Csj
         iPB9Yet+wIlXUg8E4whTYFpkuC+Xh0ohtrUz/dHIj2BuJDLCp3BwPVqYP0XLDfZBgTQi
         2x6miusK5lQew3ViMrVq14/Whvhxoeoi/Ue4Eugj/pWk+jaIU0gYJ9ltzJKdxB8eeCid
         4DrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694541043; x=1695145843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQiwHLQTp/8j8gItu3f4LCSePQxOFgN8ncFMh196Onk=;
        b=BlcFGEa41fXdlUBVzOJbryktUSQbVL7Pmzw6x2PO6LO6x3Q0lhZ1IoqcNxSSakKYql
         OD91+ApoMtOBNb2ouDFbsA0cXm5kpWr405smbZCHy2m5S17ItLf/T1oxuUJxtiMMuY9+
         kwheY0Vt2vLVs2TknF908ujL8EieBX518v9aXDrXEO7JH40n7a7LDZigmoflmymuxLPo
         846X6rrLPT4sI/qoLeYLk2oOuToNHOlcaXpg7GCStIInbNCbAiwtoBnYs8hLfFgimq9o
         go02omXCKoMqwKHWCafrar0bFosQObF0wxMM6ejc5VPWC+8HnPbQ9NXZsHbewlFXixb8
         lIxg==
X-Gm-Message-State: AOJu0YytyGos9ta2GgNvTuhohGsSCvIZB4kVJzHfCZhJJwH69I2KLfkl
        hfcD98C2SEDMK15j5WJdL4y78A==
X-Google-Smtp-Source: AGHT+IGb3Y0IGf+T/3c1zAtUXuZiYqxRawUrDacpbGMGlr3qOkr3BMzkiZMB6y6Jfvn0dMIc0zFAPw==
X-Received: by 2002:a17:902:e812:b0:1c3:39f8:3e71 with SMTP id u18-20020a170902e81200b001c339f83e71mr544767plg.18.1694541042718;
        Tue, 12 Sep 2023 10:50:42 -0700 (PDT)
Received: from localhost.localdomain ([171.76.81.83])
        by smtp.gmail.com with ESMTPSA id p12-20020a170902a40c00b001b891259eddsm8691440plq.197.2023.09.12.10.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 10:50:42 -0700 (PDT)
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
Subject: [PATCH v8 04/16] drivers: irqchip/riscv-intc: Mark all INTC nodes as initialized
Date:   Tue, 12 Sep 2023 23:19:16 +0530
Message-Id: <20230912174928.528414-5-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230912174928.528414-1-apatel@ventanamicro.com>
References: <20230912174928.528414-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RISC-V INTC local interrupts are per-HART (or per-CPU) so
we create INTC IRQ domain only for the INTC node belonging to
the boot HART. This means only the boot HART INTC node will be
marked as initialized and other INTC nodes won't be marked which
results downstream interrupt controllers (such as IMSIC and APLIC
direct-mode) not being probed due to missing device suppliers.

To address this issue, we mark all INTC node for which we don't
create IRQ domain as initialized.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-riscv-intc.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index 65f4a2afb381..4e2704bc25fb 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -155,8 +155,16 @@ static int __init riscv_intc_init(struct device_node *node,
 	 * for each INTC DT node. We only need to do INTC initialization
 	 * for the INTC DT node belonging to boot CPU (or boot HART).
 	 */
-	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
+	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id()) {
+		/*
+		 * The INTC nodes of each CPU are suppliers for downstream
+		 * interrupt controllers (such as IMSIC and APLIC direct-mode)
+		 * so we should mark an INTC node as initialized if we are
+		 * not creating IRQ domain for it.
+		 */
+		fwnode_dev_initialized(of_fwnode_handle(node), true);
 		return 0;
+	}
 
 	return riscv_intc_init_common(of_node_to_fwnode(node));
 }
-- 
2.34.1

