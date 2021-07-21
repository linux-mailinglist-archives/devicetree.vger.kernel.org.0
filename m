Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD0593D184E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230187AbhGUUGi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbhGUUGh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:37 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFBF6C0613C1
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:13 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7T-0004jk-FH; Wed, 21 Jul 2021 22:47:07 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 03/18] soc: imx: gpcv2: Set both GPC_PGC_nCTRL(GPU_2D|GPU_3D) for MX8MM GPU domain
Date:   Wed, 21 Jul 2021 22:46:48 +0200
Message-Id: <20210721204703.1424034-4-l.stach@pengutronix.de>
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

To bring up the MX8MM GPU domain, it is necessary to configure both
GPC_PGC_nCTRL(GPU_2D) and GPC_PGC_nCTRL(GPU_3D) registers. Without
this configuration, the system might hang on boot when bringing up
the GPU power domain. This is sporadically observed on multiple
disparate systems.

Add the GPU3D bit into MX8MM GPU domain pgc bitfield, so that both
GPC_PGC_nCTRL(GPU_2D) and GPC_PGC_nCTRL(GPU_3D) registers are
configured when bringing up the GPU domain. This fixes the sporadic
hang.

Signed-off-by: Marek Vasut <marex@denx.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index c7826ce92f0d..2c43e74db0be 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -679,7 +679,7 @@ static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
 			.hskreq = IMX8MM_GPU_HSK_PWRDNREQN,
 			.hskack = IMX8MM_GPU_HSK_PWRDNACKN,
 		},
-		.pgc   = BIT(IMX8MM_PGC_GPU2D),
+		.pgc   = BIT(IMX8MM_PGC_GPU2D) | BIT(IMX8MM_PGC_GPU3D),
 	},
 
 	[IMX8MM_POWER_DOMAIN_VPUMIX] = {
-- 
2.30.2

