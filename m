Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B25FF3D1853
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231849AbhGUUGk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232058AbhGUUGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:39 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D7CAC0613C1
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:15 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7V-0004jk-Tp; Wed, 21 Jul 2021 22:47:10 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 07/18] soc: imx: gpcv2: support system suspend/resume
Date:   Wed, 21 Jul 2021 22:46:52 +0200
Message-Id: <20210721204703.1424034-8-l.stach@pengutronix.de>
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

Our usage of runtime PM to control the hierarchy of power domains is
slightly unusual and means that powering up a domain may fail in early
system resume, as runtime PM is still disallowed at this stage.

However the system suspend/resume path takes care of powering down/up
the power domains in the order defined by the device parent/child and
power-domain provider/consumer hierarachy. So we can just runtime
resume all our power-domain devices to allow the power-up to work
properly in the resume path. System suspend will still disable all
domains as intended.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index c48f37f203ab..57ed0a6bfb13 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -947,6 +947,36 @@ static int imx_pgc_domain_remove(struct platform_device *pdev)
 	return 0;
 }
 
+#ifdef CONFIG_PM_SLEEP
+static int imx_pgc_domain_suspend(struct device *dev)
+{
+	int ret;
+
+	/*
+	 * This may look strange, but is done so the generic PM_SLEEP code
+	 * can power down our domain and more importantly power it up again
+	 * after resume, without tripping over our usage of runtime PM to
+	 * power up/down the nested domains.
+	 */
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		pm_runtime_put_noidle(dev);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int imx_pgc_domain_resume(struct device *dev)
+{
+	return pm_runtime_put(dev);
+}
+#endif
+
+static const struct dev_pm_ops imx_pgc_domain_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(imx_pgc_domain_suspend, imx_pgc_domain_resume)
+};
+
 static const struct platform_device_id imx_pgc_domain_id[] = {
 	{ "imx-pgc-domain", },
 	{ },
@@ -955,6 +985,7 @@ static const struct platform_device_id imx_pgc_domain_id[] = {
 static struct platform_driver imx_pgc_domain_driver = {
 	.driver = {
 		.name = "imx-pgc",
+		.pm = &imx_pgc_domain_pm_ops,
 	},
 	.probe    = imx_pgc_domain_probe,
 	.remove   = imx_pgc_domain_remove,
-- 
2.30.2

