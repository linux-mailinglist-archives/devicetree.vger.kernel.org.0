Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A046708BCA
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 00:40:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229966AbjERWkF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 18:40:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229767AbjERWkF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 18:40:05 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F296E5F
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 15:40:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C6F4C65185
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:40:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AEF2C433D2;
        Thu, 18 May 2023 22:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684449603;
        bh=0iyL9k1Jaj64q4oxVb6SvqoQrp+wDnfG/2eO7QyZsgU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=orfkk0dIDs0uERDJ62xbr2p1Pks35ZbpWpfqb2RMnxs2lSeqTYO6DOdWxnJhcq6HW
         f2UHqN1EGUfz4pXXjVX1ksqKyKUS27qJ5Si5LUG15IdA2W6OQPEVEzWm/Pl/vWvTmA
         7JPP7Fm+938J1ddpX9Y7MWkNWFBeKICZkxkKU4TLxotii9dHrGQDvA0HZ7L9LkYCOe
         JyvnGYYdHIsiy2a+MJQjSL21bVjnOzH4TC/mGA5aSNMUceI9KD3NI7QvBw+2steXcD
         dLH7wA/oEAwNggef6MVjV4j91ahlSlYaRWyevbqS3qDAHKp7YFM2oeo+NAWY3pFfRb
         NT5fzpqjCTRCQ==
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
Subject: [PATCH v2 1/8] RISC-V: simplify register width check in ISA string parsing
Date:   Thu, 18 May 2023 23:39:02 +0100
Message-Id: <20230518-resale-slashing-b84875213dc6@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230518-moneybags-rebalance-1484db493d6a@spud>
References: <20230518-moneybags-rebalance-1484db493d6a@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1695; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=Aq4T7VznL+Hvu6R8rvm8DMqHfewRhohUdvadLXgTZkI=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDClpK9nzj3nY7C1eue77v6tXvRbpWN2a/Xf240tsDa+FR A1nZ8c5dJSyMIhxMMiKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiG1kY/inJ9VxKXVcalBar cTRF68W0V1stn0tIM/1d/OZ+heN6NiOG/yW2nRcqn3Dy3Ff9LeN3U1baSu2vrtZkmxcqZ7eUvol 6xggA
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
index cb32658180da..00df7a3a3931 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -115,7 +115,6 @@ void __init riscv_fill_hwcap(void)
 	for_each_of_cpu_node(node) {
 		unsigned long this_hwcap = 0;
 		DECLARE_BITMAP(this_isa, RISCV_ISA_EXT_MAX);
-		const char *temp;
 
 		rc = riscv_of_processor_hartid(node, &hartid);
 		if (rc < 0)
@@ -126,14 +125,14 @@ void __init riscv_fill_hwcap(void)
 			continue;
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

