Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DEA11125EA0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2019 11:12:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726692AbfLSKMF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Dec 2019 05:12:05 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:51065 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726622AbfLSKME (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Dec 2019 05:12:04 -0500
Received: by mail-wm1-f66.google.com with SMTP id a5so4825212wmb.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2019 02:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c5SzSpLnxAWzav+8fEkILfxcYXY8CFSRE5UmJJ37c6w=;
        b=S33g9tSL8itkuF4yFWEi+Dv5PyH24dzMm3OLro7uGV48q+Orx/SGs7im0sSwFmIKYP
         Ktarwkj2dgZ532QMWj/PxvEVCyduujvZAhOJ6nK10Wd1fT2k+wlKYDw9wMNIHo93CUCU
         bL/6qaCVZC0r1fIcan1XUFzzR8ODAfMx5l2IGHESPNZlM1W8PkBaIwmT+qLmKzNNQhQc
         4K72HiBRnIDDwrmKWDYxBRiNF2e7+8DPdmIeCjQNrwR7NHf5T2laCJ6LRCnD1qijCRq6
         WyUsi2guZgdQE2uOeFiqgeOvJLDcFMJW+nnpyOvzSZfIJ4J1pTexJsF38vswRCAFf2Yt
         N3KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c5SzSpLnxAWzav+8fEkILfxcYXY8CFSRE5UmJJ37c6w=;
        b=S4E7Dh4zp1kaakfcUYfQkxbKTYsd4ooyPUq+L7BVPrrwIl5P3CC2gPEz1Wdshmhgh6
         sNEokSCWXmDctyBP3oyI+yg26LSEzdaxhBhOvFnwVhztA1HgO/DwQbw0dJg5f25YO4M9
         4PFEZMjEkDYVDm9CCjYL54EF8qrZWk2XV0XlPJU2TtchMxjtlpdlqvmhZ66n3rZZiGyb
         MGXPnUuJ2CYDjzU1K4uHI1KFep6r3H8cwqLmIbvuYMnGslxEPBiG4IaR2ozh8PqZssPi
         gJTiJUH8A9hXxTfyMpndYoKDBk69Kfz9yfgzfMJiqpIMKpOBU2fNgzx8GwdX4+svntD1
         bCww==
X-Gm-Message-State: APjAAAV2eqpS3spdh4gUNDVqBaKDTYLVdsl8JomSZlZEUgESc7j11QpI
        x9J0PX3dWg669AA+jqZN98Rzyg==
X-Google-Smtp-Source: APXvYqwRwJ8wjsLQ1XhWMBidGpBHeyWIUxSIL0NEQd2Bucj+ns8BnU4IANiYYnvo1xlHRh/ZoMLF5Q==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr8839256wmg.147.1576750322120;
        Thu, 19 Dec 2019 02:12:02 -0800 (PST)
Received: from bender.baylibre.local (lfbn-nic-1-505-157.w90-116.abo.wanadoo.fr. [90.116.92.157])
        by smtp.gmail.com with ESMTPSA id o4sm5750059wrx.25.2019.12.19.02.12.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 02:12:01 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Boris Brezillon <boris.brezillon@collabora.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        kernel@collabora.com, Sam Ravnborg <sam@ravnborg.org>,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chris Healy <cphealy@gmail.com>, devicetree@vger.kernel.org,
        Jonas Karlman <jonas@kwiboo.se>,
        Rob Herring <robh+dt@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Seung-Woo Kim <sw0312.kim@samsung.com>
Subject: [PATCH v5 2/4] drm/bridge: Patch atomic hooks to take a drm_bridge_state
Date:   Thu, 19 Dec 2019 11:11:49 +0100
Message-Id: <20191219101151.28039-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191219101151.28039-1-narmstrong@baylibre.com>
References: <20191219101151.28039-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Boris Brezillon <boris.brezillon@collabora.com>

This way the drm_bridge_funcs interface is consistent with the rest of
the subsystem.

The only driver implementing those hooks (analogix DP) is patched too.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
Changes in v5:
* None

Changes in v4:
* Rename func params into old_bridge_state
* Add Laurent's Rb

Changes in v3:
* Old state clarification moved to a separate patch

Changes in v2:
* Pass the old bridge state
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 41 +++++++------
 drivers/gpu/drm/drm_bridge.c                  | 61 +++++++++++++++----
 include/drm/drm_bridge.h                      |  8 +--
 3 files changed, 77 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 6effe532f820..6fab71985cd4 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1289,19 +1289,21 @@ struct drm_crtc *analogix_dp_get_new_crtc(struct analogix_dp_device *dp,
 	return conn_state->crtc;
 }
 
-static void analogix_dp_bridge_atomic_pre_enable(struct drm_bridge *bridge,
-						 struct drm_atomic_state *state)
+static void
+analogix_dp_bridge_atomic_pre_enable(struct drm_bridge *bridge,
+				     struct drm_bridge_state *old_bridge_state)
 {
+	struct drm_atomic_state *old_state = old_bridge_state->base.state;
 	struct analogix_dp_device *dp = bridge->driver_private;
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *old_crtc_state;
 	int ret;
 
-	crtc = analogix_dp_get_new_crtc(dp, state);
+	crtc = analogix_dp_get_new_crtc(dp, old_state);
 	if (!crtc)
 		return;
 
-	old_crtc_state = drm_atomic_get_old_crtc_state(state, crtc);
+	old_crtc_state = drm_atomic_get_old_crtc_state(old_state, crtc);
 	/* Don't touch the panel if we're coming back from PSR */
 	if (old_crtc_state && old_crtc_state->self_refresh_active)
 		return;
@@ -1366,20 +1368,22 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 	return ret;
 }
 
-static void analogix_dp_bridge_atomic_enable(struct drm_bridge *bridge,
-					     struct drm_atomic_state *state)
+static void
+analogix_dp_bridge_atomic_enable(struct drm_bridge *bridge,
+				 struct drm_bridge_state *old_bridge_state)
 {
+	struct drm_atomic_state *old_state = old_bridge_state->base.state;
 	struct analogix_dp_device *dp = bridge->driver_private;
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *old_crtc_state;
 	int timeout_loop = 0;
 	int ret;
 
-	crtc = analogix_dp_get_new_crtc(dp, state);
+	crtc = analogix_dp_get_new_crtc(dp, old_state);
 	if (!crtc)
 		return;
 
-	old_crtc_state = drm_atomic_get_old_crtc_state(state, crtc);
+	old_crtc_state = drm_atomic_get_old_crtc_state(old_state, crtc);
 	/* Not a full enable, just disable PSR and continue */
 	if (old_crtc_state && old_crtc_state->self_refresh_active) {
 		ret = analogix_dp_disable_psr(dp);
@@ -1440,18 +1444,20 @@ static void analogix_dp_bridge_disable(struct drm_bridge *bridge)
 	dp->dpms_mode = DRM_MODE_DPMS_OFF;
 }
 
-static void analogix_dp_bridge_atomic_disable(struct drm_bridge *bridge,
-					      struct drm_atomic_state *state)
+static void
+analogix_dp_bridge_atomic_disable(struct drm_bridge *bridge,
+				  struct drm_bridge_state *old_bridge_state)
 {
+	struct drm_atomic_state *old_state = old_bridge_state->base.state;
 	struct analogix_dp_device *dp = bridge->driver_private;
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *new_crtc_state = NULL;
 
-	crtc = analogix_dp_get_new_crtc(dp, state);
+	crtc = analogix_dp_get_new_crtc(dp, old_state);
 	if (!crtc)
 		goto out;
 
-	new_crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	new_crtc_state = drm_atomic_get_new_crtc_state(old_state, crtc);
 	if (!new_crtc_state)
 		goto out;
 
@@ -1463,20 +1469,21 @@ static void analogix_dp_bridge_atomic_disable(struct drm_bridge *bridge,
 	analogix_dp_bridge_disable(bridge);
 }
 
-static
-void analogix_dp_bridge_atomic_post_disable(struct drm_bridge *bridge,
-					    struct drm_atomic_state *state)
+static void
+analogix_dp_bridge_atomic_post_disable(struct drm_bridge *bridge,
+				struct drm_bridge_state *old_bridge_state)
 {
+	struct drm_atomic_state *old_state = old_bridge_state->base.state;
 	struct analogix_dp_device *dp = bridge->driver_private;
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *new_crtc_state;
 	int ret;
 
-	crtc = analogix_dp_get_new_crtc(dp, state);
+	crtc = analogix_dp_get_new_crtc(dp, old_state);
 	if (!crtc)
 		return;
 
-	new_crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	new_crtc_state = drm_atomic_get_new_crtc_state(old_state, crtc);
 	if (!new_crtc_state || !new_crtc_state->self_refresh_active)
 		return;
 
diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
index a3921b45f044..6bdc4ab789c9 100644
--- a/drivers/gpu/drm/drm_bridge.c
+++ b/drivers/gpu/drm/drm_bridge.c
@@ -465,10 +465,19 @@ void drm_atomic_bridge_chain_disable(struct drm_bridge *bridge,
 
 	encoder = bridge->encoder;
 	list_for_each_entry_reverse(iter, &encoder->bridge_chain, chain_node) {
-		if (iter->funcs->atomic_disable)
-			iter->funcs->atomic_disable(iter, old_state);
-		else if (iter->funcs->disable)
+		if (iter->funcs->atomic_disable) {
+			struct drm_bridge_state *old_bridge_state;
+
+			old_bridge_state =
+				drm_atomic_get_old_bridge_state(old_state,
+								iter);
+			if (WARN_ON(!old_bridge_state))
+				return;
+
+			iter->funcs->atomic_disable(iter, old_bridge_state);
+		} else if (iter->funcs->disable) {
 			iter->funcs->disable(iter);
+		}
 
 		if (iter == bridge)
 			break;
@@ -499,10 +508,20 @@ void drm_atomic_bridge_chain_post_disable(struct drm_bridge *bridge,
 
 	encoder = bridge->encoder;
 	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
-		if (bridge->funcs->atomic_post_disable)
-			bridge->funcs->atomic_post_disable(bridge, old_state);
-		else if (bridge->funcs->post_disable)
+		if (bridge->funcs->atomic_post_disable) {
+			struct drm_bridge_state *old_bridge_state;
+
+			old_bridge_state =
+				drm_atomic_get_old_bridge_state(old_state,
+								bridge);
+			if (WARN_ON(!old_bridge_state))
+				return;
+
+			bridge->funcs->atomic_post_disable(bridge,
+							   old_bridge_state);
+		} else if (bridge->funcs->post_disable) {
 			bridge->funcs->post_disable(bridge);
+		}
 	}
 }
 EXPORT_SYMBOL(drm_atomic_bridge_chain_post_disable);
@@ -531,10 +550,19 @@ void drm_atomic_bridge_chain_pre_enable(struct drm_bridge *bridge,
 
 	encoder = bridge->encoder;
 	list_for_each_entry_reverse(iter, &encoder->bridge_chain, chain_node) {
-		if (iter->funcs->atomic_pre_enable)
-			iter->funcs->atomic_pre_enable(iter, old_state);
-		else if (iter->funcs->pre_enable)
+		if (iter->funcs->atomic_pre_enable) {
+			struct drm_bridge_state *old_bridge_state;
+
+			old_bridge_state =
+				drm_atomic_get_old_bridge_state(old_state,
+								iter);
+			if (WARN_ON(!old_bridge_state))
+				return;
+
+			iter->funcs->atomic_pre_enable(iter, old_bridge_state);
+		} else if (iter->funcs->pre_enable) {
 			iter->funcs->pre_enable(iter);
+		}
 
 		if (iter == bridge)
 			break;
@@ -564,10 +592,19 @@ void drm_atomic_bridge_chain_enable(struct drm_bridge *bridge,
 
 	encoder = bridge->encoder;
 	list_for_each_entry_from(bridge, &encoder->bridge_chain, chain_node) {
-		if (bridge->funcs->atomic_enable)
-			bridge->funcs->atomic_enable(bridge, old_state);
-		else if (bridge->funcs->enable)
+		if (bridge->funcs->atomic_enable) {
+			struct drm_bridge_state *old_bridge_state;
+
+			old_bridge_state =
+				drm_atomic_get_old_bridge_state(old_state,
+								bridge);
+			if (WARN_ON(!old_bridge_state))
+				return;
+
+			bridge->funcs->atomic_enable(bridge, old_bridge_state);
+		} else if (bridge->funcs->enable) {
 			bridge->funcs->enable(bridge);
+		}
 	}
 }
 EXPORT_SYMBOL(drm_atomic_bridge_chain_enable);
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index 8a926c1a08db..0331e330635b 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -282,7 +282,7 @@ struct drm_bridge_funcs {
 	 * The @atomic_pre_enable callback is optional.
 	 */
 	void (*atomic_pre_enable)(struct drm_bridge *bridge,
-				  struct drm_atomic_state *old_state);
+				  struct drm_bridge_state *old_bridge_state);
 
 	/**
 	 * @atomic_enable:
@@ -307,7 +307,7 @@ struct drm_bridge_funcs {
 	 * The @atomic_enable callback is optional.
 	 */
 	void (*atomic_enable)(struct drm_bridge *bridge,
-			      struct drm_atomic_state *old_state);
+			      struct drm_bridge_state *old_bridge_state);
 	/**
 	 * @atomic_disable:
 	 *
@@ -330,7 +330,7 @@ struct drm_bridge_funcs {
 	 * The @atomic_disable callback is optional.
 	 */
 	void (*atomic_disable)(struct drm_bridge *bridge,
-			       struct drm_atomic_state *old_state);
+			       struct drm_bridge_state *old_bridge_state);
 
 	/**
 	 * @atomic_post_disable:
@@ -356,7 +356,7 @@ struct drm_bridge_funcs {
 	 * The @atomic_post_disable callback is optional.
 	 */
 	void (*atomic_post_disable)(struct drm_bridge *bridge,
-				    struct drm_atomic_state *old_state);
+				    struct drm_bridge_state *old_bridge_state);
 
 	/**
 	 * @atomic_duplicate_state:
-- 
2.22.0

