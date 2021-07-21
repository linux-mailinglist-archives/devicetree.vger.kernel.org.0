Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 227CC3D184F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbhGUUGi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbhGUUGh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:37 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090E1C0613D3
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:13 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7S-0004jk-Ro; Wed, 21 Jul 2021 22:47:06 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 02/18] soc: imx: gpcv2: Turn domain->pgc into bitfield
Date:   Wed, 21 Jul 2021 22:46:47 +0200
Message-Id: <20210721204703.1424034-3-l.stach@pengutronix.de>
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

From: Marek Vasut <marex@denx.de>

There is currently the MX8MM GPU domain, which is in fact a composite domain
for both GPU2D and GPU3D. To correctly configure this domain, it is necessary
to control both GPC_PGC_nCTRL(GPU_2D) and GPC_PGC_nCTRL(GPU_3D) at the same
time. This is currently not possible.

Turn the domain->pgc from value into bitfield and use for_each_set_bit() to
iterate over all bits set in domain->pgc when configuring GPC_PGC_nCTRL
register array. This way it is possible to configure all GPC_PGC_nCTRL
registers required in a particular domain.

This is a preparatory patch, no functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2 (Lucas Stach):
- rebase on top of reverted reset sequence change
- also convert i.MX8MN domains
---
 drivers/soc/imx/gpcv2.c | 72 ++++++++++++++++++++++-------------------
 1 file changed, 38 insertions(+), 34 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 8b7a01773aec..c7826ce92f0d 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -192,7 +192,7 @@ struct imx_pgc_domain {
 	struct clk_bulk_data *clks;
 	int num_clks;
 
-	unsigned int pgc;
+	unsigned long pgc;
 
 	const struct {
 		u32 pxx;
@@ -220,7 +220,7 @@ to_imx_pgc_domain(struct generic_pm_domain *genpd)
 static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 {
 	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
-	u32 reg_val;
+	u32 reg_val, pgc;
 	int ret;
 
 	ret = pm_runtime_get_sync(domain->dev);
@@ -264,8 +264,10 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 		}
 
 		/* disable power control */
-		regmap_clear_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-				  GPC_PGC_CTRL_PCR);
+		for_each_set_bit(pgc, &domain->pgc, 32) {
+			regmap_clear_bits(domain->regmap, GPC_PGC_CTRL(pgc),
+					  GPC_PGC_CTRL_PCR);
+		}
 	}
 
 	/* delay for reset to propagate */
@@ -311,7 +313,7 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 {
 	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
-	u32 reg_val;
+	u32 reg_val, pgc;
 	int ret;
 
 	/* Enable reset clocks for all devices in the domain */
@@ -338,8 +340,10 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 
 	if (domain->bits.pxx) {
 		/* enable power control */
-		regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-				   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+		for_each_set_bit(pgc, &domain->pgc, 32) {
+			regmap_update_bits(domain->regmap, GPC_PGC_CTRL(pgc),
+					   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+		}
 
 		/* request the domain to power down */
 		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
@@ -389,7 +393,7 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 			.map = IMX7_MIPI_PHY_A_CORE_DOMAIN,
 		},
 		.voltage   = 1000000,
-		.pgc	   = IMX7_PGC_MIPI,
+		.pgc	   = BIT(IMX7_PGC_MIPI),
 	},
 
 	[IMX7_POWER_DOMAIN_PCIE_PHY] = {
@@ -401,7 +405,7 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 			.map = IMX7_PCIE_PHY_A_CORE_DOMAIN,
 		},
 		.voltage   = 1000000,
-		.pgc	   = IMX7_PGC_PCIE,
+		.pgc	   = BIT(IMX7_PGC_PCIE),
 	},
 
 	[IMX7_POWER_DOMAIN_USB_HSIC_PHY] = {
@@ -413,7 +417,7 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 			.map = IMX7_USB_HSIC_PHY_A_CORE_DOMAIN,
 		},
 		.voltage   = 1200000,
-		.pgc	   = IMX7_PGC_USB_HSIC,
+		.pgc	   = BIT(IMX7_PGC_USB_HSIC),
 	},
 };
 
@@ -448,7 +452,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_MIPI_SW_Pxx_REQ,
 			.map = IMX8M_MIPI_A53_DOMAIN,
 		},
-		.pgc	   = IMX8M_PGC_MIPI,
+		.pgc	   = BIT(IMX8M_PGC_MIPI),
 	},
 
 	[IMX8M_POWER_DOMAIN_PCIE1] = {
@@ -459,7 +463,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_PCIE1_SW_Pxx_REQ,
 			.map = IMX8M_PCIE1_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_PCIE1,
+		.pgc   = BIT(IMX8M_PGC_PCIE1),
 	},
 
 	[IMX8M_POWER_DOMAIN_USB_OTG1] = {
@@ -470,7 +474,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_OTG1_SW_Pxx_REQ,
 			.map = IMX8M_OTG1_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_OTG1,
+		.pgc   = BIT(IMX8M_PGC_OTG1),
 	},
 
 	[IMX8M_POWER_DOMAIN_USB_OTG2] = {
@@ -481,7 +485,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_OTG2_SW_Pxx_REQ,
 			.map = IMX8M_OTG2_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_OTG2,
+		.pgc   = BIT(IMX8M_PGC_OTG2),
 	},
 
 	[IMX8M_POWER_DOMAIN_DDR1] = {
@@ -492,7 +496,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_DDR1_SW_Pxx_REQ,
 			.map = IMX8M_DDR2_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_DDR1,
+		.pgc   = BIT(IMX8M_PGC_DDR1),
 	},
 
 	[IMX8M_POWER_DOMAIN_GPU] = {
@@ -505,7 +509,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.hskreq = IMX8M_GPU_HSK_PWRDNREQN,
 			.hskack = IMX8M_GPU_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8M_PGC_GPU,
+		.pgc   = BIT(IMX8M_PGC_GPU),
 	},
 
 	[IMX8M_POWER_DOMAIN_VPU] = {
@@ -518,7 +522,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.hskreq = IMX8M_VPU_HSK_PWRDNREQN,
 			.hskack = IMX8M_VPU_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8M_PGC_VPU,
+		.pgc   = BIT(IMX8M_PGC_VPU),
 	},
 
 	[IMX8M_POWER_DOMAIN_DISP] = {
@@ -531,7 +535,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.hskreq = IMX8M_DISP_HSK_PWRDNREQN,
 			.hskack = IMX8M_DISP_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8M_PGC_DISP,
+		.pgc   = BIT(IMX8M_PGC_DISP),
 	},
 
 	[IMX8M_POWER_DOMAIN_MIPI_CSI1] = {
@@ -542,7 +546,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_MIPI_CSI1_SW_Pxx_REQ,
 			.map = IMX8M_MIPI_CSI1_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_MIPI_CSI1,
+		.pgc   = BIT(IMX8M_PGC_MIPI_CSI1),
 	},
 
 	[IMX8M_POWER_DOMAIN_MIPI_CSI2] = {
@@ -553,7 +557,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_MIPI_CSI2_SW_Pxx_REQ,
 			.map = IMX8M_MIPI_CSI2_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_MIPI_CSI2,
+		.pgc   = BIT(IMX8M_PGC_MIPI_CSI2),
 	},
 
 	[IMX8M_POWER_DOMAIN_PCIE2] = {
@@ -564,7 +568,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_PCIE2_SW_Pxx_REQ,
 			.map = IMX8M_PCIE2_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_PCIE2,
+		.pgc   = BIT(IMX8M_PGC_PCIE2),
 	},
 };
 
@@ -627,7 +631,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.pxx = IMX8MM_PCIE_SW_Pxx_REQ,
 			.map = IMX8MM_PCIE_A53_DOMAIN,
 		},
-		.pgc   = IMX8MM_PGC_PCIE,
+		.pgc   = BIT(IMX8MM_PGC_PCIE),
 	},
 
 	[IMX8MM_POWER_DOMAIN_OTG1] = {
@@ -638,7 +642,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.pxx = IMX8MM_OTG1_SW_Pxx_REQ,
 			.map = IMX8MM_OTG1_A53_DOMAIN,
 		},
-		.pgc   = IMX8MM_PGC_OTG1,
+		.pgc   = BIT(IMX8MM_PGC_OTG1),
 	},
 
 	[IMX8MM_POWER_DOMAIN_OTG2] = {
@@ -649,7 +653,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.pxx = IMX8MM_OTG2_SW_Pxx_REQ,
 			.map = IMX8MM_OTG2_A53_DOMAIN,
 		},
-		.pgc   = IMX8MM_PGC_OTG2,
+		.pgc   = BIT(IMX8MM_PGC_OTG2),
 	},
 
 	[IMX8MM_POWER_DOMAIN_GPUMIX] = {
@@ -662,7 +666,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskreq = IMX8MM_GPUMIX_HSK_PWRDNREQN,
 			.hskack = IMX8MM_GPUMIX_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8MM_PGC_GPUMIX,
+		.pgc   = BIT(IMX8MM_PGC_GPUMIX),
 	},
 
 	[IMX8MM_POWER_DOMAIN_GPU] = {
@@ -675,7 +679,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskreq = IMX8MM_GPU_HSK_PWRDNREQN,
 			.hskack = IMX8MM_GPU_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8MM_PGC_GPU2D,
+		.pgc   = BIT(IMX8MM_PGC_GPU2D),
 	},
 
 	[IMX8MM_POWER_DOMAIN_VPUMIX] = {
@@ -688,7 +692,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskreq = IMX8MM_VPUMIX_HSK_PWRDNREQN,
 			.hskack = IMX8MM_VPUMIX_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8MM_PGC_VPUMIX,
+		.pgc   = BIT(IMX8MM_PGC_VPUMIX),
 	},
 
 	[IMX8MM_POWER_DOMAIN_VPUG1] = {
@@ -699,7 +703,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.pxx = IMX8MM_VPUG1_SW_Pxx_REQ,
 			.map = IMX8MM_VPUG1_A53_DOMAIN,
 		},
-		.pgc   = IMX8MM_PGC_VPUG1,
+		.pgc   = BIT(IMX8MM_PGC_VPUG1),
 	},
 
 	[IMX8MM_POWER_DOMAIN_VPUG2] = {
@@ -710,7 +714,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.pxx = IMX8MM_VPUG2_SW_Pxx_REQ,
 			.map = IMX8MM_VPUG2_A53_DOMAIN,
 		},
-		.pgc   = IMX8MM_PGC_VPUG2,
+		.pgc   = BIT(IMX8MM_PGC_VPUG2),
 	},
 
 	[IMX8MM_POWER_DOMAIN_VPUH1] = {
@@ -721,7 +725,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.pxx = IMX8MM_VPUH1_SW_Pxx_REQ,
 			.map = IMX8MM_VPUH1_A53_DOMAIN,
 		},
-		.pgc   = IMX8MM_PGC_VPUH1,
+		.pgc   = BIT(IMX8MM_PGC_VPUH1),
 	},
 
 	[IMX8MM_POWER_DOMAIN_DISPMIX] = {
@@ -734,7 +738,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskreq = IMX8MM_DISPMIX_HSK_PWRDNREQN,
 			.hskack = IMX8MM_DISPMIX_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8MM_PGC_DISPMIX,
+		.pgc   = BIT(IMX8MM_PGC_DISPMIX),
 	},
 
 	[IMX8MM_POWER_DOMAIN_MIPI] = {
@@ -745,7 +749,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.pxx = IMX8MM_MIPI_SW_Pxx_REQ,
 			.map = IMX8MM_MIPI_A53_DOMAIN,
 		},
-		.pgc   = IMX8MM_PGC_MIPI,
+		.pgc   = BIT(IMX8MM_PGC_MIPI),
 	},
 };
 
@@ -812,7 +816,7 @@ static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
 			.pxx = IMX8MN_OTG1_SW_Pxx_REQ,
 			.map = IMX8MN_OTG1_A53_DOMAIN,
 		},
-		.pgc   = IMX8MN_PGC_OTG1,
+		.pgc   = BIT(IMX8MN_PGC_OTG1),
 	},
 
 	[IMX8MN_POWER_DOMAIN_GPUMIX] = {
@@ -825,7 +829,7 @@ static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
 			.hskreq = IMX8MN_GPUMIX_HSK_PWRDNREQN,
 			.hskack = IMX8MN_GPUMIX_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8MN_PGC_GPUMIX,
+		.pgc   = BIT(IMX8MN_PGC_GPUMIX),
 	},
 };
 
-- 
2.30.2

