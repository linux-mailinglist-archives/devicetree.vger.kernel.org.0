Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9802F708BD8
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 00:40:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231128AbjERWkZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 18:40:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230514AbjERWkY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 18:40:24 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B25DDE69
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 15:40:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3A8A26524B
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:40:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75517C433EF;
        Thu, 18 May 2023 22:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684449621;
        bh=nw+ar3lSZTgvdorsVETbRqm1nYKJHrwh+sWkkOaRg80=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=clcu9hN6AHQ3Vn1S4vwhdmd5cYg06Z6bONy3iA7rIKmGHDGsxwyASpwNFoMdE2Jln
         Z6aOrFXkFNe8vxN03dhFoDdTJGAPpr5+GC2qLwgs3DG4O+wYGQKHio6s/d8cDCEuq7
         EF49zOsSVCaIxJO+CJc4xmiVrq6bYKYVOxjnd5KoOrVO9U2f2EabAdbORfdgNTG1FY
         35eHeuntmV/Sg1xTH9WKw7BvTZaUJfiyigOC8dNA0CiifR6DbL8RkIQz04L4FYpVlY
         17o3kybr0g0N2ijbTZihH7dTjzDvwFIzkpjsiMfR4TFn+rUfqJfvGLDAEkWuXJsrKA
         T4wxwq7VDErxw==
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
Subject: [PATCH v2 8/8] RISC-V: always report presence of extenstions formerly part of the base ISA
Date:   Thu, 18 May 2023 23:39:09 +0100
Message-Id: <20230518-otter-pennant-f3c9c6126b66@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230518-moneybags-rebalance-1484db493d6a@spud>
References: <20230518-moneybags-rebalance-1484db493d6a@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2785; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=mMbnx79Cnsy3EzOX7AC8PrNjk22zJMA5eUAfTDDlqRA=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDClpKzknmwtO8UjLE1R+9O5mb432glkL/fbOPiyvUFMXy Xz58l6XjlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAExkXz/DPwXGSh65ZvlJfjkr qjxufXuVfip2o65V581n0nybRM6KX2L4Z//4oXXirJyjSz6c4Lz3PaqwNylnXWjUEo2yAJ/yCK4 4fgA=
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

These four extensions were part of the base ISA when the port was written
and are required by the kernel. There's not much that userspace can do
with this extra information, but there is no harm in reporting an ISA
string that closer resembles the current versions of the ISA
specifications either.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
Intentionally avoided your conditional tag here Drew.
---
 arch/riscv/include/asm/hwcap.h |  4 ++++
 arch/riscv/kernel/cpu.c        |  4 ++++
 arch/riscv/kernel/cpufeature.c | 10 ++++++++++
 3 files changed, 18 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 9af793970855..302f06191056 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -44,6 +44,10 @@
 #define RISCV_ISA_EXT_ZIHINTPAUSE	32
 #define RISCV_ISA_EXT_SVNAPOT		33
 #define RISCV_ISA_EXT_ZICBOZ		34
+#define RISCV_ISA_EXT_ZICNTR		35
+#define RISCV_ISA_EXT_ZICSR		36
+#define RISCV_ISA_EXT_ZIFENCEI		37
+#define RISCV_ISA_EXT_ZIHPM		38
 
 #define RISCV_ISA_EXT_MAX		64
 #define RISCV_ISA_EXT_NAME_LEN_MAX	32
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index b0c3ec0f2f5b..958073bd3451 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -206,7 +206,11 @@ arch_initcall(riscv_cpuinfo_init);
 static struct riscv_isa_ext_data isa_ext_arr[] = {
 	__RISCV_ISA_EXT_DATA(zicbom, RISCV_ISA_EXT_ZICBOM),
 	__RISCV_ISA_EXT_DATA(zicboz, RISCV_ISA_EXT_ZICBOZ),
+	__RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
+	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),
+	__RISCV_ISA_EXT_DATA(zifencei, RISCV_ISA_EXT_ZIFENCEI),
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
+	__RISCV_ISA_EXT_DATA(zihpm, RISCV_ISA_EXT_ZIHPM),
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index bbf3cd203fad..1b43d1fb31e4 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -291,6 +291,16 @@ void __init riscv_fill_hwcap(void)
 #undef SET_ISA_EXT_MAP
 		}
 
+		/*
+		 * Linux requires the following extensions, as they were part of
+		 * the base ISA when the port & dt-bindings were upstreamed, so
+		 * we may as well always set them.
+		 */
+		set_bit(RISCV_ISA_EXT_ZICNTR, this_isa);
+		set_bit(RISCV_ISA_EXT_ZICSR, this_isa);
+		set_bit(RISCV_ISA_EXT_ZIFENCEI, this_isa);
+		set_bit(RISCV_ISA_EXT_ZIHPM, this_isa);
+
 		/*
 		 * All "okay" hart should have same isa. Set HWCAP based on
 		 * common capabilities of every "okay" hart, in case they don't
-- 
2.39.2

