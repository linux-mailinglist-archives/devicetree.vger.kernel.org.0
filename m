Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F297476372
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 21:38:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234794AbhLOUhb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 15:37:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236201AbhLOUha (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 15:37:30 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DDD0C06173F
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 12:37:30 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1g-0006ju-Nh; Wed, 15 Dec 2021 21:37:24 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1c-004jAb-HC; Wed, 15 Dec 2021 21:37:19 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1b-0001Pg-1x; Wed, 15 Dec 2021 21:37:19 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH v2 2/2] ARM: dts: stm32: Add timer interrupts
Date:   Wed, 15 Dec 2021 21:37:09 +0100
Message-Id: <20211215203709.52916-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211215203709.52916-1-u.kleine-koenig@pengutronix.de>
References: <20211215203709.52916-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Patch-Hashes: v=1; h=sha256; i=zQHxN0b0I4k3M1HtdBXY6xheurG1cy/z64ae9cmVimw=; m=YaFoCmmZ1wT7ep2D5KXJU95Wqlpf7jvHaVYuCguT2AA=; p=b45CV4HtpM7/D1G28YRkqiVbmYkABPT4ZD/cl8Bb1/A=; g=eaae9af9ddf4f46555dce7f3adf72598640d5a12
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de; s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6; b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmG6UfIACgkQwfwUeK3K7Al8Tgf/X4Y 09HTwiVOTZ6CT8FMdWhnTqPh/j28tAiBWv4B9r/3TF8n57s4TskDnpmNCPAqfzTZc+ZPSWYXvxqkm ADftxc5nSAq3KUq5v+LR8mlqoUrToGVfuANRQ8SequRFLlBbKGK4hQkYBFUCeg7gi3LQ2Xg0fN4yA eApTfEJs3G4GBNaxKqLqUPhSlRpPYEkDINFwAk0/G3GB0ciCZPu0YHgZwaYq4ooO4WgEN1RpSwTSM 6yjMYE2W+MJjV89KkOMO/xumGOioFY98qZzP7Zv1XR5pjRm7NoZXDUrr2CjPYiKjBFvIyDmqSDmmD /nB0cBIjCb7e7IUQeqNFfgjd6olilqA==
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The timer units in the stm32mp1 CPUs have interrupts, depending on the
timer flavour either one "global" or four dedicated ones. Add the irqs
to the timer units on stm32mp15x.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 34 +++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

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
-- 
2.33.0

