Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8B80C10FFE3
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 15:15:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726388AbfLCOP3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 09:15:29 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:59008 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726298AbfLCOP2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Dec 2019 09:15:28 -0500
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 912CF2726E2;
        Tue,  3 Dec 2019 14:15:25 +0000 (GMT)
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Chris Healy <cphealy@gmail.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        kernel@collabora.com, Daniel Vetter <daniel@ffwll.ch>,
        Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robdclark@gmail.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Eric Anholt <eric@anholt.net>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v4 04/11] drm/bridge: Make the bridge chain a double-linked list
Date:   Tue,  3 Dec 2019 15:15:08 +0100
Message-Id: <20191203141515.3597631-5-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191203141515.3597631-1-boris.brezillon@collabora.com>
References: <20191203141515.3597631-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

So that each element in the chain can easily access its predecessor.
This will be needed to support bus format negotiation between elements
of the bridge chain.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes in v4:
* Simplify the drm_bridge_attach() logic
* Fix list iteration bugs
* Patch VC4 and Exynos DSI drivers to match core changes
* Add R-bs

Changes in v3:
* None

Changes in v2:
* Adjust things to the "dummy encoder bridge" change (patch 2 in this
  series)
---
 drivers/gpu/drm/drm_bridge.c            | 171 +++++++++++++++---------
 drivers/gpu/drm/drm_encoder.c           |  16 +--
 drivers/gpu/drm/exynos/exynos_drm_dsi.c |   5 +-
 drivers/gpu/drm/vc4/vc4_dsi.c           |  10 +-
 include/drm/drm_bridge.h                |  12 +-
 include/drm/drm_encoder.h               |   7 +-
 6 files changed, 143 insertions(+), 78 deletions(-)

diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
index 54c874493c57..b6517b4fa3d1 100644
--- a/drivers/gpu/drm/drm_bridge.c
+++ b/drivers/gpu/drm/drm_bridge.c
@@ -55,7 +55,7 @@
  * just provide additional hooks to get the desired output at the end of the
  * encoder chain.
  *
- * Bridges can also be chained up using the &drm_bridge.next pointer.
+ * Bridges can also be chained up using the &drm_bridge.chain_node field.
  *
  * Both legacy CRTC helpers and the new atomic modeset helpers support bridges.
  */
@@ -128,20 +128,21 @@ int drm_bridge_attach(struct drm_encoder *encoder, struct drm_bridge *bridge,
 	bridge->dev = encoder->dev;
 	bridge->encoder = encoder;
 
+	if (previous)
+		list_add(&bridge->chain_node, &previous->chain_node);
+	else
+		list_add(&bridge->chain_node, &encoder->bridge_chain);
+
 	if (bridge->funcs->attach) {
 		ret = bridge->funcs->attach(bridge);
 		if (ret < 0) {
+			list_del(&bridge->chain_node);
 			bridge->dev = NULL;
 			bridge->encoder = NULL;
 			return ret;
 		}
 	}
 
-	if (previous)
-		previous->next = bridge;
-	else
-		encoder->bridge = bridge;
-
 	return 0;
 }
 EXPORT_SYMBOL(drm_bridge_attach);
@@ -157,6 +158,7 @@ void drm_bridge_detach(struct drm_bridge *bridge)
 	if (bridge->funcs->detach)
 		bridge->funcs->detach(bridge);
 
+	list_del(&bridge->chain_node);
 	bridge->dev = NULL;
 }
 
@@ -190,18 +192,21 @@ bool drm_bridge_chain_mode_fixup(struct drm_bridge *bridge,
 				 const struct drm_display_mode *mode,
 				 struct drm_display_mode *adjusted_mode)
 {
-	bool ret = true;
+	struct drm_encoder *encoder;
 
 	if (!bridge)
 		return true;
 
-	if (bridge->funcs->mode_fixup)
-		ret = bridge->funcs->mode_fixup(bridge, mode, adjusted_mode);
+	encoder = bridge->encoder;
+	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
+		if (!bridge->funcs->mode_fixup)
+			continue;
 
-	ret = ret && drm_bridge_chain_mode_fixup(bridge->next, mode,
-						 adjusted_mode);
+		if (!bridge->funcs->mode_fixup(bridge, mode, adjusted_mode))
+			return false;
+	}
 
-	return ret;
+	return true;
 }
 EXPORT_SYMBOL(drm_bridge_chain_mode_fixup);
 
@@ -224,18 +229,24 @@ enum drm_mode_status
 drm_bridge_chain_mode_valid(struct drm_bridge *bridge,
 			    const struct drm_display_mode *mode)
 {
-	enum drm_mode_status ret = MODE_OK;
+	struct drm_encoder *encoder;
 
 	if (!bridge)
-		return ret;
+		return MODE_OK;
 
-	if (bridge->funcs->mode_valid)
-		ret = bridge->funcs->mode_valid(bridge, mode);
+	encoder = bridge->encoder;
+	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
+		enum drm_mode_status ret;
+
+		if (!bridge->funcs->mode_valid)
+			continue;
 
-	if (ret != MODE_OK)
-		return ret;
+		ret = bridge->funcs->mode_valid(bridge, mode);
+		if (ret != MODE_OK)
+			return ret;
+	}
 
-	return drm_bridge_chain_mode_valid(bridge->next, mode);
+	return MODE_OK;
 }
 EXPORT_SYMBOL(drm_bridge_chain_mode_valid);
 
@@ -251,13 +262,20 @@ EXPORT_SYMBOL(drm_bridge_chain_mode_valid);
  */
 void drm_bridge_chain_disable(struct drm_bridge *bridge)
 {
+	struct drm_encoder *encoder;
+	struct drm_bridge *iter;
+
 	if (!bridge)
 		return;
 
-	drm_bridge_chain_disable(bridge->next);
+	encoder = bridge->encoder;
+	list_for_each_entry_reverse(iter, &encoder->bridge_chain, chain_node) {
+		if (iter->funcs->disable)
+			iter->funcs->disable(iter);
 
-	if (bridge->funcs->disable)
-		bridge->funcs->disable(bridge);
+		if (iter == bridge)
+			break;
+	}
 }
 EXPORT_SYMBOL(drm_bridge_chain_disable);
 
@@ -274,13 +292,16 @@ EXPORT_SYMBOL(drm_bridge_chain_disable);
  */
 void drm_bridge_chain_post_disable(struct drm_bridge *bridge)
 {
+	struct drm_encoder *encoder;
+
 	if (!bridge)
 		return;
 
-	if (bridge->funcs->post_disable)
-		bridge->funcs->post_disable(bridge);
-
-	drm_bridge_chain_post_disable(bridge->next);
+	encoder = bridge->encoder;
+	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
+		if (bridge->funcs->post_disable)
+			bridge->funcs->post_disable(bridge);
+	}
 }
 EXPORT_SYMBOL(drm_bridge_chain_post_disable);
 
@@ -300,13 +321,16 @@ void drm_bridge_chain_mode_set(struct drm_bridge *bridge,
 			       const struct drm_display_mode *mode,
 			       const struct drm_display_mode *adjusted_mode)
 {
+	struct drm_encoder *encoder;
+
 	if (!bridge)
 		return;
 
-	if (bridge->funcs->mode_set)
-		bridge->funcs->mode_set(bridge, mode, adjusted_mode);
-
-	drm_bridge_chain_mode_set(bridge->next, mode, adjusted_mode);
+	encoder = bridge->encoder;
+	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
+		if (bridge->funcs->mode_set)
+			bridge->funcs->mode_set(bridge, mode, adjusted_mode);
+	}
 }
 EXPORT_SYMBOL(drm_bridge_chain_mode_set);
 
@@ -323,13 +347,17 @@ EXPORT_SYMBOL(drm_bridge_chain_mode_set);
  */
 void drm_bridge_chain_pre_enable(struct drm_bridge *bridge)
 {
+	struct drm_encoder *encoder;
+	struct drm_bridge *iter;
+
 	if (!bridge)
 		return;
 
-	drm_bridge_chain_pre_enable(bridge->next);
-
-	if (bridge->funcs->pre_enable)
-		bridge->funcs->pre_enable(bridge);
+	encoder = bridge->encoder;
+	list_for_each_entry_reverse(iter, &encoder->bridge_chain, chain_node) {
+		if (iter->funcs->pre_enable)
+			iter->funcs->pre_enable(iter);
+	}
 }
 EXPORT_SYMBOL(drm_bridge_chain_pre_enable);
 
@@ -345,13 +373,16 @@ EXPORT_SYMBOL(drm_bridge_chain_pre_enable);
  */
 void drm_bridge_chain_enable(struct drm_bridge *bridge)
 {
+	struct drm_encoder *encoder;
+
 	if (!bridge)
 		return;
 
-	if (bridge->funcs->enable)
-		bridge->funcs->enable(bridge);
-
-	drm_bridge_chain_enable(bridge->next);
+	encoder = bridge->encoder;
+	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
+		if (bridge->funcs->enable)
+			bridge->funcs->enable(bridge);
+	}
 }
 EXPORT_SYMBOL(drm_bridge_chain_enable);
 
@@ -370,15 +401,22 @@ EXPORT_SYMBOL(drm_bridge_chain_enable);
 void drm_atomic_bridge_chain_disable(struct drm_bridge *bridge,
 				     struct drm_atomic_state *state)
 {
+	struct drm_encoder *encoder;
+	struct drm_bridge *iter;
+
 	if (!bridge)
 		return;
 
-	drm_atomic_bridge_chain_disable(bridge->next, state);
+	encoder = bridge->encoder;
+	list_for_each_entry_reverse(iter, &encoder->bridge_chain, chain_node) {
+		if (iter->funcs->atomic_disable)
+			iter->funcs->atomic_disable(iter, state);
+		else if (iter->funcs->disable)
+			iter->funcs->disable(iter);
 
-	if (bridge->funcs->atomic_disable)
-		bridge->funcs->atomic_disable(bridge, state);
-	else if (bridge->funcs->disable)
-		bridge->funcs->disable(bridge);
+		if (iter == bridge)
+			break;
+	}
 }
 EXPORT_SYMBOL(drm_atomic_bridge_chain_disable);
 
@@ -398,15 +436,18 @@ EXPORT_SYMBOL(drm_atomic_bridge_chain_disable);
 void drm_atomic_bridge_chain_post_disable(struct drm_bridge *bridge,
 					  struct drm_atomic_state *state)
 {
+	struct drm_encoder *encoder;
+
 	if (!bridge)
 		return;
 
-	if (bridge->funcs->atomic_post_disable)
-		bridge->funcs->atomic_post_disable(bridge, state);
-	else if (bridge->funcs->post_disable)
-		bridge->funcs->post_disable(bridge);
-
-	drm_atomic_bridge_chain_post_disable(bridge->next, state);
+	encoder = bridge->encoder;
+	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
+		if (bridge->funcs->atomic_post_disable)
+			bridge->funcs->atomic_post_disable(bridge, state);
+		else if (bridge->funcs->post_disable)
+			bridge->funcs->post_disable(bridge);
+	}
 }
 EXPORT_SYMBOL(drm_atomic_bridge_chain_post_disable);
 
@@ -426,15 +467,22 @@ EXPORT_SYMBOL(drm_atomic_bridge_chain_post_disable);
 void drm_atomic_bridge_chain_pre_enable(struct drm_bridge *bridge,
 					struct drm_atomic_state *state)
 {
+	struct drm_encoder *encoder;
+	struct drm_bridge *iter;
+
 	if (!bridge)
 		return;
 
-	drm_atomic_bridge_chain_pre_enable(bridge->next, state);
+	encoder = bridge->encoder;
+	list_for_each_entry_reverse(iter, &encoder->bridge_chain, chain_node) {
+		if (iter->funcs->atomic_pre_enable)
+			iter->funcs->atomic_pre_enable(iter, state);
+		else if (iter->funcs->pre_enable)
+			iter->funcs->pre_enable(iter);
 
-	if (bridge->funcs->atomic_pre_enable)
-		bridge->funcs->atomic_pre_enable(bridge, state);
-	else if (bridge->funcs->pre_enable)
-		bridge->funcs->pre_enable(bridge);
+		if (iter == bridge)
+			break;
+	}
 }
 EXPORT_SYMBOL(drm_atomic_bridge_chain_pre_enable);
 
@@ -453,15 +501,18 @@ EXPORT_SYMBOL(drm_atomic_bridge_chain_pre_enable);
 void drm_atomic_bridge_chain_enable(struct drm_bridge *bridge,
 				    struct drm_atomic_state *state)
 {
+	struct drm_encoder *encoder;
+
 	if (!bridge)
 		return;
 
-	if (bridge->funcs->atomic_enable)
-		bridge->funcs->atomic_enable(bridge, state);
-	else if (bridge->funcs->enable)
-		bridge->funcs->enable(bridge);
-
-	drm_atomic_bridge_chain_enable(bridge->next, state);
+	encoder = bridge->encoder;
+	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
+		if (bridge->funcs->atomic_enable)
+			bridge->funcs->atomic_enable(bridge, state);
+		else if (bridge->funcs->enable)
+			bridge->funcs->enable(bridge);
+	}
 }
 EXPORT_SYMBOL(drm_atomic_bridge_chain_enable);
 
diff --git a/drivers/gpu/drm/drm_encoder.c b/drivers/gpu/drm/drm_encoder.c
index a2cc7e7241a9..e555281f43d4 100644
--- a/drivers/gpu/drm/drm_encoder.c
+++ b/drivers/gpu/drm/drm_encoder.c
@@ -140,6 +140,7 @@ int drm_encoder_init(struct drm_device *dev,
 		goto out_put;
 	}
 
+	INIT_LIST_HEAD(&encoder->bridge_chain);
 	list_add_tail(&encoder->head, &dev->mode_config.encoder_list);
 	encoder->index = dev->mode_config.num_encoder++;
 
@@ -160,23 +161,16 @@ EXPORT_SYMBOL(drm_encoder_init);
 void drm_encoder_cleanup(struct drm_encoder *encoder)
 {
 	struct drm_device *dev = encoder->dev;
+	struct drm_bridge *bridge, *next;
 
 	/* Note that the encoder_list is considered to be static; should we
 	 * remove the drm_encoder at runtime we would have to decrement all
 	 * the indices on the drm_encoder after us in the encoder_list.
 	 */
 
-	if (encoder->bridge) {
-		struct drm_bridge *bridge;
-		struct drm_bridge *next;
-
-		bridge = drm_bridge_chain_get_first_bridge(encoder);
-		while (bridge) {
-			next = drm_bridge_get_next_bridge(bridge);
-			drm_bridge_detach(bridge);
-			bridge = next;
-		}
-	}
+	list_for_each_entry_safe(bridge, next, &encoder->bridge_chain,
+				 chain_node)
+		drm_bridge_detach(bridge);
 
 	drm_mode_object_unregister(dev, &encoder->base);
 	kfree(encoder->name);
diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index d984097704b8..7de82e22252a 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -255,6 +255,7 @@ struct exynos_dsi {
 	struct mipi_dsi_host dsi_host;
 	struct drm_connector connector;
 	struct drm_panel *panel;
+	struct list_head bridge_chain;
 	struct drm_bridge *out_bridge;
 	struct device *dev;
 
@@ -1522,7 +1523,7 @@ static int exynos_dsi_host_attach(struct mipi_dsi_host *host,
 	if (out_bridge) {
 		drm_bridge_attach(encoder, out_bridge, NULL);
 		dsi->out_bridge = out_bridge;
-		encoder->bridge = NULL;
+		list_splice(&encoder->bridge_chain, &dsi->bridge_chain);
 	} else {
 		int ret = exynos_dsi_create_connector(encoder);
 
@@ -1588,6 +1589,7 @@ static int exynos_dsi_host_detach(struct mipi_dsi_host *host,
 		if (dsi->out_bridge->funcs->detach)
 			dsi->out_bridge->funcs->detach(dsi->out_bridge);
 		dsi->out_bridge = NULL;
+		INIT_LIST_HEAD(&dsi->bridge_chain);
 	}
 
 	if (drm->mode_config.poll_enabled)
@@ -1735,6 +1737,7 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 	init_completion(&dsi->completed);
 	spin_lock_init(&dsi->transfer_lock);
 	INIT_LIST_HEAD(&dsi->transfer_list);
+	INIT_LIST_HEAD(&dsi->bridge_chain);
 
 	dsi->dsi_host.ops = &exynos_dsi_ops;
 	dsi->dsi_host.dev = dev;
diff --git a/drivers/gpu/drm/vc4/vc4_dsi.c b/drivers/gpu/drm/vc4/vc4_dsi.c
index ff81b54ea281..6c5b80ad6154 100644
--- a/drivers/gpu/drm/vc4/vc4_dsi.c
+++ b/drivers/gpu/drm/vc4/vc4_dsi.c
@@ -499,6 +499,7 @@ struct vc4_dsi {
 	struct mipi_dsi_host dsi_host;
 	struct drm_encoder *encoder;
 	struct drm_bridge *bridge;
+	struct list_head bridge_chain;
 
 	void __iomem *regs;
 
@@ -1460,6 +1461,8 @@ static int vc4_dsi_bind(struct device *dev, struct device *master, void *data)
 				       GFP_KERNEL);
 	if (!vc4_dsi_encoder)
 		return -ENOMEM;
+
+	INIT_LIST_HEAD(&dsi->bridge_chain);
 	vc4_dsi_encoder->base.type = VC4_ENCODER_TYPE_DSI1;
 	vc4_dsi_encoder->dsi = dsi;
 	dsi->encoder = &vc4_dsi_encoder->base.base;
@@ -1610,7 +1613,7 @@ static int vc4_dsi_bind(struct device *dev, struct device *master, void *data)
 	 * from our driver, since we need to sequence them within the
 	 * encoder's enable/disable paths.
 	 */
-	dsi->encoder->bridge = NULL;
+	list_splice(&dsi->encoder->bridge_chain, &dsi->bridge_chain);
 
 	if (dsi->port == 0)
 		vc4_debugfs_add_regset32(drm, "dsi0_regs", &dsi->regset);
@@ -1632,6 +1635,11 @@ static void vc4_dsi_unbind(struct device *dev, struct device *master,
 	if (dsi->bridge)
 		pm_runtime_disable(dev);
 
+	/*
+	 * Restore the bridge_chain so the bridge detach procedure can happen
+	 * normally.
+	 */
+	list_splice(&dsi->bridge_chain, &dsi->encoder->bridge_chain);
 	vc4_dsi_encoder_destroy(dsi->encoder);
 
 	if (dsi->port == 1)
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index bd78c256b1ed..c118726469ee 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -384,8 +384,8 @@ struct drm_bridge {
 	struct drm_device *dev;
 	/** @encoder: encoder to which this bridge is connected */
 	struct drm_encoder *encoder;
-	/** @next: the next bridge in the encoder chain */
-	struct drm_bridge *next;
+	/** @chain_node: used to form a bridge chain */
+	struct list_head chain_node;
 #ifdef CONFIG_OF
 	/** @of_node: device node pointer to the bridge */
 	struct device_node *of_node;
@@ -420,7 +420,10 @@ int drm_bridge_attach(struct drm_encoder *encoder, struct drm_bridge *bridge,
 static inline struct drm_bridge *
 drm_bridge_get_next_bridge(struct drm_bridge *bridge)
 {
-	return bridge->next;
+	if (list_is_last(&bridge->chain_node, &bridge->encoder->bridge_chain))
+		return NULL;
+
+	return list_next_entry(bridge, chain_node);
 }
 
 /**
@@ -434,7 +437,8 @@ drm_bridge_get_next_bridge(struct drm_bridge *bridge)
 static inline struct drm_bridge *
 drm_bridge_chain_get_first_bridge(struct drm_encoder *encoder)
 {
-	return encoder->bridge;
+	return list_first_entry_or_null(&encoder->bridge_chain,
+					struct drm_bridge, chain_node);
 }
 
 bool drm_bridge_chain_mode_fixup(struct drm_bridge *bridge,
diff --git a/include/drm/drm_encoder.h b/include/drm/drm_encoder.h
index f06164f44efe..5623994b6e9e 100644
--- a/include/drm/drm_encoder.h
+++ b/include/drm/drm_encoder.h
@@ -172,7 +172,12 @@ struct drm_encoder {
 	 * &drm_connector_state.crtc.
 	 */
 	struct drm_crtc *crtc;
-	struct drm_bridge *bridge;
+
+	/**
+	 * @bridge_chain: Bridges attached to this encoder.
+	 */
+	struct list_head bridge_chain;
+
 	const struct drm_encoder_funcs *funcs;
 	const struct drm_encoder_helper_funcs *helper_private;
 };
-- 
2.23.0

