Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 039075FBA56
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 20:27:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbiJKS1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 14:27:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229948AbiJKS0m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 14:26:42 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AFF22C66E
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 11:26:32 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id q1so5161527pgl.11
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 11:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kVROHP9AcWlTDa92GvzUA1KglgTPkaq4Cz7rIWOPEOQ=;
        b=wU5NHUHCYMsSR+VR6BZA+xUKT1dGOBKMRnI7kOKy8js2SpaPaxTurQ2q7Zth16qf+b
         EJQJBK9K10A7vI6ZPGIupWySMi3N1d6tuchKCi7o3GmJfwwh1MG3rX6FSrRNK+buokfi
         OJtReXnQNhGug7uvDGjXUuY8liXI4+sEZfpOfXbBgRRAVU7NPq5kpTCIvm1wIsu+pnUN
         kF08zDeltEoz5jJa/aaHoU33jdIogIy6FP3equ+cYMRVGZVDwWC+pZ1bcDSdfhn7Q3K6
         7SGFonzVN412PgdtnfEuhz5f2lMJETAjpIkguzFKGibGkJSqWUwGHxB5QHOJj56Wm0nq
         iYag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kVROHP9AcWlTDa92GvzUA1KglgTPkaq4Cz7rIWOPEOQ=;
        b=ooxWQzqMZ/3+JjLbkuoA3kmxAjaCs89GpaRsbl6T/mEw2VfNnU3YDvG47LFXvWQger
         iT8xkg6dEMSQWPRLI/byezAdQuNfFIDDTzN5XLrYsAW01Q1OELdLtq3Zibzkm33GDV+r
         ePgXisx1KHSDZU0CwTWi6GLIFuxbT6A+9diEkO+0/EsukX21+fFyzmuNFBBrpLW2k1Ko
         s11sd5gSYKMa1htvaav4tEwlGEBGVcmzy+39D8YRrn7h5HBx8f5Gb7SaJnrwixAvwiWV
         Yw1qNbHtUYHFRS+3XTRlWN73K2XUHtIpcGc8MKPGW+oPXRngPOV1VLfrI2P01KpdQhkd
         8vfQ==
X-Gm-Message-State: ACrzQf1VY0XQjP2Abe5EzysMTlKV11L5/vvf/vNyOxHrcZiC2LsMNDPA
        Ms1RITW919Mi4PM+hzGNrXzgcQ==
X-Google-Smtp-Source: AMsMyM6itdhQPgZ9zW+pgb2CitzUbvF2gx/YB2CZMMr45YEbKfmDEHeWtNflTn+CShW7aUvMaVQdGw==
X-Received: by 2002:a63:90ca:0:b0:458:f28d:917e with SMTP id a193-20020a6390ca000000b00458f28d917emr22202963pge.201.1665512791440;
        Tue, 11 Oct 2022 11:26:31 -0700 (PDT)
Received: from desktop.hsd1.or.comcast.net ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id t8-20020a655548000000b0045ffd1dc622sm6313643pgr.30.2022.10.11.11.26.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 11:26:31 -0700 (PDT)
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>
Cc:     devicetree@vger.kernel.org, devicetree-compiler@vger.kernel.org,
        Tadeusz Struk <tadeusz.struk@linaro.org>
Subject: [PATCH v6 2/2] libfdt: tests: add get_next_tag_invalid_prop_len
Date:   Tue, 11 Oct 2022 11:26:11 -0700
Message-Id: <20221011182611.116011-2-tadeusz.struk@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221011182611.116011-1-tadeusz.struk@linaro.org>
References: <20221011182611.116011-1-tadeusz.struk@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new test get_next_tag_invalid_prop_len, which covers
fdt_next_tag(), when it is passed an corrupted blob, with
invalid property len values. The test runs twice, on a blob
in sw and finished state.

Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>
---
v6:
 * Remove RET_FAIL and call FAIL directly.
 * Fix typos
v5:
 * Add back fdt_finish_reservemap() instead of directly calling
   fdt_set_off_dt_strings()
 * Call the test twice, on the blob in sw, and finished state
 * Use the new fdt_get_property_by_offset_w() helper to get the
   pointer to the property at a given address.
v4:
 * I didn't keep track of the changes in the test code,
   but this version should have all the comments addressed.
---
 tests/.gitignore                      |   1 +
 tests/Makefile.tests                  |   2 +-
 tests/get_next_tag_invalid_prop_len.c | 100 ++++++++++++++++++++++++++
 tests/meson.build                     |   1 +
 tests/run_tests.sh                    |   1 +
 5 files changed, 104 insertions(+), 1 deletion(-)
 create mode 100644 tests/get_next_tag_invalid_prop_len.c

diff --git a/tests/.gitignore b/tests/.gitignore
index 03bdde2..3376ed9 100644
--- a/tests/.gitignore
+++ b/tests/.gitignore
@@ -74,3 +74,4 @@ tmp.*
 /truncated_memrsv
 /utilfdt_test
 /value-labels
+/get_next_tag_invalid_prop_len
diff --git a/tests/Makefile.tests b/tests/Makefile.tests
index 2d36c5d..2c5b4c9 100644
--- a/tests/Makefile.tests
+++ b/tests/Makefile.tests
@@ -4,7 +4,7 @@ LIB_TESTS_L = get_mem_rsv \
 	get_path supernode_atdepth_offset parent_offset \
 	node_offset_by_prop_value node_offset_by_phandle \
 	node_check_compatible node_offset_by_compatible \
-	get_alias \
+	get_alias get_next_tag_invalid_prop_len \
 	char_literal \
 	sized_cells \
 	notfound \
diff --git a/tests/get_next_tag_invalid_prop_len.c b/tests/get_next_tag_invalid_prop_len.c
new file mode 100644
index 0000000..25d57c3
--- /dev/null
+++ b/tests/get_next_tag_invalid_prop_len.c
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: LGPL-2.1-or-later
+/*
+ * libfdt - Flat Device Tree manipulation
+ *	Testcase for fdt_next_tag()
+ */
+#include <stdlib.h>
+#include <stdio.h>
+#include <string.h>
+#include <stdint.h>
+
+#include <libfdt.h>
+#include "tests.h"
+#include "testdata.h"
+
+#define FDT_SIZE 65536
+#define CHECK_ERR(err) \
+({ if (err) \
+	FAIL("%s: %d: %s", __FILE__, __LINE__, fdt_strerror(err)); \
+})
+
+static void fdt_next_tag_test(bool fdt_finished)
+{
+	struct fdt_property *prp;
+	void *fdt;
+	int nextoff = 0, offset, err;
+	uint32_t tag;
+
+	fdt = malloc(FDT_SIZE);
+	if (!fdt)
+		FAIL("Can't allocate memory");
+	err = fdt_create(fdt, FDT_SIZE);
+	CHECK_ERR(err);
+	err = fdt_finish_reservemap(fdt);
+	CHECK_ERR(err);
+	/* Create a root node and add two properties */
+	err = fdt_begin_node(fdt, "");
+	CHECK_ERR(err);
+	err = fdt_property_u32(fdt, "prop-int-32", 0x1234);
+	CHECK_ERR(err);
+	err = fdt_property_u32(fdt, "prop2-int-32", 0x4321);
+	CHECK_ERR(err);
+	err = fdt_end_node(fdt);
+	CHECK_ERR(err);
+	if (fdt_finished) {
+		/* Call fdt_finish to set the correct fdt state. */
+		err = fdt_finish(fdt);
+		CHECK_ERR(err);
+	}
+
+	offset = fdt_first_property_offset(fdt, 0);
+	if (offset <= 0)
+		FAIL("Invalid offset %x, expected value greater than 0, finished=%d\n",
+		     offset, fdt_finished);
+
+	/* Normal case */
+	tag = fdt_next_tag(fdt, offset, &nextoff);
+	if (tag != FDT_PROP)
+		FAIL("Invalid tag %x, expected FDT_PROP, finished=%d\n",
+		     tag, fdt_finished);
+	if (nextoff <= 0)
+		FAIL("Invalid nextoff %d, expected value greater than 0, finished=%d",
+		     nextoff, fdt_finished);
+
+	/* Get a writable ptr to the first property and corrupt the length */
+	prp = fdt_get_property_by_offset_w(fdt, offset, NULL);
+	if (!prp)
+		FAIL("Bad property pointer, finished=%d", fdt_finished);
+
+	/* int overflow case */
+	prp->len = cpu_to_fdt32(0xFFFFFFFA);
+	tag = fdt_next_tag(fdt, offset, &nextoff);
+	if (tag != FDT_END)
+		FAIL("Invalid tag %x, expected premature FDT_END, finished=%d",
+		     tag, fdt_finished);
+	if (nextoff != -FDT_ERR_BADSTRUCTURE)
+		FAIL("Invalid nextoff, expected error -FDT_ERR_BADSTRUCTURE, finished=%d",
+		     fdt_finished);
+
+	/* negative offset case */
+	prp->len = cpu_to_fdt32(0x7FFFFFFA);
+	tag = fdt_next_tag(fdt, offset, &nextoff);
+	if (tag != FDT_END)
+		FAIL("Invalid tag %x, expected premature FDT_END, finished=%d",
+		     tag, fdt_finished);
+	if (nextoff != -FDT_ERR_BADSTRUCTURE)
+		FAIL("Invalid nextoff, expected -FDT_ERR_BADSTRUCTURE, finished=%d",
+		     fdt_finished);
+
+	free(fdt);
+}
+
+int main(int argc, char *argv[])
+{
+	test_init(argc, argv);
+
+	fdt_next_tag_test(false);
+	fdt_next_tag_test(true);
+
+	PASS();
+}
diff --git a/tests/meson.build b/tests/meson.build
index 4ac154a..29a42dd 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -47,6 +47,7 @@ tests = [
   'get_path',
   'get_phandle',
   'get_prop_offset',
+  'get_next_tag_invalid_prop_len',
   'getprop',
   'incbin',
   'integer-expressions',
diff --git a/tests/run_tests.sh b/tests/run_tests.sh
index 244df8a..46678cb 100755
--- a/tests/run_tests.sh
+++ b/tests/run_tests.sh
@@ -513,6 +513,7 @@ libfdt_tests () {
     run_dtc_test -I fs -O dts -o fs.test_tree1.test.dts $FSBASE/test_tree1
     run_dtc_test -I fs -O dtb -o fs.test_tree1.test.dtb $FSBASE/test_tree1
     run_test dtbs_equal_unordered -m fs.test_tree1.test.dtb test_tree1.dtb
+    run_test get_next_tag_invalid_prop_len
 
     ## https://github.com/dgibson/dtc/issues/64
     check_tests "$SRCDIR/phandle-args-overflow.dts" clocks_property
-- 
2.37.3
