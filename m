Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4E51FB024
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2020 14:19:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727804AbgFPMSK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jun 2020 08:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728782AbgFPMRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jun 2020 08:17:35 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DB5C08C5C3
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 05:17:35 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id l63so6899529pge.12
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 05:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jxsELow/CoU16NBO8fCV4XFh+Vs58ACm8fFgodBIGbU=;
        b=dfEVMnUOrlm75Do55n4EG4lq64bKU2DQd+yiAm7EqgMZnWfzogsUGdaZ3JQNKhvGrw
         kMoVWalScvTdrtqoYErdYGAlf8KnvS4wxiJit4MvXqHSWlmPJtH6Vue+aGITPr2WPKOj
         9Dho9XGRtAqJJvPAN+V1aCmsFQfMmzGKaSkx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jxsELow/CoU16NBO8fCV4XFh+Vs58ACm8fFgodBIGbU=;
        b=WcSGdZylyHf2U6S9OHUQa2ZNj4pQfnHycnIvUtayxZedYfn1muSZI05yQhNSlzlRE9
         vsVZOgTJ9Z3fHNVN2o5viIoPR79LHunyRjJkXdCB23+7ZGGtswbAj7Vz7keeek4SAz5O
         q4/foThTkAtsMYkh4S845QJy8a5DpzHL7Kbn8j49BU/csoIltujdDz6l3NdIefj6TrBO
         xMqxstI6pMBR//GDCY1PCF1kqMokXKTRL7Dde5mj1d5OXPoe3gHTFrtNt3vjQxkofTUx
         cmChMZwWrG9/yjqCbal1614V76zixJEwlBSLOKVM7qJj7k0ffm+ue54Yq6LHexlcuUet
         TfdA==
X-Gm-Message-State: AOAM5339MwDzORblOTgWu5hDnS2ZDRnBmwfiDfv5d0BRUaG0lIlPFmRW
        g0UOPiKvI/6fE7Ck8kCKbM2PrQ==
X-Google-Smtp-Source: ABdhPJy7+4BLo/r62dntrZVKD/KOvs2UH8dORLxn2x3U2IpNvJ4/z16AtjIUt660N4rdTvTpBdsHfg==
X-Received: by 2002:a63:6d86:: with SMTP id i128mr1811101pgc.432.1592309854515;
        Tue, 16 Jun 2020 05:17:34 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp. [114.171.61.116])
        by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 05:17:33 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v4 11/12] ARM: mstar: Add dts for msc313(e) based BreadBee boards
Date:   Tue, 16 Jun 2020 21:15:24 +0900
Message-Id: <20200616121525.1409790-12-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

BreadBee is an opensource development board based on the
MStar msc313(e) SoC.

Hardware details, schematics and so on can be found at:
https://github.com/breadbee/breadbee

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  3 +++
 .../dts/infinity-msc313-breadbee_crust.dts    | 25 +++++++++++++++++++
 .../boot/dts/infinity3-msc313e-breadbee.dts   | 25 +++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
 create mode 100644 arch/arm/boot/dts/infinity3-msc313e-breadbee.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e6a1cac0bfc7..4a5f8075a4f6 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1342,6 +1342,9 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 	mt8127-moose.dtb \
 	mt8135-evbp1.dtb
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
+dtb-$(CONFIG_ARCH_MSTARV7) += \
+	infinity-msc313-breadbee_crust.dtb \
+	infinity3-msc313e-breadbee.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts b/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
new file mode 100644
index 000000000000..f24c5580d3e4
--- /dev/null
+++ b/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "infinity-msc313.dtsi"
+
+/ {
+	model = "BreadBee Crust";
+	compatible = "thingyjp,breadbee-crust", "mstar,infinity";
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
diff --git a/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts b/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
new file mode 100644
index 000000000000..1f93401c8530
--- /dev/null
+++ b/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "infinity3-msc313e.dtsi"
+
+/ {
+	model = "BreadBee";
+	compatible = "thingyjp,breadbee", "mstar,infinity3";
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
2.27.0.rc0

