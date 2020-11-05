Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 394232A853C
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 18:44:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731659AbgKERox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 12:44:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727275AbgKERox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 12:44:53 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB968C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 09:44:52 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kajJX-0005qB-7p; Thu, 05 Nov 2020 18:44:47 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Thu,  5 Nov 2020 18:44:30 +0100
Message-Id: <20201105174434.1817539-10-l.stach@pengutronix.de>
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
Subject: [PATCH v2 09/13] soc: imx: gpcv2: add support for optional resets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Normally the reset for the devices inside the power domain is
triggered automatically from the PGC in the power-up sequencing,
however on i.MX8MM this doesn't work for the GPU power domains.

Add support for triggering the reset explicitly during the power
up sequencing.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 640f4165cfba..4a2c2a255d1a 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -15,6 +15,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
+#include <linux/reset.h>
 #include <linux/sizes.h>
 #include <dt-bindings/power/imx7-power.h>
 #include <dt-bindings/power/imx8mq-power.h>
@@ -108,6 +109,7 @@ struct imx_pgc_domain {
 	struct generic_pm_domain genpd;
 	struct regmap *regmap;
 	struct regulator *regulator;
+	struct reset_control *reset;
 	struct clk_bulk_data *clks;
 	int num_clks;
 
@@ -163,6 +165,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 		goto out_regulator_disable;
 	}
 
+	reset_control_assert(domain->reset);
+
 	if (domain->bits.pxx) {
 		/* request the domain to power up */
 		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
@@ -185,6 +189,11 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 				   GPC_PGC_CTRL_PCR, 0);
 	}
 
+	/* delay for reset to propagate */
+	udelay(5);
+
+	reset_control_deassert(domain->reset);
+
 	/* request the ADB400 to power up */
 	if (domain->bits.hskreq) {
 		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
@@ -531,11 +540,17 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 				      domain->voltage, domain->voltage);
 	}
 
+
 	domain->num_clks = devm_clk_bulk_get_all(domain->dev, &domain->clks);
 	if (domain->num_clks < 0)
 		return dev_err_probe(domain->dev, domain->num_clks,
 				     "Failed to get domain's clocks\n");
 
+	domain->reset = devm_reset_control_array_get_optional_exclusive(domain->dev);
+	if (IS_ERR(domain->reset))
+		return dev_err_probe(domain->dev, PTR_ERR(domain->reset),
+				     "Failed to get domain's resets\n");
+
 	pm_runtime_enable(domain->dev);
 
 	if (domain->bits.map)
-- 
2.20.1

