Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F5982A8538
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 18:44:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731472AbgKERos (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 12:44:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727275AbgKERos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 12:44:48 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECDA0C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 09:44:47 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kajJS-0005qB-9p; Thu, 05 Nov 2020 18:44:42 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Thu,  5 Nov 2020 18:44:26 +0100
Message-Id: <20201105174434.1817539-6-l.stach@pengutronix.de>
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
Subject: [PATCH v2 05/13] soc: imx: gpcv2: wait for ADB400 handshake
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

New reference manuals show that there is actually a status bit for
the ADB400 handshake. Add a poll loop to wait for the ADB400 to
acknowledge our request.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 43 +++++++++++++++++++++++++++++++++--------
 1 file changed, 35 insertions(+), 8 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 7356e48ebdad..d27025e37a9e 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -69,6 +69,9 @@
 
 #define GPC_PU_PWRHSK			0x1fc
 
+#define IMX8M_GPU_HSK_PWRDNACKN			BIT(26)
+#define IMX8M_VPU_HSK_PWRDNACKN			BIT(25)
+#define IMX8M_DISP_HSK_PWRDNACKN		BIT(24)
 #define IMX8M_GPU_HSK_PWRDNREQN			BIT(6)
 #define IMX8M_VPU_HSK_PWRDNREQN			BIT(5)
 #define IMX8M_DISP_HSK_PWRDNREQN		BIT(4)
@@ -112,7 +115,8 @@ struct imx_pgc_domain {
 	const struct {
 		u32 pxx;
 		u32 map;
-		u32 hsk;
+		u32 hskreq;
+		u32 hskack;
 	} bits;
 
 	const int voltage;
@@ -172,9 +176,19 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 			   GPC_PGC_CTRL_PCR, 0);
 
 	/* request the ADB400 to power up */
-	if (domain->bits.hsk)
+	if (domain->bits.hskreq) {
 		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
-				   domain->bits.hsk, domain->bits.hsk);
+				   domain->bits.hskreq, domain->bits.hskreq);
+
+		ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK,
+					       reg_val,
+					       (reg_val & domain->bits.hskack),
+					       0, USEC_PER_MSEC);
+		if (ret) {
+			dev_err(domain->dev, "failed to power up ADB400\n");
+			goto out_clk_disable;
+		}
+	}
 
 	/* Disable reset clocks for all devices in the domain */
 	clk_bulk_disable_unprepare(domain->num_clks, domain->clks);
@@ -204,9 +218,19 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 	}
 
 	/* request the ADB400 to power down */
-	if (domain->bits.hsk)
+	if (domain->bits.hskreq) {
 		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
-				   domain->bits.hsk, 0);
+				   domain->bits.hskreq, 0);
+
+		ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK,
+					       reg_val,
+					       !(reg_val & domain->bits.hskack),
+					       0, USEC_PER_MSEC);
+		if (ret) {
+			dev_err(domain->dev, "failed to power down ADB400\n");
+			goto out_clk_disable;
+		}
+	}
 
 	/* enable power control */
 	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
@@ -369,7 +393,8 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 		.bits  = {
 			.pxx = IMX8M_GPU_SW_Pxx_REQ,
 			.map = IMX8M_GPU_A53_DOMAIN,
-			.hsk = IMX8M_GPU_HSK_PWRDNREQN,
+			.hskreq = IMX8M_GPU_HSK_PWRDNREQN,
+			.hskack = IMX8M_GPU_HSK_PWRDNACKN,
 		},
 		.pgc   = IMX8M_PGC_GPU,
 	},
@@ -381,7 +406,8 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 		.bits  = {
 			.pxx = IMX8M_VPU_SW_Pxx_REQ,
 			.map = IMX8M_VPU_A53_DOMAIN,
-			.hsk = IMX8M_VPU_HSK_PWRDNREQN,
+			.hskreq = IMX8M_VPU_HSK_PWRDNREQN,
+			.hskack = IMX8M_VPU_HSK_PWRDNACKN,
 		},
 		.pgc   = IMX8M_PGC_VPU,
 	},
@@ -393,7 +419,8 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 		.bits  = {
 			.pxx = IMX8M_DISP_SW_Pxx_REQ,
 			.map = IMX8M_DISP_A53_DOMAIN,
-			.hsk = IMX8M_DISP_HSK_PWRDNREQN,
+			.hskreq = IMX8M_DISP_HSK_PWRDNREQN,
+			.hskack = IMX8M_DISP_HSK_PWRDNACKN,
 		},
 		.pgc   = IMX8M_PGC_DISP,
 	},
-- 
2.20.1

