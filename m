Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC5B777C9AA
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 10:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235750AbjHOIv3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 04:51:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235768AbjHOIvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 04:51:24 -0400
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D977EFE
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 01:51:22 -0700 (PDT)
Received: from loongson.cn (unknown [112.20.109.245])
        by gateway (Coremail) with SMTP id _____8Cxh+iJPNtkeLIYAA--.15119S3;
        Tue, 15 Aug 2023 16:51:21 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.109.245])
        by localhost.localdomain (Coremail) with SMTP id AQAAf8DxviOHPNtkGQhbAA--.51617S2;
        Tue, 15 Aug 2023 16:51:20 +0800 (CST)
From:   Binbin Zhou <zhoubinbin@loongson.cn>
To:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>,
        Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v2 4/7] LoongArch: dts: DeviceTree for Loongson-2K0500
Date:   Tue, 15 Aug 2023 16:51:10 +0800
Message-Id: <f869b30d119a56abaa67ac78cd981fc0c2f0d28b.1692088166.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <cover.1692088166.git.zhoubinbin@loongson.cn>
References: <cover.1692088166.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8DxviOHPNtkGQhbAA--.51617S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxtw18Jw1UWFWDuryrWrW3urX_yoWfAr15pa
        srC3yDGr40vF1jk3yUJFWjyF1DGayFkF97Wwn7AFW8JrZ7tryqvr4xtFyfJF1rGrWDX342
        qFnYv34UKF4DJwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
        sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
        0xBIdaVrnRJUUUBSb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
        IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
        e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
        0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
        wI0_Gr1j6F4UJwAaw2AFwI0_JF0_Jw1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2
        xF0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_
        Wrv_ZF1lYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x
        0EwIxGrwCY1x0262kKe7AKxVWUAVWUtwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkE
        bVWUJVW8JwCFI7km07C267AKxVWUAVWUtwC20s026c02F40E14v26r1j6r18MI8I3I0E74
        80Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0
        I7IYx2IY67AKxVW7JVWDJwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UMIIF0xvE42
        xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF
        7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxUVWrXDUUUU
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DeviceTree file for Loongson-2K0500 processor, which integrates one
64-bit dual emission superscalar LA264 processor core.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 arch/loongarch/boot/dts/Makefile              |   2 +
 .../boot/dts/loongson-2k0500-ref.dts          | 115 +++++++++
 arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 244 ++++++++++++++++++
 3 files changed, 361 insertions(+)
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0500-ref.dts
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0500.dtsi

diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
index 1e24cdb5180a..aa0b21d73d4e 100644
--- a/arch/loongarch/boot/dts/Makefile
+++ b/arch/loongarch/boot/dts/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+dtb-$(CONFIG_MACH_LOONGSON64)	= loongson-2k0500-ref.dtb
+
 obj-$(CONFIG_BUILTIN_DTB)	+= $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
diff --git a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
new file mode 100644
index 000000000000..c89662e5a296
--- /dev/null
+++ b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
@@ -0,0 +1,115 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Loongson Technology Corporation Limited
+ */
+
+/dts-v1/;
+
+#include "loongson-2k0500.dtsi"
+
+/ {
+	compatible = "loongson,ls2k0500-ref", "loongson,ls2k0500";
+	model = "Loongson-2K0500 Reference Board";
+
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+		bootargs = "earlycon";
+	};
+
+	cpu_clk: cpu-clk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <500000000>;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+			};
+		};
+
+		cpu0: cpu@0 {
+			compatible = "loongson,la264";
+			device_type = "cpu";
+			reg = <0x0>;
+			clocks = <&cpu_clk>;
+		};
+	};
+
+	memory@200000 {
+		device_type = "memory";
+		reg = <0x0 0x200000 0x0 0xee00000>, /* 238 MB at 2 MB */
+		      <0x0 0x90000000 0x0 0x60000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0x0 0x2000000>;
+			linux,cma-default;
+		};
+	};
+};
+
+&gmac0 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	bus_id = <0x0>;
+};
+
+&gmac1 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	bus_id = <0x1>;
+};
+
+&i2c0 {
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	eeprom@57{
+		compatible = "atmel,24c16";
+		reg = <0x57>;
+		pagesize = <16>;
+	};
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&sata {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&rtc0 {
+	status = "okay";
+};
diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
new file mode 100644
index 000000000000..e6f6476ab558
--- /dev/null
+++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
@@ -0,0 +1,244 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Loongson Technology Corporation Limited
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	ref_100m: clock-ref-100m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "ref_100m";
+	};
+
+	cpuintc: interrupt-controller {
+		compatible = "loongson,cpu-interrupt-controller";
+		#interrupt-cells = <1>;
+		interrupt-controller;
+	};
+
+	bus@10000000 {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		ranges = <0x0 0x10000000 0x0 0x10000000 0x0 0x10000000>,
+			 <0x0 0x2000000  0x0 0x2000000  0x0 0x2000000>,
+			 <0x0 0x20000000 0x0 0x20000000 0x0 0x10000000>,
+			 <0x0 0x40000000 0x0 0x40000000 0x0 0x40000000>,
+			 <0xfe 0x0 0xfe 0x0 0x0 0x40000000>;
+
+		isa@16400000 {
+			compatible = "isa";
+			#size-cells = <1>;
+			#address-cells = <2>;
+			ranges = <1 0x0 0x0 0x16400000 0x4000>;
+		};
+
+		liointc0: interrupt-controller@1fe11400 {
+			compatible = "loongson,liointc-2.0";
+			reg = <0x0 0x1fe11400 0x0 0x40>,
+			      <0x0 0x1fe11040 0x0 0x8>;
+			reg-names = "main", "isr0";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupt-parent = <&cpuintc>;
+			interrupts = <2>;
+			interrupt-names = "int0";
+
+			loongson,parent_int_map = <0xffffffff>, /* int0 */
+						  <0x00000000>, /* int1 */
+						  <0x00000000>, /* int2 */
+						  <0x00000000>; /* int3 */
+		};
+
+		liointc1: interrupt-controller@1fe11440 {
+			compatible = "loongson,liointc-2.0";
+			reg = <0x0 0x1fe11440 0x0 0x40>,
+			      <0x0 0x1fe11048 0x0 0x8>;
+			reg-names = "main", "isr0";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupt-parent = <&cpuintc>;
+			interrupts = <4>;
+			interrupt-names = "int2";
+
+			loongson,parent_int_map = <0x00000000>, /* int0 */
+						  <0x00000000>, /* int1 */
+						  <0xffffffff>, /* int2 */
+						  <0x00000000>; /* int3 */
+		};
+
+		eiointc: interrupt-controller@1fe11600 {
+			compatible = "loongson,ls2k0500-eiointc";
+			reg = <0x0 0x1fe11600 0x0 0xea00>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&cpuintc>;
+			interrupts = <3>;
+		};
+
+		gmac0: ethernet@1f020000 {
+			compatible = "snps,dwmac-3.70a";
+			reg = <0x0 0x1f020000 0x0 0x10000>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <12 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			status = "disable";
+		};
+
+		gmac1: ethernet@1f030000 {
+			compatible = "snps,dwmac-3.70a";
+			reg = <0x0 0x1f030000 0x0 0x10000>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <14 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			status = "disable";
+		};
+
+		sata: sata@1f040000 {
+			compatible = "snps,spear-ahci";
+			reg = <0x0 0x1f040000 0x0 0x10000>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <75>;
+			status = "disable";
+		};
+
+		ehci0: usb@1f050000 {
+			compatible = "generic-ehci";
+			reg = <0x0 0x1f050000 0x0 0x8000>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <71>;
+			status = "disable";
+		};
+
+		ohci0: usb@1f058000 {
+			compatible = "generic-ohci";
+			reg = <0x0 0x1f058000 0x0 0x8000>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <72>;
+			status = "disable";
+		};
+
+		clk: clock-controller@1fe10400 {
+			compatible = "loongson,ls2k-clk";
+			reg = <0x0 0x1fe10400 0x0 0x30>;
+			#clock-cells = <1>;
+			clocks = <&ref_100m>;
+			clock-names = "ref_100m";
+			status = "disabled";
+		};
+
+		uart0: serial@1ff40800 {
+			compatible = "ns16550a";
+			reg = <0x0 0x1ff40800 0x0 0x10>;
+			clock-frequency = <100000000>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <2>;
+			no-loopback-test;
+			status = "disabled";
+		};
+
+		i2c0: i2c@1ff48000 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff48000 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <14>;
+			status = "disabled";
+		};
+
+		i2c@1ff48800 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff48800 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <15>;
+			status = "disabled";
+		};
+
+		i2c@1ff49000 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff49000 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <16>;
+			status = "disabled";
+		};
+
+		i2c@1ff49800 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff49800 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <17>;
+			status = "disabled";
+		};
+
+		i2c@1ff4a000 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff4a000 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <18>;
+			status = "disabled";
+		};
+
+		i2c@1ff4a800 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff4a800 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <19>;
+			status = "disabled";
+		};
+
+		rtc0: rtc@1ff6c100 {
+			compatible = "loongson,ls2k0500-rtc", "loongson,ls7a-rtc";
+			reg = <0x0 0x1ff6c100 0x0 0x100>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <35>;
+			status = "disabled";
+		};
+
+		pcie@1a000000 {
+			compatible = "loongson,ls2k-pci";
+			device_type = "pci";
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			reg = <0x0 0x1a000000 0x0 0x02000000>,
+			      <0xfe 0x0 0x0 0x20000000>;
+
+			ranges = <0x2000000 0x0 0x40000000 0x0 0x40000000 0x0 0x40000000>,
+				 <0x1000000 0x0 0x4000 0x0 0x16404000 0x0 0x4000>;
+
+			status = "disabled";
+
+			pcie@0,0 {
+				reg = <0x0000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				interrupt-parent = <&eiointc>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &eiointc 81>;
+				ranges;
+			};
+
+			pcie@1,0 {
+				reg = <0x0800 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				interrupt-parent = <&eiointc>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &eiointc 82>;
+				ranges;
+			};
+		};
+	};
+};
-- 
2.39.3

