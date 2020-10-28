Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 038DD29DA56
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 00:21:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388110AbgJ1XU6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 19:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728724AbgJ1XUB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 19:20:01 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55DF9C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:20:01 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id b1so913262lfp.11
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q3zYs/WtFnewpmjmrbnB8eAsl40pThua2WUxfEmYh9E=;
        b=tPBZHF3srGHWlh07Ke8pc9v1gmbYnbu0NWoxvBeKyGU8E/9zAkS9slF58fw506vygA
         gLlWMQ1e1XHUpf2MsWGuGdDS6Af2dXjnRePDGkRh025wBPovtOB9LpnGtMWsr+CP1yq3
         jPLAipOsw5FjKyIqn27LXdTe/fhlxa5w5bwZE5DuKKPrt8b8bSFLQZE4VMQ5uDEKNLLe
         vRJyIy0uPVbIS683xlWrjfcA6bf7ccNcJdeKjbPRSIAsH2PcEEP9nKO0yOhO2/6h0Vzm
         VWLCNUvuaiE2oUI8DTByLIzW6YKXdF4yjL+H4WHUd5vHFe9589qombFsmLgZfzTWCWBf
         x+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q3zYs/WtFnewpmjmrbnB8eAsl40pThua2WUxfEmYh9E=;
        b=e0vY2kMFxOCw0GPELHimaNuNjPJt9bqAfr5HZHc1w6xk6XHwDbWJ4KljGNt9FO0XN4
         5xx+jCEd50SrDPvin+nuO1BD6sKTxLc8z4WF75QSyMkJpQxENiVwnwurA7hEJDCC/bhc
         McfLXy6eS81UEI7c8us1KQwq5mGRxCIYcE8xe3wzIMRaFyI2RxcnO2KF8Tm8DfOo3CP+
         0y4F3MkrI9u7re1OVgjDvQD1L2WnB1l9maqDOT0pY4yDaCQdXTcrNm4kO31tc/ZrovZ6
         uvz2l7N7mvI1DW+FKv/drjmvkiRQql/aQjNP7bepBkLCYqiXqjm3UtCITYGpD21CUdYw
         IqzA==
X-Gm-Message-State: AOAM531u70mTcNwnEPr7eBu0vcsSGvDNpi9Vp8ZWg4d7Fj4pD8EfkZJY
        7wan7/y8u5822UwmJIXrBRKxbwyg2gU=
X-Google-Smtp-Source: ABdhPJwQkGtWCn0vgcdqASbApOcOXQoAglvCDcvNiYpB+UgvyWthfp5Hk+/Y0I4n29+eyky6g8G+lQ==
X-Received: by 2002:a19:810:: with SMTP id 16mr2359106lfi.460.1603879914558;
        Wed, 28 Oct 2020 03:11:54 -0700 (PDT)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id m10sm479084lfo.237.2020.10.28.03.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 03:11:54 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files
Date:   Wed, 28 Oct 2020 11:11:23 +0100
Message-Id: <20201028101123.6293-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201028101123.6293-1-zajec5@gmail.com>
References: <20201028101123.6293-1-zajec5@gmail.com>
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
2. Crypto
3. Thermal

Asus misses defining full NAND partitions layout and buttons.

Further changes will fill those gaps as soon as required bindings will
be found / tested / added.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/Makefile         |   1 +
 arch/arm64/boot/dts/broadcom/bcm4908/Makefile |   2 +
 .../bcm4908/bcm4908-asus-gt-ac5300.dts        |  64 ++++++
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 182 ++++++++++++++++++
 4 files changed, 249 insertions(+)
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
index 000000000000..9b87aab5f8b2
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -0,0 +1,64 @@
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
index 000000000000..af87a844ad82
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -0,0 +1,182 @@
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
+			compatible = "brcm,cortex-b53", "arm,cortex-a53";
+			reg = <0x0>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "brcm,cortex-b53", "arm,cortex-a53";
+			reg = <0x1>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0xfff8>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "brcm,cortex-b53", "arm,cortex-a53";
+			reg = <0x2>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0xfff8>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "brcm,cortex-b53", "arm,cortex-a53";
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
+	gic: interrupt-controller@81000000 {
+		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
+		#interrupt-cells = <3>;
+		#address-cells = <0>;
+		interrupt-controller;
+		reg = <0x00 0x81001000 0x00 0x1000>, <0x00 0x81002000 0x00 0x2000>;
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
+		compatible = "arm,armv8-pmuv3";
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
+				nand-on-flash-bbt;
+				brcm,nand-has-wp;
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

