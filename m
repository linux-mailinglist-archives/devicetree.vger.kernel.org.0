Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 408686F57C0
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 14:16:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbjECMQz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 08:16:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbjECMQq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 08:16:46 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4F1B59F9
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 05:16:43 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f1394cb0d1so645880e87.3
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 05:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683116202; x=1685708202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pu0vVxn9b3NA6G1OBOyBROf5q7TIXcM5lics/+8ewLM=;
        b=JQNwCdPzG4zu1i6isX6zxiXtzIoLWphOu8QFsYMCt6DbkaokR3WRjQUH9LRmrCkdoW
         9Qe5sQV2jFCvuEwFYXNjGhVLa4rNqYtZFy6HtDqYCrl1tTHiFBS8B1rQ/V7Da2ElvZPo
         eNV9xkcR3dQL/zNT6/YFGHHmZwL1JYtQ3NLFRKdmL+NwjneOaTzwrRo+6ZqAazn8G86V
         OMvKW+4h/KriExinWLzfiKks4WroHhy9yOY3pv7PW9JM2QploJ61qGvkaoE5A7YCBG7B
         yFusCouXAYwlgyfR/JWdbWFSls7o+cM8p1acnidbmjiGmAUASAloPsiIecnk+uUKP7lX
         KTFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683116202; x=1685708202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pu0vVxn9b3NA6G1OBOyBROf5q7TIXcM5lics/+8ewLM=;
        b=G702dFK7lcmbLo9p46dsXXqUO69QtV2YF8jXuuiXu02mK/WcHDP1jFA62Pzq9LxXeC
         5ucoDh+a2stE+18gTcpZjSOn523H1j6Pe315En8G706lpT4mpdbDr/vx0OFdirk/LREQ
         mYVaO792Jz2b1O5gAii3ZQrQkreA3o/6lEnG6tKraBx9rxiQTowYj8Bd+tFIqdNdr4Xa
         meihFZkeQSr+qd4KqTJfjeanJIS5nOcLznEymXqWlk3Tw4EAimjb+mFaPGqbLhXpuUy8
         gwGuu2kZsyZn3jNAiZEfd/4qxhqlXe74yXzEyw9td5i4H9qqrv0T+cL4OT6LCWhlw4Si
         832g==
X-Gm-Message-State: AC+VfDziVajbvwj+knn/x0/2RZMqIqjsouKb4cJ0IkAWx8t0VrHWlRN8
        jBUFwR/kmEI3XW9fuM+useMVeVXZmHE=
X-Google-Smtp-Source: ACHHUZ456OC9cwwXmS/uivv7z/eXiDchBl7zySLGfgf92vMfdnMWb43Ep15RAgh4z4JyxkS/FEN6cQ==
X-Received: by 2002:ac2:43b2:0:b0:4ee:dafa:cb00 with SMTP id t18-20020ac243b2000000b004eedafacb00mr722389lfl.60.1683116201813;
        Wed, 03 May 2023 05:16:41 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id r8-20020a19ac48000000b004eff132a90csm4651069lfc.74.2023.05.03.05.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 05:16:41 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] =?UTF-8?q?ARM:=20dts:=20BCM5301X:=20Relicense=20Rafa?= =?UTF-8?q?=C5=82's=20code=20to=20the=20GPL=202.0+=20/=20MIT?=
Date:   Wed,  3 May 2023 14:16:10 +0200
Message-Id: <20230503121611.1629-1-zajec5@gmail.com>
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

All BCM5301X device DTS files use dual licensing. Try the same for SoC.
Introduce a new .dtsi file with a proper SPDX tag.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 MAINTAINERS                     |   1 +
 arch/arm/boot/dts/bcm-ns.dtsi   | 202 ++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm5301x.dtsi | 192 +-----------------------------
 3 files changed, 205 insertions(+), 190 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm-ns.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index a81ba8328704..35c2fe651081 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4001,6 +4001,7 @@ M:	Rafał Miłecki <zajec5@gmail.com>
 R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+F:	arch/arm/boot/dts/bcm-ns.dtsi
 F:	arch/arm/boot/dts/bcm470*
 F:	arch/arm/boot/dts/bcm5301*
 F:	arch/arm/boot/dts/bcm953012*
diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
new file mode 100644
index 000000000000..21d672aba75a
--- /dev/null
+++ b/arch/arm/boot/dts/bcm-ns.dtsi
@@ -0,0 +1,202 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/clock/bcm-nsp.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	axi@18000000 {
+		compatible = "brcm,bus-axi";
+		reg = <0x18000000 0x1000>;
+		ranges = <0x00000000 0x18000000 0x00100000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		chipcommon: chipcommon@0 {
+			reg = <0x00000000 0x1000>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+		};
+
+		pcie0: pcie@12000 {
+			reg = <0x00012000 0x1000>;
+		};
+
+		pcie1: pcie@13000 {
+			reg = <0x00013000 0x1000>;
+		};
+
+		usb2: usb2@21000 {
+			reg = <0x00021000 0x1000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			interrupt-parent = <&gic>;
+
+			ehci: usb@21000 {
+				#usb-cells = <0>;
+
+				compatible = "generic-ehci";
+				reg = <0x00021000 0x1000>;
+				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb2_phy>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				ehci_port1: port@1 {
+					reg = <1>;
+					#trigger-source-cells = <0>;
+				};
+
+				ehci_port2: port@2 {
+					reg = <2>;
+					#trigger-source-cells = <0>;
+				};
+			};
+
+			ohci: usb@22000 {
+				#usb-cells = <0>;
+
+				compatible = "generic-ohci";
+				reg = <0x00022000 0x1000>;
+				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				ohci_port1: port@1 {
+					reg = <1>;
+					#trigger-source-cells = <0>;
+				};
+
+				ohci_port2: port@2 {
+					reg = <2>;
+					#trigger-source-cells = <0>;
+				};
+			};
+		};
+
+		usb3: usb3@23000 {
+			reg = <0x00023000 0x1000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			interrupt-parent = <&gic>;
+
+			xhci: usb@23000 {
+				#usb-cells = <0>;
+
+				compatible = "generic-xhci";
+				reg = <0x00023000 0x1000>;
+				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb3_phy>;
+				phy-names = "usb";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				xhci_port1: port@1 {
+					reg = <1>;
+					#trigger-source-cells = <0>;
+				};
+			};
+		};
+	};
+
+	mdio: mdio@18003000 {
+		compatible = "brcm,iproc-mdio";
+		reg = <0x18003000 0x8>;
+		#size-cells = <0>;
+		#address-cells = <1>;
+	};
+
+	dmu-bus@1800c000 {
+		compatible = "simple-bus";
+		ranges = <0 0x1800c000 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		cru-bus@100 {
+			compatible = "brcm,ns-cru", "simple-mfd";
+			reg = <0x100 0x1a4>;
+			ranges;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			usb2_phy: phy@164 {
+				compatible = "brcm,ns-usb2-phy";
+				reg = <0x164 0x4>;
+				brcm,syscon-clkset = <&cru_clkset>;
+				clocks = <&genpll BCM_NSP_GENPLL_USB_PHY_REF_CLK>;
+				clock-names = "phy-ref-clk";
+				#phy-cells = <0>;
+			};
+
+			cru_clkset: syscon@180 {
+				compatible = "brcm,cru-clkset", "syscon";
+				reg = <0x180 0x4>;
+			};
+
+			pinctrl: pinctrl@1c0 {
+				compatible = "brcm,bcm4708-pinmux";
+				reg = <0x1c0 0x24>;
+				reg-names = "cru_gpio_control";
+
+				spi-pins {
+					groups = "spi_grp";
+					function = "spi";
+				};
+
+				pinmux_i2c: i2c-pins {
+					groups = "i2c_grp";
+					function = "i2c";
+				};
+
+				pinmux_pwm: pwm-pins {
+					groups = "pwm0_grp", "pwm1_grp",
+						 "pwm2_grp", "pwm3_grp";
+					function = "pwm";
+				};
+
+				pinmux_uart1: uart1-pins {
+					groups = "uart1_grp";
+					function = "uart1";
+				};
+			};
+
+			thermal: thermal@2c0 {
+				compatible = "brcm,ns-thermal";
+				reg = <0x2c0 0x10>;
+				#thermal-sensor-cells = <0>;
+			};
+		};
+	};
+
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <1000>;
+			coefficients = <(-556) 418000>;
+			thermal-sensors = <&thermal>;
+
+			trips {
+				cpu-crit {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 5fc1b847f4aa..2aa3a9f09641 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -8,11 +8,7 @@
  * Licensed under the GNU/GPL. See COPYING for details.
  */
 
-#include <dt-bindings/clock/bcm-nsp.h>
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include "bcm-ns.dtsi"
 
 / {
 	#address-cells = <1>;
@@ -149,12 +145,6 @@ periph_clk: periph_clk {
 	};
 
 	axi@18000000 {
-		compatible = "brcm,bus-axi";
-		reg = <0x18000000 0x1000>;
-		ranges = <0x00000000 0x18000000 0x00100000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0x000fffff 0xffff>;
 		interrupt-map = 
@@ -228,108 +218,15 @@ axi@18000000 {
 			<0x00028000 6 &gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
 			<0x00028000 7 &gic GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
 
-		chipcommon: chipcommon@0 {
-			reg = <0x00000000 0x1000>;
-
-			gpio-controller;
-			#gpio-cells = <2>;
+		chipcommon@0 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
 
-		pcie0: pcie@12000 {
-			reg = <0x00012000 0x1000>;
-		};
-
-		pcie1: pcie@13000 {
-			reg = <0x00013000 0x1000>;
-		};
-
 		pcie2: pcie@14000 {
 			reg = <0x00014000 0x1000>;
 		};
 
-		usb2: usb2@21000 {
-			reg = <0x00021000 0x1000>;
-
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
-
-			interrupt-parent = <&gic>;
-
-			ehci: usb@21000 {
-				#usb-cells = <0>;
-
-				compatible = "generic-ehci";
-				reg = <0x00021000 0x1000>;
-				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb2_phy>;
-
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				ehci_port1: port@1 {
-					reg = <1>;
-					#trigger-source-cells = <0>;
-				};
-
-				ehci_port2: port@2 {
-					reg = <2>;
-					#trigger-source-cells = <0>;
-				};
-			};
-
-			ohci: usb@22000 {
-				#usb-cells = <0>;
-
-				compatible = "generic-ohci";
-				reg = <0x00022000 0x1000>;
-				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
-
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				ohci_port1: port@1 {
-					reg = <1>;
-					#trigger-source-cells = <0>;
-				};
-
-				ohci_port2: port@2 {
-					reg = <2>;
-					#trigger-source-cells = <0>;
-				};
-			};
-		};
-
-		usb3: usb3@23000 {
-			reg = <0x00023000 0x1000>;
-
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
-
-			interrupt-parent = <&gic>;
-
-			xhci: usb@23000 {
-				#usb-cells = <0>;
-
-				compatible = "generic-xhci";
-				reg = <0x00023000 0x1000>;
-				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb3_phy>;
-				phy-names = "usb";
-
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				xhci_port1: port@1 {
-					reg = <1>;
-					#trigger-source-cells = <0>;
-				};
-			};
-		};
-
 		gmac0: ethernet@24000 {
 			reg = <0x24000 0x800>;
 		};
@@ -355,13 +252,6 @@ pwm: pwm@18002000 {
 		status = "disabled";
 	};
 
-	mdio: mdio@18003000 {
-		compatible = "brcm,iproc-mdio";
-		reg = <0x18003000 0x8>;
-		#size-cells = <0>;
-		#address-cells = <1>;
-	};
-
 	mdio-mux@18003000 {
 		compatible = "mdio-mux-mmioreg", "mdio-mux";
 		mdio-parent-bus = <&mdio>;
@@ -409,18 +299,7 @@ i2c0: i2c@18009000 {
 	};
 
 	dmu-bus@1800c000 {
-		compatible = "simple-bus";
-		ranges = <0 0x1800c000 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-
 		cru-bus@100 {
-			compatible = "brcm,ns-cru", "simple-mfd";
-			reg = <0x100 0x1a4>;
-			ranges;
-			#address-cells = <1>;
-			#size-cells = <1>;
-
 			lcpll0: clock-controller@100 {
 				#clock-cells = <1>;
 				compatible = "brcm,nsp-lcpll0";
@@ -440,53 +319,6 @@ genpll: clock-controller@140 {
 						     "usbclk", "iprocfast",
 						     "sata1", "sata2";
 			};
-
-			usb2_phy: phy@164 {
-				compatible = "brcm,ns-usb2-phy";
-				reg = <0x164 0x4>;
-				brcm,syscon-clkset = <&cru_clkset>;
-				clocks = <&genpll BCM_NSP_GENPLL_USB_PHY_REF_CLK>;
-				clock-names = "phy-ref-clk";
-				#phy-cells = <0>;
-			};
-
-			cru_clkset: syscon@180 {
-				compatible = "brcm,cru-clkset", "syscon";
-				reg = <0x180 0x4>;
-			};
-
-			pinctrl: pinctrl@1c0 {
-				compatible = "brcm,bcm4708-pinmux";
-				reg = <0x1c0 0x24>;
-				reg-names = "cru_gpio_control";
-
-				spi-pins {
-					groups = "spi_grp";
-					function = "spi";
-				};
-
-				pinmux_i2c: i2c-pins {
-					groups = "i2c_grp";
-					function = "i2c";
-				};
-
-				pinmux_pwm: pwm-pins {
-					groups = "pwm0_grp", "pwm1_grp",
-						 "pwm2_grp", "pwm3_grp";
-					function = "pwm";
-				};
-
-				pinmux_uart1: uart1-pins {
-					groups = "uart1_grp";
-					function = "uart1";
-				};
-			};
-
-			thermal: thermal@2c0 {
-				compatible = "brcm,ns-thermal";
-				reg = <0x2c0 0x10>;
-				#thermal-sensor-cells = <0>;
-			};
 		};
 	};
 
@@ -558,24 +390,4 @@ partitions {
 			};
 		};
 	};
-
-	thermal-zones {
-		cpu_thermal: cpu-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <1000>;
-			coefficients = <(-556) 418000>;
-			thermal-sensors = <&thermal>;
-
-			trips {
-				cpu-crit {
-					temperature = <125000>;
-					hysteresis = <0>;
-					type = "critical";
-				};
-			};
-
-			cooling-maps {
-			};
-		};
-	};
 };
-- 
2.35.3

