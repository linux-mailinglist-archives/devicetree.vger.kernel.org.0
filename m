Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0AFBB47F12D
	for <lists+devicetree@lfdr.de>; Fri, 24 Dec 2021 22:16:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344412AbhLXVQs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Dec 2021 16:16:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344392AbhLXVQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Dec 2021 16:16:48 -0500
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CD0EC061401
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 13:16:48 -0800 (PST)
Received: by mail-qk1-x72e.google.com with SMTP id de30so9242429qkb.0
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 13:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1+k6g6JlrIfcxxWMuQQr33x18oCFILLAWvp8/ErctMA=;
        b=jv9t5FIyUfMOde3o1YlP5JI0fJI79OjfQY6RgskRZByIg45qlPTah/xoqym6gz//Fx
         rojQ0u3cE/Nq5ZEjzBy6tizapzsKqLwXlcioNoprBMVDBMBwlNCfGDKhUwRiqK9++yDK
         mmqB8Zi7q7F6j/RXM2CaBAEBA4PnYB3fnPsWE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1+k6g6JlrIfcxxWMuQQr33x18oCFILLAWvp8/ErctMA=;
        b=Rutd/9GRweJe3Zz0ex9H+PNRVgPtXQGrWljxpDS6jREzFwoSrKwUnDP/xQDJpYW1EX
         iLxg3tc4g8LAi4Be7xPdDCrg0nIi6duKV3ACtzMqar8TdH8cx31y1XeFSysZlR3efRRn
         /nA1XUP7xcXDfb/MIyI3QZHQY0yj7/p4DVEO4y4uP3d9U+Ad4OMrLfIiBkUIa8sdAuwA
         gXN41IqcWDxuQ5b3YFOB6pPIpnmGX7w5pHbQA0eJ8qeZvHZYCct8W/oN432D51iD2U5A
         IFyPJfUYTsVegzhY1TQTysvZl2q2Xe685e1zcTz+8fORALdYA6/EfIqZG2PbveBVgNPc
         jyjg==
X-Gm-Message-State: AOAM5308/BiRzztesARQTCCr1OKE4/FhgEYSOPZl/BTtynt6NzgvtUHz
        awWcM+3dD4zQ6v/TFvx8SiRPHjEcJEPA
X-Google-Smtp-Source: ABdhPJykMDrDOSXKAI7A/D9ajai9cdjvdmm61Wa+ZPCMv3KaLxq1QxD00vvNiQNHHjPVr9XWxH3Ehg==
X-Received: by 2002:a37:2dc4:: with SMTP id t187mr5930769qkh.208.1640380607131;
        Fri, 24 Dec 2021 13:16:47 -0800 (PST)
Received: from fedora.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id m15sm7661069qkp.76.2021.12.24.13.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Dec 2021 13:16:46 -0800 (PST)
From:   Atish Patra <atishp@atishpatra.org>
X-Google-Original-From: Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1 1/2] RISC-V: Provide a framework for parsing multi-letter ISA extensions
Date:   Fri, 24 Dec 2021 13:16:31 -0800
Message-Id: <20211224211632.1698523-2-atishp@rivosinc.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211224211632.1698523-1-atishp@rivosinc.com>
References: <20211224211632.1698523-1-atishp@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Recently, there were 15 specifications/40 ISA extensions were ratified.
Except hypervisor ('H') extension, all of them are multi-letter extensions.
Going forward, there will be more number of multi-letter extensions as
well. Parsing all of these extensions from ISA string is not scalable.
Thus, this patch provides a DT based framework to for easy parsing and
querying of any ISA extensions. It facilitates custom user visible strings
for the ISA extensions via /proc/cpuinfo as well.

Currently, there are no platforms with heterogeneous Linux capable harts.
That's why, this patch supports only a single DT node which can only work
for systems with homogeneous harts. To support heterogeneous systems, this
cpu node must be a subnode for each cpu.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 31 ++++++++++++++++++
 arch/riscv/kernel/cpu.c        | 16 ++++++++++
 arch/riscv/kernel/cpufeature.c | 58 +++++++++++++++++++++++++++++++++-
 3 files changed, 104 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 5ce50468aff1..368ab0f330c8 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -34,7 +34,36 @@ extern unsigned long elf_hwcap;
 #define RISCV_ISA_EXT_s		('s' - 'a')
 #define RISCV_ISA_EXT_u		('u' - 'a')
 
+/*
+ * Increse this to higher value as kernel support more ISA extensions.
+ */
 #define RISCV_ISA_EXT_MAX	64
+#define RISCV_ISA_EXT_NAME_LEN_MAX 32
+/* The base ID for multi-letter ISA extensions */
+#define RISCV_ISA_EXT_BASE 26
+
+/*
+ * This enum represent the logical ID for each multi-letter RISC-V ISA extension.
+ * The logical ID should start from RISCV_ISA_EXT_BASE and must not exceed
+ * RISCV_ISA_EXT_MAX. 0-25 range is reserved for single letter
+ * extensions while all the multi-letter extensions should define the next
+ * available logical extension id.
+ */
+enum riscv_isa_ext_id {
+	RISCV_ISA_EXT_ID_MAX = RISCV_ISA_EXT_MAX,
+};
+
+struct riscv_isa_ext_data {
+	struct list_head node;
+	/* Name of the extension property in DT */
+	char dtprop[RISCV_ISA_EXT_NAME_LEN_MAX];
+	/* Name of the extension displayed to userspace via /proc/cpuinfo */
+	char uprop[RISCV_ISA_EXT_NAME_LEN_MAX];
+	/* The logical ISA extension ID */
+	unsigned int isa_ext_id;
+};
+
+extern struct list_head riscv_isa_ext_list;
 
 unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
 
@@ -44,6 +73,8 @@ bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit);
 #define riscv_isa_extension_available(isa_bitmap, ext)	\
 	__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
 
+int riscv_isa_ext_list_add(struct riscv_isa_ext_data *edata);
+
 #endif
 
 #endif /* _ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index f13b2c9ea912..dad95bdd3cca 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -71,6 +71,21 @@ static void print_isa(struct seq_file *f, const char *isa)
 	seq_puts(f, "\n");
 }
 
+static void print_isa_ext(struct seq_file *f)
+{
+	struct riscv_isa_ext_data *edata;
+	int count = 0;
+
+	seq_puts(f, "isa-ext\t\t: ");
+	list_for_each_entry(edata, &riscv_isa_ext_list, node) {
+		if (count)
+			seq_puts(f, ",");
+		seq_write(f, edata->uprop, strnlen(edata->uprop, RISCV_ISA_EXT_NAME_LEN_MAX));
+		count++;
+	}
+	seq_puts(f, "\n");
+}
+
 static void print_mmu(struct seq_file *f, const char *mmu_type)
 {
 #if defined(CONFIG_32BIT)
@@ -113,6 +128,7 @@ static int c_show(struct seq_file *m, void *v)
 	seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
 	if (!of_property_read_string(node, "riscv,isa", &isa))
 		print_isa(m, isa);
+	print_isa_ext(m);
 	if (!of_property_read_string(node, "mmu-type", &mmu))
 		print_mmu(m, mmu);
 	if (!of_property_read_string(node, "compatible", &compat)
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index d959d207a40d..c70eeec17f5b 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -7,6 +7,8 @@
  */
 
 #include <linux/bitmap.h>
+#include <linux/list.h>
+#include <linux/slab.h>
 #include <linux/of.h>
 #include <asm/processor.h>
 #include <asm/hwcap.h>
@@ -18,6 +20,8 @@ unsigned long elf_hwcap __read_mostly;
 /* Host ISA bitmap */
 static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
 
+LIST_HEAD(riscv_isa_ext_list);
+
 #ifdef CONFIG_FPU
 __ro_after_init DEFINE_STATIC_KEY_FALSE(cpu_hwcap_fpu);
 #endif
@@ -59,12 +63,60 @@ bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit)
 }
 EXPORT_SYMBOL_GPL(__riscv_isa_extension_available);
 
+#define __RISCV_ISA_EXT_DATA(DTPROP, UPROP, EXTID) \
+	{							\
+		.dtprop = #DTPROP,				\
+		.uprop = #UPROP,				\
+		.isa_ext_id = EXTID,				\
+	}
+
+static struct riscv_isa_ext_data isa_ext_arr[] = {
+	__RISCV_ISA_EXT_DATA("", "", RISCV_ISA_EXT_MAX),
+};
+
+int riscv_isa_ext_list_add(struct riscv_isa_ext_data *edata)
+{
+	struct device_node *node, *enode;
+	int eid;
+
+	if (!edata || !edata->dtprop)
+		return -EINVAL;
+
+	node = of_find_node_by_path("/cpus");
+	if (!node) {
+		pr_err("No CPU information found in DT\n");
+		return -ENOENT;
+	}
+
+	enode = of_get_child_by_name(node, "riscv,isa-ext");
+	if (!enode) {
+		pr_err("No riscv-isa-ext found in DT\n");
+		return -ENOENT;
+	}
+
+	eid = edata->isa_ext_id;
+	if (eid < RISCV_ISA_EXT_BASE || eid >= RISCV_ISA_EXT_MAX)
+		return -EINVAL;
+
+	if (!of_property_read_bool(enode, edata->dtprop)) {
+		pr_err("The ISA extension %s is not present in DT\n", edata->dtprop);
+		return -ENODEV;
+	}
+
+	/* Enable the extension id in the riscv_isa for easier probing */
+	riscv_isa[0] |= 1 << eid;
+	list_add(&edata->node, &riscv_isa_ext_list);
+	pr_info("RISC-V ISA extension '%s' available\n", edata->uprop);
+
+	return 0;
+}
+
 void __init riscv_fill_hwcap(void)
 {
 	struct device_node *node;
 	const char *isa;
 	char print_str[BITS_PER_LONG + 1];
-	size_t i, j, isa_len;
+	size_t i, j, isa_len, ext_arr_sz;
 	static unsigned long isa2hwcap[256] = {0};
 
 	isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
@@ -148,4 +200,8 @@ void __init riscv_fill_hwcap(void)
 	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
 		static_branch_enable(&cpu_hwcap_fpu);
 #endif
+
+	ext_arr_sz = ARRAY_SIZE(isa_ext_arr);
+	for (i = 0; i < ext_arr_sz - 1; i++)
+		riscv_isa_ext_list_add(&isa_ext_arr[i]);
 }
-- 
2.33.1

