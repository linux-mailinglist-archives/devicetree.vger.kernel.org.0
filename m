Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 536E542974
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 16:36:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437760AbfFLOgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 10:36:23 -0400
Received: from mail-it1-f175.google.com ([209.85.166.175]:37693 "EHLO
        mail-it1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437725AbfFLOgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 10:36:22 -0400
Received: by mail-it1-f175.google.com with SMTP id x22so10933646itl.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 07:36:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PQOtaRFisGpwvXev1v8aEViRSOAglvIVqEupmaUHViw=;
        b=ksrV0tdXImmuMtsQWYfII+J8n7Ju32rNNRRZ/bS4PUqiizL+hK3lRNg4Of7K5VYBlx
         KBUAepNeHUmypwUB8ncRPGcvBrCu178M2kPybAz8FXHo+WBs7QXt/ssAaVdIOc/y8CrX
         sW8F6YJt/daCZRnfKabg4g/r0dukT6uNh4z/gbWlDHCgSQ5ZkunZ0mSVE71bbGzMIeye
         SwM6BYxRREdU4Kwr9YtsZV0vEEnECrf2eBzD/ypl1/qW1Mo9ed6t/8ggp3QgZTtqwFrx
         bfpYgJMD8BTTwhhjQHvFy5Q2LCcEtkMZDgaAUvcj7PRMe5qJIAaAGwKtT51w6b7WeKyP
         isEw==
X-Gm-Message-State: APjAAAUHruGzdFt8DlXEaPlipi7ILC41rjP6sanR01UwqWyjIx7FEijb
        vVynbmLj5IZpef5I+bSpmg==
X-Google-Smtp-Source: APXvYqxk7f4Cphi2FrF4bmszhrdHLUCp6VfLyuD3Xwk5eNMwe1ZY0V5lS0XmEyPrKOpyN+e6xe0imA==
X-Received: by 2002:a24:e9c3:: with SMTP id f186mr21864784ith.165.1560350180757;
        Wed, 12 Jun 2019 07:36:20 -0700 (PDT)
Received: from localhost.localdomain (ip-173-121-76-200.englco.spcsdns.net. [173.121.76.200])
        by smtp.googlemail.com with ESMTPSA id e195sm1337670itc.1.2019.06.12.07.36.18
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 12 Jun 2019 07:36:19 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: [PATCH] scripts/dtc: Update to upstream version v1.5.0-23-g87963ee20693
Date:   Wed, 12 Jun 2019 08:36:17 -0600
Message-Id: <20190612143617.8141-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the following commits from upstream:

87963ee20693 livetree: add missing type markers in generated overlay properties
825146d13dc0 Fix typos in various documentation and source files
25bb080c18d1 Update the GPL2 text to the latest revision
243176c4ce84 Fix bogus error on rebuild
ce01b21098a4 libfdt: Add FDT_CREATE_FLAG_NO_NAME_DEDUP flag that trades size for speed
fbb62754ce45 libfdt: Introduce fdt_create_with_flags()
228a44cce857 libfdt: Ensure fdt_add_property frees allocated name string on failure
8f695676227b Avoid assertion in check_interrupts_property()
5c3513f68921 Link tools and tests against libfdt shared library
00f9febf9c16 tests: Rename tests.sh to testutils.sh
c5d45188f923 Clean up LDLIBS handling
6ef8fcd05b74 Rebuild libfdt shared object if versioning linker script changes
26ee65a16c38 Use Python3 by default
cca6546244cb libfdt: Make fdt_get_max_phandle() an inline
730875016a6a libfdt: Add phandle generation helper
7dfb61ba96b1 libfdt: Use fdt_find_max_phandle()
2bc5b66d7f6c libfdt: Add new maximum phandle lookup function
7fcf8208b8a9 libfdt: add fdt_append_addrrange()
ae795b2db7a4 checks: Do not omit nodes with labels if symbol generation is requested
eac2ad495b29 Update version.lds again
f67b47135523 Revert "libfdt: Add phandle generation helper"
54ea41c22415 libfdt: Add phandle generation helper
4762ad051ee0 checks: Fix spelling in check_graph_endpoint
d37f6b20107e Bump version to v1.5.0
a4b1a307ff3a pylibfdt:tests: Extend the way how to find a Python module
625dd8aaf20f pylibfdt: Change how passing tests are recognized
364631626bb7 pylibfdt: Test fdt.setprop take bytes on Python 3, add error handling
cb0f454f73cc pylibfdt: check_err accepts only integer as a first argument.
4b68c6b3605a pylibfdt: Proper handling of bytes/unicode strings and octal literals
78e113e81c9d Use PRIxPTR for printing uintptr_t values
ea7a8f6dad67 libfdt: Fix FDT_ERR_NOTFOUND typos in documentation
5aafd7ca43e0 libfdt: Fix fdt_getprop_by_offset() parameter name in documentation
7cbc550f903b checks: Add unit address check if node is enabled

Signed-off-by: Rob Herring <robh@kernel.org>
---
As usual, this patch is all the above upstream commits, so don't review 
the diff, just whether I ran the script to import correctly. :)

 scripts/dtc/checks.c               |  55 ++++++++--
 scripts/dtc/dtc.h                  |   3 +-
 scripts/dtc/flattree.c             |   2 +-
 scripts/dtc/libfdt/Makefile.libfdt |   2 +
 scripts/dtc/libfdt/fdt_addresses.c |  47 +++++++++
 scripts/dtc/libfdt/fdt_overlay.c   |  10 +-
 scripts/dtc/libfdt/fdt_ro.c        |  50 ++++++---
 scripts/dtc/libfdt/fdt_rw.c        |  22 +++-
 scripts/dtc/libfdt/fdt_strerror.c  |   1 +
 scripts/dtc/libfdt/fdt_sw.c        |  78 ++++++++++++--
 scripts/dtc/libfdt/libfdt.h        | 158 ++++++++++++++++++++++++++++-
 scripts/dtc/libfdt/libfdt_env.h    |   1 +
 scripts/dtc/livetree.c             |  20 ++--
 scripts/dtc/util.h                 |   4 +-
 scripts/dtc/version_gen.h          |   2 +-
 15 files changed, 399 insertions(+), 56 deletions(-)

diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index 4834e44b37b2..4719d658432b 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -660,6 +660,8 @@ ERROR(path_references, fixup_path_references, NULL, &duplicate_node_names);
 static void fixup_omit_unused_nodes(struct check *c, struct dt_info *dti,
 				    struct node *node)
 {
+	if (generate_symbols && node->labels)
+		return;
 	if (node->omit_if_unused && !node->is_referenced)
 		delete_node(node);
 }
@@ -1212,8 +1214,24 @@ static void check_avoid_unnecessary_addr_size(struct check *c, struct dt_info *d
 }
 WARNING(avoid_unnecessary_addr_size, check_avoid_unnecessary_addr_size, NULL, &avoid_default_addr_size);
 
-static void check_unique_unit_address(struct check *c, struct dt_info *dti,
-					      struct node *node)
+static bool node_is_disabled(struct node *node)
+{
+	struct property *prop;
+
+	prop = get_property(node, "status");
+	if (prop) {
+		char *str = prop->val.val;
+		if (streq("disabled", str))
+			return true;
+	}
+
+	return false;
+}
+
+static void check_unique_unit_address_common(struct check *c,
+						struct dt_info *dti,
+						struct node *node,
+						bool disable_check)
 {
 	struct node *childa;
 
@@ -1230,18 +1248,38 @@ static void check_unique_unit_address(struct check *c, struct dt_info *dti,
 		if (!strlen(addr_a))
 			continue;
 
+		if (disable_check && node_is_disabled(childa))
+			continue;
+
 		for_each_child(node, childb) {
 			const char *addr_b = get_unitname(childb);
 			if (childa == childb)
 				break;
 
+			if (disable_check && node_is_disabled(childb))
+				continue;
+
 			if (streq(addr_a, addr_b))
 				FAIL(c, dti, childb, "duplicate unit-address (also used in node %s)", childa->fullpath);
 		}
 	}
 }
+
+static void check_unique_unit_address(struct check *c, struct dt_info *dti,
+					      struct node *node)
+{
+	check_unique_unit_address_common(c, dti, node, false);
+}
 WARNING(unique_unit_address, check_unique_unit_address, NULL, &avoid_default_addr_size);
 
+static void check_unique_unit_address_if_enabled(struct check *c, struct dt_info *dti,
+					      struct node *node)
+{
+	check_unique_unit_address_common(c, dti, node, true);
+}
+CHECK_ENTRY(unique_unit_address_if_enabled, check_unique_unit_address_if_enabled,
+	    NULL, false, false, &avoid_default_addr_size);
+
 static void check_obsolete_chosen_interrupt_controller(struct check *c,
 						       struct dt_info *dti,
 						       struct node *node)
@@ -1542,10 +1580,14 @@ static void check_interrupts_property(struct check *c,
 		prop = get_property(parent, "interrupt-parent");
 		if (prop) {
 			phandle = propval_cell(prop);
-			/* Give up if this is an overlay with external references */
-			if ((phandle == 0 || phandle == -1) &&
-			    (dti->dtsflags & DTSF_PLUGIN))
+			if ((phandle == 0) || (phandle == -1)) {
+				/* Give up if this is an overlay with
+				 * external references */
+				if (dti->dtsflags & DTSF_PLUGIN)
 					return;
+				FAIL_PROP(c, dti, parent, prop, "Invalid phandle");
+				continue;
+			}
 
 			irq_node = get_node_by_phandle(root, phandle);
 			if (!irq_node) {
@@ -1714,7 +1756,7 @@ static void check_graph_endpoint(struct check *c, struct dt_info *dti,
 		return;
 
 	if (!strprefixeq(node->name, node->basenamelen, "endpoint"))
-		FAIL(c, dti, node, "graph endpont node name should be 'endpoint'");
+		FAIL(c, dti, node, "graph endpoint node name should be 'endpoint'");
 
 	check_graph_reg(c, dti, node);
 
@@ -1769,6 +1811,7 @@ static struct check *check_table[] = {
 	&avoid_default_addr_size,
 	&avoid_unnecessary_addr_size,
 	&unique_unit_address,
+	&unique_unit_address_if_enabled,
 	&obsolete_chosen_interrupt_controller,
 	&chosen_node_is_root, &chosen_node_bootargs, &chosen_node_stdout_path,
 
diff --git a/scripts/dtc/dtc.h b/scripts/dtc/dtc.h
index 789e0b1bc057..0d5fa215ac87 100644
--- a/scripts/dtc/dtc.h
+++ b/scripts/dtc/dtc.h
@@ -231,7 +231,8 @@ void add_child(struct node *parent, struct node *child);
 void delete_node_by_name(struct node *parent, char *name);
 void delete_node(struct node *node);
 void append_to_property(struct node *node,
-			char *name, const void *data, int len);
+			char *name, const void *data, int len,
+			enum markertype type);
 
 const char *get_unitname(struct node *node);
 struct property *get_property(struct node *node, const char *propname);
diff --git a/scripts/dtc/flattree.c b/scripts/dtc/flattree.c
index acf04c30669f..f7f70769d73f 100644
--- a/scripts/dtc/flattree.c
+++ b/scripts/dtc/flattree.c
@@ -525,7 +525,7 @@ void dt_to_asm(FILE *f, struct dt_info *dti, int version)
 	fprintf(f, "/* Memory reserve map from source file */\n");
 
 	/*
-	 * Use .long on high and low halfs of u64s to avoid .quad
+	 * Use .long on high and low halves of u64s to avoid .quad
 	 * as it appears .quad isn't available in some assemblers.
 	 */
 	for (re = dti->reservelist; re; re = re->next) {
diff --git a/scripts/dtc/libfdt/Makefile.libfdt b/scripts/dtc/libfdt/Makefile.libfdt
index 3af3656df801..193da8c99d83 100644
--- a/scripts/dtc/libfdt/Makefile.libfdt
+++ b/scripts/dtc/libfdt/Makefile.libfdt
@@ -9,7 +9,9 @@ LIBFDT_VERSION = version.lds
 LIBFDT_SRCS = fdt.c fdt_ro.c fdt_wip.c fdt_sw.c fdt_rw.c fdt_strerror.c fdt_empty_tree.c \
 	fdt_addresses.c fdt_overlay.c
 LIBFDT_OBJS = $(LIBFDT_SRCS:%.c=%.o)
+LIBFDT_LIB = libfdt-$(DTC_VERSION).$(SHAREDLIB_EXT)
 
 libfdt_clean:
 	@$(VECHO) CLEAN "(libfdt)"
 	rm -f $(STD_CLEANFILES:%=$(LIBFDT_dir)/%)
+	rm -f $(LIBFDT_dir)/$(LIBFDT_soname)
diff --git a/scripts/dtc/libfdt/fdt_addresses.c b/scripts/dtc/libfdt/fdt_addresses.c
index f13a87dfa068..2cc997ea5012 100644
--- a/scripts/dtc/libfdt/fdt_addresses.c
+++ b/scripts/dtc/libfdt/fdt_addresses.c
@@ -95,3 +95,50 @@ int fdt_size_cells(const void *fdt, int nodeoffset)
 		return 1;
 	return val;
 }
+
+/* This function assumes that [address|size]_cells is 1 or 2 */
+int fdt_appendprop_addrrange(void *fdt, int parent, int nodeoffset,
+			     const char *name, uint64_t addr, uint64_t size)
+{
+	int addr_cells, size_cells, ret;
+	uint8_t data[sizeof(fdt64_t) * 2], *prop;
+
+	ret = fdt_address_cells(fdt, parent);
+	if (ret < 0)
+		return ret;
+	addr_cells = ret;
+
+	ret = fdt_size_cells(fdt, parent);
+	if (ret < 0)
+		return ret;
+	size_cells = ret;
+
+	/* check validity of address */
+	prop = data;
+	if (addr_cells == 1) {
+		if ((addr > UINT32_MAX) || ((UINT32_MAX + 1 - addr) < size))
+			return -FDT_ERR_BADVALUE;
+
+		fdt32_st(prop, (uint32_t)addr);
+	} else if (addr_cells == 2) {
+		fdt64_st(prop, addr);
+	} else {
+		return -FDT_ERR_BADNCELLS;
+	}
+
+	/* check validity of size */
+	prop += addr_cells * sizeof(fdt32_t);
+	if (size_cells == 1) {
+		if (size > UINT32_MAX)
+			return -FDT_ERR_BADVALUE;
+
+		fdt32_st(prop, (uint32_t)size);
+	} else if (size_cells == 2) {
+		fdt64_st(prop, size);
+	} else {
+		return -FDT_ERR_BADNCELLS;
+	}
+
+	return fdt_appendprop(fdt, nodeoffset, name, data,
+			      (addr_cells + size_cells) * sizeof(fdt32_t));
+}
diff --git a/scripts/dtc/libfdt/fdt_overlay.c b/scripts/dtc/libfdt/fdt_overlay.c
index 5fdab6c6371d..d3e9ab2dbb7b 100644
--- a/scripts/dtc/libfdt/fdt_overlay.c
+++ b/scripts/dtc/libfdt/fdt_overlay.c
@@ -93,11 +93,11 @@ static uint32_t overlay_get_target_phandle(const void *fdto, int fragment)
  * @pathp: pointer which receives the path of the target (or NULL)
  *
  * overlay_get_target() retrieves the target offset in the base
- * device tree of a fragment, no matter how the actual targetting is
+ * device tree of a fragment, no matter how the actual targeting is
  * done (through a phandle or a path)
  *
  * returns:
- *      the targetted node offset in the base device tree
+ *      the targeted node offset in the base device tree
  *      Negative error code on error
  */
 static int overlay_get_target(const void *fdt, const void *fdto,
@@ -863,12 +863,16 @@ static int overlay_symbol_update(void *fdt, void *fdto)
 
 int fdt_overlay_apply(void *fdt, void *fdto)
 {
-	uint32_t delta = fdt_get_max_phandle(fdt);
+	uint32_t delta;
 	int ret;
 
 	FDT_RO_PROBE(fdt);
 	FDT_RO_PROBE(fdto);
 
+	ret = fdt_find_max_phandle(fdt, &delta);
+	if (ret)
+		goto err;
+
 	ret = overlay_adjust_local_phandles(fdto, delta);
 	if (ret)
 		goto err;
diff --git a/scripts/dtc/libfdt/fdt_ro.c b/scripts/dtc/libfdt/fdt_ro.c
index eafc14282892..2c393a100bfc 100644
--- a/scripts/dtc/libfdt/fdt_ro.c
+++ b/scripts/dtc/libfdt/fdt_ro.c
@@ -144,29 +144,49 @@ static int fdt_string_eq_(const void *fdt, int stroffset,
 	return p && (slen == len) && (memcmp(p, s, len) == 0);
 }
 
-uint32_t fdt_get_max_phandle(const void *fdt)
+int fdt_find_max_phandle(const void *fdt, uint32_t *phandle)
 {
-	uint32_t max_phandle = 0;
-	int offset;
+	uint32_t max = 0;
+	int offset = -1;
 
-	for (offset = fdt_next_node(fdt, -1, NULL);;
-	     offset = fdt_next_node(fdt, offset, NULL)) {
-		uint32_t phandle;
+	while (true) {
+		uint32_t value;
 
-		if (offset == -FDT_ERR_NOTFOUND)
-			return max_phandle;
+		offset = fdt_next_node(fdt, offset, NULL);
+		if (offset < 0) {
+			if (offset == -FDT_ERR_NOTFOUND)
+				break;
 
-		if (offset < 0)
-			return (uint32_t)-1;
+			return offset;
+		}
 
-		phandle = fdt_get_phandle(fdt, offset);
-		if (phandle == (uint32_t)-1)
-			continue;
+		value = fdt_get_phandle(fdt, offset);
 
-		if (phandle > max_phandle)
-			max_phandle = phandle;
+		if (value > max)
+			max = value;
 	}
 
+	if (phandle)
+		*phandle = max;
+
+	return 0;
+}
+
+int fdt_generate_phandle(const void *fdt, uint32_t *phandle)
+{
+	uint32_t max;
+	int err;
+
+	err = fdt_find_max_phandle(fdt, &max);
+	if (err < 0)
+		return err;
+
+	if (max == FDT_MAX_PHANDLE)
+		return -FDT_ERR_NOPHANDLES;
+
+	if (phandle)
+		*phandle = max + 1;
+
 	return 0;
 }
 
diff --git a/scripts/dtc/libfdt/fdt_rw.c b/scripts/dtc/libfdt/fdt_rw.c
index 2e49855d7cf8..9e7661509e9f 100644
--- a/scripts/dtc/libfdt/fdt_rw.c
+++ b/scripts/dtc/libfdt/fdt_rw.c
@@ -136,6 +136,14 @@ static int fdt_splice_struct_(void *fdt, void *p,
 	return 0;
 }
 
+/* Must only be used to roll back in case of error */
+static void fdt_del_last_string_(void *fdt, const char *s)
+{
+	int newlen = strlen(s) + 1;
+
+	fdt_set_size_dt_strings(fdt, fdt_size_dt_strings(fdt) - newlen);
+}
+
 static int fdt_splice_string_(void *fdt, int newlen)
 {
 	void *p = (char *)fdt
@@ -149,7 +157,7 @@ static int fdt_splice_string_(void *fdt, int newlen)
 	return 0;
 }
 
-static int fdt_find_add_string_(void *fdt, const char *s)
+static int fdt_find_add_string_(void *fdt, const char *s, int *allocated)
 {
 	char *strtab = (char *)fdt + fdt_off_dt_strings(fdt);
 	const char *p;
@@ -157,6 +165,8 @@ static int fdt_find_add_string_(void *fdt, const char *s)
 	int len = strlen(s) + 1;
 	int err;
 
+	*allocated = 0;
+
 	p = fdt_find_string_(strtab, fdt_size_dt_strings(fdt), s);
 	if (p)
 		/* found it */
@@ -167,6 +177,8 @@ static int fdt_find_add_string_(void *fdt, const char *s)
 	if (err)
 		return err;
 
+	*allocated = 1;
+
 	memcpy(new, s, len);
 	return (new - strtab);
 }
@@ -225,11 +237,12 @@ static int fdt_add_property_(void *fdt, int nodeoffset, const char *name,
 	int nextoffset;
 	int namestroff;
 	int err;
+	int allocated;
 
 	if ((nextoffset = fdt_check_node_offset_(fdt, nodeoffset)) < 0)
 		return nextoffset;
 
-	namestroff = fdt_find_add_string_(fdt, name);
+	namestroff = fdt_find_add_string_(fdt, name, &allocated);
 	if (namestroff < 0)
 		return namestroff;
 
@@ -237,8 +250,11 @@ static int fdt_add_property_(void *fdt, int nodeoffset, const char *name,
 	proplen = sizeof(**prop) + FDT_TAGALIGN(len);
 
 	err = fdt_splice_struct_(fdt, *prop, 0, proplen);
-	if (err)
+	if (err) {
+		if (allocated)
+			fdt_del_last_string_(fdt, name);
 		return err;
+	}
 
 	(*prop)->tag = cpu_to_fdt32(FDT_PROP);
 	(*prop)->nameoff = cpu_to_fdt32(namestroff);
diff --git a/scripts/dtc/libfdt/fdt_strerror.c b/scripts/dtc/libfdt/fdt_strerror.c
index 9677a1887e57..0e6b4fd5e7ce 100644
--- a/scripts/dtc/libfdt/fdt_strerror.c
+++ b/scripts/dtc/libfdt/fdt_strerror.c
@@ -82,6 +82,7 @@ static struct fdt_errtabent fdt_errtable[] = {
 	FDT_ERRTABENT(FDT_ERR_BADVALUE),
 	FDT_ERRTABENT(FDT_ERR_BADOVERLAY),
 	FDT_ERRTABENT(FDT_ERR_NOPHANDLES),
+	FDT_ERRTABENT(FDT_ERR_BADFLAGS),
 };
 #define FDT_ERRTABSIZE	(sizeof(fdt_errtable) / sizeof(fdt_errtable[0]))
 
diff --git a/scripts/dtc/libfdt/fdt_sw.c b/scripts/dtc/libfdt/fdt_sw.c
index 9fa4a94d83c3..e773157d0fc4 100644
--- a/scripts/dtc/libfdt/fdt_sw.c
+++ b/scripts/dtc/libfdt/fdt_sw.c
@@ -121,6 +121,12 @@ static int fdt_sw_probe_struct_(void *fdt)
 			return err; \
 	}
 
+static inline uint32_t sw_flags(void *fdt)
+{
+	/* assert: (fdt_magic(fdt) == FDT_SW_MAGIC) */
+	return fdt_last_comp_version(fdt);
+}
+
 /* 'complete' state:	Enter this state after fdt_finish()
  *
  * Allowed functions: none
@@ -141,7 +147,7 @@ static void *fdt_grab_space_(void *fdt, size_t len)
 	return fdt_offset_ptr_w_(fdt, offset);
 }
 
-int fdt_create(void *buf, int bufsize)
+int fdt_create_with_flags(void *buf, int bufsize, uint32_t flags)
 {
 	const size_t hdrsize = FDT_ALIGN(sizeof(struct fdt_header),
 					 sizeof(struct fdt_reserve_entry));
@@ -150,11 +156,22 @@ int fdt_create(void *buf, int bufsize)
 	if (bufsize < hdrsize)
 		return -FDT_ERR_NOSPACE;
 
+	if (flags & ~FDT_CREATE_FLAGS_ALL)
+		return -FDT_ERR_BADFLAGS;
+
 	memset(buf, 0, bufsize);
 
+	/*
+	 * magic and last_comp_version keep intermediate state during the fdt
+	 * creation process, which is replaced with the proper FDT format by
+	 * fdt_finish().
+	 *
+	 * flags should be accessed with sw_flags().
+	 */
 	fdt_set_magic(fdt, FDT_SW_MAGIC);
 	fdt_set_version(fdt, FDT_LAST_SUPPORTED_VERSION);
-	fdt_set_last_comp_version(fdt, FDT_FIRST_SUPPORTED_VERSION);
+	fdt_set_last_comp_version(fdt, flags);
+
 	fdt_set_totalsize(fdt,  bufsize);
 
 	fdt_set_off_mem_rsvmap(fdt, hdrsize);
@@ -164,6 +181,11 @@ int fdt_create(void *buf, int bufsize)
 	return 0;
 }
 
+int fdt_create(void *buf, int bufsize)
+{
+	return fdt_create_with_flags(buf, bufsize, 0);
+}
+
 int fdt_resize(void *fdt, void *buf, int bufsize)
 {
 	size_t headsize, tailsize;
@@ -262,19 +284,13 @@ int fdt_end_node(void *fdt)
 	return 0;
 }
 
-static int fdt_find_add_string_(void *fdt, const char *s)
+static int fdt_add_string_(void *fdt, const char *s)
 {
 	char *strtab = (char *)fdt + fdt_totalsize(fdt);
-	const char *p;
 	int strtabsize = fdt_size_dt_strings(fdt);
 	int len = strlen(s) + 1;
 	int struct_top, offset;
 
-	p = fdt_find_string_(strtab - strtabsize, strtabsize, s);
-	if (p)
-		return p - strtab;
-
-	/* Add it */
 	offset = -strtabsize - len;
 	struct_top = fdt_off_dt_struct(fdt) + fdt_size_dt_struct(fdt);
 	if (fdt_totalsize(fdt) + offset < struct_top)
@@ -285,20 +301,56 @@ static int fdt_find_add_string_(void *fdt, const char *s)
 	return offset;
 }
 
+/* Must only be used to roll back in case of error */
+static void fdt_del_last_string_(void *fdt, const char *s)
+{
+	int strtabsize = fdt_size_dt_strings(fdt);
+	int len = strlen(s) + 1;
+
+	fdt_set_size_dt_strings(fdt, strtabsize - len);
+}
+
+static int fdt_find_add_string_(void *fdt, const char *s, int *allocated)
+{
+	char *strtab = (char *)fdt + fdt_totalsize(fdt);
+	int strtabsize = fdt_size_dt_strings(fdt);
+	const char *p;
+
+	*allocated = 0;
+
+	p = fdt_find_string_(strtab - strtabsize, strtabsize, s);
+	if (p)
+		return p - strtab;
+
+	*allocated = 1;
+
+	return fdt_add_string_(fdt, s);
+}
+
 int fdt_property_placeholder(void *fdt, const char *name, int len, void **valp)
 {
 	struct fdt_property *prop;
 	int nameoff;
+	int allocated;
 
 	FDT_SW_PROBE_STRUCT(fdt);
 
-	nameoff = fdt_find_add_string_(fdt, name);
+	/* String de-duplication can be slow, _NO_NAME_DEDUP skips it */
+	if (sw_flags(fdt) & FDT_CREATE_FLAG_NO_NAME_DEDUP) {
+		allocated = 1;
+		nameoff = fdt_add_string_(fdt, name);
+	} else {
+		nameoff = fdt_find_add_string_(fdt, name, &allocated);
+	}
 	if (nameoff == 0)
 		return -FDT_ERR_NOSPACE;
 
 	prop = fdt_grab_space_(fdt, sizeof(*prop) + FDT_TAGALIGN(len));
-	if (! prop)
+	if (! prop) {
+		if (allocated)
+			fdt_del_last_string_(fdt, name);
 		return -FDT_ERR_NOSPACE;
+	}
 
 	prop->tag = cpu_to_fdt32(FDT_PROP);
 	prop->nameoff = cpu_to_fdt32(nameoff);
@@ -360,6 +412,10 @@ int fdt_finish(void *fdt)
 
 	/* Finally, adjust the header */
 	fdt_set_totalsize(fdt, newstroffset + fdt_size_dt_strings(fdt));
+
+	/* And fix up fields that were keeping intermediate state. */
+	fdt_set_last_comp_version(fdt, FDT_FIRST_SUPPORTED_VERSION);
 	fdt_set_magic(fdt, FDT_MAGIC);
+
 	return 0;
 }
diff --git a/scripts/dtc/libfdt/libfdt.h b/scripts/dtc/libfdt/libfdt.h
index 627da2e079c9..be14bf63e577 100644
--- a/scripts/dtc/libfdt/libfdt.h
+++ b/scripts/dtc/libfdt/libfdt.h
@@ -138,7 +138,15 @@
 	/* FDT_ERR_NOPHANDLES: The device tree doesn't have any
 	 * phandle available anymore without causing an overflow */
 
-#define FDT_ERR_MAX		17
+#define FDT_ERR_BADFLAGS	18
+	/* FDT_ERR_BADFLAGS: The function was passed a flags field that
+	 * contains invalid flags or an invalid combination of flags. */
+
+#define FDT_ERR_MAX		18
+
+/* constants */
+#define FDT_MAX_PHANDLE 0xfffffffe
+	/* Valid values for phandles range from 1 to 2^32-2. */
 
 /**********************************************************************/
 /* Low-level functions (you probably don't need these)                */
@@ -171,6 +179,16 @@ static inline uint32_t fdt32_ld(const fdt32_t *p)
 		| bp[3];
 }
 
+static inline void fdt32_st(void *property, uint32_t value)
+{
+	uint8_t *bp = property;
+
+	bp[0] = value >> 24;
+	bp[1] = (value >> 16) & 0xff;
+	bp[2] = (value >> 8) & 0xff;
+	bp[3] = value & 0xff;
+}
+
 static inline uint64_t fdt64_ld(const fdt64_t *p)
 {
 	const uint8_t *bp = (const uint8_t *)p;
@@ -185,6 +203,20 @@ static inline uint64_t fdt64_ld(const fdt64_t *p)
 		| bp[7];
 }
 
+static inline void fdt64_st(void *property, uint64_t value)
+{
+	uint8_t *bp = property;
+
+	bp[0] = value >> 56;
+	bp[1] = (value >> 48) & 0xff;
+	bp[2] = (value >> 40) & 0xff;
+	bp[3] = (value >> 32) & 0xff;
+	bp[4] = (value >> 24) & 0xff;
+	bp[5] = (value >> 16) & 0xff;
+	bp[6] = (value >> 8) & 0xff;
+	bp[7] = value & 0xff;
+}
+
 /**********************************************************************/
 /* Traversal functions                                                */
 /**********************************************************************/
@@ -227,7 +259,7 @@ int fdt_next_subnode(const void *fdt, int offset);
  *		...
  *	}
  *
- *	if ((node < 0) && (node != -FDT_ERR_NOT_FOUND)) {
+ *	if ((node < 0) && (node != -FDT_ERR_NOTFOUND)) {
  *		Error handling
  *	}
  *
@@ -361,6 +393,20 @@ const char *fdt_get_string(const void *fdt, int stroffset, int *lenp);
  */
 const char *fdt_string(const void *fdt, int stroffset);
 
+/**
+ * fdt_find_max_phandle - find and return the highest phandle in a tree
+ * @fdt: pointer to the device tree blob
+ * @phandle: return location for the highest phandle value found in the tree
+ *
+ * fdt_find_max_phandle() finds the highest phandle value in the given device
+ * tree. The value returned in @phandle is only valid if the function returns
+ * success.
+ *
+ * returns:
+ *     0 on success or a negative error code on failure
+ */
+int fdt_find_max_phandle(const void *fdt, uint32_t *phandle);
+
 /**
  * fdt_get_max_phandle - retrieves the highest phandle in a tree
  * @fdt: pointer to the device tree blob
@@ -369,12 +415,39 @@ const char *fdt_string(const void *fdt, int stroffset);
  * device tree. This will ignore badly formatted phandles, or phandles
  * with a value of 0 or -1.
  *
+ * This function is deprecated in favour of fdt_find_max_phandle().
+ *
  * returns:
  *      the highest phandle on success
  *      0, if no phandle was found in the device tree
  *      -1, if an error occurred
  */
-uint32_t fdt_get_max_phandle(const void *fdt);
+static inline uint32_t fdt_get_max_phandle(const void *fdt)
+{
+	uint32_t phandle;
+	int err;
+
+	err = fdt_find_max_phandle(fdt, &phandle);
+	if (err < 0)
+		return (uint32_t)-1;
+
+	return phandle;
+}
+
+/**
+ * fdt_generate_phandle - return a new, unused phandle for a device tree blob
+ * @fdt: pointer to the device tree blob
+ * @phandle: return location for the new phandle
+ *
+ * Walks the device tree blob and looks for the highest phandle value. On
+ * success, the new, unused phandle value (one higher than the previously
+ * highest phandle value in the device tree blob) will be returned in the
+ * @phandle parameter.
+ *
+ * Returns:
+ *   0 on success or a negative error-code on failure
+ */
+int fdt_generate_phandle(const void *fdt, uint32_t *phandle);
 
 /**
  * fdt_num_mem_rsv - retrieve the number of memory reserve map entries
@@ -566,7 +639,7 @@ int fdt_next_property_offset(const void *fdt, int offset);
  *		...
  *	}
  *
- *	if ((property < 0) && (property != -FDT_ERR_NOT_FOUND)) {
+ *	if ((property < 0) && (property != -FDT_ERR_NOTFOUND)) {
  *		Error handling
  *	}
  *
@@ -669,7 +742,7 @@ static inline struct fdt_property *fdt_get_property_w(void *fdt, int nodeoffset,
 /**
  * fdt_getprop_by_offset - retrieve the value of a property at a given offset
  * @fdt: pointer to the device tree blob
- * @ffset: offset of the property to read
+ * @offset: offset of the property to read
  * @namep: pointer to a string variable (will be overwritten) or NULL
  * @lenp: pointer to an integer variable (will be overwritten) or NULL
  *
@@ -1360,7 +1433,45 @@ int fdt_nop_node(void *fdt, int nodeoffset);
 /* Sequential write functions                                         */
 /**********************************************************************/
 
+/* fdt_create_with_flags flags */
+#define FDT_CREATE_FLAG_NO_NAME_DEDUP 0x1
+	/* FDT_CREATE_FLAG_NO_NAME_DEDUP: Do not try to de-duplicate property
+	 * names in the fdt. This can result in faster creation times, but
+	 * a larger fdt. */
+
+#define FDT_CREATE_FLAGS_ALL	(FDT_CREATE_FLAG_NO_NAME_DEDUP)
+
+/**
+ * fdt_create_with_flags - begin creation of a new fdt
+ * @fdt: pointer to memory allocated where fdt will be created
+ * @bufsize: size of the memory space at fdt
+ * @flags: a valid combination of FDT_CREATE_FLAG_ flags, or 0.
+ *
+ * fdt_create_with_flags() begins the process of creating a new fdt with
+ * the sequential write interface.
+ *
+ * fdt creation process must end with fdt_finished() to produce a valid fdt.
+ *
+ * returns:
+ *	0, on success
+ *	-FDT_ERR_NOSPACE, bufsize is insufficient for a minimal fdt
+ *	-FDT_ERR_BADFLAGS, flags is not valid
+ */
+int fdt_create_with_flags(void *buf, int bufsize, uint32_t flags);
+
+/**
+ * fdt_create - begin creation of a new fdt
+ * @fdt: pointer to memory allocated where fdt will be created
+ * @bufsize: size of the memory space at fdt
+ *
+ * fdt_create() is equivalent to fdt_create_with_flags() with flags=0.
+ *
+ * returns:
+ *	0, on success
+ *	-FDT_ERR_NOSPACE, bufsize is insufficient for a minimal fdt
+ */
 int fdt_create(void *buf, int bufsize);
+
 int fdt_resize(void *fdt, void *buf, int bufsize);
 int fdt_add_reservemap_entry(void *fdt, uint64_t addr, uint64_t size);
 int fdt_finish_reservemap(void *fdt);
@@ -1831,6 +1942,43 @@ static inline int fdt_appendprop_cell(void *fdt, int nodeoffset,
 #define fdt_appendprop_string(fdt, nodeoffset, name, str) \
 	fdt_appendprop((fdt), (nodeoffset), (name), (str), strlen(str)+1)
 
+/**
+ * fdt_appendprop_addrrange - append a address range property
+ * @fdt: pointer to the device tree blob
+ * @parent: offset of the parent node
+ * @nodeoffset: offset of the node to add a property at
+ * @name: name of property
+ * @addr: start address of a given range
+ * @size: size of a given range
+ *
+ * fdt_appendprop_addrrange() appends an address range value (start
+ * address and size) to the value of the named property in the given
+ * node, or creates a new property with that value if it does not
+ * already exist.
+ * If "name" is not specified, a default "reg" is used.
+ * Cell sizes are determined by parent's #address-cells and #size-cells.
+ *
+ * This function may insert data into the blob, and will therefore
+ * change the offsets of some existing nodes.
+ *
+ * returns:
+ *	0, on success
+ *	-FDT_ERR_BADLAYOUT,
+ *	-FDT_ERR_BADMAGIC,
+ *	-FDT_ERR_BADNCELLS, if the node has a badly formatted or invalid
+ *		#address-cells property
+ *	-FDT_ERR_BADOFFSET, nodeoffset did not point to FDT_BEGIN_NODE tag
+ *	-FDT_ERR_BADSTATE,
+ *	-FDT_ERR_BADSTRUCTURE,
+ *	-FDT_ERR_BADVERSION,
+ *	-FDT_ERR_BADVALUE, addr or size doesn't fit to respective cells size
+ *	-FDT_ERR_NOSPACE, there is insufficient free space in the blob to
+ *		contain a new property
+ *	-FDT_ERR_TRUNCATED, standard meanings
+ */
+int fdt_appendprop_addrrange(void *fdt, int parent, int nodeoffset,
+			     const char *name, uint64_t addr, uint64_t size);
+
 /**
  * fdt_delprop - delete a property
  * @fdt: pointer to the device tree blob
diff --git a/scripts/dtc/libfdt/libfdt_env.h b/scripts/dtc/libfdt/libfdt_env.h
index eb2053845c9c..4d1cdfa58547 100644
--- a/scripts/dtc/libfdt/libfdt_env.h
+++ b/scripts/dtc/libfdt/libfdt_env.h
@@ -52,6 +52,7 @@
  *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
+#include <stdbool.h>
 #include <stddef.h>
 #include <stdint.h>
 #include <stdlib.h>
diff --git a/scripts/dtc/livetree.c b/scripts/dtc/livetree.c
index 7a2e6446a17b..21c274125c2c 100644
--- a/scripts/dtc/livetree.c
+++ b/scripts/dtc/livetree.c
@@ -249,6 +249,7 @@ struct node * add_orphan_node(struct node *dt, struct node *new_node, char *ref)
 	char *name;
 
 	if (ref[0] == '/') {
+		d = data_add_marker(d, TYPE_STRING, ref);
 		d = data_append_data(d, ref, strlen(ref) + 1);
 
 		p = build_property("target-path", d, NULL);
@@ -350,17 +351,20 @@ void delete_node(struct node *node)
 }
 
 void append_to_property(struct node *node,
-				    char *name, const void *data, int len)
+			char *name, const void *data, int len,
+			enum markertype type)
 {
 	struct data d;
 	struct property *p;
 
 	p = get_property(node, name);
 	if (p) {
-		d = data_append_data(p->val, data, len);
+		d = data_add_marker(p->val, type, name);
+		d = data_append_data(d, data, len);
 		p->val = d;
 	} else {
-		d = data_append_data(empty_data, data, len);
+		d = data_add_marker(empty_data, type, name);
+		d = data_append_data(d, data, len);
 		p = build_property(name, d, NULL);
 		add_property(node, p);
 	}
@@ -858,8 +862,8 @@ static void generate_label_tree_internal(struct dt_info *dti,
 
 			/* insert it */
 			p = build_property(l->label,
-				data_copy_mem(node->fullpath,
-						strlen(node->fullpath) + 1),
+				data_copy_escape_string(node->fullpath,
+						strlen(node->fullpath)),
 				NULL);
 			add_property(an, p);
 		}
@@ -910,7 +914,7 @@ static void add_fixup_entry(struct dt_info *dti, struct node *fn,
 
 	xasprintf(&entry, "%s:%s:%u",
 			node->fullpath, prop->name, m->offset);
-	append_to_property(fn, m->ref, entry, strlen(entry) + 1);
+	append_to_property(fn, m->ref, entry, strlen(entry) + 1, TYPE_STRING);
 
 	free(entry);
 }
@@ -970,7 +974,7 @@ static void add_local_fixup_entry(struct dt_info *dti,
 	char **compp;
 	int i, depth;
 
-	/* walk back retreiving depth */
+	/* walk back retrieving depth */
 	depth = 0;
 	for (wn = node; wn; wn = wn->parent)
 		depth++;
@@ -993,7 +997,7 @@ static void add_local_fixup_entry(struct dt_info *dti,
 	free(compp);
 
 	value_32 = cpu_to_fdt32(m->offset);
-	append_to_property(wn, prop->name, &value_32, sizeof(value_32));
+	append_to_property(wn, prop->name, &value_32, sizeof(value_32), TYPE_UINT32);
 }
 
 static void generate_local_fixups_tree_internal(struct dt_info *dti,
diff --git a/scripts/dtc/util.h b/scripts/dtc/util.h
index 7658781a6200..fc3c0d05ada3 100644
--- a/scripts/dtc/util.h
+++ b/scripts/dtc/util.h
@@ -122,7 +122,7 @@ int utilfdt_read_err(const char *filename, char **buffp, size_t *len);
  * stderr.
  *
  * @param filename	The filename to write, or - for stdout
- * @param blob		Poiner to buffer containing fdt
+ * @param blob		Pointer to buffer containing fdt
  * @return 0 if ok, -1 on error
  */
 int utilfdt_write(const char *filename, const void *blob);
@@ -133,7 +133,7 @@ int utilfdt_write(const char *filename, const void *blob);
  * an error message for the user.
  *
  * @param filename	The filename to write, or - for stdout
- * @param blob		Poiner to buffer containing fdt
+ * @param blob		Pointer to buffer containing fdt
  * @return 0 if ok, else an errno value representing the error
  */
 int utilfdt_write_err(const char *filename, const void *blob);
diff --git a/scripts/dtc/version_gen.h b/scripts/dtc/version_gen.h
index 75f383c0b9d3..2111a6e351f9 100644
--- a/scripts/dtc/version_gen.h
+++ b/scripts/dtc/version_gen.h
@@ -1 +1 @@
-#define DTC_VERSION "DTC 1.4.7-gf267e674"
+#define DTC_VERSION "DTC 1.5.0-g87963ee2"
-- 
2.20.1

