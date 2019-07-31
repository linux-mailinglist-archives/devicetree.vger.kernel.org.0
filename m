Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 38E3C7C119
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:21:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726281AbfGaMV6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:21:58 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:51873 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726696AbfGaMV6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:21:58 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D9208FF815;
        Wed, 31 Jul 2019 12:21:54 +0000 (UTC)
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
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v3 19/19] arm64: dts: marvell: Convert 7k/8k usb-phy properties to phy-supply
Date:   Wed, 31 Jul 2019 14:21:26 +0200
Message-Id: <20190731122126.3049-20-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update Aramda 7k/8k DTs to use the phy-supply property of the (recent)
generic PHY framework instead of the (legacy) usb-phy preperty. Both
enable the supply when the PHY is enabled.

The COMPHY nodes only provide SERDES lanes configuration. The power
supply that is represented by the phy-supply property is just a
regulator wired to the USB connector, hence the creation of connector
nodes as child of the COMPHY nodes and the supply attached to it.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../arm64/boot/dts/marvell/armada-7040-db.dts | 26 ++++++++++---------
 .../marvell/armada-8040-clearfog-gt-8k.dts    | 13 +++++-----
 .../arm64/boot/dts/marvell/armada-8040-db.dts | 13 +++++-----
 .../boot/dts/marvell/armada-8040-mcbin.dtsi   | 13 +++++-----
 4 files changed, 35 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index d1160edf57e0..a7eb4e7697a2 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -73,16 +73,6 @@
 		gpio = <&expander0 1 GPIO_ACTIVE_HIGH>;
 		vin-supply = <&cp0_exp_usb3_1_current_regulator>;
 	};
-
-	cp0_usb3_0_phy: cp0-usb3-0-phy {
-		compatible = "usb-nop-xceiv";
-		vcc-supply = <&cp0_reg_usb3_0_vbus>;
-	};
-
-	cp0_usb3_1_phy: cp0-usb3-1-phy {
-		compatible = "usb-nop-xceiv";
-		vcc-supply = <&cp0_reg_usb3_1_vbus>;
-	};
 };
 
 &i2c0 {
@@ -228,15 +218,27 @@
 	};
 };
 
+&cp0_comphy1 {
+	cp0_usbh0_con: connector {
+		compatible = "usb-a-connector";
+		phy-supply = <&cp0_reg_usb3_0_vbus>;
+	};
+};
+
 &cp0_usb3_0 {
-	usb-phy = <&cp0_usb3_0_phy>;
 	phys = <&cp0_comphy1 0>;
 	phy-names = "cp0-usb3h0-comphy";
 	status = "okay";
 };
 
+&cp0_comphy4 {
+	cp0_usbh1_con: connector {
+		compatible = "usb-a-connector";
+		phy-supply = <&cp0_reg_usb3_1_vbus>;
+	};
+};
+
 &cp0_usb3_1 {
-	usb-phy = <&cp0_usb3_1_phy>;
 	phys = <&cp0_comphy4 1>;
 	phy-names = "cp0-usb3h1-comphy";
 	status = "okay";
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index bcb0421c7ac0..bd881497b872 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -51,11 +51,6 @@
 		status = "okay";
 	};
 
-	usb3h0_phy: usb3_phy0 {
-		compatible = "usb-nop-xceiv";
-		vcc-supply = <&v_5v0_usb3_hst_vbus>;
-	};
-
 	sfp_cp0_eth0: sfp-cp0-eth0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&cp0_i2c1>;
@@ -474,8 +469,14 @@
 	};
 };
 
+&cp1_comphy2 {
+	cp1_usbh0_con: connector {
+		compatible = "usb-a-connector";
+		phy-supply = <&v_5v0_usb3_hst_vbus>;
+	};
+};
+
 &cp1_usb3_0 {
-	usb-phy = <&usb3h0_phy>;
 	phys = <&cp1_comphy2 0>;
 	phy-names = "cp1-usb3h0-comphy";
 	status = "okay";
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index 9746969e8da9..09fb5256f1db 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -54,11 +54,6 @@
 		vcc-supply = <&cp0_reg_usb3_0_vbus>;
 	};
 
-	cp0_usb3_1_phy: cp0-usb3-1-phy {
-		compatible = "usb-nop-xceiv";
-		vcc-supply = <&cp0_reg_usb3_1_vbus>;
-	};
-
 	cp1_reg_usb3_0_vbus: cp1-usb3-0-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "cp1-usb3h0-vbus";
@@ -164,9 +159,15 @@
 	status = "okay";
 };
 
+&cp0_comphy4 {
+	cp0_usbh1_con: connector {
+		compatible = "usb-a-connector";
+		phy-supply = <&cp0_reg_usb3_1_vbus>;
+	};
+};
+
 /* CON10 on CP0 expansion */
 &cp0_usb3_1 {
-	usb-phy = <&cp0_usb3_1_phy>;
 	phys = <&cp0_comphy4 1>;
 	phy-names = "cp0-usb3h1-comphy";
 	status = "okay";
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index a2c099a12e55..d250f4b2bfed 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -61,11 +61,6 @@
 		status = "okay";
 	};
 
-	usb3h0_phy: usb3_phy0 {
-		compatible = "usb-nop-xceiv";
-		vcc-supply = <&v_5v0_usb3_hst_vbus>;
-	};
-
 	sfp_eth0: sfp-eth0 {
 		/* CON15,16 - CPM lane 4 */
 		compatible = "sff,sfp";
@@ -360,9 +355,15 @@
 	};
 };
 
+&cp1_comphy2 {
+	cp1_usbh0_con: connector {
+		compatible = "usb-a-connector";
+		phy-supply = <&v_5v0_usb3_hst_vbus>;
+	};
+};
+
 &cp1_usb3_0 {
 	/* CPS Lane 2 - CON7 */
-	usb-phy = <&usb3h0_phy>;
 	phys = <&cp1_comphy2 0>;
 	phy-names = "cp1-usb3h0-comphy";
 	status = "okay";
-- 
2.20.1

