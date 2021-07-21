Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 139063D185D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232885AbhGUUGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232864AbhGUUGo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:44 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3F1BC06179C
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:20 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7Z-0004jk-M4; Wed, 21 Jul 2021 22:47:13 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 13/18] soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl
Date:   Wed, 21 Jul 2021 22:46:58 +0200
Message-Id: <20210721204703.1424034-14-l.stach@pengutronix.de>
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

This adds the description for the i.MX8MM disp blk-ctrl.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/imx8m-blk-ctrl.c | 70 ++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
index 3dd17b903636..32eab800a3c6 100644
--- a/drivers/soc/imx/imx8m-blk-ctrl.c
+++ b/drivers/soc/imx/imx8m-blk-ctrl.c
@@ -433,11 +433,81 @@ static const struct imx8m_blk_ctrl_data imx8m_vpu_blk_ctl_dev_data = {
 	.num_domains = ARRAY_SIZE(imx8m_vpu_blk_ctl_domain_data),
 };
 
+static int imx8mm_disp_power_notifier(struct notifier_block *nb,
+				      unsigned long action, void *data)
+{
+	struct imx8m_blk_ctrl *bc = container_of(nb, struct imx8m_blk_ctrl,
+						 power_nb);
+
+	if (action != GENPD_NOTIFY_ON && action != GENPD_NOTIFY_PRE_OFF)
+		return NOTIFY_OK;
+
+	/* Enable bus clock and deassert bus reset */
+	regmap_set_bits(bc->regmap, BLK_CLK_EN, BIT(12));
+	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, BIT(6));
+
+	/*
+	 * On power up we have no software backchannel to the GPC to
+	 * wait for the ADB handshake to happen, so we just delay for a
+	 * bit. On power down the GPC driver waits for the handshake.
+	 */
+	if (action == GENPD_NOTIFY_ON)
+		udelay(5);
+
+
+	return NOTIFY_OK;
+}
+
+static const struct imx8m_blk_ctrl_domain_data imx8m_disp_blk_ctl_domain_data[] = {
+	[IMX8MM_DISPBLK_CSI_BRIDGE] = {
+		.name = "dispblk-csi-bridge",
+		.clk_names = (const char *[]){ "csi-bridge-axi", "csi-bridge-apb",
+					       "csi-bridge-core", },
+		.num_clks = 3,
+		.gpc_name = "csi-bridge",
+		.rst_mask = BIT(0) | BIT(1) | BIT(2),
+		.clk_mask = BIT(0) | BIT(1) | BIT(2) | BIT(3) | BIT(4) | BIT(5),
+	},
+	[IMX8MM_DISPBLK_LCDIF] = {
+		.name = "dispblk-lcdif",
+		.clk_names = (const char *[]){ "lcdif-axi", "lcdif-apb", "lcdif-pix", },
+		.num_clks = 3,
+		.gpc_name = "lcdif",
+		.clk_mask = BIT(6) | BIT(7),
+	},
+	[IMX8MM_DISPBLK_MIPI_DSI] = {
+		.name = "dispblk-mipi-dsi",
+		.clk_names = (const char *[]){ "dsi-pclk", "dsi-ref", },
+		.num_clks = 2,
+		.gpc_name = "mipi-dsi",
+		.rst_mask = BIT(5),
+		.clk_mask = BIT(8) | BIT(9),
+	},
+	[IMX8MM_DISPBLK_MIPI_CSI] = {
+		.name = "dispblk-mipi-csi",
+		.clk_names = (const char *[]){ "csi-aclk", "csi-pclk" },
+		.num_clks = 2,
+		.gpc_name = "mipi-csi",
+		.rst_mask = BIT(3) | BIT(4),
+		.clk_mask = BIT(10) | BIT(11),
+	},
+};
+
+static const struct imx8m_blk_ctrl_data imx8m_disp_blk_ctl_dev_data = {
+	.max_reg = 0x2c,
+	.power_notifier_fn = imx8mm_disp_power_notifier,
+	.domains = imx8m_disp_blk_ctl_domain_data,
+	.num_domains = ARRAY_SIZE(imx8m_disp_blk_ctl_domain_data),
+};
+
 static const struct of_device_id imx8m_blk_ctrl_of_match[] = {
 	{
 		.compatible = "fsl,imx8mm-vpu-blk-ctrl",
 		.data = &imx8m_vpu_blk_ctl_dev_data
 	}, {
+		.compatible = "fsl,imx8mm-disp-blk-ctrl",
+		.data = &imx8m_disp_blk_ctl_dev_data
+	} ,{
 		/* Sentinel */
 	}
 };
-- 
2.30.2

