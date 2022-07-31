Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9086D58603D
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:48:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237125AbiGaRsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237383AbiGaRsj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:48:39 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4091EE0D3
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:38 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id h28so2306734pfq.11
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=8jp0qcJgRriWTJBoZlC10kl7bAwRKtwMojFy5z6cks0=;
        b=G55ErtcSjaza4WJPNLi43MocEM9yR3XE4sF2kiInbpRhhl6DdIVVUzccbFQnzO3IRl
         DuErra7Yf7YoOiPt+8caBH4t57MiY0kBjXP5XQclyhukRy94I8dg6Db1iW8wb1bmIIFo
         VFI4+mnZX/HZhlU6FRcbUgomF389nKIiZ9ldeIcO/til5BrWOOTt1qpopUzzlLnRiaPN
         v8Y5BqQYI33Ovzx3ZsxxJU09P+dntZqL+U9cckZy7kVz2EXmttWqrHIQ7/Wy7hIqEY8M
         3e/HR62dyYAjIp3nag9mUMCQIgR+Fi6P9KyX8+SekS1n2D3RAHKgwo0VWEg3usvFHtOQ
         NNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=8jp0qcJgRriWTJBoZlC10kl7bAwRKtwMojFy5z6cks0=;
        b=wRTj4m4Q/bVelrHA5ze2a0DykvijdN/2LvHCgF9TTe5MYyNd2Y7RPMnE2GW0LdzwPn
         lWuAVuAbEyyopZzHGok4mqfH7BQMfOWwhXmAMTByFOLqqDSGYYopKkfoNeBPlya0XYQk
         FTt0j+ZSWWk2rE8WkH3vQ3nVK/Skf1llih2LgKjNswTvIeS9ynrs8L7bPUNiTcKQpAk4
         OP1e5gXD0bcJl8KJsArGYMZPDo7jmA37DUiOj27oA1GoSzF4clbVoalCosKVT0+mbXPf
         jzgJUogNZuBD5J9AXHhooBWZsiKdrtcfGRz0NH5HCNITb2qmpJjOwOO43BuG8n3vn5GA
         EbKg==
X-Gm-Message-State: ACgBeo3/SXtjSs6caFphY35rFU/H/Y2uMSvI9wTqzJJgO73p147tDLyy
        CaE/yuKz5FNktvNyHp5hqI6sLtP7LdIVifJTJzVELw==
X-Google-Smtp-Source: AA6agR4L9wQ7TsaArQCOiUp+aMYYU8dDHIxNhaJDNvPA8H19GudQAm+PhzF4ilN4ITAbuv5PgZ5bTA==
X-Received: by 2002:aa7:8317:0:b0:52d:640e:322e with SMTP id bk23-20020aa78317000000b0052d640e322emr2064788pfb.4.1659289717701;
        Sun, 31 Jul 2022 10:48:37 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:37 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v2 16/20] ARM: dts: rockchip: Add Rockchip RV1126 SoC
Date:   Sun, 31 Jul 2022 23:17:22 +0530
Message-Id: <20220731174726.72631-17-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
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
Changes for v2:
- split pinctrl in separate patch

 arch/arm/boot/dts/rv1126.dtsi | 500 ++++++++++++++++++++++++++++++++++
 1 file changed, 500 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
new file mode 100644
index 000000000000..8340734b9a18
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126.dtsi
@@ -0,0 +1,500 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+#include <dt-bindings/clock/rv1126-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/power/rv1126-power.h>
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
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
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
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu1: cpu@f01 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf01>;
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu2: cpu@f02 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf02>;
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu3: cpu@f03 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf03>;
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
+		clocks = <&pmucru CLK_I2C0>, <&pmucru PCLK_I2C0>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c2: i2c@ff400000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff400000 0x1000>;
+		interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,grf = <&pmugrf>;
+		clocks = <&pmucru CLK_I2C2>, <&pmucru PCLK_I2C2>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c2_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
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
+	i2c1: i2c@ff510000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff510000 0x1000>;
+		interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C1>, <&cru PCLK_I2C1>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c1_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c3: i2c@ff520000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff520000 0x1000>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C3>, <&cru PCLK_I2C3>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c3m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c4: i2c@ff530000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff530000 0x1000>;
+		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C4>, <&cru PCLK_I2C4>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c4m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c5: i2c@ff540000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff540000 0x1000>;
+		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C5>, <&cru PCLK_I2C5>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c5m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
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
+		compatible = "rockchip,rk3399-saradc";
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
+		compatible = "rockchip,rk3288-timer";
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
+		gpio0: gpio0@ff460000 {
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
+		gpio1: gpio1@ff620000 {
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
+		gpio2: gpio2@ff630000 {
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
+		gpio3: gpio3@ff640000 {
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
+		gpio4: gpio4@ff650000 {
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

