Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E83FD2B0049
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 08:22:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725923AbgKLHV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 02:21:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbgKLHVx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 02:21:53 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC558C0613D1
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 23:21:52 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id r9so6811472lfn.11
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 23:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LAHh2HOszsglx/HRv5nHmz74iQXo3hAYeu8cPz9Bj78=;
        b=Wd2tLDq1nEVHD6pK/xvRmpocKTCBhK3XM59k3jAbZjTyNW4G3VjZRAvGrRVuIsKivm
         5XR/hTTPq61CfnSWqBVRuQsM8PXk/GxyF/I8tFMcmJoe0NQs5koJ1tag5p3ZvKWzZs8Y
         ZxQ+MIus2ieDJsH5ojaX4kr4O+7Nl1RW5Zp8R0IHEdfuoqkHPn/yB5lXo/jYgAn0DHkd
         q0qoMerHc8ffGNIqNUw+QIg9MIpxyIJnga3ZDE/QTXMkHZklsBG+tJu9OUX2EiC3FZYR
         dYUntSWJuGDm/erU0QVmb9h6RG5+biQ7EaM4xKpvYCX1hYDUmgGf0apGPnRReIe3MkaD
         udqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LAHh2HOszsglx/HRv5nHmz74iQXo3hAYeu8cPz9Bj78=;
        b=nNszyv7ukYFl0G4BvTdfaQp9cJ/iwaNCjjZTSvunBzy2oymZO/WbaIp48xLENNoX0N
         mtcfTXwfdM/tejytvCoXuJfGgQU8iJovcjEOrLZP45XuFxYpWN1/vMrafx/LTxHzVuPb
         YIL+Qu6lZgAOVcfGhof8R0Z8wz98/HBcoiw64NTKQ0nFoOBbhLx4poteXwjUFsl5s4o7
         OpKWjEIgPqwVNjK/cJHV3ECLmotmEbIvdUZg6O+rVMrkwFe9YFmuSofiXK5EplrDuSOV
         ezlccOEm8bDf5phvTH5qciiS3xGPgX5LLiJvgp+bZb2HSSd7GCte0hjYCbUIntJilKCG
         eYmQ==
X-Gm-Message-State: AOAM532WQCs7y2saOp9E0xPgVb7c6CGFIh68gJi+G7U1TMdyY8WE4D/V
        9dXJkUVBSw3LEa14yHW7YiE=
X-Google-Smtp-Source: ABdhPJxayevQuMQOiUfySC52bcF3T4Sytoy17SnHESV6l9XYnkJL1oSZd5ORz2Z8VRljiioB9fsQHQ==
X-Received: by 2002:ac2:5c01:: with SMTP id r1mr12086807lfp.436.1605165711179;
        Wed, 11 Nov 2020 23:21:51 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id w18sm460427lfc.5.2020.11.11.23.21.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 23:21:50 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V3 3/3] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files
Date:   Thu, 12 Nov 2020 08:21:33 +0100
Message-Id: <20201112072133.17039-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201112072133.17039-1-zajec5@gmail.com>
References: <20201112072133.17039-1-zajec5@gmail.com>
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
V3: Drop leading 0s
    Drop bootargs with debugging earlycon
    Use usb@ syntax to match [PATCH v2 00/18] dt-bindings: usb: Harmonize xHCI/EHCI/OHCI/DWC3 nodes name
---
 arch/arm64/boot/dts/broadcom/Makefile         |   1 +
 arch/arm64/boot/dts/broadcom/bcm4908/Makefile |   2 +
 .../bcm4908/bcm4908-asus-gt-ac5300.dts        |  66 +++++++
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 187 ++++++++++++++++++
 4 files changed, 256 insertions(+)
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
index 000000000000..13c6b86eef21
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
+			reg = <0x0 0x100000>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
new file mode 100644
index 000000000000..a9e01ecb00b2
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -0,0 +1,187 @@
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
+		usb@c300 {
+			compatible = "generic-ehci";
+			reg = <0xc300 0x100>;
+			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		usb@c400 {
+			compatible = "generic-ohci";
+			reg = <0xc400 0x100>;
+			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		usb@d000 {
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

