Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DBFC2524F
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 16:37:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728256AbfEUOhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 10:37:55 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:41589 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726900AbfEUOhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 10:37:55 -0400
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id CCDBCFF80B;
        Tue, 21 May 2019 14:37:50 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>
Cc:     <linux-arm-kernel@lists.infradead.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Konstantin Porotchkin <kostap@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] arm64: dts: marvell: Disable AP I2C on Armada-8040-DB
Date:   Tue, 21 May 2019 16:37:49 +0200
Message-Id: <20190521143749.488-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Konstantin Porotchkin <kostap@marvell.com>

While AP I2C bus was available to users in early revisions of the SoC,
this is not the case anymore since eMMC was connected to the AP. Most
users do not have access to this I2C bus so do not enable it in the
board device tree.

As there are three I2C buses enabled on this board, add an alias to be
sure the two other buses keep their initial numbering.

Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
[<miquel.raynal@bootlin.com>: Reword commit message, add alias]
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-8040-db.dts | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index 9f4f939ab65f..d6e9c014c2f9 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -27,6 +27,8 @@
 		ethernet1 = &cp0_eth2;
 		ethernet2 = &cp1_eth0;
 		ethernet3 = &cp1_eth1;
+		i2c1 = &cp0_i2c0;
+		i2c2 = &cp1_i2c0;
 	};
 
 	cp0_reg_usb3_0_vbus: cp0-usb3-0-vbus {
@@ -72,11 +74,6 @@
 	};
 };
 
-&i2c0 {
-	status = "okay";
-	clock-frequency = <100000>;
-};
-
 &spi0 {
 	status = "okay";
 
-- 
2.19.1

