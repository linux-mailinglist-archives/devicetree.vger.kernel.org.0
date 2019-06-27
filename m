Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F145158288
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 14:25:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726905AbfF0MZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 08:25:36 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:58703 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726059AbfF0MZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 08:25:35 -0400
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id D9AB920000C;
        Thu, 27 Jun 2019 12:25:31 +0000 (UTC)
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
Subject: [PATCH v2 19/19] arm64: dts: marvell: Convert 7k/8k usb-phy properties to phy-supply
Date:   Thu, 27 Jun 2019 14:25:05 +0200
Message-Id: <20190627122505.25774-7-miquel.raynal@bootlin.com>
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
index e169800cf3f1..b478063ab0b4 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -45,16 +45,6 @@
 		enable-active-high;
 		gpio = <&expander0 1 GPIO_ACTIVE_HIGH>;
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
@@ -200,15 +190,27 @@
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
index 078ea1748b60..2ae847a42258 100644
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
@@ -473,8 +468,14 @@
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
index a8db6b449f0e..77057628f507 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -52,11 +52,6 @@
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
@@ -167,9 +162,15 @@
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
index 9f9d36541ccb..fada138b8b26 100644
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
@@ -358,9 +353,15 @@
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
2.19.1

