Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF11D520AE1
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234381AbiEJB5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234366AbiEJB5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:09 -0400
Received: from mo-csw.securemx.jp (mo-csw1515.securemx.jp [210.130.202.154])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E16B014041C
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:13 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1515) id 24A1qitE021488; Tue, 10 May 2022 10:52:44 +0900
X-Iguazu-Qid: 34tKMNGQISoOUyKFxf
X-Iguazu-QSIG: v=2; s=0; t=1652147564; q=34tKMNGQISoOUyKFxf; m=tTZIWtyWe8wzEuERRF1BanNQhESQ6HwBHYCTt79WgW4=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
        by relay.securemx.jp (mx-mr1510) id 24A1qhl6025328
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:43 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 1/9] arm64: dts: visconti: Update the clock providers for UART
Date:   Tue, 10 May 2022 10:52:21 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-2-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove fixed clock and source common clock for UART.

Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts   |  4 ----
 .../boot/dts/toshiba/tmpv7708-visrobo-vrb.dts      |  4 ----
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi          | 14 ++++++++------
 3 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts b/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
index 9375b0faeea2..9b0666df6593 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
@@ -32,14 +32,10 @@ memory@80000000 {
 
 &uart0 {
 	status = "okay";
-	clocks = <&uart_clk>;
-	clock-names = "apb_pclk";
 };
 
 &uart1 {
 	status = "okay";
-	clocks = <&uart_clk>;
-	clock-names = "apb_pclk";
 };
 
 &piether {
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrb.dts b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrb.dts
index d0817463706e..56701e0e1dab 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrb.dts
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrb.dts
@@ -32,14 +32,10 @@ memory@80000000 {
 
 &uart0 {
 	status = "okay";
-	clocks = <&uart_clk>;
-	clock-names = "apb_pclk";
 };
 
 &uart1 {
 	status = "okay";
-	clocks = <&uart_clk>;
-	clock-names = "apb_pclk";
 };
 
 &piether {
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
index 1683113a3c43..3b51e875630c 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
@@ -129,12 +129,6 @@ timer {
 			<GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
-	uart_clk: uart-clk {
-		compatible = "fixed-clock";
-		clock-frequency = <150000000>;
-		#clock-cells = <0>;
-	};
-
 	clk25mhz: clk25mhz {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -243,6 +237,8 @@ uart0: serial@28200000 {
 			interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&uart0_pins>;
+			clocks = <&pismu TMPV770X_CLK_PIUART0>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -252,6 +248,8 @@ uart1: serial@28201000 {
 			interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&uart1_pins>;
+			clocks = <&pismu TMPV770X_CLK_PIUART1>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -261,6 +259,8 @@ uart2: serial@28202000 {
 			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&uart2_pins>;
+			clocks = <&pismu TMPV770X_CLK_PIUART2>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -270,6 +270,8 @@ uart3: serial@28203000 {
 			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&uart3_pins>;
+			clocks = <&pismu TMPV770X_CLK_PIUART2>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
-- 
2.36.0


