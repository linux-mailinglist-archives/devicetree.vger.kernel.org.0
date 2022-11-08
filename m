Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7360A620827
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 05:15:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233338AbiKHEPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 23:15:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233264AbiKHEPH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 23:15:07 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 851021A047
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 20:15:05 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id h14so12640262pjv.4
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 20:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWS8BoQ/EcusET/w8/XY+cVCPURdPMxaalQCp1TwR34=;
        b=GFVIVhwx+HPxoKs4XS+oxbWCYpUjBA0yQEAOwYNxY4vGYg8jtJcKqGnKdQ4m9uxfub
         MT79y3MYyg+taxqfjoE+wmM26DR0/O/NnH+tVxulh2ldy8ziFlzXeW1bBj+Y5WGpcj4u
         7WduENY7/VyowYcRr0lxk097PTEv8LP9C/Uazx3kvdd39WtUEzJyhRDOz/PiIT/X5fBN
         fWYotLx63CDIJDRx+EOgTexDxRRfeJmYzigg3hnDAIh0iWT8Pmr2oIIQ2nXY9gYP538b
         oVfEwJRjzWupWtuhKYdR5oJa3ZRU2bx/JlcYjiswjMjuJiNZulOXkWkLAq+M9TCw2y6y
         2kJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWS8BoQ/EcusET/w8/XY+cVCPURdPMxaalQCp1TwR34=;
        b=Ue5LKC4vWlLh+8EFs8J59yr/pTuVIm8gyeTdh8ua0xN3e6kCqKovHZbVwUSzfl9GjA
         48Jn0XG61Y6k/HP7rKtpKngeWzJTa4LUnvMyylra0SwnmFt1saTF1s6ToWwVHWF683YK
         vK/H+7RZ54VBxoPJAVjD1F7jMcQxSxw+H88bqhlz+lPsqgz0llYykXgy+cElC6kHQl83
         CJWGV1vWuXC1fMx88LaBR6o4qZT5nZRm+011sri8dWL6py2/QaFHIF3kqJxPpIhu+Yj7
         eB4+KliYpPtzWuBXl3KjttwDrpZDofLlHpAfDUb1SGTNLpc4eWiNE509iltnDGy8sp7N
         cWsA==
X-Gm-Message-State: ACrzQf0InGsEttgas7qlgrPuIbG0I3KVHlw2f50IuoiWsczxq3nTPrDu
        kjMBZF+u0zSqmQ+1YL8UF0wcdQT2eq57aQ+y/cU=
X-Google-Smtp-Source: AMsMyM4fLF3/tKpJGpqhGOtbELjfZt8BUqUWtT3D8jAZV39+IbJtPKxf/oSEpIZx6OALYOG92yY3Cg==
X-Received: by 2002:a17:90b:4a0d:b0:213:587b:206a with SMTP id kk13-20020a17090b4a0d00b00213587b206amr71528646pjb.195.1667880905010;
        Mon, 07 Nov 2022 20:15:05 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:15:04 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
Date:   Tue,  8 Nov 2022 09:43:56 +0530
Message-Id: <20221108041400.157052-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RV1126 is a high-performance vision processor SoC for IPC/CVR,
especially for AI related application.

It is based on quad-core ARM Cortex-A7 32-bit core which integrates
NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
hybrid operation and computing power is up to 2.0TOPs.

This patch add basic core dtsi support.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- fix dtbs_check
- rearrange nodes
- remove Edegble in license text
Changes for v6:
- add psci node
Changes for v5:
- none
Changes for v4:
- update i2c0
- rebase on -next
Changes for v3:
- update cru and power file names
Changes for v2:
- split pinctrl in separate patch

 arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
 1 file changed, 438 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
new file mode 100644
index 000000000000..a485420551f5
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126.dtsi
@@ -0,0 +1,438 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+ */
+
+#include <dt-bindings/clock/rockchip,rv1126-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/power/rockchip,rv1126-power.h>
+#include <dt-bindings/soc/rockchip,boot-mode.h>
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	compatible = "rockchip,rv1126";
+
+	interrupt-parent = <&gic>;
+
+	aliases {
+		i2c0 = &i2c0;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@f00 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf00>;
+			enable-method = "psci";
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu1: cpu@f01 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf01>;
+			enable-method = "psci";
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu2: cpu@f02 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf02>;
+			enable-method = "psci";
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu3: cpu@f03 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf03>;
+			enable-method = "psci";
+			clocks = <&cru ARMCLK>;
+		};
+	};
+
+	arm-pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+		clock-frequency = <24000000>;
+	};
+
+	xin24m: oscillator {
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "xin24m";
+		#clock-cells = <0>;
+	};
+
+	grf: syscon@fe000000 {
+		compatible = "rockchip,rv1126-grf", "syscon", "simple-mfd";
+		reg = <0xfe000000 0x20000>;
+	};
+
+	pmugrf: syscon@fe020000 {
+		compatible = "rockchip,rv1126-pmugrf", "syscon", "simple-mfd";
+		reg = <0xfe020000 0x1000>;
+
+		pmu_io_domains: io-domains {
+			compatible = "rockchip,rv1126-pmu-io-voltage-domain";
+			status = "disabled";
+		};
+	};
+
+	qos_emmc: qos@fe860000 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe860000 0x20>;
+	};
+
+	qos_nandc: qos@fe860080 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe860080 0x20>;
+	};
+
+	qos_sfc: qos@fe860200 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe860200 0x20>;
+	};
+
+	qos_sdio: qos@fe86c000 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe86c000 0x20>;
+	};
+
+	gic: interrupt-controller@feff0000 {
+		compatible = "arm,gic-400";
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		#address-cells = <0>;
+
+		reg = <0xfeff1000 0x1000>,
+		      <0xfeff2000 0x2000>,
+		      <0xfeff4000 0x2000>,
+		      <0xfeff6000 0x2000>;
+		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+	};
+
+	pmu: power-management@ff3e0000 {
+		compatible = "rockchip,rv1126-pmu", "syscon", "simple-mfd";
+		reg = <0xff3e0000 0x1000>;
+
+		power: power-controller {
+			compatible = "rockchip,rv1126-power-controller";
+			#power-domain-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			power-domain@RV1126_PD_NVM {
+				reg = <RV1126_PD_NVM>;
+				clocks = <&cru HCLK_EMMC>,
+					 <&cru CLK_EMMC>,
+					 <&cru HCLK_NANDC>,
+					 <&cru CLK_NANDC>,
+					 <&cru HCLK_SFC>,
+					 <&cru HCLK_SFCXIP>,
+					 <&cru SCLK_SFC>;
+				pm_qos = <&qos_emmc>,
+					 <&qos_nandc>,
+					 <&qos_sfc>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RV1126_PD_SDIO {
+				reg = <RV1126_PD_SDIO>;
+				clocks = <&cru HCLK_SDIO>,
+					 <&cru CLK_SDIO>;
+				pm_qos = <&qos_sdio>;
+				#power-domain-cells = <0>;
+			};
+		};
+	};
+
+	i2c0: i2c@ff3f0000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff3f0000 0x1000>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,grf = <&pmugrf>;
+		clocks = <&pmucru CLK_I2C0>, <&pmucru PCLK_I2C0>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	uart1: serial@ff410000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff410000 0x100>;
+		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&pmucru SCLK_UART1>, <&pmucru PCLK_UART1>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 7>, <&dmac 6>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart1m0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	pmucru: clock-controller@ff480000 {
+		compatible = "rockchip,rv1126-pmucru";
+		reg = <0xff480000 0x1000>;
+		rockchip,grf = <&grf>;
+		#clock-cells = <1>;
+		#reset-cells = <1>;
+	};
+
+	cru: clock-controller@ff490000 {
+		compatible = "rockchip,rv1126-cru";
+		reg = <0xff490000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
+		rockchip,grf = <&grf>;
+		#clock-cells = <1>;
+		#reset-cells = <1>;
+	};
+
+	dmac: dma-controller@ff4e0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0xff4e0000 0x4000>;
+		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC>;
+		clock-names = "apb_pclk";
+	};
+
+	uart0: serial@ff560000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff560000 0x100>;
+		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 5>, <&dmac 4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	uart2: serial@ff570000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff570000 0x100>;
+		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 9>, <&dmac 8>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart2m1_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	uart3: serial@ff580000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff580000 0x100>;
+		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 11>, <&dmac 10>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart3m0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	uart4: serial@ff590000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff590000 0x100>;
+		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 13>, <&dmac 12>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart4m0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	uart5: serial@ff5a0000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff5a0000 0x100>;
+		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
+		dmas = <&dmac 15>, <&dmac 14>;
+		clock-names = "baudclk", "apb_pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart5m0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	saradc: saradc@ff5e0000 {
+		compatible = "rockchip,rv1126-saradc", "rockchip,rk3399-saradc";
+		reg = <0xff5e0000 0x100>;
+		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		#io-channel-cells = <1>;
+		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
+		clock-names = "saradc", "apb_pclk";
+		resets = <&cru SRST_SARADC_P>;
+		reset-names = "saradc-apb";
+		status = "disabled";
+	};
+
+	timer: timer@ff660000 {
+		compatible = "rockchip,rv1126-timer", "rockchip,rk3288-timer";
+		reg = <0xff660000 0x20>;
+		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_TIMER>, <&cru CLK_TIMER0>;
+		clock-names = "pclk", "timer";
+	};
+
+	emmc: mmc@ffc50000 {
+		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0xffc50000 0x4000>;
+		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_EMMC>, <&cru CLK_EMMC>,
+			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		power-domains = <&power RV1126_PD_NVM>;
+		status = "disabled";
+	};
+
+	sdmmc: mmc@ffc60000 {
+		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0xffc60000 0x4000>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDMMC>, <&cru CLK_SDMMC>,
+			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		status = "disabled";
+	};
+
+	sdio: mmc@ffc70000 {
+		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0xffc70000 0x4000>;
+		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDIO>, <&cru CLK_SDIO>,
+			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		power-domains = <&power RV1126_PD_SDIO>;
+		status = "disabled";
+	};
+
+	pinctrl: pinctrl {
+		compatible = "rockchip,rv1126-pinctrl";
+		rockchip,grf = <&grf>;
+		rockchip,pmu = <&pmugrf>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		gpio0: gpio@ff460000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff460000 0x100>;
+			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio1: gpio@ff620000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff620000 0x100>;
+			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio2: gpio@ff630000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff630000 0x100>;
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio3: gpio@ff640000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff640000 0x100>;
+			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio4: gpio@ff650000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff650000 0x100>;
+			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
+
+#include "rv1126-pinctrl.dtsi"
-- 
2.25.1

