Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A25B76D0D9
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 17:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234934AbjHBPBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 11:01:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234806AbjHBPAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 11:00:55 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A3332D61
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 08:00:54 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1bbf3da0ea9so32790705ad.2
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 08:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690988453; x=1691593253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQiwHLQTp/8j8gItu3f4LCSePQxOFgN8ncFMh196Onk=;
        b=ZomLOjM+VT6Cw3N5/+aCAaLAk42zY+8L2aSAhwag6o0AC1SuBanAiEBPbWlQpjfY25
         90787ZIEmTeCxFHBMZwcKAO7Cyilf5SQQ8D1Pqols+wN9JlKhaxz3kCozc/xvoX6dr+V
         yDHcJn2LKQHDhFFpOr/O22m3nlGbPS2O/84alqq7oHQVaOAhe59yCVQF2gBtGPNmnHFU
         xiaiSXFO8ZQOt0ASrjGrT5Ba7jJREuvWSeCk0yufWxsvuECt8u429GaxJ04wZuY5us8j
         dXZ6gchBReOYyElrJbsR2O4UziIysUOhwBLkz5SDanYEwt+N/p//aU29xEPe4/zitSAo
         Tgfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690988453; x=1691593253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQiwHLQTp/8j8gItu3f4LCSePQxOFgN8ncFMh196Onk=;
        b=FfZtWOHZebhTadlDv2gZlqKhvRT2yjZLiXQfSX7t5L6sdpGVZrltDApim3pF+HRLF8
         4vcgZIX4IXwLAHSdP+7+Py4U565AcQYipjsAJL9l1JvQVI9NUOHZZmw7XHvpetOJvcXw
         I0znF7htuqe5mkwiqPPFVH2mSZbfSc33BWC0fuLJ7AEg2XUsi4MjeLF+xfj5p2/8Z/q/
         Z/pSzPnoNJr3bfPBDIZCX1wPdimNsw26MDuzOBwhmid+dJmW0hemn3Nj8gIX5XYocTT3
         bVvfYo3Hlmgt6MwJc+cs1QNQjsHlael3VAB4ar7Xe69VLKlIZDpZT/Z1uM3cWOMjCHom
         F5uA==
X-Gm-Message-State: ABy/qLbD+e5ElYFO6EHygoMLJzxu60AZ6i2heJa/4Mxos8/mCSoPeqdb
        CIHNkWd7ywZmkorZ4DBnb4K3OA==
X-Google-Smtp-Source: APBJJlFB0C5d4eEtvQpqPpM4k4lWMlz5Q7YpzR1VjeZ8GawMXDnCiEPox11VwWBk/t89yzZF66RyGA==
X-Received: by 2002:a17:902:8216:b0:1b8:c6:ec8f with SMTP id x22-20020a170902821600b001b800c6ec8fmr12525721pln.46.1690988453272;
        Wed, 02 Aug 2023 08:00:53 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id v11-20020a1709028d8b00b001bb99e188fcsm12503963plo.194.2023.08.02.08.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 08:00:52 -0700 (PDT)
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
Subject: [PATCH v7 03/15] drivers: irqchip/riscv-intc: Mark all INTC nodes as initialized
Date:   Wed,  2 Aug 2023 20:30:06 +0530
Message-Id: <20230802150018.327079-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230802150018.327079-1-apatel@ventanamicro.com>
References: <20230802150018.327079-1-apatel@ventanamicro.com>
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

