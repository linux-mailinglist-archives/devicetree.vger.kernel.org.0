Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA8C941F8DB
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 03:00:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230378AbhJBBBu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 21:01:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230062AbhJBBBu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 21:01:50 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35F6FC0613E4
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 18:00:05 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mWTNe-0005o6-6V; Sat, 02 Oct 2021 02:59:58 +0200
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
Subject: [PATCH v5 01/18] Revert "soc: imx: gpcv2: move reset assert after requesting domain power up"
Date:   Sat,  2 Oct 2021 02:59:37 +0200
Message-Id: <20211002005954.1367653-2-l.stach@pengutronix.de>
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

This reverts commit a77ebdd9f553. It turns out that the VPU domain has no
different requirements, even though the downstream ATF implementation seems
to suggest otherwise. Powering on the domain with the reset asserted works
fine. As the changed sequence has caused sporadic issues with the GPU
domains, just revert the change to go back to the working sequence.

Cc: <stable@vger.kernel.org> # 5.14
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Acked-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/gpcv2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 34a9ac1f2b9b..8b7a01773aec 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -244,6 +244,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 		goto out_regulator_disable;
 	}
 
+	reset_control_assert(domain->reset);
+
 	if (domain->bits.pxx) {
 		/* request the domain to power up */
 		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
@@ -266,8 +268,6 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 				  GPC_PGC_CTRL_PCR);
 	}
 
-	reset_control_assert(domain->reset);
-
 	/* delay for reset to propagate */
 	udelay(5);
 
-- 
2.30.2

