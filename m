Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DE19A7C10C
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:21:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726382AbfGaMVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:21:41 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:37927 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726335AbfGaMVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:21:40 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 7A75DFF815;
        Wed, 31 Jul 2019 12:21:37 +0000 (UTC)
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
Subject: [PATCH v3 06/19] phy: mvebu-cp110-comphy: Rename the macro handling only Ethernet modes
Date:   Wed, 31 Jul 2019 14:21:13 +0200
Message-Id: <20190731122126.3049-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Before adding support for other PHY modes (not Ethernet ones), let's
rename the MVEBU_COMPHY_CONF macro to a more specific (and shorter)
appellation.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 44 ++++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index 125a09b0fd67..5263c2053359 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -169,7 +169,7 @@ struct mvebu_comphy_conf {
 	u32 fw_mode;
 };
 
-#define MVEBU_COMPHY_CONF(_lane, _port, _submode, _mux, _fw)	\
+#define ETH_CONF(_lane, _port, _submode, _mux, _fw)	\
 	{						\
 		.lane = _lane,				\
 		.port = _port,				\
@@ -181,32 +181,32 @@ struct mvebu_comphy_conf {
 
 static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	/* lane 0 */
-	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
-	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
+	ETH_CONF(0, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	ETH_CONF(0, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 1 */
-	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
-	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
+	ETH_CONF(1, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	ETH_CONF(1, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 2 */
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1, COMPHY_FW_MODE_XFI),
+	ETH_CONF(2, 0, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	ETH_CONF(2, 0, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
+	ETH_CONF(2, 0, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
+	ETH_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1, COMPHY_FW_MODE_XFI),
 	/* lane 3 */
-	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
-	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
-	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
+	ETH_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
+	ETH_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
+	ETH_CONF(3, 1, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
 	/* lane 4 */
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_10GKR, 0x2, COMPHY_FW_MODE_XFI),
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
-	MVEBU_COMPHY_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
-	MVEBU_COMPHY_CONF(4, 1, PHY_INTERFACE_MODE_2500BASEX, -1, COMPHY_FW_MODE_HS_SGMII),
-	MVEBU_COMPHY_CONF(4, 1, PHY_INTERFACE_MODE_10GKR, -1, COMPHY_FW_MODE_XFI),
+	ETH_CONF(4, 0, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
+	ETH_CONF(4, 0, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
+	ETH_CONF(4, 0, PHY_INTERFACE_MODE_10GKR, 0x2, COMPHY_FW_MODE_XFI),
+	ETH_CONF(4, 0, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
+	ETH_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	ETH_CONF(4, 1, PHY_INTERFACE_MODE_2500BASEX, -1, COMPHY_FW_MODE_HS_SGMII),
+	ETH_CONF(4, 1, PHY_INTERFACE_MODE_10GKR, -1, COMPHY_FW_MODE_XFI),
 	/* lane 5 */
-	MVEBU_COMPHY_CONF(5, 1, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
-	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
-	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
+	ETH_CONF(5, 1, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
+	ETH_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	ETH_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 };
 
 struct mvebu_comphy_priv {
-- 
2.20.1

