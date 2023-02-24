Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 310706A1F9A
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 17:26:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbjBXQ0t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 11:26:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbjBXQ0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 11:26:46 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F3270ED3
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:40 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id l1so14215810wry.10
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pJYbQbc0fp/1TEeivoz5jqaz0elP91c/5Hx47qRP3S8=;
        b=T9k3WNwF4SgXouAMaIQEpElSSyQKpHZS9zR9oid7jReaBACXj9/6ILxMRNnYeQcnn5
         2QFIROiy7JTL2aYrE4N45Ta5CIxhL65TaFUNpIIvZiRHMMzov7LTDSgmDX7KrrCcZYsz
         MXGf85V3Aq9mQjKrtW28cBaqCIB5VMymx+R2CNx0NdMUjetJceDRqAaJWgqypeOpiTck
         z/FqID1Dxwdr45nbAfTob1b4XrQoarv5uoLlIYJmZXd+GRE0Hf/GmOuQJleh0NHWCeeq
         3FnJT8Vz90VBe4VrDN2xP7n/5opfhdA2meUQeZR4UCTEVG8ADdZOLvKrodzu3fd6txr8
         E58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pJYbQbc0fp/1TEeivoz5jqaz0elP91c/5Hx47qRP3S8=;
        b=2qrrsgaXTk3Xg4Jx4/0tMQXgzM6E4VWDJxI0w2xL5fB27ImQ6N1z5ytsEVZNrSfrKy
         Gk+/WJEbDSWl9cjw3EKmp43593HNwYkdUBG+Opjg4G+1LxvJGsg5e5W3wqHehG66iZ9B
         GnXVjwUf41grf3RQwn1+rergeiNeOh4IDT2hWlM8tQE4u/nB8A4Zk+nT/HjZ5I9AkhE2
         wI/GxzbHYdzp7ZSL3/TiFSHYB6JOmMbrmf0WDLyv9dh+PliFptdo84+C6Cyx55nSV9rU
         UfV6ZgI1b2cK1xJWPBGipHC8rcRnl3B7FZntdw8cHGYOyZiEZtMYQnaTS6+gQolqjXL5
         8k1A==
X-Gm-Message-State: AO0yUKXx/yxEF71z8GMwbxPHvu/3WQDHeJTvx9hl6gptnm2VvjLPAwl1
        hvaX2PuQ4pSGFXRHJULdjVBDCw==
X-Google-Smtp-Source: AK7set+OdB+nNMNrDkf8ZsIb/m/7AziP4DhVrARdnyFGkIMk9cLJYfRn1jdgP8eW7KMoa+q5qUmoLQ==
X-Received: by 2002:a5d:5683:0:b0:2c6:676c:4af with SMTP id f3-20020a5d5683000000b002c6676c04afmr12927717wrv.36.1677255998611;
        Fri, 24 Feb 2023 08:26:38 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a18-20020adfe5d2000000b002be505ab59asm14229155wrn.97.2023.02.24.08.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 08:26:38 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Conor Dooley ' <conor.dooley@microchip.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Sudip Mukherjee ' <sudip.mukherjee@codethink.co.uk>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Heiko Stuebner ' <heiko@sntech.de>
Subject: [PATCH v6 5/8] RISC-V: cpufeatures: Put the upper 16 bits of patch ID to work
Date:   Fri, 24 Feb 2023 17:26:28 +0100
Message-Id: <20230224162631.405473-6-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230224162631.405473-1-ajones@ventanamicro.com>
References: <20230224162631.405473-1-ajones@ventanamicro.com>
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
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/include/asm/alternative.h |  4 +++
 arch/riscv/kernel/cpufeature.c       | 37 +++++++++++++++++++++++++---
 2 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/alternative.h b/arch/riscv/include/asm/alternative.h
index c8dea9e94310..58ccd2f8cab7 100644
--- a/arch/riscv/include/asm/alternative.h
+++ b/arch/riscv/include/asm/alternative.h
@@ -13,10 +13,14 @@
 #ifdef CONFIG_RISCV_ALTERNATIVE
 
 #include <linux/init.h>
+#include <linux/kernel.h>
 #include <linux/types.h>
 #include <linux/stddef.h>
 #include <asm/hwcap.h>
 
+#define PATCH_ID_CPUFEATURE_ID(p)		lower_16_bits(p)
+#define PATCH_ID_CPUFEATURE_VALUE(p)		upper_16_bits(p)
+
 #define RISCV_ALTERNATIVES_BOOT		0 /* alternatives applied during regular boot */
 #define RISCV_ALTERNATIVES_MODULE	1 /* alternatives applied during module-init */
 #define RISCV_ALTERNATIVES_EARLY_BOOT	2 /* alternatives applied before mmu start */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 538779d03311..d424cd76beb1 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -274,12 +274,35 @@ void __init riscv_fill_hwcap(void)
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
@@ -287,13 +310,19 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
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

