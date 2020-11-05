Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F4592A8536
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 18:44:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729862AbgKERop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 12:44:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727275AbgKERop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 12:44:45 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DBC8C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 09:44:45 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kajJP-0005qB-On; Thu, 05 Nov 2020 18:44:40 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Thu,  5 Nov 2020 18:44:24 +0100
Message-Id: <20201105174434.1817539-4-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201105174434.1817539-1-l.stach@pengutronix.de>
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL autolearn=no autolearn_force=no
        version=3.4.2
Subject: [PATCH v2 03/13] soc: imx: gpcv2: switch to clk_bulk_* API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use clk_bulk API to simplify the code a bit. Also add some error
checking to the clk_prepare_enable calls.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 60 +++++++++--------------------------------
 1 file changed, 12 insertions(+), 48 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 552d3e6bee52..1d90c7802972 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -100,13 +100,11 @@
 
 #define GPC_PGC_CTRL_PCR		BIT(0)
 
-#define GPC_CLK_MAX		6
-
 struct imx_pgc_domain {
 	struct generic_pm_domain genpd;
 	struct regmap *regmap;
 	struct regulator *regulator;
-	struct clk *clk[GPC_CLK_MAX];
+	struct clk_bulk_data *clks;
 	int num_clks;
 
 	unsigned int pgc;
@@ -149,8 +147,12 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 	}
 
 	/* Enable reset clocks for all devices in the domain */
-	for (i = 0; i < domain->num_clks; i++)
-		clk_prepare_enable(domain->clk[i]);
+	clk_bulk_prepare_enable(domain->num_clks, domain->clks);
+	if (ret) {
+		dev_err(domain->dev, "failed to enable reset clocks\n");
+		regulator_disable(domain->regulator);
+		return ret;
+	}
 
 	if (enable_power_control)
 		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
@@ -187,8 +189,7 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 				   GPC_PGC_CTRL_PCR, 0);
 
 	/* Disable reset clocks for all devices in the domain */
-	for (i = 0; i < domain->num_clks; i++)
-		clk_disable_unprepare(domain->clk[i]);
+	clk_bulk_disable_unprepare(domain->num_clks, domain->clks);
 
 	if (has_regulator && !on) {
 		int err;
@@ -438,41 +439,6 @@ static const struct imx_pgc_domain_data imx8m_pgc_domain_data = {
 	.reg_access_table = &imx8m_access_table,
 };
 
-static int imx_pgc_get_clocks(struct imx_pgc_domain *domain)
-{
-	int i, ret;
-
-	for (i = 0; ; i++) {
-		struct clk *clk = of_clk_get(domain->dev->of_node, i);
-		if (IS_ERR(clk))
-			break;
-		if (i >= GPC_CLK_MAX) {
-			dev_err(domain->dev, "more than %d clocks\n",
-				GPC_CLK_MAX);
-			ret = -EINVAL;
-			goto clk_err;
-		}
-		domain->clk[i] = clk;
-	}
-	domain->num_clks = i;
-
-	return 0;
-
-clk_err:
-	while (i--)
-		clk_put(domain->clk[i]);
-
-	return ret;
-}
-
-static void imx_pgc_put_clocks(struct imx_pgc_domain *domain)
-{
-	int i;
-
-	for (i = domain->num_clks - 1; i >= 0; i--)
-		clk_put(domain->clk[i]);
-}
-
 static int imx_pgc_domain_probe(struct platform_device *pdev)
 {
 	struct imx_pgc_domain *domain = pdev->dev.platform_data;
@@ -490,9 +456,10 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 				      domain->voltage, domain->voltage);
 	}
 
-	ret = imx_pgc_get_clocks(domain);
-	if (ret)
-		return dev_err_probe(domain->dev, ret, "Failed to get domain's clocks\n");
+	domain->num_clks = devm_clk_bulk_get_all(domain->dev, &domain->clks);
+	if (domain->num_clks < 0)
+		return dev_err_probe(domain->dev, domain->num_clks,
+				     "Failed to get domain's clocks\n");
 
 	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
 			   domain->bits.map, domain->bits.map);
@@ -517,7 +484,6 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 out_domain_unmap:
 	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
 			   domain->bits.map, 0);
-	imx_pgc_put_clocks(domain);
 
 	return ret;
 }
@@ -532,8 +498,6 @@ static int imx_pgc_domain_remove(struct platform_device *pdev)
 	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
 			   domain->bits.map, 0);
 
-	imx_pgc_put_clocks(domain);
-
 	return 0;
 }
 
-- 
2.20.1

