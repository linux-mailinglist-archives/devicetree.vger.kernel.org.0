Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D39402143E
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 09:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727457AbfEQH3i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 May 2019 03:29:38 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:41174 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726871AbfEQH3i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 May 2019 03:29:38 -0400
Received: by mail-wr1-f66.google.com with SMTP id g12so5659009wro.8
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 00:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+oz0ExQmfBYv8R4mlYrUHTuO1a02VEe96wQN1rbY0ZQ=;
        b=Dq8ZucWGNbyUuXRyomyu3MAXrzZIHT7vs02iARkETaIW+aA9YpU6/jWpD7rcz61q48
         uZ02A+by+tLqB3MgL5JQzFNyQxPU2mvCQ+RMkHayEy6TyFnQjAddPCUcj6BDcGHd1iZz
         hPlWPzlpgPJC8cVVii8DNbD2/pyW57WvpxFHYCNThZqJDaErWL6EoKOO9R8ErhguMSFL
         KaQpEMkbqUN4LnZ9A0LEciel4GabIv3wDrzOny9Bbp/0Jq/FZJuLPspEdcKK/0lLu8FN
         WYkDrF9+3SHFQW7rmgrGQ3KbY+BApuA38yBkeh5o1qbhrjoKRmVer2zpu/0SfYwQw5Fc
         PIiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+oz0ExQmfBYv8R4mlYrUHTuO1a02VEe96wQN1rbY0ZQ=;
        b=pwCmVATrD5PsDXlp1lhE1BJZm44JtYGpqPqh+6lB6RW/0trH+5QQrrO0ULDulw9rzt
         Aa4TuJdXmeU2R0bnUyberP8z3XYv5DqbI1JgOWOugsZUvz96ibBbETYo6RD5FAMqjshn
         mT/vu/f2UZcw/zkaGb6MTB5f8IMLMN3ysb5qdj3qh+CIxqeN+KO23BQuiZszx/gluF7m
         PGjpugbzayTy1f6g2B+hkpXtN+AOFPJaWLFhXeSXD/fjfAgGaGoS9gJoqpOiXqu/eMqL
         KY0KG55gRh+hgllN0He9rU/mqecXLf/97dLBavCFv20raXPbgFqsfg7HhalPLtthxHE4
         svDA==
X-Gm-Message-State: APjAAAVlWfhFlsij3BULRKiPPcIEoWEiYmz1ad67ylunAWmhR6DAAAzy
        5zj2B2Y5WTHJ1DtUJ+fwoY8=
X-Google-Smtp-Source: APXvYqyyOguQeBOfL9T/TH7hYA7iLBdBPjyJ3SjvAoNt+kxap2frCQpu/Jwqx3yZ0U96dcdZqZnphw==
X-Received: by 2002:adf:e908:: with SMTP id f8mr1970653wrm.124.1558078175692;
        Fri, 17 May 2019 00:29:35 -0700 (PDT)
Received: from localhost ([193.47.161.132])
        by smtp.gmail.com with ESMTPSA id j190sm9102752wmb.19.2019.05.17.00.29.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 17 May 2019 00:29:35 -0700 (PDT)
From:   Oliver Graute <oliver.graute@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, l.stach@pengutronix.de, oliver.graute@gmail.com,
        Oliver Graute <oliver.graute@kococonnector.com>
Subject: [PATCH 4/5] arm64: dts: add basic DTS for i.MX8QM
Date:   Fri, 17 May 2019 09:18:12 +0200
Message-Id: <20190517071813.26674-4-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517071813.26674-1-oliver.graute@gmail.com>
References: <20190517071813.26674-1-oliver.graute@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Oliver Graute <oliver.graute@kococonnector.com>

added dtsi file for imx8 Quad Max CPU

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 153 ++++++++++++++++++++++
 1 file changed, 153 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
new file mode 100644
index 000000000000..9e0ad3ae3745
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -0,0 +1,153 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP
+ * Copyright 2019 Oliver Graute <oliver.graute@kococonnector.com>
+ */
+
+#include <dt-bindings/clock/imx8-clock.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pinctrl/pads-imx8qm.h>
+#include "fsl-imx8qm-device.dtsi"
+
+/ {
+	compatible = "fsl,imx8qm";
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc3;
+		serial0 = &lpuart0;
+	};
+
+	cpus {
+		A53_0 {
+			operating-points = <
+				1200000	   0
+				1104000	   0
+				900000	   0
+				600000	   0
+			>;
+			clocks = <&clk IMX8QM_A53_DIV>;
+			clock-latency = <61036>;
+			#cooling-cells = <2>;
+		};
+
+		A72_0 {
+			operating-points = <
+				1596000	   0
+				1296000	   0
+				1056000	   0
+				600000     0
+			>;
+			clocks = <&clk IMX8QM_A72_DIV>;
+			clock-latency = <61036>;
+			#cooling-cells = <2>;
+		};
+
+	};
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x00000000 0x80000000 0 0x40000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		decoder_boot: decoder_boot@0x84000000 {
+			no-map;
+			reg = <0 0x84000000 0 0x2000000>;
+		};
+		encoder_boot: encoder_boot@0x86000000 {
+			no-map;
+			reg = <0 0x86000000 0 0x400000>;
+		};
+		rpmsg_reserved: rpmsg@0x90000000 {
+			no-map;
+			reg = <0 0x90000000 0 0x400000>;
+		};
+
+		decoder_rpc: decoder_rpc@0x90400000 {
+			no-map;
+			reg = <0 0x90400000 0 0x200000>;
+		};
+		encoder_rpc: encoder_rpc@0x90600000 {
+			no-map;
+			reg = <0 0x90600000 0 0x200000>;
+		};
+		dsp_reserved: dsp@0x92400000 {
+			no-map;
+			reg = <0 0x92400000 0 0x2000000>;
+		};
+
+		/* global autoconfigured region for contiguous allocations */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0 0x3c000000>;
+			alloc-ranges = <0 0x96000000 0 0x3c000000>;
+			linux,cma-default;
+		};
+
+	};
+
+	gic: interrupt-controller@51a00000 {
+		compatible = "arm,gic-v3";
+		reg = <0x0 0x51a00000 0 0x10000>, /* GIC Dist */
+		      <0x0 0x51b00000 0 0xC0000>, /* GICR */
+		      <0x0 0x52000000 0 0x2000>,  /* GICC */
+		      <0x0 0x52010000 0 0x1000>,  /* GICH */
+		      <0x0 0x52020000 0 0x20000>; /* GICV */
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		interrupts = <GIC_PPI 9
+			(GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
+		interrupt-parent = <&gic>;
+	};
+
+	clk: clk {
+		compatible = "fsl,imx8qm-clk";
+		#clock-cells = <1>;
+	};
+
+	iomuxc: iomuxc {
+		compatible = "fsl,imx8qm-iomuxc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+		clock-frequency = <8000000>;
+		interrupt-parent = <&gic>;
+	};
+
+	smmu: iommu@51400000 {
+		compatible = "arm,mmu-500";
+		interrupt-parent = <&gic>;
+		reg = <0 0x51400000 0 0x40000>;
+		#global-interrupts = <1>;
+		#iommu-cells = <2>;
+		interrupts = <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>;
+	};
+
+};
-- 
2.17.1

