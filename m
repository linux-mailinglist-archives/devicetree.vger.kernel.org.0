Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66B9727EDD4
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:50:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgI3PuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:50:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725893AbgI3PuR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:50:17 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50F1AC061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:50:17 -0700 (PDT)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNeMr-0006WU-RY; Wed, 30 Sep 2020 17:50:10 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Date:   Wed, 30 Sep 2020 17:49:57 +0200
Message-Id: <20200930155006.535712-3-l.stach@pengutronix.de>
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
Subject: [PATCH 02/11] soc: imx: gpcv2: move domain mapping to domain driver probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As long as the power domain driver is active we want power control
over the domain (which is what the mapping bit requests), so there
is no point in whacking it for every power control action, simply
set the bit in driver probe and clear it when the driver is removed.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 8f91ef2d24de..dc420734b16c 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -140,14 +140,11 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 	int i, ret = 0;
 	u32 pxx_req;
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, domain->bits.map);
-
 	if (has_regulator && on) {
 		ret = regulator_enable(domain->regulator);
 		if (ret) {
 			dev_err(domain->dev, "failed to enable regulator\n");
-			goto unmap;
+			return ret;
 		}
 	}
 
@@ -203,9 +200,7 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 		/* Preserve earlier error code */
 		ret = ret ?: err;
 	}
-unmap:
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, 0);
+
 	return ret;
 }
 
@@ -504,10 +499,13 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, domain->bits.map);
+
 	ret = pm_genpd_init(&domain->genpd, NULL, true);
 	if (ret) {
 		dev_err(domain->dev, "Failed to init power domain\n");
-		goto out_put_clocks;
+		goto out_domain_unmap;
 	}
 
 	ret = of_genpd_add_provider_simple(domain->dev->of_node,
@@ -521,7 +519,9 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 
 out_genpd_remove:
 	pm_genpd_remove(&domain->genpd);
-out_put_clocks:
+out_domain_unmap:
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, 0);
 	imx_pgc_put_clocks(domain);
 
 	return ret;
@@ -533,6 +533,10 @@ static int imx_pgc_domain_remove(struct platform_device *pdev)
 
 	of_genpd_del_provider(domain->dev->of_node);
 	pm_genpd_remove(&domain->genpd);
+
+	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+			   domain->bits.map, 0);
+
 	imx_pgc_put_clocks(domain);
 
 	return 0;
-- 
2.20.1

