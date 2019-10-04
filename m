Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6E34ACBD25
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 16:28:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388975AbfJDO2D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 10:28:03 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:36227 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388989AbfJDO2C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 10:28:02 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A6E7FC0018;
        Fri,  4 Oct 2019 14:27:59 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 14/21] arm64: dts: marvell: Externalize PCIe macros from CP11x file
Date:   Fri,  4 Oct 2019 16:27:31 +0200
Message-Id: <20191004142738.7370-15-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PCIe macros are specific to CP110 and will not fit CP115
constraints. To keep the same way the files are organized, just move
some macros out of the CP11x generic file and define them directly in
SoC DTSI, instead of defining single addresses in the SoC DTSI and
reusing them in macros.

In the end:
* CP11X_PCIE_MEM_BASE SoC define is dropped
* CP11X_PCIEx_MEM_BASE is moved out of the generic DT to be put in the
  SoC files as it replaces the above definition.
* As the CP11X_PCIEx_MEM_SIZE macro is also subject to change with
  newer SoCs, we put it in the SoC files as well.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-70x0.dtsi  |  6 ++++--
 arch/arm64/boot/dts/marvell/armada-80x0.dtsi  | 12 ++++++++----
 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi |  9 ++++-----
 3 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
index ac28903ea409..293403a1a333 100644
--- a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
@@ -19,7 +19,8 @@
  */
 #define CP11X_NAME		cp0
 #define CP11X_BASE		f2000000
-#define CP11X_PCIE_MEM_BASE	0xf6000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xf6000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
 #define CP11X_PCIE0_BASE	f2600000
 #define CP11X_PCIE1_BASE	f2620000
 #define CP11X_PCIE2_BASE	f2640000
@@ -28,7 +29,8 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
 #undef CP11X_PCIE2_BASE
diff --git a/arch/arm64/boot/dts/marvell/armada-80x0.dtsi b/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
index 902eed571bcc..ee67c70bf02e 100644
--- a/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
@@ -21,7 +21,8 @@
  */
 #define CP11X_NAME		cp0
 #define CP11X_BASE		f2000000
-#define CP11X_PCIE_MEM_BASE	0xf6000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xf6000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
 #define CP11X_PCIE0_BASE	f2600000
 #define CP11X_PCIE1_BASE	f2620000
 #define CP11X_PCIE2_BASE	f2640000
@@ -30,7 +31,8 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
 #undef CP11X_PCIE2_BASE
@@ -40,7 +42,8 @@
  */
 #define CP11X_NAME		cp1
 #define CP11X_BASE		f4000000
-#define CP11X_PCIE_MEM_BASE	0xfa000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xfa000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
 #define CP11X_PCIE0_BASE	f4600000
 #define CP11X_PCIE1_BASE	f4620000
 #define CP11X_PCIE2_BASE	f4640000
@@ -49,7 +52,8 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
 #undef CP11X_PCIE2_BASE
diff --git a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
index 7d1ab097453d..9dcf16beabf5 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
@@ -10,8 +10,7 @@
 
 #include "armada-common.dtsi"
 
-#define CP11X_PCIEx_MEM_BASE(iface)	(CP11X_PCIE_MEM_BASE + (iface *  0x1000000))
-#define CP11X_PCIEx_CONF_BASE(iface)	(CP11X_PCIEx_MEM_BASE(iface) + 0xf00000)
+#define CP11X_PCIEx_CONF_BASE(iface)	(CP11X_PCIEx_MEM_BASE(iface) + CP11X_PCIEx_MEM_SIZE(iface))
 
 / {
 	/*
@@ -507,7 +506,7 @@
 
 		bus-range = <0 0xff>;
 		/* non-prefetchable memory */
-		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(0) 0  CP11X_PCIEx_MEM_BASE(0) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(0) 0  CP11X_PCIEx_MEM_BASE(0) 0 CP11X_PCIEx_MEM_SIZE(0)>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 22 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
@@ -531,7 +530,7 @@
 
 		bus-range = <0 0xff>;
 		/* non-prefetchable memory */
-		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(1) 0  CP11X_PCIEx_MEM_BASE(1) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(1) 0  CP11X_PCIEx_MEM_BASE(1) 0 CP11X_PCIEx_MEM_SIZE(1)>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 24 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
@@ -556,7 +555,7 @@
 
 		bus-range = <0 0xff>;
 		/* non-prefetchable memory */
-		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(2) 0  CP11X_PCIEx_MEM_BASE(2) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(2) 0  CP11X_PCIEx_MEM_BASE(2) 0 CP11X_PCIEx_MEM_SIZE(2)>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 23 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.20.1

