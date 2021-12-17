Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8474C478BC2
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 13:49:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236464AbhLQMtv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 07:49:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236463AbhLQMtu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 07:49:50 -0500
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E846C06173F
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 04:49:49 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:d13f:527c:5504:a743])
        by michel.telenet-ops.be with bizsmtp
        id XQpl2600i250X3006QplH8; Fri, 17 Dec 2021 13:49:48 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1myCgD-005YxM-7J; Fri, 17 Dec 2021 13:49:45 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1myCgC-00ASqq-GJ; Fri, 17 Dec 2021 13:49:44 +0100
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>
Subject: [PATCH v3 02/11] riscv: dts: canaan: Group tuples in interrupt properties
Date:   Fri, 17 Dec 2021 13:49:23 +0100
Message-Id: <c8c58ed045a4711e043a8cb91d74be15fdf1080e.1639744905.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1639744905.git.geert@linux-m68k.org>
References: <cover.1639744905.git.geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To improve human readability and enable automatic validation, the tuples
in the various properties containing interrupt specifiers should be
grouped.

Fix this by grouping the tuples of "interrupts" and
"interrupts-extended" properties using angle brackets.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
v3:
  - No changes,

v2:
  - Add Reviewed-by, Tested-by.
---
 arch/riscv/boot/dts/canaan/k210.dtsi | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
index 5e8ca8142482153b..56f57118c633b91a 100644
--- a/arch/riscv/boot/dts/canaan/k210.dtsi
+++ b/arch/riscv/boot/dts/canaan/k210.dtsi
@@ -103,8 +103,8 @@ rom0: nvmem@1000 {
 		clint0: timer@2000000 {
 			compatible = "canaan,k210-clint", "sifive,clint0";
 			reg = <0x2000000 0xC000>;
-			interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
-					      &cpu1_intc 3 &cpu1_intc 7>;
+			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>,
+					      <&cpu1_intc 3>, <&cpu1_intc 7>;
 		};
 
 		plic0: interrupt-controller@c000000 {
@@ -113,7 +113,7 @@ plic0: interrupt-controller@c000000 {
 			compatible = "canaan,k210-plic", "sifive,plic-1.0.0";
 			reg = <0xC000000 0x4000000>;
 			interrupt-controller;
-			interrupts-extended = <&cpu0_intc 11 &cpu1_intc 11>;
+			interrupts-extended = <&cpu0_intc 11>, <&cpu1_intc 11>;
 			riscv,ndev = <65>;
 		};
 
@@ -130,10 +130,11 @@ gpio0: gpio-controller@38001000 {
 			compatible = "canaan,k210-gpiohs", "sifive,gpio0";
 			reg = <0x38001000 0x1000>;
 			interrupt-controller;
-			interrupts = <34 35 36 37 38 39 40 41
-				      42 43 44 45 46 47 48 49
-				      50 51 52 53 54 55 56 57
-				      58 59 60 61 62 63 64 65>;
+			interrupts = <34>, <35>, <36>, <37>, <38>, <39>, <40>,
+				     <41>, <42>, <43>, <44>, <45>, <46>, <47>,
+				     <48>, <49>, <50>, <51>, <52>, <53>, <54>,
+				     <55>, <56>, <57>, <58>, <59>, <60>, <61>,
+				     <62>, <63>, <64>, <65>;
 			gpio-controller;
 			ngpios = <32>;
 		};
@@ -141,7 +142,7 @@ gpio0: gpio-controller@38001000 {
 		dmac0: dma-controller@50000000 {
 			compatible = "snps,axi-dma-1.01a";
 			reg = <0x50000000 0x1000>;
-			interrupts = <27 28 29 30 31 32>;
+			interrupts = <27>, <28>, <29>, <30>, <31>, <32>;
 			#dma-cells = <1>;
 			clocks = <&sysclk K210_CLK_DMA>, <&sysclk K210_CLK_DMA>;
 			clock-names = "core-clk", "cfgr-clk";
@@ -316,7 +317,7 @@ fpioa: pinmux@502b0000 {
 			timer0: timer@502d0000 {
 				compatible = "snps,dw-apb-timer";
 				reg = <0x502D0000 0x100>;
-				interrupts = <14 15>;
+				interrupts = <14>, <15>;
 				clocks = <&sysclk K210_CLK_TIMER0>,
 					 <&sysclk K210_CLK_APB0>;
 				clock-names = "timer", "pclk";
@@ -326,7 +327,7 @@ timer0: timer@502d0000 {
 			timer1: timer@502e0000 {
 				compatible = "snps,dw-apb-timer";
 				reg = <0x502E0000 0x100>;
-				interrupts = <16 17>;
+				interrupts = <16>, <17>;
 				clocks = <&sysclk K210_CLK_TIMER1>,
 					 <&sysclk K210_CLK_APB0>;
 				clock-names = "timer", "pclk";
@@ -336,7 +337,7 @@ timer1: timer@502e0000 {
 			timer2: timer@502f0000 {
 				compatible = "snps,dw-apb-timer";
 				reg = <0x502F0000 0x100>;
-				interrupts = <18 19>;
+				interrupts = <18>, <19>;
 				clocks = <&sysclk K210_CLK_TIMER2>,
 					 <&sysclk K210_CLK_APB0>;
 				clock-names = "timer", "pclk";
-- 
2.25.1

