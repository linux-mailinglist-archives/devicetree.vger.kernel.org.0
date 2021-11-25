Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F082F45DDB4
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 16:41:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356088AbhKYPoo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 10:44:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356117AbhKYPmm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 10:42:42 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4059C0613E1
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:31:38 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:1511:ffa3:275:45dd])
        by xavier.telenet-ops.be with bizsmtp
        id NfXZ2600K5CGg7701fXZAA; Thu, 25 Nov 2021 16:31:35 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGij-000DSR-Ai; Thu, 25 Nov 2021 16:31:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGii-000gZA-LX; Thu, 25 Nov 2021 16:31:32 +0100
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
Subject: [PATCH 6/9] riscv: dts: microchip: mpfs: Fix reference clock node
Date:   Thu, 25 Nov 2021 16:31:28 +0100
Message-Id: <20211125153131.163533-7-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211125153131.163533-1-geert@linux-m68k.org>
References: <20211125153131.163533-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"make dtbs_check" reports:

    arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: soc: refclk: {'compatible': ['fixed-clock'], '#clock-cells': [[0]], 'clock-frequency': [[600000000]], 'clock-output-names': ['msspllclk'], 'phandle': [[7]]} should not be valid under {'type': 'object'}
	From schema: dtschema/schemas/simple-bus.yaml

Fix this by moving the node out of the "soc" subnode.
While at it, rename it to "msspllclk", and drop the now superfluous
"clock-output-names" property.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index c71d2d682fc0a0e7..893864cf2447a9d4 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -139,6 +139,12 @@ cpu4_intc: interrupt-controller {
 		};
 	};
 
+	refclk: msspllclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <600000000>;
+	};
+
 	soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -190,13 +196,6 @@ dma@3000000 {
 			#dma-cells = <1>;
 		};
 
-		refclk: refclk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <600000000>;
-			clock-output-names = "msspllclk";
-		};
-
 		clkcfg: clkcfg@20002000 {
 			compatible = "microchip,mpfs-clkcfg";
 			reg = <0x0 0x20002000 0x0 0x1000>;
-- 
2.25.1

