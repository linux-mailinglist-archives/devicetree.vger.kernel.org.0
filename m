Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D027F2D2407
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 08:04:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726218AbgLHHEY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 02:04:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725910AbgLHHEY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 02:04:24 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4090CC061793
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 23:03:38 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id a1so16562971ljq.3
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 23:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M0kvFjMo4D+aAAGQPqf+afTw7DlyjYi3de/9kQfZkz8=;
        b=aZiADSIrI93UUNLGMgelHngILpwUpETavd6x/bRRdPQTGpGRHrDbJh2LzCkYIQe85Y
         icmXcSBNYtv2wDPKhJNSp0UYANZo2t8BtbP5PMm1h6lJBoaj1ZyzYcEE42j06lP4Mz68
         uRw6gcGG8PEGt+MG8ucOS6vjCaqsbuIm4ODXpsCuJhBUR2mICStZdWUlDNAdcfKtFoTC
         BXb0v4BQGTBxxrvfIPirJCxflyycH5gnWdhMd5gmHj5CKYcsGHrYQKKKuG6+wVkRMzC5
         JtjQHo8wbLE2pRbsn+V6d59pZEHm5Ka3mSarrkt7ar9lAnQ0Siozw5jblWnD8JVckgRc
         TjMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M0kvFjMo4D+aAAGQPqf+afTw7DlyjYi3de/9kQfZkz8=;
        b=ax7Ro7sW1u8Yj7thvs1MM1eb6SYBzEy2F/W7RWopsMEQA28T6VP/byGjsrnNwBxZMQ
         SeciXudx1ic09CI8reVFwj7a8TqH74aZ/MU9pKFFtbTcRDr+c8HYdiE8nCPRqC5ntdBh
         9fq+wo3R0v/Z3t08lX9AdNQTVXrmFKS95ufMCuLT7mH3Ex41n42FgkJ06lsh6ylvW+jw
         psBO0VAL8x15l7wYS2c6QMxaujWi4a8SRu6u0lt8YvwVUxBvX/A4U/9gl0vDepj1bUND
         hWJmnDYKBC/uls3ylIzTHBWPNW1w/KVjLJb+8GCuMU3S3S6xhIs6JUJL7qlfvhaj8Gn0
         L3bA==
X-Gm-Message-State: AOAM5335k5IYKUeGmwf1Ou7S5bzkuHKvRX9RP1d9+Q96il2VkvFXVdfz
        aptGYliRx21tZ/7+c8TzZ70=
X-Google-Smtp-Source: ABdhPJwwL88fCzBIGXwLoGgfKrOQzPLNs5I6UgqsO32Gi7cnI6yqluIB9TKEPjVspa6QXuVZmHQtXw==
X-Received: by 2002:a2e:2417:: with SMTP id k23mr1192565ljk.373.1607411016821;
        Mon, 07 Dec 2020 23:03:36 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id i11sm740884ljb.19.2020.12.07.23.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 23:03:35 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] arm64: dts: broadcom: bcm4908: add BCM4906 Netgear R8000P DTS files
Date:   Tue,  8 Dec 2020 08:03:04 +0100
Message-Id: <20201208070304.12536-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201208070304.12536-1-zajec5@gmail.com>
References: <20201208070304.12536-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Netgear R8000P is home router based on BCM4906 that is a cheaper variant
of BCM4908 (e.g. 2 cores instead of 4).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/Makefile |  1 +
 .../bcm4908/bcm4906-netgear-r8000p.dts        | 52 +++++++++++++++++++
 .../boot/dts/broadcom/bcm4908/bcm4906.dtsi    | 18 +++++++
 3 files changed, 71 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm4908/bcm4906.dtsi

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
index ef26c23603ce..ebebc0cd421f 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_BCM4908) += bcm4906-netgear-r8000p.dtb
 dtb-$(CONFIG_ARCH_BCM4908) += bcm4908-asus-gt-ac5300.dtb
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
new file mode 100644
index 000000000000..ee3ed612274c
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+#include "bcm4906.dtsi"
+
+/ {
+	compatible = "netgear,r8000p", "brcm,bcm4906", "brcm,bcm4908";
+	model = "Netgear R8000P";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00 0x00 0x00 0x20000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		wps {
+			function = LED_FUNCTION_WPS;
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&nandcs {
+	nand-ecc-strength = <4>;
+	nand-ecc-step-size = <512>;
+	nand-on-flash-bbt;
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "cferom";
+			reg = <0x0 0x100000>;
+		};
+
+		partition@100000 {
+			label = "firmware";
+			reg = <0x100000 0x4400000>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906.dtsi
new file mode 100644
index 000000000000..66023d553524
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906.dtsi
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include "bcm4908.dtsi"
+
+/ {
+	cpus {
+		/delete-node/ cpu@2;
+
+		/delete-node/ cpu@3;
+	};
+
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+	};
+};
-- 
2.26.2

