Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A48B3D1852
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231981AbhGUUGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231849AbhGUUGi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:38 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3D06C061575
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:14 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7U-0004jk-MS; Wed, 21 Jul 2021 22:47:08 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 05/18] soc: imx: gpcv2: add domain option to keep domain clocks enabled
Date:   Wed, 21 Jul 2021 22:46:50 +0200
Message-Id: <20210721204703.1424034-6-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210721204703.1424034-1-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the MIX domains are using clocks to drive the bus bridges. Those
must be enabled at all times, as long as the domain is powered up and
they don't have any other consumer than the power domain. Add an option
to keep the clocks attached to a domain enabled as long as the domain
is power up and only disable them after the domain is powered down.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 35f26f57d1ac..c3b1d2580963 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -202,6 +202,7 @@ struct imx_pgc_domain {
 	} bits;
 
 	const int voltage;
+	const bool keep_clocks;
 	struct device *dev;
 };
 
@@ -295,7 +296,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 	}
 
 	/* Disable reset clocks for all devices in the domain */
-	clk_bulk_disable_unprepare(domain->num_clks, domain->clks);
+	if (!domain->keep_clocks)
+		clk_bulk_disable_unprepare(domain->num_clks, domain->clks);
 
 	return 0;
 
@@ -317,10 +319,12 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 	int ret;
 
 	/* Enable reset clocks for all devices in the domain */
-	ret = clk_bulk_prepare_enable(domain->num_clks, domain->clks);
-	if (ret) {
-		dev_err(domain->dev, "failed to enable reset clocks\n");
-		return ret;
+	if (!domain->keep_clocks) {
+		ret = clk_bulk_prepare_enable(domain->num_clks, domain->clks);
+		if (ret) {
+			dev_err(domain->dev, "failed to enable reset clocks\n");
+			return ret;
+		}
 	}
 
 	/* request the ADB400 to power down */
-- 
2.30.2

