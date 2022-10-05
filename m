Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 022275F5D39
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 01:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbiJEX3t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 19:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiJEX3s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 19:29:48 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8553AFAFC
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 16:29:46 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 2so315283pgl.7
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 16:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZFRNQd/zap407HixVlnEcklt9OLciYGy385OrpA0Zk=;
        b=c5wS0ZuyHg3OwsXTrpdT4Nf5/+5b7YOZJqCrJ3xFmjx6FwE2wrUz58Co5v4mh3ybMA
         JN0EhQ3gHEJ2SOngVpvVupbT81ikQPJBiehW1e44D3qZ3vbc3B6dwty2M2ayzwsX9Sq2
         bPvX3/hkQXf8BJ1S/V3XHgkmii5pd/jFRneHf1p57ejH+VrnDaxNznanQtFPFjMYzOZv
         fxe+xPiJx+F3AQBjufRyOpS3XPeglPH9Dr67ps3KIKC8VCvR1kSfebLKeYClsvz6nUNW
         F0/KthBEVTMO875FQpr44o4SLl/dz4noWNJSsKKhw5SYF3oYAZGDkw1MTOI63SuY1oB0
         yDrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VZFRNQd/zap407HixVlnEcklt9OLciYGy385OrpA0Zk=;
        b=A5i7POnvJBEN1ONwHS8acjOnNfDAA4YzZySvLMRCDf2hgbY+hBNoTCxif69CcglGOR
         0h+6V1yEjLnGGBXm5VQi+g2mOHgB5PwjB9TvLWagPvxvIpagRRj7fGXBNbvf3ia9pZ0R
         wQ0sdOSyw59SG+bHCLHLVFJJn/dQeku2A6s531IpODlj/NvzSbMrr2W8DtX+khBMRwvX
         GVh5DU8W+HuUPV/5r7jz5oY24nFZp16shsBcTLWEakGbejmmQXJpOHW4kErnsz0RtJR3
         qI6GS9Bx8ABQtL8S2qhebB9HnYRlJF3VyaAMCjOirLODAcuH2A6Imc69p0KqiM92Gd+u
         sxGg==
X-Gm-Message-State: ACrzQf34O+D9n/RUVLOP58nn0Mnvmp2MIcW3/7Zg/nr18t2av87ldpHQ
        B/ZV1RHVWiVcvlPcspxEdtSJ5w==
X-Google-Smtp-Source: AMsMyM6hw5UE82o4VRnpVyk+Uvle/1NMRofD2T+TFqiC59sx5DQxsYXR9Pyhs8MeguhbbhBjxtr6gw==
X-Received: by 2002:a05:6a00:8cb:b0:52c:6962:2782 with SMTP id s11-20020a056a0008cb00b0052c69622782mr2163553pfu.81.1665012585797;
        Wed, 05 Oct 2022 16:29:45 -0700 (PDT)
Received: from desktop.hsd1.or.comcast.net ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id d7-20020a170902654700b0016c50179b1esm10882284pln.152.2022.10.05.16.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 16:29:45 -0700 (PDT)
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>,
        Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, devicetree-compiler@vger.kernel.org,
        Tadeusz Struk <tadeusz.struk@linaro.org>
Subject: [PATCH v3 2/2] libfdt: tests: add get_next_tag_invalid_prop_len
Date:   Wed,  5 Oct 2022 16:29:31 -0700
Message-Id: <20221005232931.3016047-2-tadeusz.struk@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221005232931.3016047-1-tadeusz.struk@linaro.org>
References: <20221005232931.3016047-1-tadeusz.struk@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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
 tests/get_next_tag_invalid_prop_len.c | 84 +++++++++++++++++++++++++++
 tests/meson.build                     |  1 +
 tests/run_tests.sh                    |  1 +
 5 files changed, 88 insertions(+), 1 deletion(-)
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
index 0000000..f5a6d99
--- /dev/null
+++ b/tests/get_next_tag_invalid_prop_len.c
@@ -0,0 +1,84 @@
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
+({ if (err) { \
+	free(fdt); \
+	FAIL("%s: %d: %s", __FILE__, __LINE__, fdt_strerror(err)); \
+	} \
+})
+
+int main(int argc, char *argv[])
+{
+	struct fdt_property *prp;
+	void *fdt;
+	int nextoff = 0, offset, err;
+	uint32_t tag, val;
+
+	test_init(argc, argv);
+	fdt = calloc(1, FDT_SIZE);
+	if (!fdt)
+		FAIL("Can't allocate memory");
+	err = fdt_create(fdt, FDT_SIZE);
+	CHECK_ERR(err);
+	err = fdt_add_reservemap_entry(fdt, 0xdeadbeefUL, 0x10000UL);
+	CHECK_ERR(err);
+	err = fdt_finish_reservemap(fdt);
+	CHECK_ERR(err);
+	err = fdt_begin_node(fdt, "");
+	CHECK_ERR(err);
+	err = fdt_begin_node(fdt, "subnode1");
+	CHECK_ERR(err);
+	err = fdt_property_u32(fdt, "prop-int-32", 0x1234);
+	CHECK_ERR(err);
+	err = fdt_property_u32(fdt, "prop2-int-32", 0x4321);
+	CHECK_ERR(err);
+	err = fdt_end_node(fdt);
+	CHECK_ERR(err);
+	err = fdt_end_node(fdt);
+	CHECK_ERR(err);
+	offset = -1;
+	val = cpu_to_fdt32(0x1234);
+	offset = fdt_node_offset_by_prop_value(fdt, offset,  "prop-int-32",
+					       &val, sizeof(val));
+	do {
+		tag = fdt_next_tag(fdt, offset, &nextoff);
+		offset = nextoff;
+	} while (tag != FDT_PROP);
+
+	/* Calculate len to property */
+	prp = (struct fdt_property *)(((char*)fdt) + fdt_off_dt_struct(fdt) + offset);
+
+	/* int overflow case */
+	prp->len = cpu_to_fdt32(0xFFFFFFFA);
+	tag = fdt_next_tag(fdt, offset, &nextoff);
+	if (tag != FDT_END)
+		FAIL("Invalid tag %x, expected premature end", tag);
+
+	if (nextoff != -FDT_ERR_BADSTRUCTURE)
+		FAIL("Invalid nextoff, expected error -FDT_ERR_BADSTRUCTURE");
+
+	/* negative offset case */
+	prp->len = cpu_to_fdt32(0x7FFFFFFA);
+	tag = fdt_next_tag(fdt, offset, &nextoff);
+	if (tag != FDT_END)
+		FAIL("Invalid tag, expected premature end");
+
+	if (nextoff != -FDT_ERR_BADSTRUCTURE)
+		FAIL("Invalid nextoff, expected error -FDT_ERR_BADSTRUCTURE");
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
