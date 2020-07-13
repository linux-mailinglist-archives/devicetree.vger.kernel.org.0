Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5403D21B29F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2020 11:47:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727060AbgGJJql (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jul 2020 05:46:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728112AbgGJJqj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jul 2020 05:46:39 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4560AC08C5DC
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 02:46:39 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id a14so2327416pfi.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 02:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IiSZdtFwKwHNBZOweoCEZNTpFyXOI2NF01y7ZbXZOTk=;
        b=RydD085pKT0b9+NpuJwO0tdgshoGEZNx/AhEt5n3kfl3cx2WJzywCcdnPTvGFULF72
         961lMEHFVczSkaV0F9k6rewCArn58gmhZKIdjKpVy75CqyS+U/B6LQ1Bcb/Tk4ryvAUi
         NxkiAOIALY02FUQJmiGhG3fmJ1IbCNgCNK3Gs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IiSZdtFwKwHNBZOweoCEZNTpFyXOI2NF01y7ZbXZOTk=;
        b=gjDFzu5fe60wmYq+tCstr4xCrB6fqNZHzP7M0NTyp0pWEuNmRJwYih8j0aVjLxAXQp
         VLK50VBOyCODTyJOGUgc2SmoH5d3D+7L1CHP7pGxG0X0V3Q3tDIylXpdtJNnno8s6ZkA
         CYq5u2cCwd9q6iWZX6bNBHwKqY1wNCNGA5iMFmuKbe3ChZuDMcc0TFgfsjKmZxEwXwto
         J9ZSWQ5+sCyDUpWpNG4z9WCHrX2TUJBAsSmFLqSG+VkEgjqpIBAvS2TQSXlb8KV1dPcw
         FDZKN12x6LuTCurzBeF75/G5ccXFvpolCSKcrz59qJyP+BCpzh9gw4eKZ1nrWaEqB69o
         lGOQ==
X-Gm-Message-State: AOAM532CRr7BFSl3QglS3gNsn099mYdUgbDaC//ucab+fqaMg2qC6JBp
        3YQRZyOl+tKPAgMSeLihcCVlYw==
X-Google-Smtp-Source: ABdhPJxRLK+HF3RoRsHoDJrpSwyCcu6NSk63Rd02qQcNLWwyf9MKQPlLn3+V8DlqwpidZkcVz/hs6w==
X-Received: by 2002:a63:fc01:: with SMTP id j1mr59035011pgi.0.1594374398814;
        Fri, 10 Jul 2020 02:46:38 -0700 (PDT)
Received: from shiro.work ([2400:4162:2428:2f01:7285:c2ff:fe8e:66d7])
        by smtp.googlemail.com with ESMTPSA id z9sm5133213pgh.94.2020.07.10.02.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 02:46:38 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux@armlinux.org.uk, arnd@arndb.de,
        afaerber@suse.de, maz@kernel.org, w@1wt.eu,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v5 12/12] ARM: mstar: Add dts for 70mai midrive d08
Date:   Fri, 10 Jul 2020 18:45:44 +0900
Message-Id: <20200710094544.430258-13-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200710094544.430258-1-daniel@0x0f.com>
References: <20200710094544.430258-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds initial support for the 70mai midrive d08 dash camera.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  3 ++-
 .../boot/dts/mercury5-ssc8336n-midrived08.dts | 25 +++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 4a5f8075a4f6..35c7ecc52c60 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1344,7 +1344,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_MSTARV7) += \
 	infinity-msc313-breadbee_crust.dtb \
-	infinity3-msc313e-breadbee.dtb
+	infinity3-msc313e-breadbee.dtb \
+	mercury5-ssc8336n-midrive08.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts b/arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts
new file mode 100644
index 000000000000..f24bd8cb8e60
--- /dev/null
+++ b/arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "mercury5-ssc8336n.dtsi"
+
+/ {
+	model = "70mai Midrive D08";
+	compatible = "70mai,midrived08", "mstar,mercury5";
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
2.27.0

