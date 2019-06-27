Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B656358285
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 14:25:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726736AbfF0MZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 08:25:29 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:43783 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726059AbfF0MZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 08:25:29 -0400
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 9856820000C;
        Thu, 27 Jun 2019 12:25:23 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 16/19] arm64: dts: marvell: Add 7k/8k per-port PHYs in SATA nodes
Date:   Thu, 27 Jun 2019 14:25:02 +0200
Message-Id: <20190627122505.25774-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190627122505.25774-1-miquel.raynal@bootlin.com>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fill-in the missing SATA phys/phy-names DT properties of Armada 7k/8k
based boards.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../arm64/boot/dts/marvell/armada-7040-db.dts |  5 +++++
 .../marvell/armada-8040-clearfog-gt-8k.dts    |  5 +++++
 .../arm64/boot/dts/marvell/armada-8040-db.dts | 18 ++++++++++++++++++
 .../boot/dts/marvell/armada-8040-mcbin.dtsi   | 19 +++++++++++++++++--
 arch/arm64/boot/dts/marvell/armada-cp110.dtsi | 10 ++++++++++
 5 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index d20d84ce7ca8..1f6f79ea286b 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -191,6 +191,11 @@
 
 &cp0_sata0 {
 	status = "okay";
+
+	sata-port@1 {
+		phys = <&cp0_comphy3 1>;
+		phy-names = "cp0-sata0-1-phy";
+	};
 };
 
 &cp0_usb3_0 {
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 9143aa13ceb1..afa98636cb33 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -347,6 +347,11 @@
 &cp1_sata0 {
 	pinctrl-0 = <&cp0_pci1_reset_pins>;
 	status = "okay";
+
+	sata-port@1 {
+		phys = <&cp1_comphy0 1>;
+		phy-names = "cp1-sata0-1-phy";
+	};
 };
 
 &cp1_mdio {
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index 9f4f939ab65f..4a68f99fb001 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -146,6 +146,15 @@
 /* CON4 on CP0 expansion */
 &cp0_sata0 {
 	status = "okay";
+
+	sata-port@0 {
+		phys = <&cp0_comphy1 0>;
+		phy-names = "cp0-sata0-0-phy";
+	};
+	sata-port@1 {
+		phys = <&cp0_comphy3 1>;
+		phy-names = "cp0-sata0-1-phy";
+	};
 };
 
 /* CON9 on CP0 expansion */
@@ -276,6 +285,15 @@
 /* CON4 on CP1 expansion */
 &cp1_sata0 {
 	status = "okay";
+
+	sata-port@0 {
+		phys = <&cp1_comphy1 0>;
+		phy-names = "cp1-sata0-0-phy";
+	};
+	sata-port@1 {
+		phys = <&cp1_comphy3 1>;
+		phy-names = "cp1-sata0-1-phy";
+	};
 };
 
 /* CON9 on CP1 expansion */
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 329f8ceeebea..a3f2bd64a750 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -237,8 +237,13 @@
 };
 
 &cp0_sata0 {
-	/* CPM Lane 0 - U29 */
 	status = "okay";
+
+	/* CPM Lane 5 - U29 */
+	sata-port@1 {
+		phys = <&cp0_comphy5 1>;
+		phy-names = "cp0-sata0-1-phy";
+	};
 };
 
 &cp0_sdhci0 {
@@ -322,9 +327,19 @@
 };
 
 &cp1_sata0 {
+	status = "okay";
+
 	/* CPS Lane 1 - U32 */
+	sata-port@0 {
+		phys = <&cp1_comphy1 0>;
+		phy-names = "cp1-sata0-0-phy";
+	};
+
 	/* CPS Lane 3 - U31 */
-	status = "okay";
+	sata-port@1 {
+		phys = <&cp1_comphy3 1>;
+		phy-names = "cp1-sata0-1-phy";
+	};
 };
 
 &cp1_spi1 {
diff --git a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
index 404b6ac82aa0..c1764ed7e980 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
@@ -307,7 +307,17 @@
 			interrupts = <107 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&CP110_LABEL(clk) 1 15>,
 				 <&CP110_LABEL(clk) 1 16>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			status = "disabled";
+
+			sata-port@0 {
+				reg = <0>;
+			};
+
+			sata-port@1 {
+				reg = <1>;
+			};
 		};
 
 		CP110_LABEL(xor0): xor@6a0000 {
-- 
2.19.1

