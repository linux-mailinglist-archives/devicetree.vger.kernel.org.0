Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4FA54E744D
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 14:37:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244774AbiCYNis (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 09:38:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352892AbiCYNir (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 09:38:47 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56981D76C2
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 06:37:13 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id h4so1509178edr.3
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 06:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qITsocAWLN8bT1sHDNPLgwiNr7RzGWLoi4lIHreMROs=;
        b=yvlJEpnAaN+428MG9Z1WRGneZEz/3u0dsBmTEPOCOzzwaH5NhJ4cJZIKjjWvldHEd0
         nD3iEx2/wOfyUYEBSSO+hgfmRZrE5VRq+192hRIUKU/lMkqJeZIc6XMhr4ikQmP+/tGR
         EzVbf5SQ9FYBd8+xpCKE6b/HI3ER0ferWOK0outPfU3NGYWyLS2v+Vtnt8uBorhVo2Lu
         NxiMyZIDUICzUDsd9wx2omHAUVBQ/iMwe+FmB9RCcNB4MZcHryYyYbG6jOTVIGPC2fE8
         bJPMyQkrnHVo6t0TJs5MgfzFXr+hPZNebR0WW+ng7fLIN/nXn+LW/QPiXiYWE9TGdt48
         YeHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qITsocAWLN8bT1sHDNPLgwiNr7RzGWLoi4lIHreMROs=;
        b=cFGtY45wTLOdoxA/NukQ5kZRL9/fE9fCAA0kGG+kYR4GuTEV3lYc9FtUo1nukGGvMG
         L9YoLHFZQq9CI3hUZHe5sAlj7ovhpHSL5bszgXwp1grymqThG3Vr4IwCeyo8WvIjsf34
         5vr3RJesp0wTKaAB1CXfEKytiirF9LX/R6IOE+B4vsxRs18yV3DLVPmLyWL+wM4CFlL3
         m8tiEUspBaj4QygeqCmWBUfD8tFGxHknzN8RNQMP6gQCSPzmNNFNcoVKExIijedjc8rX
         VRgDH9SzCVjl4/64nS5oW1RRA7+viersydwFMIexKLDISm0C3fCDX0O+rsfx0tt0Y6ho
         gmLQ==
X-Gm-Message-State: AOAM530Yjctvr8ui+X5T4qkmTFCM/+bIYuVm8qpHNWsBjWxWhCIaWqN9
        KD0sk73kqoQocCN8xlTJI3C7rg==
X-Google-Smtp-Source: ABdhPJxiRKSa3z5x4P0l57EODaGxlniYO6LQ9w1yRsyk12zE0XD7misfaNH5+GnywdPG0j428jvDjA==
X-Received: by 2002:a05:6402:34c1:b0:419:585a:f383 with SMTP id w1-20020a05640234c100b00419585af383mr13093082edc.65.1648215431828;
        Fri, 25 Mar 2022 06:37:11 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id e9-20020a170906c00900b006d4a45869basm2327012ejz.199.2022.03.25.06.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 06:37:11 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH 2/2] arm64: dts: arm: add corstone1000 device tree
Date:   Fri, 25 Mar 2022 13:36:55 +0000
Message-Id: <20220325133655.4177977-3-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220325133655.4177977-1-rui.silva@linaro.org>
References: <20220325133655.4177977-1-rui.silva@linaro.org>
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
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  31 ++++
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  38 +++++
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 151 ++++++++++++++++++
 4 files changed, 221 insertions(+)
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
index 000000000000..8f6ce94b4d5a
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: BSD-3-Clause
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
+	ethernet: eth@4010000 {
+		compatible = "smsc,lan91c111";
+		reg = <0x40100000 0x10000>;
+		phy-mode = "mii";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 116 (GIC_CPU_MASK_SIMPLE(4) |
+			      IRQ_TYPE_LEVEL_HIGH)>;
+		reg-io-width = <2>;
+		smsc,irq-push-pull;
+	};
+
+};
+
+&refclk {
+	clock-frequency = <50000000>;
+};
diff --git a/arch/arm64/boot/dts/arm/corstone1000-mps3.dts b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
new file mode 100644
index 000000000000..922253f0af07
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: BSD-3-Clause
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
+	ethernet: eth@4010000 {
+		compatible = "smsc,lan9220", "smsc,lan9115";
+		reg = <0x40100000 0x10000>;
+		phy-mode = "mii";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+		reg-io-width = <2>;
+		smsc,irq-push-pull;
+	};
+
+	usb: usb@40200000 {
+		compatible = "nxp,usb-isp1763";
+		reg = <0x40200000 0x100000>;
+		interrupts-parent = <&gic>;
+		interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+		bus-width = <16>;
+		dr_mode = "host";
+	};
+};
+
+&refclk {
+	clock-frequency = <50000000>;
+};
diff --git a/arch/arm64/boot/dts/arm/corstone1000.dtsi b/arch/arm64/boot/dts/arm/corstone1000.dtsi
new file mode 100644
index 000000000000..eb423af84e9f
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000.dtsi
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: BSD-3-Clause
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
+	chosen {
+		stdout-path = "/uart@1a510000:115200n8";
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,armv8";
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
+		interrupts = <1 9 0xf08>;
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
+	uartclk: uartclk {
+		/* UART clock - 50MHz */
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <50000000>;
+		clock-output-names = "uartclk";
+	};
+
+	serial0: uart@1a510000 {
+		compatible = "arm,pl011", "arm,primecell";
+		reg = <0x1a510000 0x1000>;
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&uartclk>, <&refclk100mhz>;
+		clock-names = "uartclk", "apb_pclk";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts =	<GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
+				 IRQ_TYPE_LEVEL_LOW)>,
+				<GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
+				 IRQ_TYPE_LEVEL_LOW)>,
+				<GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
+				 IRQ_TYPE_LEVEL_LOW)>,
+				<GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
+				 IRQ_TYPE_LEVEL_LOW)>;
+	};
+
+	refclk: refclk@1a220000 {
+		compatible = "arm,armv7-timer-mem";
+		reg = <0x1a220000  0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		frame@1a230000 {
+			frame-number = <0>;
+			interrupts = <GIC_SPI 2 (GIC_CPU_MASK_SIMPLE(4) |
+				      IRQ_TYPE_LEVEL_HIGH)>;
+			reg = <0x1a230000 0x1000>;
+		};
+	};
+
+	mbox_es0mhu0: mhu@1b000000 {
+		compatible = "arm,mhuv2","arm,primecell";
+		reg = <0x1b000000 0x1000>,
+		      <0x1b010000 0x1000>;
+		clocks = <&refclk100mhz>;
+		clock-names = "apb_pclk";
+		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "mhu_rx";
+		#mbox-cells = <1>;
+		mbox-name = "arm-es0-mhu0";
+	};
+
+	mbox_es0mhu1: mhu@1b020000 {
+		compatible = "arm,mhuv2","arm,primecell";
+		reg = <0x1b020000 0x1000>,
+		      <0x1b030000 0x1000>;
+		clocks = <&refclk100mhz>;
+		clock-names = "apb_pclk";
+		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "mhu_rx";
+		#mbox-cells = <1>;
+		mbox-name = "arm-es0-mhu1";
+	};
+
+	mbox_semhu1: mhu@1b820000 {
+		compatible = "arm,mhuv2","arm,primecell";
+		reg = <0x1b820000 0x1000>,
+		      <0x1b830000 0x1000>;
+		clocks = <&refclk100mhz>;
+		clock-names = "apb_pclk";
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "mhu_rx";
+		#mbox-cells = <1>;
+		mbox-name = "arm-se-mhu1";
+	};
+
+	psci {
+		compatible = "arm,psci-1.0", "arm,psci-0.2";
+		method = "smc";
+	};
+};
-- 
2.35.1

