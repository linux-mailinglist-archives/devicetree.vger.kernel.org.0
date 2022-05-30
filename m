Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACCB1538556
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 17:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238978AbiE3PtJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 11:49:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238539AbiE3Psz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 11:48:55 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F20CE5F8
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 08:06:12 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy4-0005Kk-Bj; Mon, 30 May 2022 17:06:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy3-005THw-Oy; Mon, 30 May 2022 17:06:02 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy1-005Be2-Du; Mon, 30 May 2022 17:06:01 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robert.foss@linaro.org, laurent.pinchart@ideasonboard.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        maxime@cerno.tech
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: [PATCH 3/6] drm/bridge: ti-sn65dsi83: add support to swap the LVDS data lanes
Date:   Mon, 30 May 2022 17:05:46 +0200
Message-Id: <20220530150548.1236307-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220530150548.1236307-1-m.felsch@pengutronix.de>
References: <20220530150548.1236307-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
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

The chip can swap the LVDS channel A/B data lanes e.g. to improve the
layout characteristic. This commit adds the feature so the system
integrator can specify it within the device-tree.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/bridge/ti-sn65dsi83.c | 64 +++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index 112fea004c8e..baf94b2b78a1 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -32,6 +32,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
+#include <linux/property.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 
@@ -148,6 +149,8 @@ struct sn65dsi83 {
 	int				dsi_lanes;
 	bool				lvds_dual_link;
 	bool				lvds_dual_link_even_odd_swap;
+	bool				lvds_reverse_cha;
+	bool				lvds_reverse_chb;
 };
 
 static const struct regmap_range sn65dsi83_readable_ranges[] = {
@@ -441,6 +444,10 @@ static void sn65dsi83_atomic_enable(struct drm_bridge *bridge,
 	val = REG_LVDS_LANE_CHA_LVDS_TERM | REG_LVDS_LANE_CHB_LVDS_TERM;
 	if (ctx->lvds_dual_link_even_odd_swap)
 		val |= REG_LVDS_LANE_EVEN_ODD_SWAP;
+	if (ctx->lvds_reverse_cha)
+		val |= REG_LVDS_LANE_CHA_REVERSE_LVDS;
+	if (ctx->lvds_reverse_chb)
+		val |= REG_LVDS_LANE_CHB_REVERSE_LVDS;
 
 	regmap_write(ctx->regmap, REG_LVDS_LANE, val);
 	regmap_write(ctx->regmap, REG_LVDS_CM, 0x00);
@@ -566,6 +573,47 @@ static const struct drm_bridge_funcs sn65dsi83_funcs = {
 	.atomic_get_input_bus_fmts = sn65dsi83_atomic_get_input_bus_fmts,
 };
 
+static int sn65dsi83_parse_lvds_lane_order(struct sn65dsi83 *ctx, unsigned char port)
+{
+	struct device *dev = ctx->dev;
+	struct device_node *ep;
+	int lvds_lanes;
+	int ret = 0;
+
+	if (port < 2 || port > 3)
+		return -EINVAL;
+
+	ep = of_graph_get_endpoint_by_regs(dev->of_node, port, 0);
+	lvds_lanes = of_property_count_u32_elems(ep, "data-lanes");
+	if (lvds_lanes == 4) {
+		u32 lane_assignments[] = { 1, 2, 3, 4 };
+
+		of_property_read_u32_array(ep, "data-lanes", lane_assignments,
+					   lvds_lanes);
+		if (lane_assignments[0] == 4 &&
+		    lane_assignments[1] == 3 &&
+		    lane_assignments[2] == 2 &&
+		    lane_assignments[3] == 1) {
+			if (port == 2)
+				ctx->lvds_reverse_cha = true;
+			else
+				ctx->lvds_reverse_chb = true;
+		} else if (lane_assignments[0] != 1 ||
+			   lane_assignments[1] != 2 ||
+			   lane_assignments[2] != 3 ||
+			   lane_assignments[3] != 4) {
+			dev_err(dev, "Unsupported LVDS lane order\n");
+			ret = -EINVAL;
+		}
+	} else if (lvds_lanes > 0) {
+		dev_err(dev, "All 4 LVDS data-lanes must be specified\n");
+		ret = -EINVAL;
+	}
+	of_node_put(ep);
+
+	return ret;
+}
+
 static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
 {
 	struct drm_bridge *panel_bridge;
@@ -610,6 +658,22 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
 		}
 	}
 
+	/*
+	 * Todo:
+	 * Check if the reverse lane setup is working in dual-link as well.
+	 */
+	if (!ctx->lvds_dual_link) {
+		ret = sn65dsi83_parse_lvds_lane_order(ctx, 2);
+		if (ret)
+			return ret;
+
+		if (model != MODEL_SN65DSI83) {
+			ret = sn65dsi83_parse_lvds_lane_order(ctx, 3);
+			if (ret)
+				return ret;
+		}
+	}
+
 	panel_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 2, 0);
 	if (IS_ERR(panel_bridge)) {
 		ret = PTR_ERR(panel_bridge);
-- 
2.30.2

