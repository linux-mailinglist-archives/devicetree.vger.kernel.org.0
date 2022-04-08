Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D45344F8F09
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 09:07:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235201AbiDHGhW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 02:37:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235199AbiDHGhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 02:37:18 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B79B653E19
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 23:35:13 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD8-0002FS-Ep; Fri, 08 Apr 2022 08:35:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD6-001kf0-Bn; Fri, 08 Apr 2022 08:35:06 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD4-001ukc-8G; Fri, 08 Apr 2022 08:35:06 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] ARM: dts: stm32mp15x: Add timer interrupts
Date:   Fri,  8 Apr 2022 08:35:02 +0200
Message-Id: <20220408063502.136403-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220408063502.136403-1-u.kleine-koenig@pengutronix.de>
References: <20220408063502.136403-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5309; h=from:subject; bh=y5fAVyEAIgUYzDJ9yAgTwAOsHYtt+sv987yLXwn0MMw=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiT9eTDDTn9itzz1sovbwXTCCPNDIebecKLNY2KRbC ndlsFaGJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYk/XkwAKCRDB/BR4rcrsCWdxB/ wPighgQLXGw37i9E/DYD4O/6k6acukrDS0o8xp7e87XdaLK2ytZMb4bHUTm1rxGgin0FRIzrpHxZAy p+l3QOtdbN74IIJDZRz7cWomdIjJ6pi3L+Od2OtJEguU6GmrDtiPxhq9FF8sI9Yv98B0LdSRy7V9Ok vMkLc7Jg69YQtvrjqQhJP/axL8IgFgJZfezY2ImPZLh9DRSYCW6M98t8leDzZA90V0uY6DuIpKQfBz H+qisG3oh6mC3wThZ8fjA2WgTXR4wgaND8NujBkyvTTmII94lKfm+N+usqhj7vlkPkVXAKWd733Fh3 se74rjqSw0rYwc/Iiqs3eXS0Or0q4t
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The timer units in the stm32mp15x CPUs have interrupts, depending on the
timer flavour either one "global" or four dedicated ones. Add the irqs
to the timer units on stm32mp15x.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 34 +++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index f9aa9af31efd..ae290a04771a 100644
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
@@ -623,6 +641,11 @@ timers1: timer@44000000 {
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
@@ -659,6 +682,11 @@ timers8: timer@44001000 {
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
@@ -746,6 +774,8 @@ timers15: timer@44006000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x44006000 0x400>;
+			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM15_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 105 0x400 0x1>,
@@ -773,6 +803,8 @@ timers16: timer@44007000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x44007000 0x400>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM16_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 109 0x400 0x1>,
@@ -797,6 +829,8 @@ timers17: timer@44008000 {
 			#size-cells = <0>;
 			compatible = "st,stm32-timers";
 			reg = <0x44008000 0x400>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global";
 			clocks = <&rcc TIM17_K>;
 			clock-names = "int";
 			dmas = <&dmamux1 111 0x400 0x1>,
-- 
2.35.1

