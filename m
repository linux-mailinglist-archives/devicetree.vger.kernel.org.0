Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FF5E4677EE
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 14:15:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242285AbhLCNSc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 08:18:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238833AbhLCNSc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 08:18:32 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43F2DC06173E
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 05:15:08 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:3191:9890:620a:6f4])
        by xavier.telenet-ops.be with bizsmtp
        id RpF62600W3eLghq01pF6sw; Fri, 03 Dec 2021 14:15:06 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mt8P4-002LBO-0E; Fri, 03 Dec 2021 14:15:06 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mt8P3-000kOE-8Y; Fri, 03 Dec 2021 14:15:05 +0100
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH] riscv: dts: sifive: fu540-c000: Fix PLIC node
Date:   Fri,  3 Dec 2021 14:15:04 +0100
Message-Id: <ac53e34cf12a24aa4fe1dc206d4e0ffce71234f9.1638537275.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the device node for the Platform-Level Interrupt Controller (PLIC):
  - Add missing "#address-cells" property,
  - Sort properties according to DT bindings.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index b1250c16816f5c9d..3eef52b1a59b5cb4 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -140,10 +140,10 @@ soc {
 		compatible = "simple-bus";
 		ranges;
 		plic0: interrupt-controller@c000000 {
-			#interrupt-cells = <1>;
 			compatible = "sifive,fu540-c000-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
-			riscv,ndev = <53>;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
 			interrupt-controller;
 			interrupts-extended =
 				<&cpu0_intc 0xffffffff>,
@@ -151,6 +151,7 @@ plic0: interrupt-controller@c000000 {
 				<&cpu2_intc 0xffffffff>, <&cpu2_intc 9>,
 				<&cpu3_intc 0xffffffff>, <&cpu3_intc 9>,
 				<&cpu4_intc 0xffffffff>, <&cpu4_intc 9>;
+			riscv,ndev = <53>;
 		};
 		prci: clock-controller@10000000 {
 			compatible = "sifive,fu540-c000-prci";
-- 
2.25.1

