Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CC564F6792
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239042AbiDFRbD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:31:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239055AbiDFRax (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:30:53 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5D0F275E9
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:34:15 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nc7fb-0005jN-HL; Wed, 06 Apr 2022 17:34:07 +0200
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
Subject: [PATCH v4 07/11] soc: imx: add i.MX8MP HDMI blk-ctrl
Date:   Wed,  6 Apr 2022 17:33:58 +0200
Message-Id: <20220406153402.1265474-8-l.stach@pengutronix.de>
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

This adds driver support for the HDMI blk-ctrl found on the
i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/imx8mp-blk-ctrl.c | 193 ++++++++++++++++++++++++++++++
 1 file changed, 193 insertions(+)

diff --git a/drivers/soc/imx/imx8mp-blk-ctrl.c b/drivers/soc/imx/imx8mp-blk-ctrl.c
index 97cc8f08911e..f5692782bbdf 100644
--- a/drivers/soc/imx/imx8mp-blk-ctrl.c
+++ b/drivers/soc/imx/imx8mp-blk-ctrl.c
@@ -174,6 +174,196 @@ static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
 	.num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data),
 };
 
+#define HDMI_RTX_RESET_CTL0	0x20
+#define HDMI_RTX_CLK_CTL0	0x40
+#define HDMI_RTX_CLK_CTL1	0x50
+#define HDMI_RTX_CLK_CTL2	0x60
+#define HDMI_RTX_CLK_CTL3	0x70
+#define HDMI_RTX_CLK_CTL4	0x80
+#define HDMI_TX_CONTROL0	0x200
+
+static void imx8mp_hdmi_blk_ctrl_power_on(struct imx8mp_blk_ctrl *bc,
+					  struct imx8mp_blk_ctrl_domain *domain)
+{
+	switch (domain->id) {
+	case IMX8MP_HDMIBLK_PD_IRQSTEER:
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL0, BIT(9));
+		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(16));
+		break;
+	case IMX8MP_HDMIBLK_PD_LCDIF:
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL0,
+				BIT(7) | BIT(16) | BIT(17) | BIT(18) |
+				BIT(19) | BIT(20));
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(11));
+		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0,
+				BIT(4) | BIT(5) | BIT(6));
+		break;
+	case IMX8MP_HDMIBLK_PD_PAI:
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(17));
+		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(18));
+		break;
+	case IMX8MP_HDMIBLK_PD_PVI:
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(28));
+		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(22));
+		break;
+	case IMX8MP_HDMIBLK_PD_TRNG:
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(27) | BIT(30));
+		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(20));
+		break;
+	case IMX8MP_HDMIBLK_PD_HDMI_TX:
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL0,
+				BIT(2) | BIT(4) | BIT(5));
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL1,
+				BIT(12) | BIT(13) | BIT(14) | BIT(15) | BIT(16) |
+				BIT(18) | BIT(19) | BIT(20) | BIT(21));
+		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0,
+				BIT(7) | BIT(10) | BIT(11));
+		regmap_set_bits(bc->regmap, HDMI_TX_CONTROL0, BIT(1));
+		break;
+	case IMX8MP_HDMIBLK_PD_HDMI_TX_PHY:
+		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(22) | BIT(24));
+		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(12));
+		regmap_clear_bits(bc->regmap, HDMI_TX_CONTROL0, BIT(3));
+		break;
+	default:
+		break;
+	}
+}
+
+static void imx8mp_hdmi_blk_ctrl_power_off(struct imx8mp_blk_ctrl *bc,
+					   struct imx8mp_blk_ctrl_domain *domain)
+{
+	switch (domain->id) {
+	case IMX8MP_HDMIBLK_PD_IRQSTEER:
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL0, BIT(9));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(16));
+		break;
+	case IMX8MP_HDMIBLK_PD_LCDIF:
+		regmap_clear_bits(bc->regmap, HDMI_RTX_RESET_CTL0,
+				  BIT(4) | BIT(5) | BIT(6));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(11));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL0,
+				  BIT(7) | BIT(16) | BIT(17) | BIT(18) |
+				  BIT(19) | BIT(20));
+		break;
+	case IMX8MP_HDMIBLK_PD_PAI:
+		regmap_clear_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(18));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(17));
+		break;
+	case IMX8MP_HDMIBLK_PD_PVI:
+		regmap_clear_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(22));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(28));
+		break;
+	case IMX8MP_HDMIBLK_PD_TRNG:
+		regmap_clear_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(20));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(27) | BIT(30));
+		break;
+	case IMX8MP_HDMIBLK_PD_HDMI_TX:
+		regmap_clear_bits(bc->regmap, HDMI_TX_CONTROL0, BIT(1));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_RESET_CTL0,
+				  BIT(7) | BIT(10) | BIT(11));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL1,
+				  BIT(12) | BIT(13) | BIT(14) | BIT(15) | BIT(16) |
+				  BIT(18) | BIT(19) | BIT(20) | BIT(21));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL0,
+				  BIT(2) | BIT(4) | BIT(5));
+		break;
+	case IMX8MP_HDMIBLK_PD_HDMI_TX_PHY:
+		regmap_set_bits(bc->regmap, HDMI_TX_CONTROL0, BIT(3));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(12));
+		regmap_clear_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(22) | BIT(24));
+		break;
+	default:
+		break;
+	}
+}
+
+static int imx8mp_hdmi_power_notifier(struct notifier_block *nb,
+				      unsigned long action, void *data)
+{
+	struct imx8mp_blk_ctrl *bc = container_of(nb, struct imx8mp_blk_ctrl,
+						 power_nb);
+
+	if (action != GENPD_NOTIFY_ON)
+		return NOTIFY_OK;
+
+	/*
+	 * Contrary to other blk-ctrls the reset and clock don't clear when the
+	 * power domain is powered down. To ensure the proper reset pulsing,
+	 * first clear them all to asserted state, then enable the bus clocks
+	 * and then release the ADB reset.
+	 */
+	regmap_write(bc->regmap, HDMI_RTX_RESET_CTL0, 0x0);
+	regmap_write(bc->regmap, HDMI_RTX_CLK_CTL0, 0x0);
+	regmap_write(bc->regmap, HDMI_RTX_CLK_CTL1, 0x0);
+	regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL0,
+			BIT(0) | BIT(1) | BIT(10));
+	regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(0));
+
+	/*
+	 * On power up we have no software backchannel to the GPC to
+	 * wait for the ADB handshake to happen, so we just delay for a
+	 * bit. On power down the GPC driver waits for the handshake.
+	 */
+	udelay(5);
+
+	return NOTIFY_OK;
+}
+
+static const struct imx8mp_blk_ctrl_domain_data imx8mp_hdmi_domain_data[] = {
+	[IMX8MP_HDMIBLK_PD_IRQSTEER] = {
+		.name = "hdmiblk-irqsteer",
+		.clk_names = (const char *[]){ "apb" },
+		.num_clks = 1,
+		.gpc_name = "irqsteer",
+	},
+	[IMX8MP_HDMIBLK_PD_LCDIF] = {
+		.name = "hdmiblk-lcdif",
+		.clk_names = (const char *[]){ "axi", "apb" },
+		.num_clks = 2,
+		.gpc_name = "lcdif",
+	},
+	[IMX8MP_HDMIBLK_PD_PAI] = {
+		.name = "hdmiblk-pai",
+		.clk_names = (const char *[]){ "apb" },
+		.num_clks = 1,
+		.gpc_name = "pai",
+	},
+	[IMX8MP_HDMIBLK_PD_PVI] = {
+		.name = "hdmiblk-pvi",
+		.clk_names = (const char *[]){ "apb" },
+		.num_clks = 1,
+		.gpc_name = "pvi",
+	},
+	[IMX8MP_HDMIBLK_PD_TRNG] = {
+		.name = "hdmiblk-trng",
+		.clk_names = (const char *[]){ "apb" },
+		.num_clks = 1,
+		.gpc_name = "trng",
+	},
+	[IMX8MP_HDMIBLK_PD_HDMI_TX] = {
+		.name = "hdmiblk-hdmi-tx",
+		.clk_names = (const char *[]){ "apb", "ref_266m" },
+		.num_clks = 2,
+		.gpc_name = "hdmi-tx",
+	},
+	[IMX8MP_HDMIBLK_PD_HDMI_TX_PHY] = {
+		.name = "hdmiblk-hdmi-tx-phy",
+		.clk_names = (const char *[]){ "apb", "ref_24m" },
+		.num_clks = 2,
+		.gpc_name = "hdmi-tx-phy",
+	},
+};
+
+static const struct imx8mp_blk_ctrl_data imx8mp_hdmi_blk_ctl_dev_data = {
+	.max_reg = 0x23c,
+	.power_on = imx8mp_hdmi_blk_ctrl_power_on,
+	.power_off = imx8mp_hdmi_blk_ctrl_power_off,
+	.power_notifier_fn = imx8mp_hdmi_power_notifier,
+	.domains = imx8mp_hdmi_domain_data,
+	.num_domains = ARRAY_SIZE(imx8mp_hdmi_domain_data),
+};
+
 static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 {
 	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
@@ -485,6 +675,9 @@ static const struct of_device_id imx8mp_blk_ctrl_of_match[] = {
 	{
 		.compatible = "fsl,imx8mp-hsio-blk-ctrl",
 		.data = &imx8mp_hsio_blk_ctl_dev_data,
+	}, {
+		.compatible = "fsl,imx8mp-hdmi-blk-ctrl",
+		.data = &imx8mp_hdmi_blk_ctl_dev_data,
 	}, {
 		/* Sentinel */
 	}
-- 
2.30.2

