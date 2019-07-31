Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1DC667C110
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726448AbfGaMVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:21:45 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:51847 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfGaMVp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:21:45 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id AA893FF81A;
        Wed, 31 Jul 2019 12:21:42 +0000 (UTC)
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
Subject: [PATCH v3 10/19] phy: mvebu-cp110-comphy: Cosmetic change in a helper
Date:   Wed, 31 Jul 2019 14:21:17 +0200
Message-Id: <20190731122126.3049-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Before adding more logic, simplify a bit the writing of the
mvebu_comphy_get_mode() helper by using a pointer instead of
referencing a configuration with the entire table name.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index 67050f98b3c6..c61469ed7cbe 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -265,16 +265,18 @@ static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
 				 enum phy_mode mode, int submode)
 {
 	int i, n = ARRAY_SIZE(mvebu_comphy_cp110_modes);
+	const struct mvebu_comphy_conf *conf;
 
 	/* Unused PHY mux value is 0x0 */
 	if (mode == PHY_MODE_INVALID)
 		return 0;
 
 	for (i = 0; i < n; i++) {
-		if (mvebu_comphy_cp110_modes[i].lane == lane &&
-		    mvebu_comphy_cp110_modes[i].port == port &&
-		    mvebu_comphy_cp110_modes[i].mode == mode &&
-		    mvebu_comphy_cp110_modes[i].submode == submode)
+		conf = &mvebu_comphy_cp110_modes[i];
+		if (conf->lane == lane &&
+		    conf->port == port &&
+		    conf->mode == mode &&
+		    conf->submode == submode)
 			break;
 	}
 
@@ -282,9 +284,9 @@ static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
 		return -EINVAL;
 
 	if (fw_mode)
-		return mvebu_comphy_cp110_modes[i].fw_mode;
+		return conf->fw_mode;
 	else
-		return mvebu_comphy_cp110_modes[i].mux;
+		return conf->mux;
 }
 
 static inline int mvebu_comphy_get_mux(int lane, int port,
-- 
2.20.1

