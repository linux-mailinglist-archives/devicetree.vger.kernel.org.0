Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2454D308673
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 08:34:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232228AbhA2H3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 02:29:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232137AbhA2H3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 02:29:09 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6445CC0617A9
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 23:27:52 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id jx18so5881944pjb.5
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 23:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZFJJayi+RV75ZCULMj0kJ6mO1gZLX1EFE3pZWPFttHU=;
        b=UWnusc89sByEY+EQQ7PwenfvS1a+eR6yhVarOTzuE4YezP3NS9cfOS1vHoIrU0ELZl
         +zyPGdiesHKxC+BAJjGQewOe+5gs5PTff1XujwVvHwxx2XwqHCddMYs1TOYgc97mTYZC
         Lt09HQpVkKJr1+n6fWszrh233w2zdtytJanXMMovQbXLuo3qd6elNeush1yr1RWS6TjE
         DX93oUS75mUDpQ2NA6Yyw05vXkeTOZragzZz1QOksgn73gmbD9fGfBVvbv15EbNCzX9Q
         5eooAeyMLkKylmeBnxB/foem48HBcY69LGrvf6RMyMijC40W6B7JwefAWMqnsUs3QH9w
         sacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZFJJayi+RV75ZCULMj0kJ6mO1gZLX1EFE3pZWPFttHU=;
        b=WaH0S7fc4Bm+7npBeG+JHBb0y7YJMRmc5xKlnGE3MiBopg23NLZq8Xs1XBdot9/69N
         bS+OG8b1J3TgZ2MCjaOg4P9grJAGEv2dzjIynesU2Bhj4MMb12Xtkmai+ND9WnKUah5A
         UxTBSvQoU42y+cx9TpeZ8n0Ij4WYMlosSGyAgxUl9z2b5gC00gBUU1m5y80t3Qhjprh8
         sEtyaFT4jrLRM/zxh8h4eZZyUjEJxImbL8sBcnzB/fNe2UCkZ93OZ/8MORKFNZHmJEXF
         50M3YY4QjCS0vvd3c78nKzSUBWxtkWuzPrlY7QJ5qfIHVmO+FbM+brOQqOQcWRGvHtgU
         t84w==
X-Gm-Message-State: AOAM530roHQ70qnt+3uNptEWdyt5gAuv7E22Nx33G0QB7gvVx0a/1YFN
        yXEEMdD80xAaMTzwrXtt0xuDZQ==
X-Google-Smtp-Source: ABdhPJz1VpslgcJ/9dy4ITZzoAs16VhieXWUnrntqzuN4yNMK3qHh3PaPKLHk1CeLK58yfxxfCGHqQ==
X-Received: by 2002:a17:90b:4d0a:: with SMTP id mw10mr612660pjb.217.1611905271997;
        Thu, 28 Jan 2021 23:27:51 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id p64sm7543889pfb.201.2021.01.28.23.27.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 23:27:51 -0800 (PST)
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
Subject: [PATCH V7 6/6] of: unittest: Statically apply overlays using fdtoverlay
Date:   Fri, 29 Jan 2021 12:54:10 +0530
Message-Id: <3683a542d4141cfcf9c2524a40a9ee75b657c1c2.1611904394.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1611904394.git.viresh.kumar@linaro.org>
References: <cover.1611904394.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that fdtoverlay is part of the kernel build, start using it to test
the unitest overlays we have by applying them statically. Create two new
base files static_base_1.dts and static_base_2.dts which includes other
.dtsi files.

Some unittest overlays deliberately contain errors that unittest checks
for. These overlays will cause fdtoverlay to fail, and are thus not
included for static builds.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/of/unittest-data/Makefile          | 56 ++++++++++++++++++++++
 drivers/of/unittest-data/static_base_1.dts |  4 ++
 drivers/of/unittest-data/static_base_2.dts |  4 ++
 3 files changed, 64 insertions(+)
 create mode 100644 drivers/of/unittest-data/static_base_1.dts
 create mode 100644 drivers/of/unittest-data/static_base_2.dts

diff --git a/drivers/of/unittest-data/Makefile b/drivers/of/unittest-data/Makefile
index 009f4045c8e4..fc286224b2d1 100644
--- a/drivers/of/unittest-data/Makefile
+++ b/drivers/of/unittest-data/Makefile
@@ -34,7 +34,63 @@ DTC_FLAGS_overlay += -@
 DTC_FLAGS_overlay_bad_phandle += -@
 DTC_FLAGS_overlay_bad_symbol += -@
 DTC_FLAGS_overlay_base += -@
+DTC_FLAGS_static_base_1 += -@
+DTC_FLAGS_static_base_2 += -@
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
+# The overlays are applied on top of static_base_1.dtb and static_base_2.dtb to
+# create static_test_1.dtb and static_test_2.dtb.  If fdtoverlay detects an
+# error than the kernel build will fail.  static_test_1.dtb and
+# static_test_2.dtb are not consumed by unittest.
+#
+# Some unittest overlays deliberately contain errors that unittest checks for.
+# These overlays will cause fdtoverlay to fail, and are thus not included
+# in the static test:
+#			  overlay_bad_add_dup_node.dtb \
+#			  overlay_bad_add_dup_prop.dtb \
+#			  overlay_bad_phandle.dtb \
+#			  overlay_bad_symbol.dtb \
+
+apply_static_overlay_1 := overlay_0.dtb \
+			  overlay_1.dtb \
+			  overlay_2.dtb \
+			  overlay_3.dtb \
+			  overlay_4.dtb \
+			  overlay_5.dtb \
+			  overlay_6.dtb \
+			  overlay_7.dtb \
+			  overlay_8.dtb \
+			  overlay_9.dtb \
+			  overlay_10.dtb \
+			  overlay_11.dtb \
+			  overlay_12.dtb \
+			  overlay_13.dtb \
+			  overlay_15.dtb \
+			  overlay_gpio_01.dtb \
+			  overlay_gpio_02a.dtb \
+			  overlay_gpio_02b.dtb \
+			  overlay_gpio_03.dtb \
+			  overlay_gpio_04a.dtb \
+			  overlay_gpio_04b.dtb
+
+apply_static_overlay_2 := overlay.dtb
+
+quiet_cmd_fdtoverlay = FDTOVERLAY $@
+      cmd_fdtoverlay = $(objtree)/scripts/dtc/fdtoverlay -o $@ -i $^
+
+$(obj)/static_test_1.dtb: $(obj)/static_base_1.dtb $(addprefix $(obj)/,$(apply_static_overlay_1))
+	$(call if_changed,fdtoverlay)
+
+$(obj)/static_test_2.dtb: $(obj)/static_base_2.dtb $(addprefix $(obj)/,$(apply_static_overlay_2))
+	$(call if_changed,fdtoverlay)
+
+always-$(CONFIG_OF_OVERLAY) += static_test_1.dtb static_test_2.dtb
diff --git a/drivers/of/unittest-data/static_base_1.dts b/drivers/of/unittest-data/static_base_1.dts
new file mode 100644
index 000000000000..10556cb3f01f
--- /dev/null
+++ b/drivers/of/unittest-data/static_base_1.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+
+#include "testcases_common.dtsi"
diff --git a/drivers/of/unittest-data/static_base_2.dts b/drivers/of/unittest-data/static_base_2.dts
new file mode 100644
index 000000000000..b0ea9504d6f3
--- /dev/null
+++ b/drivers/of/unittest-data/static_base_2.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+
+#include "overlay_common.dtsi"
-- 
2.25.0.rc1.19.g042ed3e048af

