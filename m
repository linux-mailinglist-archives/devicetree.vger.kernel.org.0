Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4B9F726BF5
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 22:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233610AbjFGU3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 16:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233602AbjFGU3T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 16:29:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0B2F269A
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 13:29:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0F3F7644C1
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 20:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47EBAC433A0;
        Wed,  7 Jun 2023 20:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686169730;
        bh=hJ38CPjxWwjX4V8XKtRn/M80pqJIL4wsmO+H2FqHFgA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=J6GZDEBNvEbqPckqQAG9sc+1v+oU++bsVa661H2Gt8mtcuake5RIz7my4qS7+6/vJ
         w8h+hfdeSnr/ZhnAV7mGW1hIwqFa9nbmbo2qy+S7ZxMcFBw5/Iz8CU03gttgudGpoy
         R1JoyE1nJHHoF9Q7u2lrEIn7Ja3mkxeZF2VQqpreAfg9GU/ASp3Hj0D3DgHvO94/I9
         a1sf4taodGsr+kcrVA6kvCSS89pSzoakn0pz4qbIc8w/DvpShi7LUVhMNzSZxbuvAf
         K5oe/lXndSzr2z+S8zh7C/TEDvJymwPUTJPPItPmEWREeTqKKs3vay5+96iHyx2kGH
         xdEkP9NvNoIEQ==
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
Subject: [PATCH v3 3/7] RISC-V: validate riscv,isa at boot, not during ISA string parsing
Date:   Wed,  7 Jun 2023 21:28:27 +0100
Message-Id: <20230607-guts-blurry-67e711acf328@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607-audacity-overhaul-82bb867a825f@spud>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1996; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=OFfsnmkyItfIBILoPmIAAAogZG8wbQXtmYDyF7w+9u4=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCkNLzLlLrGJrswqDD3q75XFuefGQb7GO3/Xt4emM/E7W oV2ZL3rKGVhEONgkBVTZEm83dcitf6Pyw7nnrcwc1iZQIYwcHEKwES2fGVkWCPtUR/VqdQmVXFp yiKdDwdyI15uifO8PW1TrpfLFz/jZkaG50d5FsVa9TSrrD0qxuW5fuV5m+uRYge29N86ZyFyPoO dCQA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
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
index 8025de06edb7..dfb4a2a61050 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -65,10 +65,12 @@ int riscv_early_of_processor_hartid(struct device_node *node, unsigned long *har
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
index c8635211fc18..c3851c8cfa9c 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -148,12 +148,12 @@ void __init riscv_fill_hwcap(void)
 			}
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

