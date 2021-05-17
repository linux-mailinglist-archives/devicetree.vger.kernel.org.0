Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6998383D7B
	for <lists+devicetree@lfdr.de>; Mon, 17 May 2021 21:32:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234213AbhEQTdo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 15:33:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233896AbhEQTdn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 15:33:43 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B55E5C06138A
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 12:32:21 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id z17so7610427wrq.7
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 12:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rpO3uokOqiPCm4WwzxXP4FgPuwUQkbWlx97bygCs6TE=;
        b=rV0rOUax1CAS9yX/C9BpXQgRVQ3xSi21tse0r9NlAHpECR1RNeTpenSOZeIIyVgIsB
         3sYSOhnzW5XwxGSYiZRLei2ZDL4lN1nxEFZEB51MRLPDtwTcX8mcU+ExGLnh7L/aUM6g
         UQ0th7gYDHW1YgavwjEJ2bWpUBmWzQ1Dt6N7LnswvQgbNmDqaucW2B47UMsxPFq1r1Qp
         tZHBTBhnWIWgFzTSYqQRbwAN8O6ttc94CWEtIJcwx5Ry8EzQWBhsbk3Z8Dk9VuKopZPO
         SwYJ5a4uR9Ro8abLx6zFvuBc5i2TAewpz2+RqgTyT3uewSZ2OjDO/NyFcjc2l6rOVYEV
         lx0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rpO3uokOqiPCm4WwzxXP4FgPuwUQkbWlx97bygCs6TE=;
        b=jQ131iIAVkYVd2UJLMovaM2ntB/Q3JUvZijnAIp5Oj7FiUoFEiJMNh/B5xqb9Zdshy
         YVgv/hIgGIQMyAxLa/DSWRh9miayBMEQUZj4Lp+Jt3y1Ib3uGIyg7VRR7ulbTxGx7ZyS
         Z5f+STgRasFp1e8bzxSMBwEFH3QhL/H8tFgeLHVh2xOIn7eopHdklabxU4YH7+MF3qsh
         No4ydWN6kohW4zPjb8S3PDC85OMpMGuHCFBYH7p2JN9P/dPQaClFrmOpPq8CkPqU1I+R
         5+CCliImtJiPLdlephNWA0yMj7k1IdK04n7SfW3SP68jRvpoqUeWZVI7VLr9dzitwUOE
         FfUw==
X-Gm-Message-State: AOAM5307q6jQ5ZUgEsMcPNmyeF7/7OcbziWxQ9FHExqQNzdv36M/Ve11
        wbiWQ9zK+pvL51v4b5BMj8z7Zg==
X-Google-Smtp-Source: ABdhPJxn1zwLPS2lH6ex3GLFfoO0jaVGCvdgNLe2LktnQOYgI69Mi1e412O7uCjd4UmHL5/zUULYHA==
X-Received: by 2002:adf:f212:: with SMTP id p18mr1506508wro.318.1621279940435;
        Mon, 17 May 2021 12:32:20 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e10sm18928907wrw.20.2021.05.17.12.32.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 12:32:20 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, linus.walleij@linaro.org, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 4/5] ARM: gemini: add device tree for edimax NS2502
Date:   Mon, 17 May 2021 19:32:04 +0000
Message-Id: <20210517193205.691147-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517193205.691147-1-clabbe@baylibre.com>
References: <20210517193205.691147-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The edimax NS2502 is a NAS box running a SL3516 SoC.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/Makefile          |   1 +
 arch/arm/boot/dts/gemini-ns2502.dts | 141 ++++++++++++++++++++++++++++
 2 files changed, 142 insertions(+)
 create mode 100644 arch/arm/boot/dts/gemini-ns2502.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 1754b562e0b9..bb30d13c9c60 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -216,6 +216,7 @@ dtb-$(CONFIG_ARCH_GEMINI) += \
 	gemini-dlink-dir-685.dtb \
 	gemini-dlink-dns-313.dtb \
 	gemini-nas4220b.dtb \
+	gemini-ns2502.dtb \
 	gemini-rut1xx.dtb \
 	gemini-sl93512r.dtb \
 	gemini-sq201.dtb \
diff --git a/arch/arm/boot/dts/gemini-ns2502.dts b/arch/arm/boot/dts/gemini-ns2502.dts
new file mode 100644
index 000000000000..a23745dc20f4
--- /dev/null
+++ b/arch/arm/boot/dts/gemini-ns2502.dts
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Corentin Labbe <clabbe@baylibre.com>
+ * Device Tree file for Edimax NS 2502
+ */
+
+/dts-v1/;
+
+#include "gemini.dtsi"
+
+/ {
+	model = "Edimax NS-2502";
+	compatible = "edimax,ns-2502", "cortina,gemini";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	memory@0 {
+		/* 128 MB */
+		device_type = "memory";
+		reg = <0x00000000 0x8000000>;
+	};
+
+	aliases {
+		mdio-gpio0 = &mdio0;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,19200n8";
+		stdout-path = &uart0;
+	};
+
+	mdio0: mdio {
+		compatible = "virtual,mdio-gpio";
+		gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>, /* MDC */
+			<&gpio0 21 GPIO_ACTIVE_HIGH>; /* MDIO */
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy0: ethernet-phy@1 {
+			reg = <1>;
+			device_type = "ethernet-phy";
+			/* We lack the knowledge of necessary GPIO to achieve
+			 * Gigabit
+			 */
+			max-speed = <100>;
+		};
+	};
+};
+
+&ethernet {
+	status = "okay";
+	ethernet-port@0 {
+		phy-mode = "rgmii";
+		phy-handle = <&phy0>;
+	};
+};
+
+&flash {
+	status = "okay";
+	/* 8MB of flash */
+	reg = <0x30000000 0x00800000>;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "RedBoot";
+			reg = <0x00000000 0x00020000>;
+			read-only;
+		};
+		partition@20000 {
+			label = "kernel";
+			reg = <0x00020000 0x00700000>;
+		};
+		partition@720000 {
+			label = "VCTL";
+			reg = <0x00720000 0x00020000>;
+			read-only;
+		};
+		partition@740000 {
+			label = "CurConf";
+			reg = <0x00740000 0x000a0000>;
+			read-only;
+		};
+		partition@7e0000 {
+			label = "FIS";
+			reg = <0x007e0000 0x00010000>;
+			read-only;
+		};
+	};
+};
+
+&gpio0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpio0_default_pins>;
+};
+
+&ide0 {
+	status = "okay";
+};
+
+&ide1 {
+	status = "okay";
+};
+
+&sata {
+	cortina,gemini-ata-muxmode = <3>;
+	cortina,gemini-enable-sata-bridge;
+	status = "okay";
+};
+
+&syscon {
+	pinctrl {
+		/*
+		 * gpio0agrp cover line 0-4
+		 * gpio0bgrp cover line 5
+		 */
+		gpio0_default_pins: pinctrl-gpio0 {
+			    mux {
+				    function = "gpio0";
+				    groups = "gpio0agrp", "gpio0bgrp", "gpio0hgrp";
+			    };
+		    };
+		    pinctrl-gmii {
+			    mux {
+				    function = "gmii";
+				    groups = "gmii_gmac0_grp";
+			    };
+		    };
+	};
+};
+
+&usb0 {
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
-- 
2.26.3

