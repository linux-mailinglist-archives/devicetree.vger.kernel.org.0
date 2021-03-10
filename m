Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 865E933368F
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 08:46:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbhCJHqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 02:46:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230063AbhCJHqS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 02:46:18 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8251FC06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 23:46:18 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id p15so24281251ljc.13
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 23:46:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bEIbQZ2WKdtngE3brCqjz9+P9DxEjb2+K3l6rpeagHU=;
        b=CuIXVBrw2Gz6yv12y84z7gAHvErq7TICgUnnlctla1KzQ51MHi0pUNMPvx4I3eBq3w
         UJHZOr+SqYgyS8gECrIekbkCRZMpwgjGPUe/EyfoKBKmbQezLDwxXACNzSBBrPcX5JnT
         S1JYDTVtur+N6iJu8iQZMH+2xS/NVBcYT2XeZT7MOVyraILkF6H13ybsgcfT9+boOifP
         yrxAJg8pMqbZkcNeBjbddm9eHLAJzajSedH+kYj5GZtBNMG0XZfYoNlCcBR33GERiMrR
         EMn3O36qxM/Ks0jqgxkPl+VTx436K9QsDuIDVlrlR6gKdpg2FqDdBZYMruznPP+/6J/D
         1V3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bEIbQZ2WKdtngE3brCqjz9+P9DxEjb2+K3l6rpeagHU=;
        b=c/yk4ulAlopa14UHaF9DXUZAQ+whSSR3oNC9nBiXjWstMccfpsna6reO4+SWIKVrGk
         ndWSCSRosxVewwo+DxO3e93OWAep2jujVibwoDDSTB8NKcp6jQdGqP8iP3eeImWG/xbJ
         PMd4aiHn17uGtgNjR0HdVNCWGLQq9kbjM9goHxrUUUFifmJ8A39znODLUX1nvtst7rQO
         FMnLHhWKxRk2/wlI42S7k6m8jNYbbf17va+M5X9BYXc1jOvPg1+DUDy+g5zOo/0jaqQd
         1UMpE0ZL93wL/HgFblsxOdN3qzu/+0v25tKgmnN+pW+uUAjLw8K/RoFBSp2aBA0F/dVb
         I9Cw==
X-Gm-Message-State: AOAM532/bfkPkwO+JPB4aAbi7fwI/pArHhC5Pa5SVaJGp6ZhJKn5HV4E
        davoOnKG22ePdKL75KsLjis=
X-Google-Smtp-Source: ABdhPJwptyYZaAFiqPN2VqMfbyhoeOYviz4RY682sO58roH3eIAhAkZcQhW9xoohxChq71JZmYHiMg==
X-Received: by 2002:a05:651c:31b:: with SMTP id a27mr1004232ljp.449.1615362376477;
        Tue, 09 Mar 2021 23:46:16 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id t16sm2858133ljj.137.2021.03.09.23.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 23:46:15 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V3 2/2] arm64: dts: broadcom: bcm4908: add TP-Link Archer C2300 V1
Date:   Wed, 10 Mar 2021 08:46:03 +0100
Message-Id: <20210310074603.17715-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210310074603.17715-1-zajec5@gmail.com>
References: <20210308131850.22576-1-zajec5@gmail.com>
 <20210310074603.17715-1-zajec5@gmail.com>
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
V3: Fix USD LEDs nodes names (use "led-" prefix)
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
index 000000000000..b63eefab48bd
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
+		led-power {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
+		};
+
+		led-2ghz {
+			function = "2ghz";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
+		};
+
+		led-5ghz {
+			function = "5ghz";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
+		};
+
+		led-wan-amber {
+			function = LED_FUNCTION_WAN;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio0 4 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-wan-blue {
+			function = LED_FUNCTION_WAN;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+		};
+
+		led-lan {
+			function = LED_FUNCTION_LAN;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+		};
+
+		led-wps {
+			function = LED_FUNCTION_WPS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
+		};
+
+		led-usb2 {
+			function = "usb2";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
+		};
+
+		led-usb3 {
+			function = "usbd3";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
+		};
+
+		led-brightness {
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

