Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05D27330F03
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 14:19:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbhCHNTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 08:19:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbhCHNTE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 08:19:04 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AA1AC06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 05:19:04 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id p21so20873412lfu.11
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 05:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W7hRSuYz0egD1pYEQHcu7GvDadtcTgO0G3hqzJ5RxFQ=;
        b=pkkxcUP/7lkkiK4y+fqzUmmRMy/TZDQrWk74dUeaUDwop1WdWiS0f0EpFm3cHwURGc
         6xBv/onPlKPvTgJ2VmHoNlWL6ehFktvI8AUIL8JONJAynjaAIf2tEdSO0dA9e4kVLbYY
         5YZcXIEe25Csfx33/ssGGKm/RZbwI3MKbtzAVzmG2rl4u0XHPlKmVBPiNiJe76xxLysS
         5aWe5Dk6eueImK5SGcdl+CbbpU2lYZ2eWEh41Z4lgns+wI6xrFyAgS8JR4L7duLzo8B2
         LGVpeDQi/eHxCG72PJi9cNwaYdNJO2b4T396jr4cZ+lIehwkwPGnMBPWNkpVLM7cuApq
         lbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W7hRSuYz0egD1pYEQHcu7GvDadtcTgO0G3hqzJ5RxFQ=;
        b=oNMk6zK9VskvpIQiUYBCL6sgN/JBWejxPk/hk6F2UnwrDNlFyxzW7UFZa4eRO3n/DN
         /7bnrPjUS0SXdjOXOueghjPaTtb5mdm78TI9VDV3MIYintSAZYHXVmenlWP7HoCTUlus
         p/TXuTuui+aOVUD0umfNh4YLbSw6WpfVa9Mf1O1ug1wFmKnko6Ssnhh6HHeeMFazbnh7
         aHOx0U7TE5b0ALM2KlBxOk4zr4YqNPNFu6tw7owsK6wR8y46+FXPtAUZan/oBpwEsjKV
         B26rCvvZpUWwkq+sSJPXkGlgnG6d6p1BdFDelM/tEvN45rZOiZcL6ViwiF3ko2gHpqqC
         4iQw==
X-Gm-Message-State: AOAM532Fu57fQD3j2mJr609+VQO4HUe/05NaYYrbLaRmZDlA48/gQctL
        aH8uHw68LRopRiUkBctGr4g=
X-Google-Smtp-Source: ABdhPJzDufj9Dq1l2IX1rSnziXnCKJSZ8LjkJQlFOek57vsGGm8cJoRN5juRcFLJuXbBFG7twh/euA==
X-Received: by 2002:a05:6512:12c1:: with SMTP id p1mr15243339lfg.374.1615209542930;
        Mon, 08 Mar 2021 05:19:02 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id z81sm1354735lfc.149.2021.03.08.05.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 05:19:02 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 2/2] arm64: dts: broadcom: bcm4908: add TP-Link Archer C2300 V1
Date:   Mon,  8 Mar 2021 14:18:50 +0100
Message-Id: <20210308131850.22576-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210308131850.22576-1-zajec5@gmail.com>
References: <20210305125907.21943-1-zajec5@gmail.com>
 <20210308131850.22576-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Archer C2300 V1 is a home router based on the BCM4906 (2 CPU cores). It
has 512 MiB of RAM, NAND flash, USB 2.0 and USB 3.0 ports, 4 LAN ports,
1 WAN port.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Fix nodes names for power and USB LEDs. V1 got debugging names.
---
 arch/arm64/boot/dts/broadcom/bcm4908/Makefile |   1 +
 .../bcm4906-tplink-archer-c2300-v1.dts        | 182 ++++++++++++++++++
 2 files changed, 183 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
index ebebc0cd421f..cc75854519ac 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_BCM4908) += bcm4906-netgear-r8000p.dtb
+dtb-$(CONFIG_ARCH_BCM4908) += bcm4906-tplink-archer-c2300-v1.dtb
 dtb-$(CONFIG_ARCH_BCM4908) += bcm4908-asus-gt-ac5300.dtb
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts
new file mode 100644
index 000000000000..7bb75359aef8
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts
@@ -0,0 +1,182 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+#include "bcm4906.dtsi"
+
+/ {
+	compatible = "tplink,archer-c2300-v1", "brcm,bcm4906", "brcm,bcm4908";
+	model = "TP-Link Archer C2300 V1";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00 0x00 0x00 0x20000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
+		};
+
+		2ghz {
+			function = "2ghz";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
+		};
+
+		5ghz {
+			function = "5ghz";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
+		};
+
+		wan-amber {
+			function = LED_FUNCTION_WAN;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio0 4 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan-blue {
+			function = LED_FUNCTION_WAN;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			function = LED_FUNCTION_LAN;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+		};
+
+		wps {
+			function = LED_FUNCTION_WPS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
+		};
+
+		usb2 {
+			function = "usb2";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
+		};
+
+		usb3 {
+			function = "usbd3";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
+		};
+
+		brightness {
+			function = LED_FUNCTION_BACKLIGHT;
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 19 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		poll-interval = <100>;
+
+		brightness {
+			label = "LEDs";
+			linux,code = <KEY_BRIGHTNESS_ZERO>;
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+		};
+
+		wps {
+			label = "WPS";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio0 21 GPIO_ACTIVE_LOW>;
+		};
+
+		wifi {
+			label = "WiFi";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&gpio0 22 GPIO_ACTIVE_LOW>;
+		};
+
+		restart {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio0 23 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&usb_phy {
+	brcm,ioc = <1>;
+	status = "okay";
+};
+
+&ehci {
+	status = "okay";
+};
+
+&ohci {
+	status = "okay";
+};
+
+&xhci {
+	status = "okay";
+};
+
+&ports {
+	port@0 {
+		label = "lan4";
+	};
+
+	port@1 {
+		label = "lan3";
+	};
+
+	port@2 {
+		label = "lan2";
+	};
+
+	port@3 {
+		label = "lan1";
+	};
+
+	port@7 {
+		reg = <7>;
+		phy-mode = "internal";
+		phy-handle = <&phy12>;
+		label = "wan";
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
+		compatible = "brcm,bcm4908-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "cferom";
+			reg = <0x0 0x100000>;
+		};
+
+		partition@100000 {
+			compatible = "brcm,bcm4908-firmware";
+			reg = <0x100000 0x3900000>;
+		};
+
+		partition@5800000 {
+			compatible = "brcm,bcm4908-firmware";
+			reg = <0x3a00000 0x3900000>;
+		};
+	};
+};
-- 
2.26.2

