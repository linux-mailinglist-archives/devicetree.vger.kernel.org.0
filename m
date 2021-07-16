Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D4363CBFB7
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 01:29:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238173AbhGPXcY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 19:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230104AbhGPXcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 19:32:23 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 664BEC06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 16:29:28 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m4XGj-0002Kr-D4; Sat, 17 Jul 2021 01:29:21 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH 04/17] soc: imx: gpcv2: add lockdep annotation
Date:   Sat, 17 Jul 2021 01:29:03 +0200
Message-Id: <20210716232916.3572966-5-l.stach@pengutronix.de>
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

Some of the GPCv2 power domains are nested inside each other without
visibility to lockdep at the genpd level, as they are in separate
driver instances and don't have a parent/child power-domain relationship.

Add a subclass annotation to the nested domains to let lockdep know that
it is okay to take the genpd lock in a nested fashion.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 2c43e74db0be..35f26f57d1ac 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -898,6 +898,10 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
 		goto out_domain_unmap;
 	}
 
+	if (IS_ENABLED(CONFIG_LOCKDEP) &&
+	    of_property_read_bool(domain->dev->of_node, "power-domains"))
+		lockdep_set_subclass(&domain->genpd.mlock, 1);
+
 	ret = of_genpd_add_provider_simple(domain->dev->of_node,
 					   &domain->genpd);
 	if (ret) {
-- 
2.30.2

