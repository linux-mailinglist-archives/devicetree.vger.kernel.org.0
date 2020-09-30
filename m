Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D720427EDD5
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:50:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730925AbgI3PuT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725893AbgI3PuS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:50:18 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B07A0C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:50:18 -0700 (PDT)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNeMt-0006WU-1C; Wed, 30 Sep 2020 17:50:11 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Date:   Wed, 30 Sep 2020 17:49:58 +0200
Message-Id: <20200930155006.535712-4-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200930155006.535712-1-l.stach@pengutronix.de>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.2
Subject: [PATCH 03/11] soc: imx: gpcv2: split power up and power down sequence control
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current mixed function to control both power up and power down
sequences is very hard to follow and already contains some sequence
errors like triggering the ADB400 handshake at the wrong time due to
this. Split the function into two, which results in slightly more
code, but is way easier to get right.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 149 +++++++++++++++++++++++++---------------
 1 file changed, 95 insertions(+), 54 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index dc420734b16c..f91063c9fb92 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -127,20 +127,19 @@ struct imx_pgc_domain_data {
 	const struct regmap_access_table *reg_access_table;
 };
 
-static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
-				      bool on)
+static inline struct imx_pgc_domain *
+to_imx_pgc_domain(struct generic_pm_domain *genpd)
 {
-	struct imx_pgc_domain *domain = container_of(genpd,
-						      struct imx_pgc_domain,
-						      genpd);
-	unsigned int offset = on ?
-		GPC_PU_PGC_SW_PUP_REQ : GPC_PU_PGC_SW_PDN_REQ;
-	const bool enable_power_control = !on;
-	const bool has_regulator = !IS_ERR(domain->regulator);
-	int i, ret = 0;
-	u32 pxx_req;
-
-	if (has_regulator && on) {
+	return container_of(genpd, struct imx_pgc_domain, genpd);
+}
+
+static int imx_pgc_power_up(struct generic_pm_domain *genpd)
+{
+	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
+	u32 reg_val;
+	int i, ret;
+
+	if (!IS_ERR(domain->regulator)) {
 		ret = regulator_enable(domain->regulator);
 		if (ret) {
 			dev_err(domain->dev, "failed to enable regulator\n");
@@ -149,69 +148,111 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 	}
 
 	/* Enable reset clocks for all devices in the domain */
+	for (i = 0; i < domain->num_clks; i++) {
+		ret = clk_prepare_enable(domain->clk[i]);
+		if (ret) {
+			dev_err(domain->dev, "failed to enable clock %d\n", i);
+			goto out_clk_disable;
+		}
+	}
+
+	/* request the domain to power up */
+	regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
+			   domain->bits.pxx, domain->bits.pxx);
+	/*
+	 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
+	 * for PUP_REQ/PDN_REQ bit to be cleared
+	 */
+	ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
+				       reg_val, !(reg_val & domain->bits.pxx),
+				       0, USEC_PER_MSEC);
+	if (ret) {
+		dev_err(domain->dev, "failed to command PGC\n");
+		goto out_clk_disable;
+	}
+
+	/* disable power control */
+	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+			   GPC_PGC_CTRL_PCR, 0);
+
+	/* request the ADB400 to power up */
+	if (domain->bits.hsk)
+		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
+				   domain->bits.hsk, domain->bits.hsk);
+
+	/* Disable reset clocks for all devices in the domain */
 	for (i = 0; i < domain->num_clks; i++)
-		clk_prepare_enable(domain->clk[i]);
+		clk_disable_unprepare(domain->clk[i]);
+
+	return 0;
 
-	if (enable_power_control)
-		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+out_clk_disable:
+	for (i--; i >= 0; i--)
+		clk_disable_unprepare(domain->clk[i]);
+	if (!IS_ERR(domain->regulator))
+		regulator_disable(domain->regulator);
+
+	return ret;
+}
+
+static int imx_pgc_power_down(struct generic_pm_domain *genpd)
+{
+	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
+	u32 reg_val;
+	int i, ret;
 
+	/* Enable reset clocks for all devices in the domain */
+	for (i = 0; i < domain->num_clks; i++) {
+		ret = clk_prepare_enable(domain->clk[i]);
+		if (ret) {
+			dev_err(domain->dev, "failed to enable clock %d\n", i);
+			goto out_clk_disable;
+		}
+	}
+
+	/* request the ADB400 to power down */
 	if (domain->bits.hsk)
 		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
-				   domain->bits.hsk, on ? domain->bits.hsk : 0);
+				   domain->bits.hsk, 0);
 
-	regmap_update_bits(domain->regmap, offset,
-			   domain->bits.pxx, domain->bits.pxx);
+	/* enable power control */
+	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+			   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
 
+	/* request the domain to power down */
+	regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
+			   domain->bits.pxx, domain->bits.pxx);
 	/*
 	 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
 	 * for PUP_REQ/PDN_REQ bit to be cleared
 	 */
-	ret = regmap_read_poll_timeout(domain->regmap, offset, pxx_req,
-				       !(pxx_req & domain->bits.pxx),
+	ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
+				       reg_val, !(reg_val & domain->bits.pxx),
 				       0, USEC_PER_MSEC);
 	if (ret) {
 		dev_err(domain->dev, "failed to command PGC\n");
-		/*
-		 * If we were in a process of enabling a
-		 * domain and failed we might as well disable
-		 * the regulator we just enabled. And if it
-		 * was the opposite situation and we failed to
-		 * power down -- keep the regulator on
-		 */
-		on = !on;
+		goto out_clk_disable;
 	}
 
-	if (enable_power_control)
-		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-				   GPC_PGC_CTRL_PCR, 0);
-
 	/* Disable reset clocks for all devices in the domain */
 	for (i = 0; i < domain->num_clks; i++)
 		clk_disable_unprepare(domain->clk[i]);
 
-	if (has_regulator && !on) {
-		int err;
-
-		err = regulator_disable(domain->regulator);
-		if (err)
-			dev_err(domain->dev,
-				"failed to disable regulator: %d\n", err);
-		/* Preserve earlier error code */
-		ret = ret ?: err;
+	if (!IS_ERR(domain->regulator)) {
+		ret = regulator_disable(domain->regulator);
+		if (ret) {
+			dev_err(domain->dev, "failed to disable regulator\n");
+			return ret;
+		}
 	}
 
-	return ret;
-}
+	return 0;
 
-static int imx_gpc_pu_pgc_sw_pup_req(struct generic_pm_domain *genpd)
-{
-	return imx_gpc_pu_pgc_sw_pxx_req(genpd, true);
-}
+out_clk_disable:
+	for (i--; i >= 0; i--)
+		clk_disable_unprepare(domain->clk[i]);
 
-static int imx_gpc_pu_pgc_sw_pdn_req(struct generic_pm_domain *genpd)
-{
-	return imx_gpc_pu_pgc_sw_pxx_req(genpd, false);
+	return 0;
 }
 
 static const struct imx_pgc_domain imx7_pgc_domains[] = {
@@ -631,8 +672,8 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
 
 		domain = pd_pdev->dev.platform_data;
 		domain->regmap = regmap;
-		domain->genpd.power_on  = imx_gpc_pu_pgc_sw_pup_req;
-		domain->genpd.power_off = imx_gpc_pu_pgc_sw_pdn_req;
+		domain->genpd.power_on  = imx_pgc_power_up;
+		domain->genpd.power_off = imx_pgc_power_down;
 
 		pd_pdev->dev.parent = dev;
 		pd_pdev->dev.of_node = np;
-- 
2.20.1

