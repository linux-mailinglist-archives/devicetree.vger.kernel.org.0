Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB45726BE5
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 22:29:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233546AbjFGU3F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 16:29:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233527AbjFGU3E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 16:29:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13FE7211B
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 13:28:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C9FD6644BC
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 20:28:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CE06C4339B;
        Wed,  7 Jun 2023 20:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686169725;
        bh=0fKSDDjz3zPe0eu/yaZ/RlLyOC+XlCz4Pw01ZOSAsvE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=rTu8mvzuSW/lmWrT1Anj81+LAJjN/CDIiX6Iv1M47X5+VVlJBeHlCWROlicz/RuN7
         3ASMq4Rj9WVTLa7lcMeFJX2wDF/GLOKUrBNP8xJYEBQK/WbRstI7dUPiCMWozWqg9j
         urCR6w0hjUXOt2s8y45BIYUmdiVcIMsoQdivfrPsFZUAxtXnOPzKyjZO5Htzbp0MHZ
         fYB+fqUniMSdV5UeTjQKfY5lazyz0GglXp6D5lmUpOHvqtnErNLY0LRNxuZ8FjCf/I
         EP8I/nY7ospA0nEGaqjzzBH/R5vqQaJlzjPtmmcrLJg9Y6lfan/OkIKMGPRlLu3vax
         ijka5yjkZCKPA==
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
Subject: [PATCH v3 1/7] RISC-V: simplify register width check in ISA string parsing
Date:   Wed,  7 Jun 2023 21:28:25 +0100
Message-Id: <20230607-splatter-bacterium-a75bb9f0d0b7@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607-audacity-overhaul-82bb867a825f@spud>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1686; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=wwT8xONix5hYlJl/8OtHK8R3MNUcN/a19lAVTTeA5Lc=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCkNLzI2ltWpT67dLMN27qTrbmWVi7eSNnTzXt7wSSNkw zon1Sl1HaUsDGIcDLJiiiyJt/tapNb/cdnh3PMWZg4rE8gQBi5OAZjIzVaGv/Jl7fv+mNydtTGN 49CNzU7HRScdVel+Fr2naLXN6modGW6Gf+YF+7T3bWS1eLH4bEdbirvr5PImtSAb5XIBla3r2tK f8AAA
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

Saving off the `isa` pointer to a temp variable, followed by checking if
it has been incremented is a bit of an odd pattern. Perhaps it was done
to avoid a funky looking if statement mixed with the ifdeffery.

Now that we use IS_ENABLED() here just return from the parser as soon as
we detect a mismatch between the string and the currently running
kernel.

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/kernel/cpufeature.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index e3324d661fb9..c8635211fc18 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -126,7 +126,6 @@ void __init riscv_fill_hwcap(void)
 	for_each_possible_cpu(cpu) {
 		unsigned long this_hwcap = 0;
 		DECLARE_BITMAP(this_isa, RISCV_ISA_EXT_MAX);
-		const char *temp;
 
 		if (acpi_disabled) {
 			node = of_cpu_device_node_get(cpu);
@@ -149,14 +148,14 @@ void __init riscv_fill_hwcap(void)
 			}
 		}
 
-		temp = isa;
-		if (IS_ENABLED(CONFIG_32BIT) && !strncasecmp(isa, "rv32", 4))
-			isa += 4;
-		else if (IS_ENABLED(CONFIG_64BIT) && !strncasecmp(isa, "rv64", 4))
-			isa += 4;
-		/* The riscv,isa DT property must start with rv64 or rv32 */
-		if (temp == isa)
+		if (IS_ENABLED(CONFIG_32BIT) && strncasecmp(isa, "rv32", 4))
 			continue;
+
+		if (IS_ENABLED(CONFIG_64BIT) && strncasecmp(isa, "rv64", 4))
+			continue;
+
+		isa += 4;
+
 		bitmap_zero(this_isa, RISCV_ISA_EXT_MAX);
 		for (; *isa; ++isa) {
 			const char *ext = isa++;
-- 
2.39.2

