Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0AE047734A
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 14:37:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237602AbhLPNhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 08:37:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237605AbhLPNhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 08:37:46 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5614EC061748
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 05:37:45 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:d13f:527c:5504:a743])
        by xavier.telenet-ops.be with bizsmtp
        id X1dh26001250X30011dhTF; Thu, 16 Dec 2021 14:37:43 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mxqx2-005Q91-5S; Thu, 16 Dec 2021 14:37:40 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mxqx1-009xuh-5F; Thu, 16 Dec 2021 14:37:39 +0100
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
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v2 07/11] riscv: dts: microchip: mpfs: Group tuples in interrupt properties
Date:   Thu, 16 Dec 2021 14:37:31 +0100
Message-Id: <5920780dc81102ff11a5521d9476249141fca36b.1639660956.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1639660956.git.geert@linux-m68k.org>
References: <cover.1639660956.git.geert@linux-m68k.org>
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
v2:
  - Add Reviewed-by.
---
 .../boot/dts/microchip/microchip-mpfs.dtsi    | 31 ++++++++++---------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index d9c1dee3fb25beb8..869aaf0d5c066c9d 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -158,18 +158,18 @@ cache-controller@2010000 {
 			cache-size = <2097152>;
 			cache-unified;
 			interrupt-parent = <&plic>;
-			interrupts = <1 2 3>;
+			interrupts = <1>, <2>, <3>;
 			reg = <0x0 0x2010000 0x0 0x1000>;
 		};
 
 		clint@2000000 {
 			compatible = "sifive,fu540-c000-clint", "sifive,clint0";
 			reg = <0x0 0x2000000 0x0 0xC000>;
-			interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
-						&cpu1_intc 3 &cpu1_intc 7
-						&cpu2_intc 3 &cpu2_intc 7
-						&cpu3_intc 3 &cpu3_intc 7
-						&cpu4_intc 3 &cpu4_intc 7>;
+			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>,
+					      <&cpu1_intc 3>, <&cpu1_intc 7>,
+					      <&cpu2_intc 3>, <&cpu2_intc 7>,
+					      <&cpu3_intc 3>, <&cpu3_intc 7>,
+					      <&cpu4_intc 3>, <&cpu4_intc 7>;
 		};
 
 		plic: interrupt-controller@c000000 {
@@ -178,11 +178,11 @@ plic: interrupt-controller@c000000 {
 			#address-cells = <0>;
 			#interrupt-cells = <1>;
 			interrupt-controller;
-			interrupts-extended = <&cpu0_intc 11
-					&cpu1_intc 11 &cpu1_intc 9
-					&cpu2_intc 11 &cpu2_intc 9
-					&cpu3_intc 11 &cpu3_intc 9
-					&cpu4_intc 11 &cpu4_intc 9>;
+			interrupts-extended = <&cpu0_intc 11>,
+					      <&cpu1_intc 11>, <&cpu1_intc 9>,
+					      <&cpu2_intc 11>, <&cpu2_intc 9>,
+					      <&cpu3_intc 11>, <&cpu3_intc 9>,
+					      <&cpu4_intc 11>, <&cpu4_intc 9>;
 			riscv,ndev = <186>;
 		};
 
@@ -190,7 +190,8 @@ dma@3000000 {
 			compatible = "sifive,fu540-c000-pdma";
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic>;
-			interrupts = <23 24 25 26 27 28 29 30>;
+			interrupts = <23>, <24>, <25>, <26>, <27>, <28>, <29>,
+				     <30>;
 			#dma-cells = <1>;
 		};
 
@@ -254,7 +255,7 @@ mmc: mmc@20008000 {
 			compatible = "microchip,mpfs-sd4hc", "cdns,sd4hc";
 			reg = <0x0 0x20008000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
-			interrupts = <88 89>;
+			interrupts = <88>, <89>;
 			clocks = <&clkcfg 6>;
 			max-frequency = <200000000>;
 			status = "disabled";
@@ -264,7 +265,7 @@ emac0: ethernet@20110000 {
 			compatible = "cdns,macb";
 			reg = <0x0 0x20110000 0x0 0x2000>;
 			interrupt-parent = <&plic>;
-			interrupts = <64 65 66 67>;
+			interrupts = <64>, <65>, <66>, <67>;
 			local-mac-address = [00 00 00 00 00 00];
 			clocks = <&clkcfg 4>, <&clkcfg 2>;
 			clock-names = "pclk", "hclk";
@@ -277,7 +278,7 @@ emac1: ethernet@20112000 {
 			compatible = "cdns,macb";
 			reg = <0x0 0x20112000 0x0 0x2000>;
 			interrupt-parent = <&plic>;
-			interrupts = <70 71 72 73>;
+			interrupts = <70>, <71>, <72>, <73>;
 			local-mac-address = [00 00 00 00 00 00];
 			clocks = <&clkcfg 5>, <&clkcfg 2>;
 			status = "disabled";
-- 
2.25.1

