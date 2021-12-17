Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 273D24787D0
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 10:35:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233247AbhLQJfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 04:35:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233143AbhLQJfj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 04:35:39 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4238C061747
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 01:35:37 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id j6-20020a17090a588600b001a78a5ce46aso5233887pji.0
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 01:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eDj63zz8IDuVCval6V50T15QneJ7Z0eTU927cFR0EJg=;
        b=taMlFKFLEPHCx1uvY5SI09kecrIinIYgfXiJd1NlYSUo9ZChyv4DcfAzWCCf5mxtTR
         qebwNBY/WHG2csWIrYxNW30f07QzZRdunMDlEbL8f3Th/m1OLMmZTXnCFzeGFEQ5YpEB
         IuJOFpQhmXYJgifslhNa6I9RmN4bXATxB+9fc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eDj63zz8IDuVCval6V50T15QneJ7Z0eTU927cFR0EJg=;
        b=tR5tTbTwf7JpwkyJ908AwkyaIE/rs1uG52bDLaJEzylRRgijUCTy5j67ZjI4HQU0Sb
         kOc6FAxO2dsg/gI3DRu/cBk+yTnFmKn1wpbXazcypCUyeOoHkextXc0/cqAQ8Uftg416
         IEKhmIJMf0VG/NOJvjwPqMOkDl7+36Qx4C928tCTb++JwP1oRyrYPaY3KwYVNHSQFcBf
         529S3gEb/PFp4feewAikcC/dfJ1RJlDlXleL9KG2DjuTA7qMKCjjIYxJ5eNluAPYfjq0
         1KRvSlF1tn1Ad1oUYsF9pN3VlnJj6INAzR0ikS/uXLPdOmKRtSzYg6+Wt7xFVRqn3eoC
         /eaA==
X-Gm-Message-State: AOAM533shfGoqbB+N+Aw/5/IskuXzdeNSR8+5VU7jISjFD2FjyRjWMkA
        kV+WUzPMYVPRfrtmXakT+6WrG4dkYpq0PQ==
X-Google-Smtp-Source: ABdhPJzJGlRyC4WXon+WfhdfogAWt5rXi7cAjoQZFCNoOMOaYAGKQYaA8QlmFkEsbddQt/pbm1v3bw==
X-Received: by 2002:a17:902:f783:b0:148:a2f7:9d6a with SMTP id q3-20020a170902f78300b00148a2f79d6amr2473864pln.137.1639733737275;
        Fri, 17 Dec 2021 01:35:37 -0800 (PST)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id o9sm7650143pgs.65.2021.12.17.01.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 01:35:37 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, romain.perier@gmail.com, livelwh@outlook.com
Cc:     linux-kernel@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 3/3] ARM: dts: mstar: Add board for 100ask DongShanPiOne
Date:   Fri, 17 Dec 2021 18:35:10 +0900
Message-Id: <20211217093510.3674590-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211217093510.3674590-1-daniel@0x0f.com>
References: <20211217093510.3674590-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DongShanPiOne is little SigmaStar SSD202D based module
from 100ask.

Add an initial dts for this board.

Link: http://linux-chenxing.org/infinity2/dongshanpione/
Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 ...nfinity2m-ssd202d-100ask-dongshanpione.dts | 25 +++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd202d-100ask-dongshanpione.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 0de64f237cd8..f31672c0c06c 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1468,6 +1468,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_MSTARV7) += \
 	mstar-infinity-msc313-breadbee_crust.dtb \
+	mstar-infinity2m-ssd202d-100ask-dongshanpione.dtb \
 	mstar-infinity2m-ssd202d-ssd201htv2.dtb \
 	mstar-infinity2m-ssd202d-unitv2.dtb \
 	mstar-infinity3-msc313e-breadbee.dtb \
diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-100ask-dongshanpione.dts b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-100ask-dongshanpione.dts
new file mode 100644
index 000000000000..f25a04c98ccb
--- /dev/null
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-100ask-dongshanpione.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2021 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "mstar-infinity2m-ssd202d.dtsi"
+
+/ {
+	model = "DongShanPi One";
+	compatible = "100ask,dongshanpione", "mstar,infinity2m";
+
+	aliases {
+		serial0 = &pm_uart;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&pm_uart {
+	status = "okay";
+};
-- 
2.34.1

