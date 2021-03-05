Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE5CC32EBA4
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 13:54:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbhCEMx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 07:53:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbhCEMxN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 07:53:13 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CB2DC061574
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 04:53:13 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id z11so3389918lfb.9
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 04:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kNlcFUH19pvEaUNeWFkJfhL9RcG2IrR9oS9s05kiN+0=;
        b=CkmfNqKY6uqClT02ECWjtjNuzDKkAX3mxy0GNnOlVYweSOW3K16BaAMcb71k2H2j6V
         cxgZ/UXKSzwPHDd1w3HjJKcv5HDFacLSRagydd/XaXrRwtc58E/Iqybnya5TrOTnlzi5
         +U/jiJa7LV3RJyJiKD0ci4vo3JytML+Iq7f99l/rebusOwuWfnKjJ+G5OIMakN/lpAeE
         CUibCfiRZKDY5tNA0YpdyjfHuXeRQYvzL7Zji+toxX9hfMgh0TI/eENcMbl0NaBCFfbV
         yH2rczwCFUGIX20fCVEi7vn38sFeKbFihEfiTDr2MwXgBX2Getw1qyZ2376Sy0uNvbZQ
         WkhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kNlcFUH19pvEaUNeWFkJfhL9RcG2IrR9oS9s05kiN+0=;
        b=rL3kQxHSD/kHXXSFjk4rgjN3jK22Vu4W5vKaum+fC4WNjjiSznHqalfP1uZ/hjaAj2
         y73KUXB8L3o63tIoc6YRKABNhkCFO3dbyxdAXjxCjZWh/qrCxEh8S2kRUUqrwEdKyiDQ
         BZtgtF/YJb71adgD+ff14U9nTy8Ub818FrKJFcePWKCo6O/GesSMLfxRU4JTpGp/UWDB
         S9H4P7dcHI5RRgbBFZjA5BjzT9BpkJ6iS4SXtD2pEna/CeEH0uuQgt4Ck1lqu4w3jZiL
         eD6uqiXxAYwOsLVCQyb3ys6u5ETK59n7F05ana3GMQQU+SC6zrPt/2cCtbVib4nVeZRr
         IjHQ==
X-Gm-Message-State: AOAM531itawNGQz/toRECMZJe3tSJ4b60QuDzV/i1kctHYB67zRRovA6
        WxsZ8njKVHavA8kxJE3cWBQ=
X-Google-Smtp-Source: ABdhPJyCSq5dx/pWY6qnpUVMpPHsgkoyJ2Q6xaAUecjksWCdxTFhdMotByDHEExoTCjCeg38AS0ZMw==
X-Received: by 2002:a05:6512:398d:: with SMTP id j13mr5270880lfu.41.1614948791967;
        Fri, 05 Mar 2021 04:53:11 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id u3sm301359lfu.24.2021.03.05.04.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 04:53:11 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] arm64: dts: broadcom: bcm4908: add TP-Link Archer C2300 V1
Date:   Fri,  5 Mar 2021 13:53:02 +0100
Message-Id: <20210305125302.21593-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210305125302.21593-1-zajec5@gmail.com>
References: <20210305125302.21593-1-zajec5@gmail.com>
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
index 000000000000..85820c760260
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
+		power-white {
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
+		usb-high-white {
+			function = "usbup";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
+		};
+
+		usb-low-white {
+			function = "usbdown";
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

