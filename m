Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DB074F6774
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239103AbiDFRbB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:31:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239032AbiDFRaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:30:52 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9EA622E979
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:34:14 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nc7fZ-0005jN-Qw; Wed, 06 Apr 2022 17:34:05 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 04/11] soc: imx: imx8m-blk-ctrl: Add i.MX8MP media blk-ctrl
Date:   Wed,  6 Apr 2022 17:33:55 +0200
Message-Id: <20220406153402.1265474-5-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220406153402.1265474-1-l.stach@pengutronix.de>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Paul Elder <paul.elder@ideasonboard.com>

Add the description for the i.MX8MP media blk-ctrl.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Marek Vasut <marex@denx.de>
Tested-by: Marek Vasut <marex@denx.de> # MX8MP LCDIF #1 and #2
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/imx8m-blk-ctrl.c | 123 ++++++++++++++++++++++++++++++-
 1 file changed, 121 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
index 3071a8eca8ef..2b8c1e36a489 100644
--- a/drivers/soc/imx/imx8m-blk-ctrl.c
+++ b/drivers/soc/imx/imx8m-blk-ctrl.c
@@ -15,11 +15,12 @@
 
 #include <dt-bindings/power/imx8mm-power.h>
 #include <dt-bindings/power/imx8mn-power.h>
+#include <dt-bindings/power/imx8mp-power.h>
 #include <dt-bindings/power/imx8mq-power.h>
 
 #define BLK_SFT_RSTN	0x0
 #define BLK_CLK_EN	0x4
-#define BLK_MIPI_RESET_DIV	0x8 /* Mini/Nano DISPLAY_BLK_CTRL only */
+#define BLK_MIPI_RESET_DIV	0x8 /* Mini/Nano/Plus DISPLAY_BLK_CTRL only */
 
 struct imx8m_blk_ctrl_domain;
 
@@ -41,7 +42,7 @@ struct imx8m_blk_ctrl_domain_data {
 	u32 clk_mask;
 
 	/*
-	 * i.MX8M Mini and Nano have a third DISPLAY_BLK_CTRL register
+	 * i.MX8M Mini, Nano and Plus have a third DISPLAY_BLK_CTRL register
 	 * which is used to control the reset for the MIPI Phy.
 	 * Since it's only present in certain circumstances,
 	 * an if-statement should be used before setting and clearing this
@@ -591,6 +592,121 @@ static const struct imx8m_blk_ctrl_data imx8mn_disp_blk_ctl_dev_data = {
 	.num_domains = ARRAY_SIZE(imx8mn_disp_blk_ctl_domain_data),
 };
 
+static int imx8mp_media_power_notifier(struct notifier_block *nb,
+				unsigned long action, void *data)
+{
+	struct imx8m_blk_ctrl *bc = container_of(nb, struct imx8m_blk_ctrl,
+						 power_nb);
+
+	if (action != GENPD_NOTIFY_ON && action != GENPD_NOTIFY_PRE_OFF)
+		return NOTIFY_OK;
+
+	/* Enable bus clock and deassert bus reset */
+	regmap_set_bits(bc->regmap, BLK_CLK_EN, BIT(8));
+	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, BIT(8));
+
+	/*
+	 * On power up we have no software backchannel to the GPC to
+	 * wait for the ADB handshake to happen, so we just delay for a
+	 * bit. On power down the GPC driver waits for the handshake.
+	 */
+	if (action == GENPD_NOTIFY_ON)
+		udelay(5);
+
+	return NOTIFY_OK;
+}
+
+/*
+ * From i.MX 8M Plus Applications Processor Reference Manual, Rev. 1,
+ * section 13.2.2, 13.2.3
+ * isp-ahb and dwe are not in Figure 13-5. Media BLK_CTRL Clocks
+ */
+static const struct imx8m_blk_ctrl_domain_data imx8mp_media_blk_ctl_domain_data[] = {
+	[IMX8MP_MEDIABLK_PD_MIPI_DSI_1] = {
+		.name = "mediablk-mipi-dsi-1",
+		.clk_names = (const char *[]){ "apb", "phy", },
+		.num_clks = 2,
+		.gpc_name = "mipi-dsi1",
+		.rst_mask = BIT(0) | BIT(1),
+		.clk_mask = BIT(0) | BIT(1),
+		.mipi_phy_rst_mask = BIT(17),
+	},
+	[IMX8MP_MEDIABLK_PD_MIPI_CSI2_1] = {
+		.name = "mediablk-mipi-csi2-1",
+		.clk_names = (const char *[]){ "apb", "cam1" },
+		.num_clks = 2,
+		.gpc_name = "mipi-csi1",
+		.rst_mask = BIT(2) | BIT(3),
+		.clk_mask = BIT(2) | BIT(3),
+		.mipi_phy_rst_mask = BIT(16),
+	},
+	[IMX8MP_MEDIABLK_PD_LCDIF_1] = {
+		.name = "mediablk-lcdif-1",
+		.clk_names = (const char *[]){ "disp1", "apb", "axi", },
+		.num_clks = 3,
+		.gpc_name = "lcdif1",
+		.rst_mask = BIT(4) | BIT(5) | BIT(23),
+		.clk_mask = BIT(4) | BIT(5) | BIT(23),
+	},
+	[IMX8MP_MEDIABLK_PD_ISI] = {
+		.name = "mediablk-isi",
+		.clk_names = (const char *[]){ "axi", "apb" },
+		.num_clks = 2,
+		.gpc_name = "isi",
+		.rst_mask = BIT(6) | BIT(7),
+		.clk_mask = BIT(6) | BIT(7),
+	},
+	[IMX8MP_MEDIABLK_PD_MIPI_CSI2_2] = {
+		.name = "mediablk-mipi-csi2-2",
+		.clk_names = (const char *[]){ "apb", "cam2" },
+		.num_clks = 2,
+		.gpc_name = "mipi-csi2",
+		.rst_mask = BIT(9) | BIT(10),
+		.clk_mask = BIT(9) | BIT(10),
+		.mipi_phy_rst_mask = BIT(30),
+	},
+	[IMX8MP_MEDIABLK_PD_LCDIF_2] = {
+		.name = "mediablk-lcdif-2",
+		.clk_names = (const char *[]){ "disp1", "apb", "axi", },
+		.num_clks = 3,
+		.gpc_name = "lcdif2",
+		.rst_mask = BIT(11) | BIT(12) | BIT(24),
+		.clk_mask = BIT(11) | BIT(12) | BIT(24),
+	},
+	[IMX8MP_MEDIABLK_PD_ISP] = {
+		.name = "mediablk-isp",
+		.clk_names = (const char *[]){ "isp", "axi", "apb" },
+		.num_clks = 3,
+		.gpc_name = "isp",
+		.rst_mask = BIT(16) | BIT(17) | BIT(18),
+		.clk_mask = BIT(16) | BIT(17) | BIT(18),
+	},
+	[IMX8MP_MEDIABLK_PD_DWE] = {
+		.name = "mediablk-dwe",
+		.clk_names = (const char *[]){ "axi", "apb" },
+		.num_clks = 2,
+		.gpc_name = "dwe",
+		.rst_mask = BIT(19) | BIT(20) | BIT(21),
+		.clk_mask = BIT(19) | BIT(20) | BIT(21),
+	},
+	[IMX8MP_MEDIABLK_PD_MIPI_DSI_2] = {
+		.name = "mediablk-mipi-dsi-2",
+		.clk_names = (const char *[]){ "phy", },
+		.num_clks = 1,
+		.gpc_name = "mipi-dsi2",
+		.rst_mask = BIT(22),
+		.clk_mask = BIT(22),
+		.mipi_phy_rst_mask = BIT(29),
+	},
+};
+
+static const struct imx8m_blk_ctrl_data imx8mp_media_blk_ctl_dev_data = {
+	.max_reg = 0x138,
+	.power_notifier_fn = imx8mp_media_power_notifier,
+	.domains = imx8mp_media_blk_ctl_domain_data,
+	.num_domains = ARRAY_SIZE(imx8mp_media_blk_ctl_domain_data),
+};
+
 static int imx8mq_vpu_power_notifier(struct notifier_block *nb,
 				     unsigned long action, void *data)
 {
@@ -663,6 +779,9 @@ static const struct of_device_id imx8m_blk_ctrl_of_match[] = {
 	}, {
 		.compatible = "fsl,imx8mn-disp-blk-ctrl",
 		.data = &imx8mn_disp_blk_ctl_dev_data
+	}, {
+		.compatible = "fsl,imx8mp-media-blk-ctrl",
+		.data = &imx8mp_media_blk_ctl_dev_data
 	}, {
 		.compatible = "fsl,imx8mq-vpu-blk-ctrl",
 		.data = &imx8mq_vpu_blk_ctl_dev_data
-- 
2.30.2

