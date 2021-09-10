Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A430407286
	for <lists+devicetree@lfdr.de>; Fri, 10 Sep 2021 22:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233808AbhIJU2E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Sep 2021 16:28:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233784AbhIJU2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Sep 2021 16:28:04 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0764CC061574
        for <devicetree@vger.kernel.org>; Fri, 10 Sep 2021 13:26:53 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mOn6k-0000xM-Rh; Fri, 10 Sep 2021 22:26:46 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH v4 05/18] soc: imx: gpcv2: add domain option to keep domain clocks enabled
Date:   Fri, 10 Sep 2021 22:26:27 +0200
Message-Id: <20210910202640.980366-6-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210910202640.980366-1-l.stach@pengutronix.de>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
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
Reviewed-by: Peng Fan <peng.fan@nxp.com>
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

