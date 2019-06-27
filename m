Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44C7457FA9
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 11:51:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726557AbfF0Jvo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 05:51:44 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:53029 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726292AbfF0Jvo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 05:51:44 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id CCDB524000A;
        Thu, 27 Jun 2019 09:51:40 +0000 (UTC)
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
Subject: [PATCH v2 12/19] phy: mvebu-cp110-comphy: Update comment about powering off all lanes at boot
Date:   Thu, 27 Jun 2019 11:50:57 +0200
Message-Id: <20190627095104.22529-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190627095104.22529-1-miquel.raynal@bootlin.com>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that all COMPHY modes are supported by the driver, update the
comment stating that mvebu_comphy_power_off() should be called for
each lane. This is still wrong because for compatibility reasons, it
might break users running an old firmware (the driver only uses SMC
calls for SATA, USB and PCIe configuration, there is no code in Linux
to fallback on in these cases.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index 3fb5517a6d30..36b2056eac99 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -941,9 +941,11 @@ static int mvebu_comphy_probe(struct platform_device *pdev)
 		phy_set_drvdata(phy, lane);
 
 		/*
-		 * Once all modes are supported in this driver we should call
+		 * All modes are supported in this driver so we could call
 		 * mvebu_comphy_power_off(phy) here to avoid relying on the
-		 * bootloader/firmware configuration.
+		 * bootloader/firmware configuration, but for compatibility
+		 * reasons we cannot de-configure the COMPHY without being sure
+		 * that the firmware is up-to-date and fully-featured.
 		 */
 	}
 
-- 
2.19.1

