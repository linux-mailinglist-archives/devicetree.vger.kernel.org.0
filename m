Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6169E45DDBD
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 16:41:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231522AbhKYPoy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 10:44:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbhKYPmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 10:42:52 -0500
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49076C0613F2
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:31:41 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:1511:ffa3:275:45dd])
        by baptiste.telenet-ops.be with bizsmtp
        id NfXa260145CGg7701fXarl; Thu, 25 Nov 2021 16:31:36 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGij-000DSQ-Ex; Thu, 25 Nov 2021 16:31:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGii-000gZ3-Kq; Thu, 25 Nov 2021 16:31:32 +0100
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
Subject: [PATCH 5/9] riscv: dts: microchip: mpfs: Fix PLIC node
Date:   Thu, 25 Nov 2021 16:31:27 +0100
Message-Id: <20211125153131.163533-6-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211125153131.163533-1-geert@linux-m68k.org>
References: <20211125153131.163533-1-geert@linux-m68k.org>
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
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index d91226bfa586cda7..c71d2d682fc0a0e7 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -168,16 +168,17 @@ clint@2000000 {
 		};
 
 		plic: interrupt-controller@c000000 {
-			#interrupt-cells = <1>;
 			compatible = "sifive,fu540-c000-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
-			riscv,ndev = <186>;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
 			interrupt-controller;
 			interrupts-extended = <&cpu0_intc 11>,
 					      <&cpu1_intc 11>, <&cpu1_intc 9>,
 					      <&cpu2_intc 11>, <&cpu2_intc 9>,
 					      <&cpu3_intc 11>, <&cpu3_intc 9>,
 					      <&cpu4_intc 11>, <&cpu4_intc 9>;
+			riscv,ndev = <186>;
 		};
 
 		dma@3000000 {
-- 
2.25.1

