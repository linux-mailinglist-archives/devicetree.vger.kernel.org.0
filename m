Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C7CDB57FA8
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 11:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726550AbfF0Jvm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 05:51:42 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:34715 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726292AbfF0Jvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 05:51:42 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2114E240017;
        Thu, 27 Jun 2019 09:51:37 +0000 (UTC)
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
Subject: [PATCH v2 11/19] phy: mvebu-cp110-comphy: Add PCIe support
Date:   Thu, 27 Jun 2019 11:50:56 +0200
Message-Id: <20190627095104.22529-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190627095104.22529-1-miquel.raynal@bootlin.com>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Add PCIe support by filling the COMPHY modes table.

Also add a new macro to generate the right value for the firmware
depending on the width (PCI x1, x2, x4, etc). The width will be passed
by the core as the "submode" argument of the ->set_mode() callback. If
this argument is zero, default to x1 mode.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
[miquel.raynal@bootlin.com: adapt the content to the mainline driver]
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 37 +++++++++++++++++---
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index fa222cf8f47b..3fb5517a6d30 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -128,6 +128,7 @@
  * [ 5-11]: COMPHY port index
  * [12-16]: COMPHY mode
  * [17]: Clock source
+ * [18-20]: PCIe width (x1, x2, x4)
  */
 #define COMPHY_FW_POL_OFFSET	0
 #define COMPHY_FW_POL_MASK	GENMASK(1, 0)
@@ -142,24 +143,31 @@
 #define COMPHY_FW_PORT_MASK	GENMASK(11, 8)
 #define COMPHY_FW_MODE_OFFSET	12
 #define COMPHY_FW_MODE_MASK	GENMASK(16, 12)
+#define COMPHY_FW_WIDTH_OFFSET	18
+#define COMPHY_FW_WIDTH_MASK	GENMASK(20, 18)
 
-#define COMPHY_FW_PARAM_FULL(mode, port, speed, pol)			\
+#define COMPHY_FW_PARAM_FULL(mode, port, speed, pol, width)		\
 	((((pol) << COMPHY_FW_POL_OFFSET) & COMPHY_FW_POL_MASK) |	\
 	 (((mode) << COMPHY_FW_MODE_OFFSET) & COMPHY_FW_MODE_MASK) |	\
 	 (((port) << COMPHY_FW_PORT_OFFSET) & COMPHY_FW_PORT_MASK) |	\
-	 (((speed) << COMPHY_FW_SPEED_OFFSET) & COMPHY_FW_SPEED_MASK))
+	 (((speed) << COMPHY_FW_SPEED_OFFSET) & COMPHY_FW_SPEED_MASK) |	\
+	 (((width) << COMPHY_FW_WIDTH_OFFSET) & COMPHY_FW_WIDTH_MASK))
 
 #define COMPHY_FW_PARAM(mode, port)					\
-	COMPHY_FW_PARAM_FULL(mode, port, 0, 0)
+	COMPHY_FW_PARAM_FULL(mode, port, COMPHY_FW_SPEED_MAX, 0, 0)
 
 #define COMPHY_FW_PARAM_ETH(mode, port, speed)				\
-	COMPHY_FW_PARAM_FULL(mode, port, speed, 0)
+	COMPHY_FW_PARAM_FULL(mode, port, speed, 0, 0)
+
+#define COMPHY_FW_PARAM_PCIE(mode, port, width)				\
+	COMPHY_FW_PARAM_FULL(mode, port, COMPHY_FW_SPEED_5000, 0, width)
 
 #define COMPHY_FW_MODE_SATA		0x1
 #define COMPHY_FW_MODE_SGMII		0x2 /* SGMII 1G */
 #define COMPHY_FW_MODE_HS_SGMII		0x3 /* SGMII 2.5G */
 #define COMPHY_FW_MODE_USB3H		0x4
 #define COMPHY_FW_MODE_USB3D		0x5
+#define COMPHY_FW_MODE_PCIE		0x6
 #define COMPHY_FW_MODE_RXAUI		0x7
 #define COMPHY_FW_MODE_XFI		0x8 /* SFI: 0x9 (is treated like XFI) */
 
@@ -194,6 +202,7 @@ struct mvebu_comphy_conf {
 
 static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	/* lane 0 */
+	GEN_CONF(0, 0, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(0, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(0, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	GEN_CONF(0, 1, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
@@ -201,6 +210,7 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	GEN_CONF(1, 0, PHY_MODE_USB_HOST_SS, COMPHY_FW_MODE_USB3H),
 	GEN_CONF(1, 0, PHY_MODE_USB_DEVICE_SS, COMPHY_FW_MODE_USB3D),
 	GEN_CONF(1, 0, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
+	GEN_CONF(1, 0, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(1, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(1, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 2 */
@@ -210,7 +220,9 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	ETH_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1, COMPHY_FW_MODE_XFI),
 	GEN_CONF(2, 0, PHY_MODE_USB_HOST_SS, COMPHY_FW_MODE_USB3H),
 	GEN_CONF(2, 0, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
+	GEN_CONF(2, 0, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	/* lane 3 */
+	GEN_CONF(3, 0, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
 	ETH_CONF(3, 1, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
@@ -223,6 +235,7 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	ETH_CONF(4, 0, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
 	GEN_CONF(4, 0, PHY_MODE_USB_DEVICE_SS, COMPHY_FW_MODE_USB3D),
 	GEN_CONF(4, 1, PHY_MODE_USB_HOST_SS, COMPHY_FW_MODE_USB3H),
+	GEN_CONF(4, 1, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(4, 1, PHY_INTERFACE_MODE_2500BASEX, -1, COMPHY_FW_MODE_HS_SGMII),
 	ETH_CONF(4, 1, PHY_INTERFACE_MODE_10GKR, -1, COMPHY_FW_MODE_XFI),
@@ -231,6 +244,7 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	GEN_CONF(5, 1, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
 	ETH_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
+	GEN_CONF(5, 2, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 };
 
 struct mvebu_comphy_priv {
@@ -265,6 +279,8 @@ static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
 				 enum phy_mode mode, int submode)
 {
 	int i, n = ARRAY_SIZE(mvebu_comphy_cp110_modes);
+	/* Ignore PCIe submode: it represents the width */
+	bool ignore_submode = (mode == PHY_MODE_PCIE);
 	const struct mvebu_comphy_conf *conf;
 
 	/* Unused PHY mux value is 0x0 */
@@ -276,7 +292,7 @@ static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
 		if (conf->lane == lane &&
 		    conf->port == port &&
 		    conf->mode == mode &&
-		    conf->submode == submode)
+		    (conf->submode == submode || ignore_submode))
 			break;
 	}
 
@@ -678,6 +694,12 @@ static int mvebu_comphy_power_on(struct phy *phy)
 		dev_dbg(priv->dev, "set lane %d to SATA mode\n", lane->id);
 		fw_param = COMPHY_FW_PARAM(fw_mode, lane->port);
 		break;
+	case PHY_MODE_PCIE:
+		dev_dbg(priv->dev, "set lane %d to PCIe mode (x%d)\n", lane->id,
+			lane->submode);
+		fw_param = COMPHY_FW_PARAM_PCIE(fw_mode, lane->port,
+						lane->submode);
+		break;
 	default:
 		dev_err(priv->dev, "unsupported PHY mode (%d)\n", lane->mode);
 		return -ENOTSUPP;
@@ -714,6 +736,11 @@ static int mvebu_comphy_set_mode(struct phy *phy,
 
 	lane->mode = mode;
 	lane->submode = submode;
+
+	/* PCIe submode represents the width */
+	if (mode == PHY_MODE_PCIE && !lane->submode)
+		lane->submode = 1;
+
 	return 0;
 }
 
-- 
2.19.1

