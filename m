Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FE364DCB33
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 17:24:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231633AbiCQQZc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 12:25:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236504AbiCQQZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 12:25:31 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 491FFBB90C
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 09:24:15 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13ECF1596;
        Thu, 17 Mar 2022 09:24:15 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.196.172])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 525963F7B4;
        Thu, 17 Mar 2022 09:24:13 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mesih Kilinc <mesihkilinc@gmail.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Jesse Taube <mr.bossman075@gmail.com>,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        George Hilliard <thirtythreeforty@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev
Subject: [PATCH v2 05/12] ARM: dts: suniv: F1C100: add clock and reset macros
Date:   Thu, 17 Mar 2022 16:23:42 +0000
Message-Id: <20220317162349.739636-6-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220317162349.739636-1-andre.przywara@arm.com>
References: <20220317162349.739636-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jesse Taube <mr.bossman075@gmail.com>

Include clock and reset macros and replace magic numbers.

Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/suniv-f1c100s.dtsi | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi b/arch/arm/boot/dts/suniv-f1c100s.dtsi
index def830101448..922efd5e9457 100644
--- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
+++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
@@ -4,6 +4,9 @@
  * Copyright 2018 Mesih Kilinc <mesihkilinc@gmail.com>
  */
 
+#include <dt-bindings/clock/suniv-ccu-f1c100s.h>
+#include <dt-bindings/reset/suniv-ccu-f1c100s.h>
+
 / {
 	#address-cells = <1>;
 	#size-cells = <1>;
@@ -82,7 +85,7 @@ pio: pinctrl@1c20800 {
 			compatible = "allwinner,suniv-f1c100s-pinctrl";
 			reg = <0x01c20800 0x400>;
 			interrupts = <38>, <39>, <40>;
-			clocks = <&ccu 37>, <&osc24M>, <&osc32k>;
+			clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&osc32k>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
 			interrupt-controller;
@@ -116,8 +119,8 @@ uart0: serial@1c25000 {
 			interrupts = <1>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 38>;
-			resets = <&ccu 24>;
+			clocks = <&ccu CLK_BUS_UART0>;
+			resets = <&ccu RST_BUS_UART0>;
 			status = "disabled";
 		};
 
@@ -127,8 +130,8 @@ uart1: serial@1c25400 {
 			interrupts = <2>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 39>;
-			resets = <&ccu 25>;
+			clocks = <&ccu CLK_BUS_UART1>;
+			resets = <&ccu RST_BUS_UART1>;
 			status = "disabled";
 		};
 
@@ -138,8 +141,8 @@ uart2: serial@1c25800 {
 			interrupts = <3>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 40>;
-			resets = <&ccu 26>;
+			clocks = <&ccu CLK_BUS_UART2>;
+			resets = <&ccu RST_BUS_UART2>;
 			status = "disabled";
 		};
 	};
-- 
2.25.1

