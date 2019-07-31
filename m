Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0BE4B7C116
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726665AbfGaMVx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:21:53 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:51893 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfGaMVx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:21:53 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id A7B25FF803;
        Wed, 31 Jul 2019 12:21:50 +0000 (UTC)
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
Subject: [PATCH v3 16/19] arm64: dts: marvell: Add 7k/8k per-port PHYs in SATA nodes
Date:   Wed, 31 Jul 2019 14:21:23 +0200
Message-Id: <20190731122126.3049-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
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
index f34ee87a0f56..45eb4197e603 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -219,6 +219,11 @@
 
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
index f275d9420d5b..1527c82177ab 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -348,6 +348,11 @@
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
index d6e9c014c2f9..66afed6c6245 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -143,6 +143,15 @@
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
@@ -273,6 +282,15 @@
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
index 205071b45a32..b8f28d62be5c 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -239,8 +239,13 @@
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
@@ -324,9 +329,19 @@
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
index 711f38029311..d81944902650 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
@@ -309,7 +309,17 @@
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
2.20.1

