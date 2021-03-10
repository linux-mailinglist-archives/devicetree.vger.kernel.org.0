Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B435F33356B
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 06:36:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232287AbhCJFgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 00:36:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231453AbhCJFfx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 00:35:53 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4077EC061760
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 21:35:53 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id ga23-20020a17090b0397b02900c0b81bbcd4so6591501pjb.0
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 21:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K1QgQjNHtN761sdXJlMXANZwX7Jh8JMy1gwv4GNPG4g=;
        b=GAmoNgP4FDyWsdN8ADxZHm2HF/PpUIuwD2TAHqGkzLkkQ2FrTAmk6LYHBA8F+vhkUP
         N7KCM2PzgzTV1Vt5Txr2m+J993oiyImR5eh/C3DzbtG3DJd9B02Zk8uxijAaX+9jaKeQ
         1o6xUDr7U7rIWz2I7+nijQ6aMx755NfuD5Otr2VPT6LfWvgeG1qks3Nc510pcexiWjJA
         oVk/ecPg1jDoaM70h/BLgF9GxmwmYR8w3SQKiNu3pYgHUAnv0/i6djDb/UkZpRsT5xoJ
         pYRTm83ZiB04qIPx0sLWzLLjaxjba0H53fzDOjEcjt8WHQyoCw2Oaj693fQxwC01kCMP
         xvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K1QgQjNHtN761sdXJlMXANZwX7Jh8JMy1gwv4GNPG4g=;
        b=rbdMKHCCBltg6+Pz/ZVlCeiMFowKbb2nyghpsbv4xkXS3zHJLguprDXe4b0JseRVM/
         HS0nHYXxTN2SqQaThiCD0LtBeOCTecRMcCONR6HHrGtg0kwC6MSaj70YySRtuHYDcoNB
         3FrMUhdU8hzlHq3G+1llslE+V+QDIwg0dDfScDwz7kNrjSad2WTbsyyvm7ESLY+UZB1z
         25zWtF33wZlQSIOXQKcdJ7nJoSfMpRKxb8V4laLtWNzNZD/Hk4FlEYu4paVyOWf6sJmj
         V5KycC2iYxkkP7StOa7hV7hhYzadoNdXp1sbnKiBRML+PAnY6uaE6246DYxqOpMzFjQS
         e/Ig==
X-Gm-Message-State: AOAM532P2JZIVhBZC/BrIE8Nt7HpOMO3PsSGJrdAJqPQsM2+bN0yobgq
        0bXDh6Mhjyumpn4ZY19aN/R072QrSFSVXg==
X-Google-Smtp-Source: ABdhPJwDz9cQbWX1sXOC9N6fmPwZLUv3D3l/OVuA67ucLyCCqUjEHPzF9JYELwSCOX03GOLyrwXf1g==
X-Received: by 2002:a17:902:74cb:b029:e4:7a16:9925 with SMTP id f11-20020a17090274cbb02900e47a169925mr1351494plt.39.1615354552808;
        Tue, 09 Mar 2021 21:35:52 -0800 (PST)
Received: from localhost ([122.171.124.15])
        by smtp.gmail.com with ESMTPSA id ch15sm4766966pjb.46.2021.03.09.21.35.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 21:35:52 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Masahiro Yamada <masahiroy@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        Michal Simek <michal.simek@xilinx.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        anmar.oueja@linaro.org, Bill Mills <bill.mills@linaro.org>,
        Michal Marek <michal.lkml@markovi.net>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH V11 5/5] of: unittest: Statically apply overlays using fdtoverlay
Date:   Wed, 10 Mar 2021 11:05:33 +0530
Message-Id: <da6b4e6429aae2e7832a8be2ba2da473d449895b.1615354376.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1615354376.git.viresh.kumar@linaro.org>
References: <cover.1615354376.git.viresh.kumar@linaro.org>
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
 drivers/of/unittest-data/Makefile          | 48 ++++++++++++++++++++++
 drivers/of/unittest-data/static_base_1.dts |  4 ++
 drivers/of/unittest-data/static_base_2.dts |  4 ++
 3 files changed, 56 insertions(+)
 create mode 100644 drivers/of/unittest-data/static_base_1.dts
 create mode 100644 drivers/of/unittest-data/static_base_2.dts

diff --git a/drivers/of/unittest-data/Makefile b/drivers/of/unittest-data/Makefile
index 009f4045c8e4..a5d2d9254b2c 100644
--- a/drivers/of/unittest-data/Makefile
+++ b/drivers/of/unittest-data/Makefile
@@ -38,3 +38,51 @@ DTC_FLAGS_testcases += -@
 
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
+#			  overlay_bad_add_dup_node.dtbo \
+#			  overlay_bad_add_dup_prop.dtbo \
+#			  overlay_bad_phandle.dtbo \
+#			  overlay_bad_symbol.dtbo \
+
+apply_static_overlay_1 := overlay_0.dtbo \
+			  overlay_1.dtbo \
+			  overlay_2.dtbo \
+			  overlay_3.dtbo \
+			  overlay_4.dtbo \
+			  overlay_5.dtbo \
+			  overlay_6.dtbo \
+			  overlay_7.dtbo \
+			  overlay_8.dtbo \
+			  overlay_9.dtbo \
+			  overlay_10.dtbo \
+			  overlay_11.dtbo \
+			  overlay_12.dtbo \
+			  overlay_13.dtbo \
+			  overlay_15.dtbo \
+			  overlay_gpio_01.dtbo \
+			  overlay_gpio_02a.dtbo \
+			  overlay_gpio_02b.dtbo \
+			  overlay_gpio_03.dtbo \
+			  overlay_gpio_04a.dtbo \
+			  overlay_gpio_04b.dtbo
+
+apply_static_overlay_2 := overlay.dtbo
+
+static_test_1-dtbs := static_base_1.dtb $(apply_static_overlay_1)
+static_test_2-dtbs := static_base_2.dtb $(apply_static_overlay_2)
+
+dtb-$(CONFIG_OF_OVERLAY) += static_test_1.dtb static_test_2.dtb
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

