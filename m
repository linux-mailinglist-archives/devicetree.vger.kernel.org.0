Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 028DC708BCD
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 00:40:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230280AbjERWkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 18:40:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230220AbjERWkN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 18:40:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 485D4E6B
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 15:40:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 96F456524B
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:40:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5376C433D2;
        Thu, 18 May 2023 22:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684449611;
        bh=jZKnT1m7eWC6A6hO0IFJethc7rVaQmUoMS4W8xx3UQ0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=n+bRfTxwQVwKD4hS0YdmPeoljhZqPFt5hx4SMIGSCTYOs4UYLr30eaczOTdOU7k6x
         qbb91kXeiOVKI4X8susJifg97a25Vq12fHAyH4PaXZhZohKXdScz+I+q2SoSi85VJD
         vwjIpDGuj+vgWsPxhcNdDY37g7HGGPmYV0FluayDAQlkWn8Bbt+ccclKm4zNt7LKue
         VUU3IQ3GRs7cxDoXJc00nOf0znnIX2P8BxTA8h03z0RZIwABf8Nj4DyywGHdRIloX2
         A+s0z69QnMd0XT1MbynpmAchoU3MYkiK2zMumDq/NOWR0H6I1z/P4bW1gob2L2goBO
         JZnb8PiCVlUbg==
From:   Conor Dooley <conor@kernel.org>
To:     palmer@dabbelt.com
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 4/8] RISC-V: validate riscv,isa at boot, not during ISA string parsing
Date:   Thu, 18 May 2023 23:39:05 +0100
Message-Id: <20230518-despair-cannon-0c344a70aa9e@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230518-moneybags-rebalance-1484db493d6a@spud>
References: <20230518-moneybags-rebalance-1484db493d6a@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2004; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=odpPs/uqbxvNKy0OmAehTD0ifuZfZw2FYVzH2z9z9iw=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDClpKzn+df1eap1ivPXLHHmPlqu8MgwG3859nN6a5Nmzg b0vaDtfRykLgxgHg6yYIkvi7b4WqfV/XHY497yFmcPKBDKEgYtTACbC9o7hn7ldQOftF9WPNQ/k /NVo079p+1u99kcf7/xJYlMen6s5x8bIMOl3HUfOAflfRT+U91ziPnjec+/jH+fuKyoKxs5ZMKN xARMA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Since riscv_fill_hwcap() now only iterates over possible cpus, the
basic validation of whether riscv,isa contains "rv<width>" can be moved
to riscv_early_of_processor_hartid().

Further, "ima" support is required by the kernel, so reject any CPU not
fitting the bill.

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/kernel/cpu.c        |  8 +++++---
 arch/riscv/kernel/cpufeature.c | 12 ++++++------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 7030a5004f8e..b0c3ec0f2f5b 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -63,10 +63,12 @@ int riscv_early_of_processor_hartid(struct device_node *node, unsigned long *har
 		pr_warn("CPU with hartid=%lu has no \"riscv,isa\" property\n", *hart);
 		return -ENODEV;
 	}
-	if (tolower(isa[0]) != 'r' || tolower(isa[1]) != 'v') {
-		pr_warn("CPU with hartid=%lu has an invalid ISA of \"%s\"\n", *hart, isa);
+
+	if (IS_ENABLED(CONFIG_32BIT) && strncasecmp(isa, "rv32ima", 7))
+		return -ENODEV;
+
+	if (IS_ENABLED(CONFIG_64BIT) && strncasecmp(isa, "rv64ima", 7))
 		return -ENODEV;
-	}
 
 	return 0;
 }
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 3ae456413f79..a79c5c52a174 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -130,12 +130,12 @@ void __init riscv_fill_hwcap(void)
 			continue;
 		}
 
-		if (IS_ENABLED(CONFIG_32BIT) && strncasecmp(isa, "rv32", 4))
-			continue;
-
-		if (IS_ENABLED(CONFIG_64BIT) && strncasecmp(isa, "rv64", 4))
-			continue;
-
+		/*
+		 * For all possible cpus, we have already validated in
+		 * the boot process that they at least contain "rv" and
+		 * whichever of "32"/"64" this kernel supports, and so this
+		 * section can be skipped.
+		 */
 		isa += 4;
 
 		bitmap_zero(this_isa, RISCV_ISA_EXT_MAX);
-- 
2.39.2

