Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DECC4AC997
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 20:31:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236370AbiBGTaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 14:30:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240016AbiBGTZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 14:25:58 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E205C0401E1
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:25:57 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nH9e1-0001pl-RI; Mon, 07 Feb 2022 20:25:49 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v2 1/9] soc: imx: gpcv2: add PGC control register indirection
Date:   Mon,  7 Feb 2022 20:25:39 +0100
Message-Id: <20220207192547.1997549-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PGC control registers in the shared (not per-PGC) region of the
GPC address space have different offsets on i.MX8MP to make space for
additional interrupt control registers.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 43 ++++++++++++++++++++++++++++++-----------
 1 file changed, 32 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 3e59d479d001..01f46b078df3 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -184,9 +184,17 @@
 
 #define GPC_PGC_CTRL_PCR		BIT(0)
 
+struct imx_pgc_regs {
+	u16 map;
+	u16 pup;
+	u16 pdn;
+	u16 hsk;
+};
+
 struct imx_pgc_domain {
 	struct generic_pm_domain genpd;
 	struct regmap *regmap;
+	const struct imx_pgc_regs *regs;
 	struct regulator *regulator;
 	struct reset_control *reset;
 	struct clk_bulk_data *clks;
@@ -210,6 +218,7 @@ struct imx_pgc_domain_data {
 	const struct imx_pgc_domain *domains;
 	size_t domains_num;
 	const struct regmap_access_table *reg_access_table;
+	const struct imx_pgc_regs *pgc_regs;
 };
 
 static inline struct imx_pgc_domain *
@@ -249,14 +258,14 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 
 	if (domain->bits.pxx) {
 		/* request the domain to power up */
-		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
+		regmap_update_bits(domain->regmap, domain->regs->pup,
 				   domain->bits.pxx, domain->bits.pxx);
 		/*
 		 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
 		 * for PUP_REQ/PDN_REQ bit to be cleared
 		 */
 		ret = regmap_read_poll_timeout(domain->regmap,
-					       GPC_PU_PGC_SW_PUP_REQ, reg_val,
+					       domain->regs->pup, reg_val,
 					       !(reg_val & domain->bits.pxx),
 					       0, USEC_PER_MSEC);
 		if (ret) {
@@ -278,11 +287,11 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 
 	/* request the ADB400 to power up */
 	if (domain->bits.hskreq) {
-		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
+		regmap_update_bits(domain->regmap, domain->regs->hsk,
 				   domain->bits.hskreq, domain->bits.hskreq);
 
 		/*
-		 * ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK, reg_val,
+		 * ret = regmap_read_poll_timeout(domain->regmap, domain->regs->hsk, reg_val,
 		 *				  (reg_val & domain->bits.hskack), 0,
 		 *				  USEC_PER_MSEC);
 		 * Technically we need the commented code to wait handshake. But that needs
@@ -329,10 +338,10 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 
 	/* request the ADB400 to power down */
 	if (domain->bits.hskreq) {
-		regmap_clear_bits(domain->regmap, GPC_PU_PWRHSK,
+		regmap_clear_bits(domain->regmap, domain->regs->hsk,
 				  domain->bits.hskreq);
 
-		ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK,
+		ret = regmap_read_poll_timeout(domain->regmap, domain->regs->hsk,
 					       reg_val,
 					       !(reg_val & domain->bits.hskack),
 					       0, USEC_PER_MSEC);
@@ -350,14 +359,14 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 		}
 
 		/* request the domain to power down */
-		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
+		regmap_update_bits(domain->regmap, domain->regs->pdn,
 				   domain->bits.pxx, domain->bits.pxx);
 		/*
 		 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
 		 * for PUP_REQ/PDN_REQ bit to be cleared
 		 */
 		ret = regmap_read_poll_timeout(domain->regmap,
-					       GPC_PU_PGC_SW_PDN_REQ, reg_val,
+					       domain->regs->pdn, reg_val,
 					       !(reg_val & domain->bits.pxx),
 					       0, USEC_PER_MSEC);
 		if (ret) {
@@ -441,10 +450,18 @@ static const struct regmap_access_table imx7_access_table = {
 	.n_yes_ranges	= ARRAY_SIZE(imx7_yes_ranges),
 };
 
+static const struct imx_pgc_regs imx7_pgc_regs = {
+	.map = GPC_PGC_CPU_MAPPING,
+	.pup = GPC_PU_PGC_SW_PUP_REQ,
+	.pdn = GPC_PU_PGC_SW_PDN_REQ,
+	.hsk = GPC_PU_PWRHSK,
+};
+
 static const struct imx_pgc_domain_data imx7_pgc_domain_data = {
 	.domains = imx7_pgc_domains,
 	.domains_num = ARRAY_SIZE(imx7_pgc_domains),
 	.reg_access_table = &imx7_access_table,
+	.pgc_regs = &imx7_pgc_regs,
 };
 
 static const struct imx_pgc_domain imx8m_pgc_domains[] = {
@@ -613,6 +630,7 @@ static const struct imx_pgc_domain_data imx8m_pgc_domain_data = {
 	.domains = imx8m_pgc_domains,
 	.domains_num = ARRAY_SIZE(imx8m_pgc_domains),
 	.reg_access_table = &imx8m_access_table,
+	.pgc_regs = &imx7_pgc_regs,
 };
 
 static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
@@ -803,6 +821,7 @@ static const struct imx_pgc_domain_data imx8mm_pgc_domain_data = {
 	.domains = imx8mm_pgc_domains,
 	.domains_num = ARRAY_SIZE(imx8mm_pgc_domains),
 	.reg_access_table = &imx8mm_access_table,
+	.pgc_regs = &imx7_pgc_regs,
 };
 
 static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
@@ -894,6 +913,7 @@ static const struct imx_pgc_domain_data imx8mn_pgc_domain_data = {
 	.domains = imx8mn_pgc_domains,
 	.domains_num = ARRAY_SIZE(imx8mn_pgc_domains),
 	.reg_access_table = &imx8mn_access_table,
+	.pgc_regs = &imx7_pgc_regs,
 };
 
 static int imx_pgc_domain_probe(struct platform_device *pdev)
@@ -926,7 +946,7 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 	pm_runtime_enable(domain->dev);
 
 	if (domain->bits.map)
-		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+		regmap_update_bits(domain->regmap, domain->regs->map,
 				   domain->bits.map, domain->bits.map);
 
 	ret = pm_genpd_init(&domain->genpd, NULL, true);
@@ -952,7 +972,7 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 	pm_genpd_remove(&domain->genpd);
 out_domain_unmap:
 	if (domain->bits.map)
-		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+		regmap_update_bits(domain->regmap, domain->regs->map,
 				   domain->bits.map, 0);
 	pm_runtime_disable(domain->dev);
 
@@ -967,7 +987,7 @@ static int imx_pgc_domain_remove(struct platform_device *pdev)
 	pm_genpd_remove(&domain->genpd);
 
 	if (domain->bits.map)
-		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
+		regmap_update_bits(domain->regmap, domain->regs->map,
 				   domain->bits.map, 0);
 
 	pm_runtime_disable(domain->dev);
@@ -1098,6 +1118,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
 
 		domain = pd_pdev->dev.platform_data;
 		domain->regmap = regmap;
+		domain->regs = domain_data->pgc_regs;
 		domain->genpd.power_on  = imx_pgc_power_up;
 		domain->genpd.power_off = imx_pgc_power_down;
 
-- 
2.30.2

