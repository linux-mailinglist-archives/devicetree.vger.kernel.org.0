Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBE2A703160
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 17:19:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242323AbjEOPTk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 11:19:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242331AbjEOPTi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 11:19:38 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95A4F213C
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:19:32 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2ac826a1572so133249741fa.0
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684163971; x=1686755971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p5cawQFx21oSuL9s9CaPNJf/01T422s9CG/c8nYj9Vc=;
        b=RlCzR1bbz1y9M93FIrrZvV+8I22RHBb16aXWIZHDp5JVl7MM4hv5tJXXZHnDmNdVvq
         cORs5GzrzwNcTr7M/UoRvEI8UCzxJ5uUoTsnWfc75Ac+cWwjYM+T7HEHqvS0XBRuR0nH
         hK/0cotE2qCe0USfd+RBvOz0924N4fvrbTdPN0wvJLXXCjzuNi58Ov6ZJ0tgP7mTb6HV
         7vP2dFLOUVUHvSHayAwSAE3AX/lv4uzgarKO5qyoRrpeeAThms5MJTWOJV5i9rDrWh97
         3cslQt+2/tQ7YCWfl+SqQkA2Dm6zBP3x9DCw4myisNgO+e86XMTCep4ahrp77TjlM1zP
         77ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684163971; x=1686755971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p5cawQFx21oSuL9s9CaPNJf/01T422s9CG/c8nYj9Vc=;
        b=Q0jh6XibEl++nd9rGZLULvFINFAVJ9ooNT2882EBo1MOi+6DkQHUTFtDHy4pb+T4A+
         icScTXGDWaBL+8KwBpZ5pziYgIyvPTMJSFlCtxo4kaDk1FEKbCLBywiQ/jEOYnvFhDNb
         UZb24WMGbDBNyOTRnpWu/USsIzHvze1Uktvyo3Yn1U6M0WFyDDmDwjE46bR4gKOBB7Xl
         qrC7Gl9k4HUSlqlze8eMWKGwOz3NOlfXDN6JmwSzpyaBrpDHaYsy8BOqt7utGLnGN1GE
         EQq291aZYLvt7qDUfg5hS9Xl8CnUDCPq1XqqiSVuOr3KeE0sxw54lgG6rFvO4lmQ8Uug
         COXw==
X-Gm-Message-State: AC+VfDw/yWjROJ0o3BGeJecG/9AjeyPpRlNpmWqFirrIJk0LJnvtJ+ct
        ZPks/fumwqn/6BfZG75bmR3XAAD90CM=
X-Google-Smtp-Source: ACHHUZ6khTiTl0cpkrKJt+uTcU2OxOxTF+eMWkqlMGN3GoY85C4vpJkPuuT8C18c103M5gJ+07+8VA==
X-Received: by 2002:a2e:854d:0:b0:2ad:988e:7f8e with SMTP id u13-20020a2e854d000000b002ad988e7f8emr7994096ljj.51.1684163970370;
        Mon, 15 May 2023 08:19:30 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id u10-20020a2e2e0a000000b002ad9df0586bsm2604170lju.132.2023.05.15.08.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 08:19:29 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] ARM: dts: BCM5301X: Relicense Hauke's code to the GPL 2.0+ / MIT
Date:   Mon, 15 May 2023 17:19:20 +0200
Message-Id: <20230515151921.25021-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Move code added by Hauke to the bcm-ns.dtsi which uses dual licensing.
That syncs more Northstar code to be based on the same licensing schema.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
---
 arch/arm/boot/dts/bcm-ns.dtsi   | 90 +++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm5301x.dtsi | 85 -------------------------------
 2 files changed, 90 insertions(+), 85 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
index cc977bbc142b..58c30e3a142f 100644
--- a/arch/arm/boot/dts/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/bcm-ns.dtsi
@@ -1,4 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2013-2014 Hauke Mehrtens <hauke@hauke-m.de>
+ */
 
 #include <dt-bindings/clock/bcm-nsp.h>
 #include <dt-bindings/gpio/gpio.h>
@@ -7,6 +10,81 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
 / {
+	interrupt-parent = <&gic>;
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	chipcommon-a-bus@18000000 {
+		compatible = "simple-bus";
+		ranges = <0x00000000 0x18000000 0x00001000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		uart0: serial@300 {
+			compatible = "ns16550";
+			reg = <0x0300 0x100>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&iprocslow>;
+			status = "disabled";
+		};
+
+		uart1: serial@400 {
+			compatible = "ns16550";
+			reg = <0x0400 0x100>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&iprocslow>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinmux_uart1>;
+			status = "disabled";
+		};
+	};
+
+	mpcore-bus@19000000 {
+		compatible = "simple-bus";
+		ranges = <0x00000000 0x19000000 0x00023000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		scu@20000 {
+			compatible = "arm,cortex-a9-scu";
+			reg = <0x20000 0x100>;
+		};
+
+		timer@20200 {
+			compatible = "arm,cortex-a9-global-timer";
+			reg = <0x20200 0x100>;
+			interrupts = <GIC_PPI 11 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&periph_clk>;
+		};
+
+		timer@20600 {
+			compatible = "arm,cortex-a9-twd-timer";
+			reg = <0x20600 0x20>;
+			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) |
+						  IRQ_TYPE_EDGE_RISING)>;
+			clocks = <&periph_clk>;
+		};
+
+		gic: interrupt-controller@21000 {
+			compatible = "arm,cortex-a9-gic";
+			#interrupt-cells = <3>;
+			#address-cells = <0>;
+			interrupt-controller;
+			reg = <0x21000 0x1000>,
+			      <0x20100 0x100>;
+		};
+
+		L2: cache-controller@22000 {
+			compatible = "arm,pl310-cache";
+			reg = <0x22000 0x1000>;
+			cache-unified;
+			arm,shared-override;
+			prefetch-data = <1>;
+			prefetch-instr = <1>;
+			cache-level = <2>;
+		};
+	};
+
 	axi@18000000 {
 		compatible = "brcm,bus-axi";
 		reg = <0x18000000 0x1000>;
@@ -216,6 +294,18 @@ thermal: thermal@2c0 {
 		};
 	};
 
+	nand_controller: nand-controller@18028000 {
+		compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1", "brcm,brcmnand";
+		reg = <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028f00 0x20>;
+		reg-names = "nand", "iproc-idm", "iproc-ext";
+		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		brcm,nand-has-wp;
+	};
+
 	thermal-zones {
 		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <0>;
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index bc36edc24510..d6c31ead0398 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -11,41 +11,7 @@
 #include "bcm-ns.dtsi"
 
 / {
-	#address-cells = <1>;
-	#size-cells = <1>;
-	interrupt-parent = <&gic>;
-
-	chipcommon-a-bus@18000000 {
-		compatible = "simple-bus";
-		ranges = <0x00000000 0x18000000 0x00001000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		uart0: serial@300 {
-			compatible = "ns16550";
-			reg = <0x0300 0x100>;
-			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&iprocslow>;
-			status = "disabled";
-		};
-
-		uart1: serial@400 {
-			compatible = "ns16550";
-			reg = <0x0400 0x100>;
-			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&iprocslow>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&pinmux_uart1>;
-			status = "disabled";
-		};
-	};
-
 	mpcore-bus@19000000 {
-		compatible = "simple-bus";
-		ranges = <0x00000000 0x19000000 0x00023000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-
 		a9pll: arm_clk@0 {
 			#clock-cells = <0>;
 			compatible = "brcm,nsp-armpll";
@@ -53,26 +19,6 @@ a9pll: arm_clk@0 {
 			reg = <0x00000 0x1000>;
 		};
 
-		scu@20000 {
-			compatible = "arm,cortex-a9-scu";
-			reg = <0x20000 0x100>;
-		};
-
-		timer@20200 {
-			compatible = "arm,cortex-a9-global-timer";
-			reg = <0x20200 0x100>;
-			interrupts = <GIC_PPI 11 IRQ_TYPE_EDGE_RISING>;
-			clocks = <&periph_clk>;
-		};
-
-		timer@20600 {
-			compatible = "arm,cortex-a9-twd-timer";
-			reg = <0x20600 0x20>;
-			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) |
-						  IRQ_TYPE_EDGE_RISING)>;
-			clocks = <&periph_clk>;
-		};
-
 		watchdog@20620 {
 			compatible = "arm,cortex-a9-twd-wdt";
 			reg = <0x20620 0x20>;
@@ -80,25 +26,6 @@ watchdog@20620 {
 						  IRQ_TYPE_EDGE_RISING)>;
 			clocks = <&periph_clk>;
 		};
-
-		gic: interrupt-controller@21000 {
-			compatible = "arm,cortex-a9-gic";
-			#interrupt-cells = <3>;
-			#address-cells = <0>;
-			interrupt-controller;
-			reg = <0x21000 0x1000>,
-			      <0x20100 0x100>;
-		};
-
-		L2: cache-controller@22000 {
-			compatible = "arm,pl310-cache";
-			reg = <0x22000 0x1000>;
-			cache-unified;
-			arm,shared-override;
-			prefetch-data = <1>;
-			prefetch-instr = <1>;
-			cache-level = <2>;
-		};
 	};
 
 	pmu {
@@ -301,18 +228,6 @@ genpll: clock-controller@140 {
 		};
 	};
 
-	nand_controller: nand-controller@18028000 {
-		compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1", "brcm,brcmnand";
-		reg = <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028f00 0x20>;
-		reg-names = "nand", "iproc-idm", "iproc-ext";
-		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
-
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		brcm,nand-has-wp;
-	};
-
 	spi@18029200 {
 		compatible = "brcm,spi-nsp-qspi", "brcm,spi-bcm-qspi";
 		reg = <0x18029200 0x184>,
-- 
2.35.3

