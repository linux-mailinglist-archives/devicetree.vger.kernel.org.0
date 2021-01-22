Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC352300251
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 13:04:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727442AbhAVKz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 05:55:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727584AbhAVKwE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 05:52:04 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FA1CC06121D
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 02:51:18 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id i7so3434580pgc.8
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 02:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LPFWN6gpauI4vigWfOz/xPJOdZeAxCmm0GF1zvJDfzo=;
        b=V+Hz5lr6HX/rwkb7XWX0ZVFoYsa7Z6oigc7al8V8vGUi3astJhd+qexzbJ2yXMlcuH
         lIkc+An9dl9VuEI+iXslcp65fU4tsTywBsHS6BMsH72fXtrnRG/9sov745Nl5bXF82+Y
         YoCnvhP+vXOw438QQb9a1U2HzbICgZ9mwU6khvlOChY3CIm5mROzbRP5jAQu0CGSRq68
         D1Y1NYxFsuvxON9dqPQJnUAdlqhRHKCUgjgyHWGFW0DDMIoWYgjStSkEIiJZgVdZXHG7
         gtLnTn9j2xVHvWNqTxFANOBWKSj133pli5mDWg2FDJqv5EWLDVVBEwZ7T3QD98JANASA
         apZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LPFWN6gpauI4vigWfOz/xPJOdZeAxCmm0GF1zvJDfzo=;
        b=jdJmh1tgsdFaQB17KGko7ynI9ykCkKhHlXdKuoFXVqY9VpT44sZ7luhsyw2xqVqYcc
         Um9TVfwvRFkp2M8fqbLuUwhmUvSrWffAkmEe+jPkySdQevRKkBF9FJ9B1atKL0hCinXx
         78JBwvzhzS4PQPagq+b5RQV/deSic3qCvu2THwZVIgdPolJQ70XUVLMo3G0m8Z5Y0QAP
         s3PF2oCI2du25xEKJK+Z4UUTMuI316E4/9dKLHap/QEP2By2iwbMqiqcNMmgSBMBSwZa
         g74wlWygHQlF03H7gtqbPBlhpi/DwGYj3ea+YiiCaJWa2bPoLVx1pr/Eu/Vf503i+j+D
         ySjw==
X-Gm-Message-State: AOAM532UaHOryaZjIdICSOWf26OZtnm7BtPvQHT6Lz+0dDfmbu4AyxXQ
        3ZTK7XHmwEMF+xsxSNFEfGWxbw==
X-Google-Smtp-Source: ABdhPJyENUmgJ+EiUhOGekL76R0FDZ2P3pgVpfL062ASn1PS78NJ9f6QmgPbEx72lXiLbJKq6EJA2Q==
X-Received: by 2002:a62:d401:0:b029:1bd:4078:553b with SMTP id a1-20020a62d4010000b02901bd4078553bmr3575219pfh.21.1611312678067;
        Fri, 22 Jan 2021 02:51:18 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id j3sm8799732pjs.50.2021.01.22.02.51.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 02:51:17 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
        Bill Mills <bill.mills@linaro.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        devicetree@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>
Subject: [PATCH V6 6/6] of: unittest: Statically apply overlays using fdtoverlay
Date:   Fri, 22 Jan 2021 16:20:36 +0530
Message-Id: <58e8523e1489b70b76211fb94a9229ae12c33cad.1611312122.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1611312122.git.viresh.kumar@linaro.org>
References: <cover.1611312122.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that fdtoverlay is part of the kernel build, start using it to test
the unitest overlays we have by applying them statically. Create a new
base file static_base.dts which includes other .dtsi files.

Some unittest overlays deliberately contain errors that unittest checks
for. These overlays will cause fdtoverlay to fail, and are thus not
included in the static_test.dtb.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/of/unittest-data/Makefile        | 51 ++++++++++++++++++++++++
 drivers/of/unittest-data/static_base.dts |  5 +++
 2 files changed, 56 insertions(+)
 create mode 100644 drivers/of/unittest-data/static_base.dts

diff --git a/drivers/of/unittest-data/Makefile b/drivers/of/unittest-data/Makefile
index 009f4045c8e4..586fa8cda916 100644
--- a/drivers/of/unittest-data/Makefile
+++ b/drivers/of/unittest-data/Makefile
@@ -34,7 +34,58 @@ DTC_FLAGS_overlay += -@
 DTC_FLAGS_overlay_bad_phandle += -@
 DTC_FLAGS_overlay_bad_symbol += -@
 DTC_FLAGS_overlay_base += -@
+DTC_FLAGS_static_base += -@
 DTC_FLAGS_testcases += -@
 
 # suppress warnings about intentional errors
 DTC_FLAGS_testcases += -Wno-interrupts_property
+
+# Apply overlays statically with fdtoverlay.  This is a build time test that
+# the overlays can be applied successfully by fdtoverlay.  This does not
+# guarantee that the overlays can be applied successfully at run time by
+# unittest, but it provides a bit of build time test coverage for those
+# who do not execute unittest.
+#
+# The overlays are applied on top of static_base.dtb to create static_test.dtb
+# If fdtoverlay detects an error than the kernel build will fail.
+# static_test.dtb is not consumed by unittest.
+#
+# Some unittest overlays deliberately contain errors that unittest checks for.
+# These overlays will cause fdtoverlay to fail, and are thus not included
+# in the static test:
+#			overlay_bad_add_dup_node.dtb \
+#			overlay_bad_add_dup_prop.dtb \
+#			overlay_bad_phandle.dtb \
+#			overlay_bad_symbol.dtb \
+#			overlay_base.dtb \
+
+apply_static_overlay := overlay.dtb \
+			overlay_0.dtb \
+			overlay_1.dtb \
+			overlay_2.dtb \
+			overlay_3.dtb \
+			overlay_4.dtb \
+			overlay_5.dtb \
+			overlay_6.dtb \
+			overlay_7.dtb \
+			overlay_8.dtb \
+			overlay_9.dtb \
+			overlay_10.dtb \
+			overlay_11.dtb \
+			overlay_12.dtb \
+			overlay_13.dtb \
+			overlay_15.dtb \
+			overlay_gpio_01.dtb \
+			overlay_gpio_02a.dtb \
+			overlay_gpio_02b.dtb \
+			overlay_gpio_03.dtb \
+			overlay_gpio_04a.dtb \
+			overlay_gpio_04b.dtb
+
+quiet_cmd_fdtoverlay = FDTOVERLAY $@
+      cmd_fdtoverlay = $(objtree)/scripts/dtc/fdtoverlay -o $@ -i $^
+
+$(obj)/static_test.dtb: $(obj)/static_base.dtb $(addprefix $(obj)/,$(apply_static_overlay))
+	$(call if_changed,fdtoverlay)
+
+always-$(CONFIG_OF_OVERLAY) += static_test.dtb
diff --git a/drivers/of/unittest-data/static_base.dts b/drivers/of/unittest-data/static_base.dts
new file mode 100644
index 000000000000..3c9af4aefb96
--- /dev/null
+++ b/drivers/of/unittest-data/static_base.dts
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+
+#include "overlay_common.dtsi"
+#include "testcases_common.dtsi"
-- 
2.25.0.rc1.19.g042ed3e048af

