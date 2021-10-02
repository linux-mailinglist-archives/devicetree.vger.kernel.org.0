Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D24441F8E0
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 03:00:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbhJBBBy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 21:01:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230061AbhJBBBx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 21:01:53 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 926E3C061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 18:00:08 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mWTNh-0005o6-Ss; Sat, 02 Oct 2021 03:00:01 +0200
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
Subject: [PATCH v5 06/18] soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
Date:   Sat,  2 Oct 2021 02:59:42 +0200
Message-Id: <20211002005954.1367653-7-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211002005954.1367653-1-l.stach@pengutronix.de>
References: <20211002005954.1367653-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Annotate the domains with bus clocks to keep those clocks enabled
as long as the domain is active.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/gpcv2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index c3b1d2580963..adf297c2d2af 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -527,6 +527,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.hskack = IMX8M_VPU_HSK_PWRDNACKN,
 		},
 		.pgc   = BIT(IMX8M_PGC_VPU),
+		.keep_clocks = true,
 	},
 
 	[IMX8M_POWER_DOMAIN_DISP] = {
@@ -625,6 +626,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskreq = IMX8MM_HSIO_HSK_PWRDNREQN,
 			.hskack = IMX8MM_HSIO_HSK_PWRDNACKN,
 		},
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_PCIE] = {
@@ -671,6 +673,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskack = IMX8MM_GPUMIX_HSK_PWRDNACKN,
 		},
 		.pgc   = BIT(IMX8MM_PGC_GPUMIX),
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_GPU] = {
@@ -697,6 +700,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskack = IMX8MM_VPUMIX_HSK_PWRDNACKN,
 		},
 		.pgc   = BIT(IMX8MM_PGC_VPUMIX),
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_VPUG1] = {
@@ -743,6 +747,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskack = IMX8MM_DISPMIX_HSK_PWRDNACKN,
 		},
 		.pgc   = BIT(IMX8MM_PGC_DISPMIX),
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_MIPI] = {
@@ -810,6 +815,7 @@ static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
 			.hskreq = IMX8MN_HSIO_HSK_PWRDNREQN,
 			.hskack = IMX8MN_HSIO_HSK_PWRDNACKN,
 		},
+		.keep_clocks = true,
 	},
 
 	[IMX8MN_POWER_DOMAIN_OTG1] = {
-- 
2.30.2

