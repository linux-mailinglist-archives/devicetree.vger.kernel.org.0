Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AA7397C10A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726375AbfGaMVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:21:39 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:34979 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725914AbfGaMVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:21:39 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 8C91DFF814;
        Wed, 31 Jul 2019 12:21:33 +0000 (UTC)
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
Subject: [PATCH v3 03/19] phy: mvebu-cp110-comphy: Add SMC call support
Date:   Wed, 31 Jul 2019 14:21:10 +0200
Message-Id: <20190731122126.3049-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Keep the exact same list of supported configurations but first try to
use the firmware's implementation. If it fails, try the legacy method:
Linux implementation.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
[miquel.raynal@bootlin.com: adapt the content to the mainline driver]
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Tested-by: Grzegorz Jaszczyk <jaz@semihalf.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 226 ++++++++++++++++---
 1 file changed, 190 insertions(+), 36 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index 6922dfe6a385..a07449ec98c3 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -5,6 +5,7 @@
  * Antoine Tenart <antoine.tenart@free-electrons.com>
  */
 
+#include <linux/arm-smccc.h>
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
@@ -116,45 +117,89 @@
 #define MVEBU_COMPHY_LANES	6
 #define MVEBU_COMPHY_PORTS	3
 
+#define COMPHY_SIP_POWER_ON	0x82000001
+#define COMPHY_SIP_POWER_OFF	0x82000002
+#define COMPHY_FW_NOT_SUPPORTED	(-1)
+
+/*
+ * A lane is described by the following bitfields:
+ * [ 1- 0]: COMPHY polarity invertion
+ * [ 2- 7]: COMPHY speed
+ * [ 5-11]: COMPHY port index
+ * [12-16]: COMPHY mode
+ * [17]: Clock source
+ */
+#define COMPHY_FW_POL_OFFSET	0
+#define COMPHY_FW_POL_MASK	GENMASK(1, 0)
+#define COMPHY_FW_SPEED_OFFSET	2
+#define COMPHY_FW_SPEED_MASK	GENMASK(7, 2)
+#define COMPHY_FW_SPEED_MAX	COMPHY_FW_SPEED_MASK
+#define COMPHY_FW_SPEED_1250	0
+#define COMPHY_FW_SPEED_3125	2
+#define COMPHY_FW_SPEED_5000	3
+#define COMPHY_FW_SPEED_103125	6
+#define COMPHY_FW_PORT_OFFSET	8
+#define COMPHY_FW_PORT_MASK	GENMASK(11, 8)
+#define COMPHY_FW_MODE_OFFSET	12
+#define COMPHY_FW_MODE_MASK	GENMASK(16, 12)
+
+#define COMPHY_FW_PARAM_FULL(mode, port, speed, pol)			\
+	((((pol) << COMPHY_FW_POL_OFFSET) & COMPHY_FW_POL_MASK) |	\
+	 (((mode) << COMPHY_FW_MODE_OFFSET) & COMPHY_FW_MODE_MASK) |	\
+	 (((port) << COMPHY_FW_PORT_OFFSET) & COMPHY_FW_PORT_MASK) |	\
+	 (((speed) << COMPHY_FW_SPEED_OFFSET) & COMPHY_FW_SPEED_MASK))
+
+#define COMPHY_FW_PARAM(mode, port)					\
+	COMPHY_FW_PARAM_FULL(mode, port, 0, 0)
+
+#define COMPHY_FW_PARAM_ETH(mode, port, speed)				\
+	COMPHY_FW_PARAM_FULL(mode, port, speed, 0)
+
+#define COMPHY_FW_MODE_SGMII		0x2 /* SGMII 1G */
+#define COMPHY_FW_MODE_HS_SGMII		0x3 /* SGMII 2.5G */
+#define COMPHY_FW_MODE_XFI		0x8 /* SFI: 0x9 (is treated like XFI) */
+
 struct mvebu_comphy_conf {
 	enum phy_mode mode;
 	int submode;
 	unsigned lane;
 	unsigned port;
 	u32 mux;
+	u32 fw_mode;
 };
 
-#define MVEBU_COMPHY_CONF(_lane, _port, _submode, _mux)	\
+#define MVEBU_COMPHY_CONF(_lane, _port, _submode, _mux, _fw)	\
 	{						\
 		.lane = _lane,				\
 		.port = _port,				\
 		.mode = PHY_MODE_ETHERNET,		\
 		.submode = _submode,			\
 		.mux = _mux,				\
+		.fw_mode = _fw,				\
 	}
 
 static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	/* lane 0 */
-	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_SGMII, 0x1),
-	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1),
+	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 1 */
-	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_SGMII, 0x1),
-	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1),
+	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 2 */
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_SGMII, 0x1),
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_2500BASEX, 0x1),
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1),
+	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
+	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1, COMPHY_FW_MODE_XFI),
 	/* lane 3 */
-	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2),
-	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2),
+	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 4 */
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_SGMII, 0x2),
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_2500BASEX, 0x2),
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_10GKR, 0x2),
-	MVEBU_COMPHY_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1),
+	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
+	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_10GKR, 0x2, COMPHY_FW_MODE_XFI),
+	MVEBU_COMPHY_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	/* lane 5 */
-	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1),
-	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1),
+	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 };
 
 struct mvebu_comphy_priv {
@@ -164,6 +209,7 @@ struct mvebu_comphy_priv {
 	struct clk *mg_domain_clk;
 	struct clk *mg_core_clk;
 	struct clk *axi_clk;
+	unsigned long cp_phys;
 };
 
 struct mvebu_comphy_lane {
@@ -174,8 +220,18 @@ struct mvebu_comphy_lane {
 	int port;
 };
 
-static int mvebu_comphy_get_mux(int lane, int port,
-				enum phy_mode mode, int submode)
+static int mvebu_comphy_smc(unsigned long function, unsigned long phys,
+			    unsigned long lane, unsigned long mode)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(function, phys, lane, mode, 0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
+				 enum phy_mode mode, int submode)
 {
 	int i, n = ARRAY_SIZE(mvebu_comphy_cp110_modes);
 
@@ -194,7 +250,22 @@ static int mvebu_comphy_get_mux(int lane, int port,
 	if (i == n)
 		return -EINVAL;
 
-	return mvebu_comphy_cp110_modes[i].mux;
+	if (fw_mode)
+		return mvebu_comphy_cp110_modes[i].fw_mode;
+	else
+		return mvebu_comphy_cp110_modes[i].mux;
+}
+
+static inline int mvebu_comphy_get_mux(int lane, int port,
+				       enum phy_mode mode, int submode)
+{
+	return mvebu_comphy_get_mode(false, lane, port, mode, submode);
+}
+
+static inline int mvebu_comphy_get_fw_mode(int lane, int port,
+					   enum phy_mode mode, int submode)
+{
+	return mvebu_comphy_get_mode(true, lane, port, mode, submode);
 }
 
 static void mvebu_comphy_ethernet_init_reset(struct mvebu_comphy_lane *lane)
@@ -480,7 +551,7 @@ static int mvebu_comphy_set_mode_10gkr(struct phy *phy)
 	return mvebu_comphy_init_plls(lane);
 }
 
-static int mvebu_comphy_power_on(struct phy *phy)
+static int mvebu_comphy_power_on_legacy(struct phy *phy)
 {
 	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 	struct mvebu_comphy_priv *priv = lane->priv;
@@ -521,6 +592,68 @@ static int mvebu_comphy_power_on(struct phy *phy)
 	return ret;
 }
 
+static int mvebu_comphy_power_on(struct phy *phy)
+{
+	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
+	struct mvebu_comphy_priv *priv = lane->priv;
+	int fw_mode, fw_speed;
+	u32 fw_param = 0;
+	int ret;
+
+	fw_mode = mvebu_comphy_get_fw_mode(lane->id, lane->port,
+					   lane->mode, lane->submode);
+	if (fw_mode < 0)
+		goto try_legacy;
+
+	/* Try SMC flow first */
+	switch (lane->mode) {
+	case PHY_MODE_ETHERNET:
+		switch (lane->submode) {
+		case PHY_INTERFACE_MODE_SGMII:
+			dev_dbg(priv->dev, "set lane %d to 1000BASE-X mode\n",
+				lane->id);
+			fw_speed = COMPHY_FW_SPEED_1250;
+			break;
+		case PHY_INTERFACE_MODE_2500BASEX:
+			dev_dbg(priv->dev, "set lane %d to 2500BASE-X mode\n",
+				lane->id);
+			fw_speed = COMPHY_FW_SPEED_3125;
+			break;
+		case PHY_INTERFACE_MODE_10GKR:
+			dev_dbg(priv->dev, "set lane %d to 10G-KR mode\n",
+				lane->id);
+			fw_speed = COMPHY_FW_SPEED_103125;
+			break;
+		default:
+			dev_err(priv->dev, "unsupported Ethernet mode (%d)\n",
+				lane->submode);
+			return -ENOTSUPP;
+		}
+		fw_param = COMPHY_FW_PARAM_ETH(fw_mode, lane->port, fw_speed);
+		break;
+	default:
+		dev_err(priv->dev, "unsupported PHY mode (%d)\n", lane->mode);
+		return -ENOTSUPP;
+	}
+
+	ret = mvebu_comphy_smc(COMPHY_SIP_POWER_ON, priv->cp_phys, lane->id,
+			       fw_param);
+	if (!ret)
+		return ret;
+
+	if (ret == COMPHY_FW_NOT_SUPPORTED)
+		dev_err(priv->dev,
+			"unsupported SMC call, try updating your firmware\n");
+
+	dev_warn(priv->dev,
+		 "Firmware could not configure PHY %d with mode %d (ret: %d), trying legacy method\n",
+		 lane->id, lane->mode, ret);
+
+try_legacy:
+	/* Fallback to Linux's implementation */
+	return mvebu_comphy_power_on_legacy(phy);
+}
+
 static int mvebu_comphy_set_mode(struct phy *phy,
 				 enum phy_mode mode, int submode)
 {
@@ -532,7 +665,7 @@ static int mvebu_comphy_set_mode(struct phy *phy,
 	if (submode == PHY_INTERFACE_MODE_1000BASEX)
 		submode = PHY_INTERFACE_MODE_SGMII;
 
-	if (mvebu_comphy_get_mux(lane->id, lane->port, mode, submode) < 0)
+	if (mvebu_comphy_get_fw_mode(lane->id, lane->port, mode, submode) < 0)
 		return -EINVAL;
 
 	lane->mode = mode;
@@ -540,27 +673,42 @@ static int mvebu_comphy_set_mode(struct phy *phy,
 	return 0;
 }
 
+static int mvebu_comphy_power_off_legacy(struct phy *phy)
+{
+	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
+	struct mvebu_comphy_priv *priv = lane->priv;
+	u32 val;
+
+	val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
+	val &= ~(MVEBU_COMPHY_SERDES_CFG1_RESET |
+		 MVEBU_COMPHY_SERDES_CFG1_CORE_RESET |
+		 MVEBU_COMPHY_SERDES_CFG1_RF_RESET);
+	writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
+
+	regmap_read(priv->regmap, MVEBU_COMPHY_SELECTOR, &val);
+	val &= ~(0xf << MVEBU_COMPHY_SELECTOR_PHY(lane->id));
+	regmap_write(priv->regmap, MVEBU_COMPHY_SELECTOR, val);
+
+	regmap_read(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, &val);
+	val &= ~(0xf << MVEBU_COMPHY_PIPE_SELECTOR_PIPE(lane->id));
+	regmap_write(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, val);
+
+	return 0;
+}
+
 static int mvebu_comphy_power_off(struct phy *phy)
 {
 	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 	struct mvebu_comphy_priv *priv = lane->priv;
-	u32 val;
+	int ret;
 
-	val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
-	val &= ~(MVEBU_COMPHY_SERDES_CFG1_RESET |
-		 MVEBU_COMPHY_SERDES_CFG1_CORE_RESET |
-		 MVEBU_COMPHY_SERDES_CFG1_RF_RESET);
-	writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
+	ret = mvebu_comphy_smc(COMPHY_SIP_POWER_OFF, priv->cp_phys,
+			       lane->id, 0);
+	if (!ret)
+		return ret;
 
-	regmap_read(priv->regmap, MVEBU_COMPHY_SELECTOR, &val);
-	val &= ~(0xf << MVEBU_COMPHY_SELECTOR_PHY(lane->id));
-	regmap_write(priv->regmap, MVEBU_COMPHY_SELECTOR, val);
-
-	regmap_read(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, &val);
-	val &= ~(0xf << MVEBU_COMPHY_PIPE_SELECTOR_PIPE(lane->id));
-	regmap_write(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, val);
-
-	return 0;
+	/* Fallback to Linux's implementation */
+	return mvebu_comphy_power_off_legacy(phy);
 }
 
 static const struct phy_ops mvebu_comphy_ops = {
@@ -682,6 +830,12 @@ static int mvebu_comphy_probe(struct platform_device *pdev)
 		dev_warn(&pdev->dev, "cannot initialize clocks\n");
 	}
 
+	/*
+	 * Hack to retrieve a physical offset relative to this CP that will be
+	 * given to the firmware
+	 */
+	priv->cp_phys = res->start;
+
 	for_each_available_child_of_node(pdev->dev.of_node, child) {
 		struct mvebu_comphy_lane *lane;
 		struct phy *phy;
-- 
2.20.1

