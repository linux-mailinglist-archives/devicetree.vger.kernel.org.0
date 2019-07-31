Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 953997C117
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:21:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726691AbfGaMVy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:21:54 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:60287 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfGaMVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:21:54 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0608AFF814;
        Wed, 31 Jul 2019 12:21:51 +0000 (UTC)
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
Subject: [PATCH v3 17/19] arm64: dts: marvell: Add 7k/8k PHYs in USB3 nodes
Date:   Wed, 31 Jul 2019 14:21:24 +0200
Message-Id: <20190731122126.3049-18-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fill-in the missing USB3 phys/phy-names DT properties of Armada 7k/8k
based boards. Only update nodes actually enabling USB3 in the default
(mainline) configuration. A few USB nodes are enabled but there is
only USB2 working on them.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-7040-db.dts             | 4 ++++
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 2 ++
 arch/arm64/boot/dts/marvell/armada-8040-db.dts             | 2 ++
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi         | 2 ++
 4 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index 45eb4197e603..81bea91468f7 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -228,11 +228,15 @@
 
 &cp0_usb3_0 {
 	usb-phy = <&cp0_usb3_0_phy>;
+	phys = <&cp0_comphy1 0>;
+	phy-names = "cp0-usb3h0-comphy";
 	status = "okay";
 };
 
 &cp0_usb3_1 {
 	usb-phy = <&cp0_usb3_1_phy>;
+	phys = <&cp0_comphy4 1>;
+	phy-names = "cp0-usb3h1-comphy";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 1527c82177ab..281209aa7f2c 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -474,5 +474,7 @@
 
 &cp1_usb3_0 {
 	usb-phy = <&usb3h0_phy>;
+	phys = <&cp1_comphy2 0>;
+	phy-names = "cp1-usb3h0-comphy";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index 66afed6c6245..1086d53fd1b9 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -163,6 +163,8 @@
 /* CON10 on CP0 expansion */
 &cp0_usb3_1 {
 	usb-phy = <&cp0_usb3_1_phy>;
+	phys = <&cp0_comphy4 1>;
+	phy-names = "cp0-usb3h1-comphy";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index b8f28d62be5c..6b9941d92e20 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -359,5 +359,7 @@
 &cp1_usb3_0 {
 	/* CPS Lane 2 - CON7 */
 	usb-phy = <&usb3h0_phy>;
+	phys = <&cp1_comphy2 0>;
+	phy-names = "cp1-usb3h0-comphy";
 	status = "okay";
 };
-- 
2.20.1

