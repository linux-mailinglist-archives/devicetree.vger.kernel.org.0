Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39AFA5A2FE0
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 21:25:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230408AbiHZTZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 15:25:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344879AbiHZTYs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 15:24:48 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31C8BD630D
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 12:24:41 -0700 (PDT)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1oRewO-0000At-BY; Fri, 26 Aug 2022 21:24:28 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
        kernel@pengutronix.de
Subject: [PATCH 4/4] drm/imx: add driver for HDMI TX Parallel Video Interface
Date:   Fri, 26 Aug 2022 21:24:24 +0200
Message-Id: <20220826192424.3216734-4-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220826192424.3216734-1-l.stach@pengutronix.de>
References: <20220826192424.3216734-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
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

This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
full timing generator and can switch between different video sources. On
the i.MX8MP however the only supported source is the LCDIF. The block
just needs to be powered up and told about the polarity of the video
sync signals to act in bypass mode.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Marek Vasut <marex@denx.de>
---
 drivers/gpu/drm/bridge/imx/Kconfig           |   7 +
 drivers/gpu/drm/bridge/imx/Makefile          |   1 +
 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c | 201 +++++++++++++++++++
 3 files changed, 209 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c

diff --git a/drivers/gpu/drm/bridge/imx/Kconfig b/drivers/gpu/drm/bridge/imx/Kconfig
index d828d8bfd893..e6cc4000bccd 100644
--- a/drivers/gpu/drm/bridge/imx/Kconfig
+++ b/drivers/gpu/drm/bridge/imx/Kconfig
@@ -53,4 +53,11 @@ config DRM_IMX8MP_DW_HDMI_BRIDGE
 	  Choose this to enable support for the internal HDMI encoder found
 	  on the i.MX8MP SoC.
 
+config DRM_IMX8MP_HDMI_PVI
+	tristate "i.MX8MP HDMI PVI bridge support"
+	depends on OF
+	help
+	  Choose this to enable support for the internal HDMI TX Parallel
+	  Video Interface found on the i.MX8MP SoC.
+
 endif # ARCH_MXC || COMPILE_TEST
diff --git a/drivers/gpu/drm/bridge/imx/Makefile b/drivers/gpu/drm/bridge/imx/Makefile
index 03b0074ae538..b0fd56550dad 100644
--- a/drivers/gpu/drm/bridge/imx/Makefile
+++ b/drivers/gpu/drm/bridge/imx/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_DRM_IMX8QXP_PIXEL_LINK) += imx8qxp-pixel-link.o
 obj-$(CONFIG_DRM_IMX8QXP_PIXEL_LINK_TO_DPI) += imx8qxp-pxl2dpi.o
 
 obj-$(CONFIG_DRM_IMX8MP_DW_HDMI_BRIDGE) += imx8mp-hdmi.o
+obj-$(CONFIG_DRM_IMX8MP_HDMI_PVI) += imx8mp-hdmi-pvi.o
diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
new file mode 100644
index 000000000000..962779dc539e
--- /dev/null
+++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
@@ -0,0 +1,201 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_bridge.h>
+#include <drm/drm_crtc.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/of_graph.h>
+#include <linux/pm_runtime.h>
+
+#define HTX_PVI_CTL	0x0
+#define  PVI_CTL_OP_VSYNC_POL	BIT(18)
+#define  PVI_CTL_OP_HSYNC_POL	BIT(17)
+#define  PVI_CTL_OP_DE_POL	BIT(16)
+#define  PVI_CTL_INP_VSYNC_POL	BIT(14)
+#define  PVI_CTL_INP_HSYNC_POL	BIT(13)
+#define  PVI_CTL_INP_DE_POL	BIT(12)
+#define  PVI_CTL_INPUT_LCDIF	BIT(2)
+#define  PVI_CTL_EN		BIT(0)
+
+struct imx_hdmi_pvi {
+	struct drm_bridge	bridge;
+	struct device		*dev;
+	struct drm_bridge	*next_bridge;
+	void __iomem		*regs;
+};
+
+static inline struct imx_hdmi_pvi *
+to_imx_hdmi_pvi(struct drm_bridge *bridge)
+{
+	return container_of(bridge, struct imx_hdmi_pvi, bridge);
+}
+
+static int imx_hdmi_pvi_bridge_attach(struct drm_bridge *bridge,
+				enum drm_bridge_attach_flags flags)
+{
+	struct imx_hdmi_pvi *pvi = to_imx_hdmi_pvi(bridge);
+
+	return drm_bridge_attach(bridge->encoder, pvi->next_bridge, bridge, flags);
+}
+
+static void imx_hdmi_pvi_bridge_enable(struct drm_bridge *bridge,
+				       struct drm_bridge_state *bridge_state)
+{
+	struct drm_atomic_state *state = bridge_state->base.state;
+	struct imx_hdmi_pvi *pvi = to_imx_hdmi_pvi(bridge);
+	struct drm_connector_state *conn_state;
+	const struct drm_display_mode *mode;
+	struct drm_crtc_state *crtc_state;
+	struct drm_connector *connector;
+	u32 bus_flags, val;
+
+	connector = drm_atomic_get_new_connector_for_encoder(state, bridge->encoder);
+	conn_state = drm_atomic_get_new_connector_state(state, connector);
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+
+	if (WARN_ON(pm_runtime_resume_and_get(pvi->dev)))
+		return;
+
+	mode = &crtc_state->adjusted_mode;
+
+	val = PVI_CTL_INPUT_LCDIF;
+
+	if (mode->flags & DRM_MODE_FLAG_PVSYNC)
+		val |= PVI_CTL_OP_VSYNC_POL | PVI_CTL_INP_VSYNC_POL;
+
+	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
+		val |= PVI_CTL_OP_HSYNC_POL | PVI_CTL_INP_HSYNC_POL;
+
+	if (pvi->next_bridge->timings)
+		bus_flags = pvi->next_bridge->timings->input_bus_flags;
+	else if (bridge_state)
+		bus_flags = bridge_state->input_bus_cfg.flags;
+
+	if (bus_flags & DRM_BUS_FLAG_DE_HIGH)
+		val |= PVI_CTL_OP_DE_POL | PVI_CTL_INP_DE_POL;
+
+	writel(val, pvi->regs + HTX_PVI_CTL);
+	val |= PVI_CTL_EN;
+	writel(val, pvi->regs + HTX_PVI_CTL);
+}
+
+static void imx_hdmi_pvi_bridge_disable(struct drm_bridge *bridge,
+					struct drm_bridge_state *bridge_state)
+{
+	struct imx_hdmi_pvi *pvi = to_imx_hdmi_pvi(bridge);
+
+	writel(0x0, pvi->regs + HTX_PVI_CTL);
+
+	pm_runtime_put(pvi->dev);
+}
+
+static u32 *pvi_bridge_get_input_bus_fmts(struct drm_bridge *bridge,
+					  struct drm_bridge_state *bridge_state,
+					  struct drm_crtc_state *crtc_state,
+					  struct drm_connector_state *conn_state,
+					  u32 output_fmt,
+					  unsigned int *num_input_fmts)
+{
+	struct imx_hdmi_pvi *pvi = to_imx_hdmi_pvi(bridge);
+	struct drm_bridge *next_bridge = pvi->next_bridge;
+	struct drm_bridge_state *next_state;
+
+	if (!next_bridge->funcs->atomic_get_input_bus_fmts)
+		return 0;
+
+	next_state = drm_atomic_get_new_bridge_state(crtc_state->state,
+						     next_bridge);
+
+	return next_bridge->funcs->atomic_get_input_bus_fmts(next_bridge,
+							     next_state,
+							     crtc_state,
+							     conn_state,
+							     output_fmt,
+							     num_input_fmts);
+}
+
+static const struct drm_bridge_funcs imx_hdmi_pvi_bridge_funcs = {
+	.attach		= imx_hdmi_pvi_bridge_attach,
+	.atomic_enable	= imx_hdmi_pvi_bridge_enable,
+	.atomic_disable	= imx_hdmi_pvi_bridge_disable,
+	.atomic_get_input_bus_fmts = pvi_bridge_get_input_bus_fmts,
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+};
+
+static int imx_hdmi_pvi_probe(struct platform_device *pdev)
+{
+	struct device_node *remote;
+	struct imx_hdmi_pvi *pvi;
+
+	pvi = devm_kzalloc(&pdev->dev, sizeof(*pvi), GFP_KERNEL);
+	if (!pvi)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, pvi);
+	pvi->dev = &pdev->dev;
+
+	pvi->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(pvi->regs))
+		return PTR_ERR(pvi->regs);
+
+	/* Get the next bridge in the pipeline. */
+	remote = of_graph_get_remote_node(pdev->dev.of_node, 1, -1);
+	if (!remote)
+		return -EINVAL;
+
+	pvi->next_bridge = of_drm_find_bridge(remote);
+	of_node_put(remote);
+
+	if (!pvi->next_bridge)
+		return dev_err_probe(&pdev->dev, -EPROBE_DEFER,
+				     "could not find next bridge\n");
+
+	/* Register the bridge. */
+	pvi->bridge.funcs = &imx_hdmi_pvi_bridge_funcs;
+	pvi->bridge.of_node = pdev->dev.of_node;
+	pvi->bridge.timings = pvi->next_bridge->timings;
+
+	drm_bridge_add(&pvi->bridge);
+
+	pm_runtime_enable(&pdev->dev);
+
+	return 0;
+}
+
+static int imx_hdmi_pvi_remove(struct platform_device *pdev)
+{
+	struct imx_hdmi_pvi *pvi = platform_get_drvdata(pdev);
+
+	drm_bridge_remove(&pvi->bridge);
+
+	return 0;
+}
+
+static const struct of_device_id imx_hdmi_pvi_match[] = {
+	{
+		.compatible = "fsl,imx8mp-hdmi-pvi",
+	}, {
+		/* sentinel */
+	},
+};
+MODULE_DEVICE_TABLE(of, imx_hdmi_pvi_match);
+
+static struct platform_driver imx_hdmi_pvi_driver = {
+	.probe	= imx_hdmi_pvi_probe,
+	.remove	= imx_hdmi_pvi_remove,
+	.driver		= {
+		.name = "imx-hdmi-pvi",
+		.of_match_table	= imx_hdmi_pvi_match,
+	},
+};
+module_platform_driver(imx_hdmi_pvi_driver);
+
+MODULE_DESCRIPTION("i.MX8MP HDMI TX Parallel Video Interface bridge driver");
+MODULE_LICENSE("GPL");
-- 
2.30.2

