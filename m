Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D2226FB640
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:17:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232820AbjEHSRN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:17:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232779AbjEHSRL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:17:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 570295BBE
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:17:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C1B0F61E7B
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 18:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92CB0C4339E;
        Mon,  8 May 2023 18:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683569828;
        bh=gDn1qNH4xsBYthgkWZ/em1+NKvHh2zOBpGtKE3Kkd9E=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=fy0R37YJZ+qpMbPvgvndws5ZRECKzZAA0rPv9fBFCZ5RDt6lPp3ZQS9YpHUdlEjs3
         EpOsR/MTJRTk3VlrX97HGv9a7dZaitvOksgQ6zNz71wxhTl4tvdMvdZ32hl+/G8+jS
         HK/UpBPYtWdViiU9JEfj2v7o4AKaeH7V8bXSD72G4srhVpLVBx3mIqP6eBfk4Oo5pn
         zFhl8eYUIOV5673izj4FirYSR/GfTWDoUuwMhBnlnWtPKdqUx7C2mdZgWSq6TJU4uB
         BZxlXEvsRfG140EKi9KkXdwwpFa8YMevkljNfeHGlioWEfhm01yHF75OOhj7G/xoGV
         ZclSh88zLAPIw==
From:   Conor Dooley <conor@kernel.org>
To:     linux-riscv@lists.infradead.org
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org
Subject: [RFC 4/6] RISC-V: add support for riscv,isa-base property
Date:   Mon,  8 May 2023 19:16:24 +0100
Message-Id: <20230508-village-robotics-54fdbcb96ee5@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230508-hypnotic-phobia-99598439d828@spud>
References: <20230508-hypnotic-phobia-99598439d828@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9974; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=X1JoMdz0XypRBvha+Fq4gfZjd7/ZEaml0zIsOaAfMPE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCmRNmXXEnd9sfxbW63MLP0ksi1Ifovs3piU92fy/Z6vu tU+cf7FjlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAExk1TWG/5U/nX4ZKKdNM7rE tHKRs7rYJYlNrRz1kmZOhu6ve+SPljMyvKn+lepQonj+1OM1Vs4T5pR9XOhsr5Y7oSpP4NF1ddE 8dgA=
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

I'm not entirely sure if this is needed, but I felt we still needed a
mechanism for communicating the base ISA. Perhaps the i here should not
even be present, but a way to encode the bit-width is missing from my
key-value stuff. Very much open to suggestions on this aspect.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/include/asm/hwcap.h |   8 +--
 arch/riscv/kernel/cpu.c        | 119 +++++++++------------------------
 arch/riscv/kernel/cpufeature.c |  41 ++++++++++++
 3 files changed, 73 insertions(+), 95 deletions(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index f963a7a82ce1..cb4b3df0a5d5 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -59,13 +59,6 @@
 
 #include <linux/jump_label.h>
 
-struct riscv_isa_ext_data {
-	/* Name of the extension displayed to userspace via /proc/cpuinfo */
-	char uprop[RISCV_ISA_EXT_NAME_LEN_MAX];
-	/* The logical ISA extension ID */
-	unsigned int isa_ext_id;
-};
-
 struct riscv_isa_extension {
 	const u64 key;
 	const char *name;
@@ -83,6 +76,7 @@ struct riscv_isa_extension {
 }
 
 extern const struct riscv_isa_extension riscv_isa_extensions[];
+extern const size_t riscv_isa_extensions_count;
 
 unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
 
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 0d5d580dca61..c29643dca0f7 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -59,8 +59,25 @@ int riscv_early_of_processor_hartid(struct device_node *node, unsigned long *har
 		return -ENODEV;
 	}
 
+	if (of_property_read_string(node, "riscv,isa-base", &isa))
+		goto old_interface;
+
+	if (IS_ENABLED(CONFIG_32BIT) && strncasecmp(isa, "rv32i", 5))
+		return -ENODEV;
+
+	if (IS_ENABLED(CONFIG_64BIT) && strncasecmp(isa, "rv64i", 5))
+		return -ENODEV;
+
+	if (!of_property_present(node, "riscv,isa-extension-m") ||
+	    !of_property_present(node, "riscv,isa-extension-a"))
+		return -ENODEV;
+
+	return 0;
+
+old_interface:
 	if (of_property_read_string(node, "riscv,isa", &isa)) {
-		pr_warn("CPU with hartid=%lu has no \"riscv,isa\" property\n", *hart);
+		pr_warn("CPU with hartid=%lu has no \"riscv,isa-base\" or \"riscv,isa\" property\n",
+			*hart);
 		return -ENODEV;
 	}
 
@@ -157,106 +174,33 @@ static int __init riscv_cpuinfo_init(void)
 arch_initcall(riscv_cpuinfo_init);
 
 #ifdef CONFIG_PROC_FS
-
-#define __RISCV_ISA_EXT_DATA(UPROP, EXTID) \
-	{							\
-		.uprop = #UPROP,				\
-		.isa_ext_id = EXTID,				\
-	}
-
-/*
- * The canonical order of ISA extension names in the ISA string is defined in
- * chapter 27 of the unprivileged specification.
- *
- * Ordinarily, for in-kernel data structures, this order is unimportant but
- * isa_ext_arr defines the order of the ISA string in /proc/cpuinfo.
- *
- * The specification uses vague wording, such as should, when it comes to
- * ordering, so for our purposes the following rules apply:
- *
- * 1. All multi-letter extensions must be separated from other extensions by an
- *    underscore.
- *
- * 2. Additional standard extensions (starting with 'Z') must be sorted after
- *    single-letter extensions and before any higher-privileged extensions.
-
- * 3. The first letter following the 'Z' conventionally indicates the most
- *    closely related alphabetical extension category, IMAFDQLCBKJTPVH.
- *    If multiple 'Z' extensions are named, they must be ordered first by
- *    category, then alphabetically within a category.
- *
- * 3. Standard supervisor-level extensions (starting with 'S') must be listed
- *    after standard unprivileged extensions.  If multiple supervisor-level
- *    extensions are listed, they must be ordered alphabetically.
- *
- * 4. Standard machine-level extensions (starting with 'Zxm') must be listed
- *    after any lower-privileged, standard extensions.  If multiple
- *    machine-level extensions are listed, they must be ordered
- *    alphabetically.
- *
- * 5. Non-standard extensions (starting with 'X') must be listed after all
- *    standard extensions. If multiple non-standard extensions are listed, they
- *    must be ordered alphabetically.
- *
- * An example string following the order is:
- *    rv64imadc_zifoo_zigoo_zafoo_sbar_scar_zxmbaz_xqux_xrux
- *
- * New entries to this struct should follow the ordering rules described above.
- */
-static struct riscv_isa_ext_data isa_ext_arr[] = {
-	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),
-	__RISCV_ISA_EXT_DATA(zicbom, RISCV_ISA_EXT_ZICBOM),
-	__RISCV_ISA_EXT_DATA(zicboz, RISCV_ISA_EXT_ZICBOZ),
-	__RISCV_ISA_EXT_DATA(zifencei, RISCV_ISA_EXT_ZIFENCEI),
-	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
-	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
-	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
-	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
-	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
-	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
-	__RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
-	__RISCV_ISA_EXT_DATA("", RISCV_ISA_EXT_MAX),
-};
-
 static void print_isa_ext(struct seq_file *f)
 {
-	struct riscv_isa_ext_data *edata;
 	int i = 0, arr_sz;
 
-	arr_sz = ARRAY_SIZE(isa_ext_arr) - 1;
+	arr_sz = riscv_isa_extensions_count - 1;
 
 	/* No extension support available */
 	if (arr_sz <= 0)
 		return;
 
-	for (i = 0; i <= arr_sz; i++) {
-		edata = &isa_ext_arr[i];
-		if (!__riscv_isa_extension_available(NULL, edata->isa_ext_id))
+	for (i = 0; i < arr_sz; i++) {
+		if (!__riscv_isa_extension_available(NULL, riscv_isa_extensions[i].key))
 			continue;
-		seq_printf(f, "_%s", edata->uprop);
+		if (riscv_isa_extensions[i].multi_letter)
+			seq_printf(f, "_");
+
+		seq_printf(f, "%s", riscv_isa_extensions[i].name);
 	}
 }
 
-/*
- * These are the only valid base (single letter) ISA extensions as per the spec.
- * It also specifies the canonical order in which it appears in the spec.
- * Some of the extension may just be a place holder for now (B, K, P, J).
- * This should be updated once corresponding extensions are ratified.
- */
-static const char base_riscv_exts[13] = "imafdqcbkjpvh";
-
-static void print_isa(struct seq_file *f, const char *isa)
+static void print_isa(struct seq_file *f)
 {
-	int i;
+	if (IS_ENABLED(CONFIG_64BIT))
+		seq_puts(f, "isa\t\t: rv64");
+	else
+		seq_puts(f, "isa\t\t: rv32");
 
-	seq_puts(f, "isa\t\t: ");
-	/* Print the rv[64/32] part */
-	seq_write(f, isa, 4);
-	for (i = 0; i < sizeof(base_riscv_exts); i++) {
-		if (__riscv_isa_extension_available(NULL, base_riscv_exts[i] - 'a'))
-			/* Print only enabled the base ISA extensions */
-			seq_write(f, &base_riscv_exts[i], 1);
-	}
 	print_isa_ext(f);
 	seq_puts(f, "\n");
 }
@@ -312,8 +256,7 @@ static int c_show(struct seq_file *m, void *v)
 
 	seq_printf(m, "processor\t: %lu\n", cpu_id);
 	seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
-	if (!of_property_read_string(node, "riscv,isa", &isa))
-		print_isa(m, isa);
+	print_isa(m);
 	print_mmu(m);
 	if (!of_property_read_string(node, "compatible", &compat)
 	    && strcmp(compat, "riscv"))
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 1ead76adf60f..d415a86a11e7 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -93,6 +93,45 @@ static bool riscv_isa_extension_check(int id)
 	return true;
 }
 
+/*
+ * The canonical order of ISA extension names in the ISA string is defined in
+ * chapter 27 of the unprivileged specification.
+ *
+ * Ordinarily, for in-kernel data structures, this order is unimportant but
+ * isa_ext_arr defines the order of the ISA string in /proc/cpuinfo.
+ *
+ * The specification uses vague wording, such as should, when it comes to
+ * ordering, so for our purposes the following rules apply:
+ *
+ * 1. All multi-letter extensions must be separated from other extensions by an
+ *    underscore.
+ *
+ * 2. Additional standard extensions (starting with 'Z') must be sorted after
+ *    single-letter extensions and before any higher-privileged extensions.
+
+ * 3. The first letter following the 'Z' conventionally indicates the most
+ *    closely related alphabetical extension category, IMAFDQLCBKJTPVH.
+ *    If multiple 'Z' extensions are named, they must be ordered first by
+ *    category, then alphabetically within a category.
+ *
+ * 3. Standard supervisor-level extensions (starting with 'S') must be listed
+ *    after standard unprivileged extensions.  If multiple supervisor-level
+ *    extensions are listed, they must be ordered alphabetically.
+ *
+ * 4. Standard machine-level extensions (starting with 'Zxm') must be listed
+ *    after any lower-privileged, standard extensions.  If multiple
+ *    machine-level extensions are listed, they must be ordered
+ *    alphabetically.
+ *
+ * 5. Non-standard extensions (starting with 'X') must be listed after all
+ *    standard extensions. If multiple non-standard extensions are listed, they
+ *    must be ordered alphabetically.
+ *
+ * An example string following the order is:
+ *    rv64imadc_zifoo_zigoo_zafoo_sbar_scar_zxmbaz_xqux_xrux
+ *
+ * New entries to this struct should follow the ordering rules described above.
+ */
 const struct riscv_isa_extension riscv_isa_extensions[] = {
 	RISCV_ISA_EXT_CFG(i, RISCV_ISA_EXT_i, "v1.0.0", false),
 	RISCV_ISA_EXT_CFG(m, RISCV_ISA_EXT_m, "v1.0.0", false),
@@ -121,6 +160,8 @@ const struct riscv_isa_extension riscv_isa_extensions[] = {
 	RISCV_ISA_EXT_CFG("", RISCV_ISA_EXT_MAX, "", false),
 };
 
+const size_t riscv_isa_extensions_count = ARRAY_SIZE(riscv_isa_extensions);
+
 static void __init riscv_fill_hwcap_isa_string(void)
 {
 	struct device_node *node;
-- 
2.39.2

