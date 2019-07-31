Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 58F367C118
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:21:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726701AbfGaMV4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:21:56 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:59635 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfGaMV4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:21:56 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 7E31EFF813;
        Wed, 31 Jul 2019 12:21:53 +0000 (UTC)
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
Subject: [PATCH v3 18/19] arm64: dts: marvell: Add 7k/8k PHYs in PCIe nodes
Date:   Wed, 31 Jul 2019 14:21:25 +0200
Message-Id: <20190731122126.3049-19-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fill-in the missing PCIe phys/phy-names DT properties of Armada 7k/8k
based boards.

The MacchiatoBin is a bit particular as the Armada8k-PCI IP supports
x4 link widths and in this case the PHY for each lane must be
referenced.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-7040-db.dts         |  2 ++
 .../boot/dts/marvell/armada-8040-clearfog-gt-8k.dts    |  2 ++
 arch/arm64/boot/dts/marvell/armada-8040-db.dts         | 10 ++++++++++
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi     |  4 ++++
 4 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index 81bea91468f7..d1160edf57e0 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -124,6 +124,8 @@
 
 &cp0_pcie2 {
 	status = "okay";
+	phys = <&cp0_comphy5 2>;
+	phy-names = "cp0-pcie2-x1-phy";
 };
 
 &cp0_i2c0 {
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 281209aa7f2c..bcb0421c7ac0 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -243,6 +243,8 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&cp0_pci0_reset_pins &cp0_wlan_disable_pins>;
 	reset-gpios = <&cp0_gpio2 0 GPIO_ACTIVE_LOW>;
+	phys = <&cp0_comphy0 0>;
+	phy-names = "cp0-pcie0-x1-phy";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index 1086d53fd1b9..9746969e8da9 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -108,11 +108,15 @@
 
 /* CON6 on CP0 expansion */
 &cp0_pcie0 {
+	phys = <&cp0_comphy0 0>;
+	phy-names = "cp0-pcie0-x1-phy";
 	status = "okay";
 };
 
 /* CON5 on CP0 expansion */
 &cp0_pcie2 {
+	phys = <&cp0_comphy5 2>;
+	phy-names = "cp0-pcie2-x1-phy";
 	status = "okay";
 };
 
@@ -198,16 +202,22 @@
 
 /* CON6 on CP1 expansion */
 &cp1_pcie0 {
+	phys = <&cp1_comphy0 0>;
+	phy-names = "cp1-pcie0-x1-phy";
 	status = "okay";
 };
 
 /* CON7 on CP1 expansion */
 &cp1_pcie1 {
+	phys = <&cp1_comphy4 1>;
+	phy-names = "cp1-pcie1-x1-phy";
 	status = "okay";
 };
 
 /* CON5 on CP1 expansion */
 &cp1_pcie2 {
+	phys = <&cp1_comphy5 2>;
+	phy-names = "cp1-pcie2-x1-phy";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 6b9941d92e20..a2c099a12e55 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -186,6 +186,10 @@
 	reset-gpios = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
 	ranges = <0x81000000 0x0 0xf9010000 0x0 0xf9010000 0x0 0x10000
 		  0x82000000 0x0 0xc0000000 0x0 0xc0000000 0x0 0x20000000>;
+	phys = <&cp0_comphy0 0>, <&cp0_comphy1 0>,
+	       <&cp0_comphy2 0>, <&cp0_comphy3 0>;
+	phy-names = "cp0-pcie0-x4-lane0-phy", "cp0-pcie0-x4-lane1-phy",
+		    "cp0-pcie0-x4-lane2-phy", "cp0-pcie0-x4-lane3-phy";
 	status = "okay";
 };
 
-- 
2.20.1

