Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ADAE27EDD8
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:50:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730958AbgI3PuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730931AbgI3PuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:50:21 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1703AC061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:50:21 -0700 (PDT)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNeMw-0006WU-MH; Wed, 30 Sep 2020 17:50:15 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Date:   Wed, 30 Sep 2020 17:50:01 +0200
Message-Id: <20200930155006.535712-7-l.stach@pengutronix.de>
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
Subject: [PATCH 06/11] soc: imx: gpcv2: allow domains without power-sequence control
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the PGC domains only control the handshake with the ADB400
and don't have any power sequence controls. Make such domains work
by allowing the pxx and map bits to be empty and skip all actions
using those controls.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 89 +++++++++++++++++++++++------------------
 1 file changed, 49 insertions(+), 40 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 5bb7b1cc7c10..db93fef0c76b 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -167,24 +167,27 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 		}
 	}
 
-	/* request the domain to power up */
-	regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
-			   domain->bits.pxx, domain->bits.pxx);
-	/*
-	 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
-	 * for PUP_REQ/PDN_REQ bit to be cleared
-	 */
-	ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
-				       reg_val, !(reg_val & domain->bits.pxx),
-				       0, USEC_PER_MSEC);
-	if (ret) {
-		dev_err(domain->dev, "failed to command PGC\n");
-		goto out_clk_disable;
-	}
+	if (domain->bits.pxx) {
+		/* request the domain to power up */
+		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
+				   domain->bits.pxx, domain->bits.pxx);
+		/*
+		 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
+		 * for PUP_REQ/PDN_REQ bit to be cleared
+		 */
+		ret = regmap_read_poll_timeout(domain->regmap,
+					       GPC_PU_PGC_SW_PUP_REQ, reg_val,
+					       !(reg_val & domain->bits.pxx),
+					       0, USEC_PER_MSEC);
+		if (ret) {
+			dev_err(domain->dev, "failed to command PGC\n");
+			goto out_clk_disable;
+		}
 
-	/* disable power control */
-	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-			   GPC_PGC_CTRL_PCR, 0);
+		/* disable power control */
+		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+				   GPC_PGC_CTRL_PCR, 0);
+	}
 
 	/* request the ADB400 to power up */
 	if (domain->bits.hskreq) {
@@ -248,23 +251,26 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 		}
 	}
 
-	/* enable power control */
-	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-			   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
-
-	/* request the domain to power down */
-	regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
-			   domain->bits.pxx, domain->bits.pxx);
-	/*
-	 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
-	 * for PUP_REQ/PDN_REQ bit to be cleared
-	 */
-	ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
-				       reg_val, !(reg_val & domain->bits.pxx),
-				       0, USEC_PER_MSEC);
-	if (ret) {
-		dev_err(domain->dev, "failed to command PGC\n");
-		goto out_clk_disable;
+	if (domain->bits.pxx) {
+		/* enable power control */
+		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
+				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+
+		/* request the domain to power down */
+		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
+				   domain->bits.pxx, domain->bits.pxx);
+		/*
+		 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
+		 * for PUP_REQ/PDN_REQ bit to be cleared
+		 */
+		ret = regmap_read_poll_timeout(domain->regmap,
+					       GPC_PU_PGC_SW_PDN_REQ, reg_val,
+					       !(reg_val & domain->bits.pxx),
+					       0, USEC_PER_MSEC);
+		if (ret) {
+			dev_err(domain->dev, "failed to command PGC\n");
+			goto out_clk_disable;
+		}
 	}
 
 	/* Disable reset clocks for all devices in the domain */
@@ -580,8 +586,9 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 
 	pm_runtime_enable(domain->dev);
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, domain->bits.map);
+	if (domain->bits.map)
+		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+				   domain->bits.map, domain->bits.map);
 
 	ret = pm_genpd_init(&domain->genpd, NULL, true);
 	if (ret) {
@@ -601,8 +608,9 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 out_genpd_remove:
 	pm_genpd_remove(&domain->genpd);
 out_domain_unmap:
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, 0);
+	if (domain->bits.map)
+		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+				   domain->bits.map, 0);
 	pm_runtime_disable(domain->dev);
 	imx_pgc_put_clocks(domain);
 
@@ -616,8 +624,9 @@ static int imx_pgc_domain_remove(struct platform_device *pdev)
 	of_genpd_del_provider(domain->dev->of_node);
 	pm_genpd_remove(&domain->genpd);
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, 0);
+	if (domain->bits.map)
+		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+				   domain->bits.map, 0);
 
 	pm_runtime_disable(domain->dev);
 
-- 
2.20.1

