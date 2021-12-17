Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C4AC478BB9
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 13:49:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236443AbhLQMts (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 07:49:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236196AbhLQMtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 07:49:47 -0500
Received: from albert.telenet-ops.be (albert.telenet-ops.be [IPv6:2a02:1800:110:4::f00:1a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 682B4C061574
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 04:49:47 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:d13f:527c:5504:a743])
        by albert.telenet-ops.be with bizsmtp
        id XQpl2600c250X3006QpmK1; Fri, 17 Dec 2021 13:49:47 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1myCgD-005YxT-C5; Fri, 17 Dec 2021 13:49:45 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1myCgC-00ASrd-MH; Fri, 17 Dec 2021 13:49:44 +0100
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
Subject: [PATCH v3 09/11] riscv: dts: sifive: Group tuples in register properties
Date:   Fri, 17 Dec 2021 13:49:30 +0100
Message-Id: <333f37a8c2a6181d66172a06b3705a0551143c9c.1639744905.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1639744905.git.geert@linux-m68k.org>
References: <cover.1639744905.git.geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To improve human readability and enable automatic validation, the tuples
in "reg" properties containing register blocks should be grouped using
angle brackets.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
v3:
  - No changes,

v2:
  - Add Reviewed-by.
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 0caca0ccf6711ded..e2efcf08210926f8 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -196,8 +196,8 @@ i2c0: i2c@10030000 {
 		};
 		qspi0: spi@10040000 {
 			compatible = "sifive,fu540-c000-spi", "sifive,spi0";
-			reg = <0x0 0x10040000 0x0 0x1000
-			       0x0 0x20000000 0x0 0x10000000>;
+			reg = <0x0 0x10040000 0x0 0x1000>,
+			      <0x0 0x20000000 0x0 0x10000000>;
 			interrupt-parent = <&plic0>;
 			interrupts = <51>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
@@ -207,8 +207,8 @@ qspi0: spi@10040000 {
 		};
 		qspi1: spi@10041000 {
 			compatible = "sifive,fu540-c000-spi", "sifive,spi0";
-			reg = <0x0 0x10041000 0x0 0x1000
-			       0x0 0x30000000 0x0 0x10000000>;
+			reg = <0x0 0x10041000 0x0 0x1000>,
+			      <0x0 0x30000000 0x0 0x10000000>;
 			interrupt-parent = <&plic0>;
 			interrupts = <52>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
@@ -230,8 +230,8 @@ eth0: ethernet@10090000 {
 			compatible = "sifive,fu540-c000-gem";
 			interrupt-parent = <&plic0>;
 			interrupts = <53>;
-			reg = <0x0 0x10090000 0x0 0x2000
-			       0x0 0x100a0000 0x0 0x1000>;
+			reg = <0x0 0x10090000 0x0 0x2000>,
+			      <0x0 0x100a0000 0x0 0x1000>;
 			local-mac-address = [00 00 00 00 00 00];
 			clock-names = "pclk", "hclk";
 			clocks = <&prci PRCI_CLK_GEMGXLPLL>,
-- 
2.25.1

