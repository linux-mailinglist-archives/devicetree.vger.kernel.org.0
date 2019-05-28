Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9132C2C2A2
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 11:06:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726927AbfE1JDV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 05:03:21 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:46249 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726896AbfE1JDV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 05:03:21 -0400
Received: from localhost.localdomain (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id BD25320002F;
        Tue, 28 May 2019 09:03:13 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] arm64: dts: marvell: armada-7040-db: Add USB current regulators
Date:   Tue, 28 May 2019 11:03:10 +0200
Message-Id: <20190528090310.31774-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Armada 7040-db USB ports deliver 500mA by default while they
could deliver up to 900mA (usually, for USB3 devices).

The board embeds a GPIO controlled regulator on each port which can be
configured to deliver each amount of current.

Add a vin-supply property to the USB3 Vbus nodes for this purpose. The
regulator will be automatically 'enabled', ie. set to limit at 900mA
instead of 500mA.

Suggested-by: Alex Leibovich <alexl@marvell.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../arm64/boot/dts/marvell/armada-7040-db.dts | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index d20d84ce7ca8..f34ee87a0f56 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -28,6 +28,32 @@
 		ethernet2 = &cp0_eth2;
 	};
 
+	cp0_exp_usb3_0_current_regulator: gpio-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "cp0-usb3-0-current-regulator";
+		regulator-type = "current";
+		regulator-min-microamp = <500000>;
+		regulator-max-microamp = <900000>;
+		gpios = <&expander0 4 GPIO_ACTIVE_HIGH>;
+		states = <500000 0x0
+			  900000 0x1>;
+		enable-active-high;
+		gpios-states = <0>;
+	};
+
+	cp0_exp_usb3_1_current_regulator: gpio-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "cp0-usb3-1-current-regulator";
+		regulator-type = "current";
+		regulator-min-microamp = <500000>;
+		regulator-max-microamp = <900000>;
+		gpios = <&expander0 5 GPIO_ACTIVE_HIGH>;
+		states = <500000 0x0
+			  900000 0x1>;
+		enable-active-high;
+		gpios-states = <0>;
+	};
+
 	cp0_reg_usb3_0_vbus: cp0-usb3-0-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb3h0-vbus";
@@ -35,6 +61,7 @@
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&expander0 0 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&cp0_exp_usb3_0_current_regulator>;
 	};
 
 	cp0_reg_usb3_1_vbus: cp0-usb3-1-vbus {
@@ -44,6 +71,7 @@
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&expander0 1 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&cp0_exp_usb3_1_current_regulator>;
 	};
 
 	cp0_usb3_0_phy: cp0-usb3-0-phy {
-- 
2.19.1

