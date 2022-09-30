Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 932045F0EB1
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 17:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbiI3PUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 11:20:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiI3PUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 11:20:37 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACAB8AF0E5
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 08:20:34 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id s26so4443266pgv.7
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 08:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Vz9lA0F1yHOg7HfAgSRPTst4o2oZQcaGQFkK3cA66Go=;
        b=Znl4T2a/aOuQ4qL8DqBD6ZHf2vsPqVNSAFlUD80feoyqFFLZv/bsarrO1vM494MOJa
         jQUtfOuINTBL2HrshAitY0cIENMLmb0PD4zMKkMx21p3wqC8yxqXptCVH1Vz6k5jr8gQ
         swGSk+K3IvFVH59NjyFoBs0oOIsPRUwiKOU6xMiiYB7J9Ph2vplQgqHrOUmydvBi2ZFw
         YugaCkvAJR0bN6e4BpDzetlc0xNiYgC6lWx9Jh78uq9qqi1ehId+Sv2dac1aLxH+0dG1
         T23ZT47tqAcRzPxd+qMbdaAIDO1w+8Jn7KFpuIPgxvVHeCzy6sPshXyfSMozyuaKNvi8
         L4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Vz9lA0F1yHOg7HfAgSRPTst4o2oZQcaGQFkK3cA66Go=;
        b=ntxf4q5r7YYHxubpZwCsYo3IBGe+kEr1hYEThGKhLHxiwKuDo7cIIi2cpqV1BEtqC9
         9obHVq7JtR8K8oS7haQ0Mjb+3N/vEhcawSHU7erecgj8EU184xKZMU/9ZDvfKg3spxRD
         RvRMwvbD2lLAKQBb64VfL4TVjvmCnQXqOduucJGM3F471S6521G4qD7rx8bxuRp2aVCo
         XspFEAN0PT3p63A0SGswHe7Cbdk2AqfpYZT6hgmNhuMZ0GJTgrlSdk4hEkf+mvQwto54
         9rSHDu3Tklt6e2l3owqh8OfFq5JrgmwpPqCV+PySdGLVHfz0EiECazXBRit0o8UMLbEr
         nF5A==
X-Gm-Message-State: ACrzQf0IEBorDBTFNELoMM28ZW2s+YIENHw7MZUErkN4gw2IbfvlqzUH
        2chB6MzKWjNgT172wKw7zv96Fw==
X-Google-Smtp-Source: AMsMyM6qqmnQMekvtcDlv9Ti64Z60j3eMdeqklxDmPIVqjeA9qwig/udADMAwSaDS5aSAu77VDz5RQ==
X-Received: by 2002:aa7:88c9:0:b0:541:2b7:d655 with SMTP id k9-20020aa788c9000000b0054102b7d655mr9679117pff.72.1664551234034;
        Fri, 30 Sep 2022 08:20:34 -0700 (PDT)
Received: from desktop.hsd1.or.comcast.net ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id r9-20020a655089000000b0043a09d5c32bsm1835090pgp.74.2022.09.30.08.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 08:20:33 -0700 (PDT)
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>,
        Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, devicetree-compiler@vger.kernel.org,
        Tadeusz Struk <tadeusz.struk@linaro.org>
Subject: [PATCH v2 2/2] libfdt: tests: add get_next_tag_invalid_prop_len
Date:   Fri, 30 Sep 2022 08:20:04 -0700
Message-Id: <20220930152004.674591-2-tadeusz.struk@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220930152004.674591-1-tadeusz.struk@linaro.org>
References: <20220930152004.674591-1-tadeusz.struk@linaro.org>
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
invalid property len values.

Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>
---
 tests/.gitignore                      |  1 +
 tests/Makefile.tests                  |  2 +-
 tests/get_next_tag_invalid_prop_len.c | 65 +++++++++++++++++++++++++++
 tests/meson.build                     |  1 +
 tests/run_tests.sh                    |  1 +
 5 files changed, 69 insertions(+), 1 deletion(-)
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
index 0000000..c02f6a3
--- /dev/null
+++ b/tests/get_next_tag_invalid_prop_len.c
@@ -0,0 +1,65 @@
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
+int main(int argc, char *argv[])
+{
+	struct fdt_header *hdr;
+	struct fdt_property *prp;
+	void *fdt;
+	int size, nextoff = 0;
+	uint32_t tag;
+
+	test_init(argc, argv);
+	size = sizeof(*hdr) + sizeof(*prp) + 256;
+	fdt = calloc(1, size);
+	if (!fdt)
+		FAIL("Can't allocate memory");
+
+	hdr = fdt;
+	prp = (struct fdt_property *)(((char *) fdt) + sizeof(*hdr));
+	fdt_set_magic(fdt, FDT_MAGIC);
+	fdt_set_totalsize(fdt, size);
+	fdt_set_version(fdt, 0x10);
+	prp->tag = cpu_to_fdt32(FDT_PROP);
+	prp->len = cpu_to_fdt32(256);
+	prp->nameoff = 0;
+
+	tag = fdt_next_tag(fdt, sizeof(*hdr), &nextoff);
+	if (tag != FDT_PROP)
+		FAIL("Invalid tag %X", tag);
+
+	if (nextoff != size)
+		FAIL("Invalid next_offset");
+
+	/* int overflow case */
+	prp->len = cpu_to_fdt32(0xFFFFFFFA);
+	tag = fdt_next_tag(fdt, sizeof(*hdr), &nextoff);
+	if (tag != FDT_END)
+		FAIL("Invalid tag, expected premature end");
+
+	if (nextoff != -FDT_ERR_BADSTRUCTURE)
+		FAIL("Invalid nextoff, expected error FDT_ERR_BADSTRUCTURE");
+
+	/* negative offset case */
+	prp->len = cpu_to_fdt32(0x7FFFFFFA);
+	tag = fdt_next_tag(fdt, sizeof(*hdr), &nextoff);
+	if (tag != FDT_END)
+		FAIL("Invalid tag, expected premature end");
+
+	if (nextoff != -FDT_ERR_BADSTRUCTURE)
+		FAIL("Invalid nextoff, expected error FDT_ERR_BADSTRUCTURE");
+
+	free(fdt);
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
index 244df8a..397b9cf 100755
--- a/tests/run_tests.sh
+++ b/tests/run_tests.sh
@@ -346,6 +346,7 @@ tree1_tests () {
     run_test get_prop_offset $TREE
     run_test get_phandle $TREE
     run_test get_path $TREE
+    run_test get_next_tag_invalid_prop_len $TREE #TREE not really needed
     run_test supernode_atdepth_offset $TREE
     run_test parent_offset $TREE
     run_test node_offset_by_prop_value $TREE
-- 
2.37.3

