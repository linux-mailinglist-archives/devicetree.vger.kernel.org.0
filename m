Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E73F845DDB0
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 16:41:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232972AbhKYPol (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 10:44:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241972AbhKYPml (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 10:42:41 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36B1FC06173E
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:31:37 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:1511:ffa3:275:45dd])
        by xavier.telenet-ops.be with bizsmtp
        id NfXa260045CGg7701fXaAC; Thu, 25 Nov 2021 16:31:35 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGij-000DST-F4; Thu, 25 Nov 2021 16:31:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGii-000gZQ-N3; Thu, 25 Nov 2021 16:31:32 +0100
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH 8/9] riscv: dts: sifive: Group tuples in interrupt properties
Date:   Thu, 25 Nov 2021 16:31:30 +0100
Message-Id: <20211125153131.163533-9-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211125153131.163533-1-geert@linux-m68k.org>
References: <20211125153131.163533-1-geert@linux-m68k.org>
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
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 21 +++++++++++----------
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 14 +++++++-------
 2 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 35d75a8aa8cc9031..e2efcf08210926f8 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -145,12 +145,12 @@ plic0: interrupt-controller@c000000 {
 			reg = <0x0 0xc000000 0x0 0x4000000>;
 			riscv,ndev = <53>;
 			interrupt-controller;
-			interrupts-extended = <
-				&cpu0_intc 0xffffffff
-				&cpu1_intc 0xffffffff &cpu1_intc 9
-				&cpu2_intc 0xffffffff &cpu2_intc 9
-				&cpu3_intc 0xffffffff &cpu3_intc 9
-				&cpu4_intc 0xffffffff &cpu4_intc 9>;
+			interrupts-extended =
+				<&cpu0_intc 0xffffffff>,
+				<&cpu1_intc 0xffffffff>, <&cpu1_intc 9>,
+				<&cpu2_intc 0xffffffff>, <&cpu2_intc 9>,
+				<&cpu3_intc 0xffffffff>, <&cpu3_intc 9>,
+				<&cpu4_intc 0xffffffff>, <&cpu4_intc 9>;
 		};
 		prci: clock-controller@10000000 {
 			compatible = "sifive,fu540-c000-prci";
@@ -170,7 +170,8 @@ dma: dma@3000000 {
 			compatible = "sifive,fu540-c000-pdma";
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic0>;
-			interrupts = <23 24 25 26 27 28 29 30>;
+			interrupts = <23>, <24>, <25>, <26>, <27>, <28>, <29>,
+				     <30>;
 			#dma-cells = <1>;
 		};
 		uart1: serial@10011000 {
@@ -243,7 +244,7 @@ pwm0: pwm@10020000 {
 			compatible = "sifive,fu540-c000-pwm", "sifive,pwm0";
 			reg = <0x0 0x10020000 0x0 0x1000>;
 			interrupt-parent = <&plic0>;
-			interrupts = <42 43 44 45>;
+			interrupts = <42>, <43>, <44>, <45>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			#pwm-cells = <3>;
 			status = "disabled";
@@ -252,7 +253,7 @@ pwm1: pwm@10021000 {
 			compatible = "sifive,fu540-c000-pwm", "sifive,pwm0";
 			reg = <0x0 0x10021000 0x0 0x1000>;
 			interrupt-parent = <&plic0>;
-			interrupts = <46 47 48 49>;
+			interrupts = <46>, <47>, <48>, <49>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			#pwm-cells = <3>;
 			status = "disabled";
@@ -265,7 +266,7 @@ l2cache: cache-controller@2010000 {
 			cache-size = <2097152>;
 			cache-unified;
 			interrupt-parent = <&plic0>;
-			interrupts = <1 2 3>;
+			interrupts = <1>, <2>, <3>;
 			reg = <0x0 0x2010000 0x0 0x1000>;
 		};
 		gpio: gpio@10060000 {
diff --git a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
index abbb960f90a00ac2..8464b0e3c88791e1 100644
--- a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
@@ -147,12 +147,12 @@ plic0: interrupt-controller@c000000 {
 			reg = <0x0 0xc000000 0x0 0x4000000>;
 			riscv,ndev = <69>;
 			interrupt-controller;
-			interrupts-extended = <
-				&cpu0_intc 0xffffffff
-				&cpu1_intc 0xffffffff &cpu1_intc 9
-				&cpu2_intc 0xffffffff &cpu2_intc 9
-				&cpu3_intc 0xffffffff &cpu3_intc 9
-				&cpu4_intc 0xffffffff &cpu4_intc 9>;
+			interrupts-extended =
+				<&cpu0_intc 0xffffffff>,
+				<&cpu1_intc 0xffffffff>, <&cpu1_intc 9>,
+				<&cpu2_intc 0xffffffff>, <&cpu2_intc 9>,
+				<&cpu3_intc 0xffffffff>, <&cpu3_intc 9>,
+				<&cpu4_intc 0xffffffff>, <&cpu4_intc 9>;
 		};
 		prci: clock-controller@10000000 {
 			compatible = "sifive,fu740-c000-prci";
@@ -273,7 +273,7 @@ ccache: cache-controller@2010000 {
 			cache-size = <2097152>;
 			cache-unified;
 			interrupt-parent = <&plic0>;
-			interrupts = <19 21 22 20>;
+			interrupts = <19>, <21>, <22>, <20>;
 			reg = <0x0 0x2010000 0x0 0x1000>;
 		};
 		gpio: gpio@10060000 {
-- 
2.25.1

