Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C09F2A79B1
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 09:55:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730182AbgKEIzS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 03:55:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730175AbgKEIzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 03:55:18 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FEEAC0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 00:55:16 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id k25so718658lji.9
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 00:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aQNe3plyWUK3KdiAO+n8jQRruSg1b3yW4Yxze9//B9Q=;
        b=kU+XsEAV6h/75QOrqxzCnEtUBW8IgZCe67JrvgKOByiI9VWQfo7JUD9vJJ2CZQoIHF
         YmYRo8XAqKHLM2FPCWdAwkkiBAiXEiDb4sDWPLnUmWr9ale1CV894ESGsMUBuXcbk4UQ
         7iBkWV/qZXXZn/JYOKmF7YcrNUvKBwJdyBaV/coccw6daiCFEYQ18tdAbPkOhh9v/7F4
         o0oJR2a/icnnb+uL4e3z+7dEswssBCkh1wISBYzcq5a00dsDeotse5s8F8CiP8aOtQaQ
         fj6/NBGx+vccDizprt7kGFPZ4DQPU5kmatAIx9c18thdw8EjISMjnl4MufktHk1ZWtG/
         VRoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aQNe3plyWUK3KdiAO+n8jQRruSg1b3yW4Yxze9//B9Q=;
        b=L9QwAMDmIuI7wQrnirPj789aPyci+tGq2QsdgEsnLbemgNVRVafBRxAt0yGzs9okd3
         8aq9monXbPOSrV5k6qvp+cEBrzaCHRdYv8q2rchUbgKmGGFcgidOeubNgwj7rp97Kaso
         OpZFRQK2fHuSYGM3uLvMqqterU89MjEAxXDCCcCiOlaE8VeGhWdXjfu02ZDRBH6tUUuW
         R1slsOcU8bH+kFEf/RCdWABxazv0J/fFAIV+JPtUQ2wj+4c1Dw20WbajgrrO8RIFXana
         vVl4EK12j2tRPNiCRvPZcTPM0OBt1dPJgJz8rAzQlradXO8ps+CP+OOYabw+RU/PzTYh
         AviQ==
X-Gm-Message-State: AOAM531cSiFivUOzEh7kb8HRBozjwEZuJFPbfafi1q2UTyV1jVyHUZE3
        bDqtnusiMymDGdgII5UBJEo=
X-Google-Smtp-Source: ABdhPJzQRrZnV15I2vzsccnRP97avY1s++D+M4HovzbP3HRGIYDsxM1pShFHiyAqk0dRLpOGfvVjNg==
X-Received: by 2002:a2e:98d6:: with SMTP id s22mr505066ljj.131.1604566514923;
        Thu, 05 Nov 2020 00:55:14 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id q28sm114571lfn.7.2020.11.05.00.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 00:55:14 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 2/2] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files
Date:   Thu,  5 Nov 2020 09:54:58 +0100
Message-Id: <20201105085458.21121-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201105085458.21121-1-zajec5@gmail.com>
References: <20201105085458.21121-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

They don't descibe hardware fully yet but it's enough to boot a system.

Some missing blocks:
1. PMC (Power Management Controller?)
2. Ethernet
3. Crypto
4. Thermal

Asus DTS is missing defining full NAND partitions layout and buttons.

Further changes will fill those gaps as soon as required bindings will
be found / tested / added.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Move some NAND properties to device dts
    Fix CPU compatible strings
    Add axi@81000000
    Fix PMU compatible string
---
 arch/arm64/boot/dts/broadcom/Makefile         |   1 +
 arch/arm64/boot/dts/broadcom/bcm4908/Makefile |   2 +
 .../bcm4908/bcm4908-asus-gt-ac5300.dts        |  66 ++++++
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 188 ++++++++++++++++++
 4 files changed, 257 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm4908/Makefile
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index cb7de8d99223..998e240aa698 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -5,5 +5,6 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-4-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
 			      bcm2837-rpi-cm3-io3.dtb
 
+subdir-y	+= bcm4908
 subdir-y	+= northstar2
 subdir-y	+= stingray
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
new file mode 100644
index 000000000000..ef26c23603ce
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_BCM4908) += bcm4908-asus-gt-ac5300.dtb
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
new file mode 100644
index 000000000000..a9d10e028864
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "bcm4908.dtsi"
+
+/ {
+	compatible = "asus,gt-ac5300", "brcm,bcm4908";
+	model = "Asus GT-AC5300";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00 0x00 0x00 0x40000000>;
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		poll-interval = <100>;
+
+		wifi {
+			label = "WiFi";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&gpio0 28 GPIO_ACTIVE_LOW>;
+		};
+
+		wps {
+			label = "WPS";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio0 29 GPIO_ACTIVE_LOW>;
+		};
+
+		restart {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio0 30 GPIO_ACTIVE_LOW>;
+		};
+
+		brightness {
+			label = "LEDs";
+			linux,code = <KEY_BRIGHTNESS_ZERO>;
+			gpios = <&gpio0 31 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&nandcs {
+	nand-ecc-strength = <4>;
+	nand-ecc-step-size = <512>;
+	nand-on-flash-bbt;
+	brcm,nand-has-wp;
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
+			reg = <0x000000000000 0x000000100000>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
new file mode 100644
index 000000000000..3bbefc86b978
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/dts-v1/;
+
+/ {
+	interrupt-parent = <&gic>;
+
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		bootargs = "earlycon=bcm63xx_uart,0xff800640";
+		stdout-path = "serial0:115200n8";
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "brcm,brahma-b53";
+			reg = <0x0>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "brcm,brahma-b53";
+			reg = <0x1>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0xfff8>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "brcm,brahma-b53";
+			reg = <0x2>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0xfff8>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "brcm,brahma-b53";
+			reg = <0x3>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0xfff8>;
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache0 {
+			compatible = "cache";
+		};
+	};
+
+	axi@81000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x00 0x00 0x81000000 0x4000>;
+
+		gic: interrupt-controller@1000 {
+			compatible = "arm,gic-400";
+			#interrupt-cells = <3>;
+			#address-cells = <0>;
+			interrupt-controller;
+			reg = <0x1000 0x1000>,
+			      <0x2000 0x2000>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
+	};
+
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
+	clocks {
+		periph_clk: periph_clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <50000000>;
+			clock-output-names = "periph";
+		};
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x00 0x00 0x80000000 0x10000>;
+
+		ehci@c300 {
+			compatible = "generic-ehci";
+			reg = <0xc300 0x100>;
+			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		ohci@c400 {
+			compatible = "generic-ohci";
+			reg = <0xc400 0x100>;
+			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		xhci@d000 {
+			compatible = "generic-xhci";
+			reg = <0xd000 0x8c8>;
+			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+	};
+
+	ubus@ff800000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x00 0x00 0xff800000 0x3000>;
+
+		timer: timer@400 {
+			compatible = "brcm,bcm6328-timer", "syscon";
+			reg = <0x400 0x3c>;
+		};
+
+		gpio0: gpio-controller@500 {
+			compatible = "brcm,bcm6345-gpio";
+			reg-names = "dirout", "dat";
+			reg = <0x500 0x28>, <0x528 0x28>;
+
+			#gpio-cells = <2>;
+			gpio-controller;
+		};
+
+		uart0: serial@640 {
+			compatible = "brcm,bcm6345-uart";
+			reg = <0x640 0x18>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&periph_clk>;
+			clock-names = "periph";
+			status = "okay";
+		};
+
+		nand@1800 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,brcmnand-v7.1", "brcm,brcmnand";
+			reg = <0x1800 0x600>, <0x2000 0x10>;
+			reg-names = "nand", "nand-int-base";
+			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "nand";
+			status = "okay";
+
+			nandcs: nandcs@0 {
+				compatible = "brcm,nandcs";
+				reg = <0>;
+			};
+		};
+
+		reboot {
+			compatible = "syscon-reboot";
+			regmap = <&timer>;
+			offset = <0x34>;
+			mask = <1>;
+		};
+	};
+};
-- 
2.27.0

