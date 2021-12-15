Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39B33475BC8
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 16:25:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231863AbhLOPZ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 10:25:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbhLOPZ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 10:25:56 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD2FFC061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 07:25:55 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxWA5-0003C0-RA; Wed, 15 Dec 2021 16:25:45 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxWA1-004gy3-0T; Wed, 15 Dec 2021 16:25:40 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxW9z-0001CC-V8; Wed, 15 Dec 2021 16:25:39 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com, kernel@pengutronix.de
Subject: [PATCH] ARM: dts: stm32: Add timer interrupts
Date:   Wed, 15 Dec 2021 16:25:35 +0100
Message-Id: <20211215152535.41200-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Patch-Hashes: v=1; h=sha256; i=zQHxN0b0I4k3M1HtdBXY6xheurG1cy/z64ae9cmVimw=; m=KUNtiMZsoktqEB1zh1NZZDwCB6LDR6m17mt6CL12mho=; p=+crPBVx+R0CoJPytVWwddLgHwMS/O+BSUGP8+GEQSM8=; g=472695572b1273c1d302e7f54f9a0919e91dec39
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de; s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6; b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmG6COsACgkQwfwUeK3K7AklBgf/Ql4 aIYZca0qpsFU0kRXdJI8LHqG28HI6NnZnyz+HQkpFjDKhfCY1CZHJX4hcLWB7o4OIr7r6Tc4l54H+ IUFb8p6FIaYkfh82+NFho1xSo0EVGRjr6hUxxjKuU4vRCCkl7SYMUvdvZhiRiOBlIa+oCewRy7BgY aHwN2yNTtk/0iAtYUBKohzXIhHg6rYfRbhtphoMQqUZvhn8MZRIhWL3AcZjjWEx+LqHnSlt845h8/ x/1dAH7IVfOvJP2KcdbdwJqMeWpM7yckwOcz8AN4wL2N+E2RofOruBDc/WubWcfgcl+gYLC6chGpb Ax/hghLUl47c8Eic0a0JJaTrY6fT8Cw==
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The timer units in the stm32mp1 CPUs have interrupts, depending on the
timer flavour either one "global" or four dedicated ones.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 .../bindings/mfd/st,stm32-timers.yaml         | 13 +++++++
 arch/arm/boot/dts/stm32mp151.dtsi             | 34 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
index 10b330d42901..5e4214d1613b 100644
--- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
@@ -46,6 +46,19 @@ properties:
     minItems: 1
     maxItems: 7
 
+  interrupts:
+    maxItems: 4
+
+  interrupt-names:
+    anyOf:
+      - items:
+          - const: global
+      - items:
+          - const: brk
+          - const: up
+          - const: trg-com
+          - const: cc
+
   "#address-cells":
     const: 1
 
diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 1cfc2f011e70..dab3972fcffd 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -127,6 +127,8 @@ timers2: timer@40000000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40000000 0x400>;
+			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM2_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 18 0x400 0x1>,
@@ -160,6 +162,8 @@ timers3: timer@40001000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40001000 0x400>;
+			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM3_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 23 0x400 0x1>,
@@ -194,6 +198,8 @@ timers4: timer@40002000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40002000 0x400>;
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM4_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 29 0x400 0x1>,
@@ -226,6 +232,8 @@ timers5: timer@40003000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40003000 0x400>;
+			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM5_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 55 0x400 0x1>,
@@ -260,6 +268,8 @@ timers6: timer@40004000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40004000 0x400>;
+			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM6_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 69 0x400 0x1>;
@@ -278,6 +288,8 @@ timers7: timer@40005000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40005000 0x400>;
+			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM7_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 70 0x400 0x1>;
@@ -296,6 +308,8 @@ timers12: timer@40006000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40006000 0x400>;
+			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM12_K>;
 			clock-names = "int";
 			status = "disabled";
@@ -318,6 +332,8 @@ timers13: timer@40007000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40007000 0x400>;
+			interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM13_K>;
 			clock-names = "int";
 			status = "disabled";
@@ -340,6 +356,8 @@ timers14: timer@40008000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x40008000 0x400>;
+			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM14_K>;
 			clock-names = "int";
 			status = "disabled";
@@ -605,6 +623,11 @@ timers1: timer@44000000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x44000000 0x400>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "brk", "up", "trg-com", "cc";
 			clocks = <&rcc TIM1_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 11 0x400 0x1>,
@@ -641,6 +664,11 @@ timers8: timer@44001000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x44001000 0x400>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "brk", "up", "trg-com", "cc";
 			clocks = <&rcc TIM8_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 47 0x400 0x1>,
@@ -725,6 +753,8 @@ timers15: timer@44006000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x44006000 0x400>;
+			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM15_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 105 0x400 0x1>,
@@ -752,6 +782,8 @@ timers16: timer@44007000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x44007000 0x400>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM16_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 109 0x400 0x1>,
@@ -776,6 +808,8 @@ timers17: timer@44008000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x44008000 0x400>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM17_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 111 0x400 0x1>,

base-commit: 0bafb8f3ebc84525d0ae0fcea22d12151b99312f
-- 
2.33.0

