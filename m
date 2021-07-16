Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DDB33CBFB8
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 01:29:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237326AbhGPXcY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 19:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237802AbhGPXcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 19:32:24 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B40CC061765
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 16:29:28 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m4XGk-0002Kr-KB; Sat, 17 Jul 2021 01:29:22 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH 06/17] soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
Date:   Sat, 17 Jul 2021 01:29:05 +0200
Message-Id: <20210716232916.3572966-7-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210716232916.3572966-1-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
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
---
 drivers/soc/imx/gpcv2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index c3b1d2580963..66697d4e8035 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -625,6 +625,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskreq = IMX8MM_HSIO_HSK_PWRDNREQN,
 			.hskack = IMX8MM_HSIO_HSK_PWRDNACKN,
 		},
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_PCIE] = {
@@ -684,6 +685,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskack = IMX8MM_GPU_HSK_PWRDNACKN,
 		},
 		.pgc   = BIT(IMX8MM_PGC_GPU2D) | BIT(IMX8MM_PGC_GPU3D),
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_VPUMIX] = {
@@ -697,6 +699,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskack = IMX8MM_VPUMIX_HSK_PWRDNACKN,
 		},
 		.pgc   = BIT(IMX8MM_PGC_VPUMIX),
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_VPUG1] = {
@@ -743,6 +746,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskack = IMX8MM_DISPMIX_HSK_PWRDNACKN,
 		},
 		.pgc   = BIT(IMX8MM_PGC_DISPMIX),
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_MIPI] = {
@@ -810,6 +814,7 @@ static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
 			.hskreq = IMX8MN_HSIO_HSK_PWRDNREQN,
 			.hskack = IMX8MN_HSIO_HSK_PWRDNACKN,
 		},
+		.keep_clocks = true,
 	},
 
 	[IMX8MN_POWER_DOMAIN_OTG1] = {
-- 
2.30.2

