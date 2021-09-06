Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F1B4401FD7
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 20:44:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243988AbhIFSot (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 14:44:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243555AbhIFSot (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 14:44:49 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FA73C061757
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 11:43:44 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mNJak-0003Ue-2b; Mon, 06 Sep 2021 20:43:38 +0200
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
Subject: [PATCH v3 04/18] soc: imx: gpcv2: add lockdep annotation
Date:   Mon,  6 Sep 2021 20:43:19 +0200
Message-Id: <20210906184333.1855426-5-l.stach@pengutronix.de>
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

Some of the GPCv2 power domains are nested inside each other without
visibility to lockdep at the genpd level, as they are in separate
driver instances and don't have a parent/child power-domain relationship.

Add a subclass annotation to the nested domains to let lockdep know that
it is okay to take the genpd lock in a nested fashion.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
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

