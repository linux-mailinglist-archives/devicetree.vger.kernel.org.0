Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B6EA69E80E
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:09:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbjBUTJc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbjBUTJ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:29 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5BDD2FCCC
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:25 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id ck15so22612743edb.0
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=34NFoNBQKweqYqqRRhyhG2y14f8qhVJaos3C6Zb1qCA=;
        b=NyDRWGQLHDM4WE1MYSCVp6YW+mR5oILACbgX2cpEbZ+C1DA4Z8a4rlbPwZC2sOFHwf
         cvtP4Kpv/sZisnUc7GoEl3D7AYs9j/bPLf7FoggpE5+IaNqHPNbdm/EF9OyKjWd9pxE2
         maV7OKvNYzIJ59NRQ8+JHyuK2aCSn6MEytvF8cC2+Uta/54D4d1eKP1iOHsN3KLPE/ya
         jjjuouOa5gFoXNYvY+OfVjdmbCvAl0y86fEmEF2f3KSS66UsrVKNGzXOAr3YECL+G8yK
         l05TJwz4xo3MExkf17ynt3J7nCTQQfP/E2yDzqhZc4+RO7GrIgT12sedGQazDqKkgBte
         Z2rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=34NFoNBQKweqYqqRRhyhG2y14f8qhVJaos3C6Zb1qCA=;
        b=s3EdzCxuQAXPhQRxAAikSd2kdQoGgffiCF4ixJJXs/Bd2DZuMohx5qG/Q+kJDs537c
         jJRtWRDhFFFNe4iAIhtBCN2DMq+HnaX9pvz3HH8NCVPRVcmLAeXW0kTA/8VsiDIJeOlU
         gzYj9JfGrGdxDX5ETSxFmeLCwk0apEjERkxyAcrOEOHCKL/bC+R7Xh3XWhI3twMtkCWi
         bxrNxATYvS6pmIBqipPvVOZOoE9Tfc95Sz/W6bcr4PERNz3j8r5f4UfPMUwP5d0SY1V1
         sNa+HfD1pWJUp9ro6xbnbMZJD7Vkrp2av7CBTwzPBYmzBIMe8jWo707gQCjOX+xRaeIV
         +8dQ==
X-Gm-Message-State: AO0yUKX9jbbnCOfuuq8oVAPO92fZvtyucP7A49MWj6dFBUx68/5FVYjx
        n4+tr4pcvt+cbv4DkfDCfVeH7w==
X-Google-Smtp-Source: AK7set+rFsFWbTWMLIdMY+Q2/Z4HCUYcZHJSaxWuUbHlYQ1cFc34yRDDdrx0axW4+oXkdSAylmamTQ==
X-Received: by 2002:aa7:d705:0:b0:4ac:89b:b605 with SMTP id t5-20020aa7d705000000b004ac089bb605mr7342612edq.22.1677006565381;
        Tue, 21 Feb 2023 11:09:25 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id i25-20020a508719000000b004acb42134c4sm2040769edb.70.2023.02.21.11.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:25 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org
Cc:     'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: [PATCH v5 5/8] riscv: cpufeatures: Put the upper 16 bits of patch ID to work
Date:   Tue, 21 Feb 2023 20:09:13 +0100
Message-Id: <20230221190916.572454-6-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221190916.572454-1-ajones@ventanamicro.com>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

cpufeature IDs are consecutive integers starting at 26, so a 32-bit
patch ID allows an aircraft carrier load of feature IDs. Repurposing
the upper 16 bits still leaves a boat load of feature IDs and gains
16 bits which may be used to control patching on a per patch-site
basis.

This will be initially used in Zicboz's application to clear_page(),
as Zicboz's block size must also be considered. In that case, the
upper 16-bit value's role will be to convey the maximum block size
which the Zicboz clear_page() implementation supports.

cpufeature patch sites which need to check for the existence or
absence of other cpufeatures may also be able to make use of this.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/alternative.h |  3 +++
 arch/riscv/kernel/cpufeature.c       | 37 +++++++++++++++++++++++++---
 2 files changed, 36 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/alternative.h b/arch/riscv/include/asm/alternative.h
index 8f39d4e8598d..f2cb543b0bd2 100644
--- a/arch/riscv/include/asm/alternative.h
+++ b/arch/riscv/include/asm/alternative.h
@@ -17,6 +17,9 @@
 #include <linux/stddef.h>
 #include <asm/hwcap.h>
 
+#define PATCH_ID_CPUFEATURE_ID(p)		((u16)((u32)(p) & 0xffff))
+#define PATCH_ID_CPUFEATURE_VALUE(p)		((u16)(((u32)(p) >> 16) & 0xffff))
+
 #define RISCV_ALTERNATIVES_BOOT		0 /* alternatives applied during regular boot */
 #define RISCV_ALTERNATIVES_MODULE	1 /* alternatives applied during module-init */
 #define RISCV_ALTERNATIVES_EARLY_BOOT	2 /* alternatives applied before mmu start */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 6102b6bb5db3..0594989ead63 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -273,12 +273,35 @@ void __init riscv_fill_hwcap(void)
 }
 
 #ifdef CONFIG_RISCV_ALTERNATIVE
+/*
+ * Alternative patch sites consider 48 bits when determining when to patch
+ * the old instruction sequence with the new. These bits are broken into a
+ * 16-bit vendor ID and a 32-bit patch ID. A non-zero vendor ID means the
+ * patch site is for an erratum, identified by the 32-bit patch ID. When
+ * the vendor ID is zero, the patch site is for a cpufeature. cpufeatures
+ * further break down patch ID into two 16-bit numbers. The lower 16 bits
+ * are the cpufeature ID and the upper 16 bits are used for a value specific
+ * to the cpufeature and patch site. If the upper 16 bits are zero, then it
+ * implies no specific value is specified. cpufeatures that want to control
+ * patching on a per-site basis will provide non-zero values and implement
+ * checks here. The checks return true when patching should be done, and
+ * false otherwise.
+ */
+static bool riscv_cpufeature_patch_check(u16 id, u16 value)
+{
+	if (!value)
+		return true;
+
+	return false;
+}
+
 void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
 						  struct alt_entry *end,
 						  unsigned int stage)
 {
 	struct alt_entry *alt;
 	void *oldptr, *altptr;
+	u16 id, value;
 
 	if (stage == RISCV_ALTERNATIVES_EARLY_BOOT)
 		return;
@@ -286,13 +309,19 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
 	for (alt = begin; alt < end; alt++) {
 		if (alt->vendor_id != 0)
 			continue;
-		if (alt->patch_id >= RISCV_ISA_EXT_MAX) {
-			WARN(1, "This extension id:%d is not in ISA extension list",
-				alt->patch_id);
+
+		id = PATCH_ID_CPUFEATURE_ID(alt->patch_id);
+
+		if (id >= RISCV_ISA_EXT_MAX) {
+			WARN(1, "This extension id:%d is not in ISA extension list", id);
 			continue;
 		}
 
-		if (!__riscv_isa_extension_available(NULL, alt->patch_id))
+		if (!__riscv_isa_extension_available(NULL, id))
+			continue;
+
+		value = PATCH_ID_CPUFEATURE_VALUE(alt->patch_id);
+		if (!riscv_cpufeature_patch_check(id, value))
 			continue;
 
 		oldptr = ALT_OLD_PTR(alt);
-- 
2.39.1

