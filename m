Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5BD94EC54C
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 15:11:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344002AbiC3NM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 09:12:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345781AbiC3NMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 09:12:53 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CB64217967
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:11:08 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l7-20020a05600c1d0700b0038c99618859so1205215wms.2
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=99nZN+51ZcHPuJIBz9zlDZOG/SZxFUJCsnK6Nsy40wU=;
        b=Bo27vT4RHGAb2PQ2gg1TdDk8IeGdT0QnX4H9GvvJGDzjMjQdwHgGBpqlQCgW2bSMFE
         HQj+JYbqkHbT00yJdT2kiS/H8Yrx4nBi1WyT6vp6rDItvlCAAaP+wK30j3ogtK7a6PyE
         fBUlF9jLZMdrPKOdlN4utN7JYR5qzYfiKTmcxzLV8k/uKpHQNTGcI3tcGEijxTnR5ssC
         aU6hL7Y+lArTMcJBtohYMxkxOW2fQaKTVrYikZnrnhKlRVprZglm++O1K1qf9/jkaUsL
         7TWC/JFT3cQnGuxIZzvb1HYBf2hvKzHIEFNzJKKVZfqQGDMiEsBl36A8Rr3EpA4i3Cz1
         qlkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=99nZN+51ZcHPuJIBz9zlDZOG/SZxFUJCsnK6Nsy40wU=;
        b=IIPYpJqW+n3dcAfBun1EXx9u08X9Au5q2pJBLCEldHr2C9AxMUm6gcyt/svQcXBitD
         iGvO9SrVtfKAAFZo8Gk0UlQgy3cSDJs4+8TQy0VLj4y8tirUp7bLE3vkJJQJXPTrCSj5
         izRFhYKHPUXjM9QYqVme5ddqW/aDguymiGR2Hx3Kczywlx9jAvZulJD5TBwCsEt1TZQV
         KHq+VDn+w/cDlMzQeUgsX3k57sFV5JaqtEQaoaVTXvCnrfGZRU9JoUNXZlzEVD2Td4hD
         8uRhIfbYRoXGNPM+lwO6RefXfmx803hHzAD3BQ6ZSDr8usm283sGA7u3mrQTERFIO4cN
         b6WQ==
X-Gm-Message-State: AOAM5319gBxEd9leUmb8xhOKsSIWge1xIJ8P2+zmFFL1P+Fxubtu7ByK
        G+E155iFL1oroBV2pATJ/Q5IEQ==
X-Google-Smtp-Source: ABdhPJz/u8Xg2txvV6DXqD6xryE3yIa9qhk9Ym3AtoITgHDlxfCKlF3lB18tIKtisCOTgKf8GJFYdA==
X-Received: by 2002:a05:600c:3509:b0:38c:b03b:b3c2 with SMTP id h9-20020a05600c350900b0038cb03bb3c2mr4463811wmq.81.1648645866778;
        Wed, 30 Mar 2022 06:11:06 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id u7-20020a5d6da7000000b00203d9d1875bsm20134479wrs.73.2022.03.30.06.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 06:11:06 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v3 3/3] arm64: dts: arm: add corstone1000 device tree
Date:   Wed, 30 Mar 2022 14:10:53 +0100
Message-Id: <20220330131053.1122502-4-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330131053.1122502-1-rui.silva@linaro.org>
References: <20220330131053.1122502-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Corstone1000 is a platform from arm, which includes pre
verified Corstone SSE710 sub-system that combines Cortex-A and
Cortex-M processors [0].

These device trees contains the necessary bits to support the
Corstone 1000 FVP (Fixed Virtual Platform) [1] and the
FPGA MPS3 board Cortex-A35 implementation at Cortex-A35 host
side of this platform. [2]

0: https://documentation-service.arm.com/static/619e02b1f45f0b1fbf3a8f16
1: https://developer.arm.com/tools-and-software/open-source-software/arm-platforms-software/arm-ecosystem-fvps
2: https://documentation-service.arm.com/static/61f3f4d7fa8173727a1b71bf

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 arch/arm64/boot/dts/arm/Makefile              |   1 +
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  27 +++
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  36 ++++
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 161 ++++++++++++++++++
 4 files changed, 225 insertions(+)
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi

diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
index 4382b73baef5..d908e96d7ddc 100644
--- a/arch/arm64/boot/dts/arm/Makefile
+++ b/arch/arm64/boot/dts/arm/Makefile
@@ -6,3 +6,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += juno.dtb juno-r1.dtb juno-r2.dtb juno-scmi.dtb ju
 dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
+dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
diff --git a/arch/arm64/boot/dts/arm/corstone1000-fvp.dts b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
new file mode 100644
index 000000000000..dea8b5f4d68a
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0 or MIT
+/*
+ * Copyright (c) 2022, Arm Limited. All rights reserved.
+ * Copyright (c) 2022, Linaro Limited. All rights reserved.
+ *
+ */
+
+/dts-v1/;
+
+#include "corstone1000.dtsi"
+
+/ {
+	model = "ARM Corstone1000 FVP (Fixed Virtual Platform)";
+	compatible = "arm,corstone1000-fvp";
+
+	smsc: ethernet@4010000 {
+		compatible = "smsc,lan91c111";
+		reg = <0x40100000 0x10000>;
+		phy-mode = "mii";
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+		reg-io-width = <2>;
+	};
+};
+
+&cpu {
+	compatible = "arm,armv8";
+};
diff --git a/arch/arm64/boot/dts/arm/corstone1000-mps3.dts b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
new file mode 100644
index 000000000000..9989586db70e
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0 or MIT
+/*
+ * Copyright (c) 2022, Arm Limited. All rights reserved.
+ * Copyright (c) 2022, Linaro Limited. All rights reserved.
+ *
+ */
+
+/dts-v1/;
+
+#include "corstone1000.dtsi"
+
+/ {
+	model = "ARM Corstone1000 FPGA MPS3 board";
+	compatible = "arm,corstone1000-mps3";
+
+	smsc: ethernet@4010000 {
+		compatible = "smsc,lan9220", "smsc,lan9115";
+		reg = <0x40100000 0x10000>;
+		phy-mode = "mii";
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+		reg-io-width = <2>;
+		smsc,irq-push-pull;
+	};
+
+	usb_host: usb@40200000 {
+		compatible = "nxp,usb-isp1763";
+		reg = <0x40200000 0x100000>;
+		interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+		bus-width = <16>;
+		dr_mode = "host";
+	};
+};
+
+&cpu {
+	compatible = "arm,cortex-a35";
+};
diff --git a/arch/arm64/boot/dts/arm/corstone1000.dtsi b/arch/arm64/boot/dts/arm/corstone1000.dtsi
new file mode 100644
index 000000000000..194d959de828
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000.dtsi
@@ -0,0 +1,161 @@
+// SPDX-License-Identifier: GPL-2.0 or MIT
+/*
+ * Copyright (c) 2022, Arm Limited. All rights reserved.
+ * Copyright (c) 2022, Linaro Limited. All rights reserved.
+ *
+ */
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
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
+		cpu: cpu@0 {
+			device_type = "cpu";
+			reg = <0>;
+			next-level-cache = <&L2_0>;
+		};
+	};
+
+	memory@88200000 {
+		device_type = "memory";
+		reg = <0x88200000 0x77e00000>;
+	};
+
+	gic: interrupt-controller@1c000000 {
+		compatible = "arm,gic-400";
+		#interrupt-cells = <3>;
+		#address-cells = <0>;
+		interrupt-controller;
+		reg =	<0x1c010000 0x1000>,
+			<0x1c02f000 0x2000>,
+			<0x1c04f000 0x1000>,
+			<0x1c06f000 0x2000>;
+		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) |
+			      IRQ_TYPE_LEVEL_LOW)>;
+	};
+
+	L2_0: l2-cache0 {
+		compatible = "cache";
+	};
+
+	refclk100mhz: refclk100mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "apb_pclk";
+	};
+
+	smbclk: refclk24mhzx2 {
+		/* Reference 24MHz clock x 2 */
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <48000000>;
+		clock-output-names = "smclk";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts =	<GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) |
+				 IRQ_TYPE_LEVEL_LOW)>,
+				<GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) |
+				 IRQ_TYPE_LEVEL_LOW)>,
+				<GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(1) |
+				 IRQ_TYPE_LEVEL_LOW)>,
+				<GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) |
+				 IRQ_TYPE_LEVEL_LOW)>;
+	};
+
+	uartclk: uartclk {
+		/* UART clock - 50MHz */
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <50000000>;
+		clock-output-names = "uartclk";
+	};
+
+	psci {
+		compatible = "arm,psci-1.0", "arm,psci-0.2";
+		method = "smc";
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		interrupt-parent = <&gic>;
+		ranges;
+
+		timer@1a220000 {
+			compatible = "arm,armv7-timer-mem";
+			reg = <0x1a220000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			clock-frequency = <50000000>;
+			ranges;
+
+			frame@1a230000 {
+				frame-number = <0>;
+				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+				reg = <0x1a230000 0x1000>;
+			};
+		};
+
+		uart0: serial@1a510000 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x1a510000 0x1000>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&uartclk>, <&refclk100mhz>;
+			clock-names = "uartclk", "apb_pclk";
+		};
+
+		uart1: serial@1a520000 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x1a520000 0x1000>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&uartclk>, <&refclk100mhz>;
+			clock-names = "uartclk", "apb_pclk";
+		};
+
+		mhu_hse1: mailbox@1b820000 {
+			compatible = "arm,mhuv2-tx", "arm,primecell";
+			reg = <0x1b820000 0x1000>;
+			clocks = <&refclk100mhz>;
+			clock-names = "apb_pclk";
+			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			arm,mhuv2-protocols = <0 0>;
+			secure-status = "okay";     /* secure-world-only */
+			status = "disabled";
+		};
+
+		mhu_seh1: mailbox@1b830000 {
+			compatible = "arm,mhuv2-rx", "arm,primecell";
+			reg = <0x1b830000 0x1000>;
+			clocks = <&refclk100mhz>;
+			clock-names = "apb_pclk";
+			interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			arm,mhuv2-protocols = <0 0>;
+			secure-status = "okay";     /* secure-world-only */
+			status = "disabled";
+		};
+	};
+};
-- 
2.35.1

