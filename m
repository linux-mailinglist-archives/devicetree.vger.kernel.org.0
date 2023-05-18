Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7532C708BCB
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 00:40:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbjERWkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 18:40:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjERWkH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 18:40:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE387E69
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 15:40:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 63C2C65185
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0236C4339B;
        Thu, 18 May 2023 22:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684449605;
        bh=fNH0U0ddPL23+LjG48XKUMBUKxpBGJCAGbRKa87Ufl4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=dbiFitFBc7gFgnhgzVC5lXQv2V2vK7sJQX8iNAZ4RKobb2GsUuZukbt3dQS43017b
         jX2q02gTlgMzLA8sxX98q3xGLHyF67y0YgXs5pG6Q9eBZC1Q7s302V+257+/sYiQ9/
         DjPuUci2qYzvEMKcZcEs1eyqqAtUpnKBSSBMdVgcuC1xFgeAjYewR1QRO5Ary58hYl
         y55p8Y51EpCY/WQzxYE2RyGGgACUE99VNS4731zg5cQ8gck0ECk/6nxmSdclFPyVhJ
         vso8lJiyY5+iTm/2GAKyhrjbnyHRAbKqWc2R+IFzb6FdCXx5/65kywCbvfE30PIxwX
         GWo9jLSRFWDkA==
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
Subject: [PATCH v2 2/8] RISC-V: only iterate over possible CPUs in ISA string parser
Date:   Thu, 18 May 2023 23:39:03 +0100
Message-Id: <20230518-stratus-book-ceb796b447b3@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230518-moneybags-rebalance-1484db493d6a@spud>
References: <20230518-moneybags-rebalance-1484db493d6a@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2387; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=gfrG6vfeIhkGsSfvYittGSJQ3UDpu1c3P9oIItwWh6Y=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDClpK9k3bjZd48/KpeDh0n6EfeIaNqakx/KVhqG7BMSLb AK7jb91lLIwiHEwyIopsiTe7muRWv/HZYdzz1uYOaxMIEMYuDgFYCL63Az/Y45xMts0LvPelcYX LOeq6SMa8+1d1HvbFLdLEkbJx7/8Z2Ro9wi5JiR2c/2GpVk/tk754SH5/+TLVZpORfy+Z3b+jHn DAgA=
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

From: Sunil V L <sunilvl@ventanamicro.com>

During boot we call riscv_of_processor_hartid() for each hart that we
add to the possible cpus list. Repeating the call again here is not
required, if we iterate over the list of possible CPUs, rather than the
list of all CPUs.

The call to of_property_read_string() for "riscv,isa" cannot fail
either, as it has previously succeeded in riscv_of_processor_hartid(),
but leaving in the error checking makes the operation of the loop more
obvious & provides leeway for future refactoring of
riscv_of_processor_hartid().

Partially ripped from Sunil's ACPI support series, with the logic
inverted to continue early on failure.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/kernel/cpufeature.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 00df7a3a3931..3ae456413f79 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -12,6 +12,7 @@
 #include <linux/memory.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <asm/alternative.h>
 #include <asm/cacheflush.h>
 #include <asm/cpufeature.h>
@@ -99,7 +100,7 @@ void __init riscv_fill_hwcap(void)
 	char print_str[NUM_ALPHA_EXTS + 1];
 	int i, j, rc;
 	unsigned long isa2hwcap[26] = {0};
-	unsigned long hartid;
+	unsigned int cpu;
 
 	isa2hwcap['i' - 'a'] = COMPAT_HWCAP_ISA_I;
 	isa2hwcap['m' - 'a'] = COMPAT_HWCAP_ISA_M;
@@ -112,15 +113,19 @@ void __init riscv_fill_hwcap(void)
 
 	bitmap_zero(riscv_isa, RISCV_ISA_EXT_MAX);
 
-	for_each_of_cpu_node(node) {
+	for_each_possible_cpu(cpu) {
 		unsigned long this_hwcap = 0;
 		DECLARE_BITMAP(this_isa, RISCV_ISA_EXT_MAX);
 
-		rc = riscv_of_processor_hartid(node, &hartid);
-		if (rc < 0)
+		node = of_cpu_device_node_get(cpu);
+		if (!node) {
+			pr_warn("Unable to find cpu node\n");
 			continue;
+		}
 
-		if (of_property_read_string(node, "riscv,isa", &isa)) {
+		rc = of_property_read_string(node, "riscv,isa", &isa);
+		of_node_put(node);
+		if (rc) {
 			pr_warn("Unable to find \"riscv,isa\" devicetree entry\n");
 			continue;
 		}
-- 
2.39.2

