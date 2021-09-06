Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61CFE401FD9
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 20:44:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244586AbhIFSov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 14:44:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244290AbhIFSov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 14:44:51 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BAD2C0613CF
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 11:43:46 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mNJal-0003Ue-VE; Mon, 06 Sep 2021 20:43:40 +0200
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
Subject: [PATCH v3 07/18] soc: imx: gpcv2: support system suspend/resume
Date:   Mon,  6 Sep 2021 20:43:22 +0200
Message-Id: <20210906184333.1855426-8-l.stach@pengutronix.de>
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
Acked-by: Peng Fan <peng.fan@nxp.com>
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

