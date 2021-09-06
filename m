Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D865F401FD8
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 20:44:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244435AbhIFSou (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 14:44:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243555AbhIFSou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 14:44:50 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D8D9C061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 11:43:45 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mNJal-0003Ue-An; Mon, 06 Sep 2021 20:43:39 +0200
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
Subject: [PATCH v3 06/18] soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
Date:   Mon,  6 Sep 2021 20:43:21 +0200
Message-Id: <20210906184333.1855426-7-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210906184333.1855426-1-l.stach@pengutronix.de>
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
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
 drivers/soc/imx/gpcv2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index c3b1d2580963..c48f37f203ab 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -625,6 +625,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskreq = IMX8MM_HSIO_HSK_PWRDNREQN,
 			.hskack = IMX8MM_HSIO_HSK_PWRDNACKN,
 		},
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_PCIE] = {
@@ -671,6 +672,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskack = IMX8MM_GPUMIX_HSK_PWRDNACKN,
 		},
 		.pgc   = BIT(IMX8MM_PGC_GPUMIX),
+		.keep_clocks = true,
 	},
 
 	[IMX8MM_POWER_DOMAIN_GPU] = {
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

