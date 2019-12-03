Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 74EF710FFE5
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 15:15:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726086AbfLCOP3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 09:15:29 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:59046 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726505AbfLCOP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Dec 2019 09:15:29 -0500
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0840B290595;
        Tue,  3 Dec 2019 14:15:27 +0000 (GMT)
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
Subject: [PATCH v4 06/11] drm/bridge: Add the drm_bridge_get_prev_bridge() helper
Date:   Tue,  3 Dec 2019 15:15:10 +0100
Message-Id: <20191203141515.3597631-7-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191203141515.3597631-1-boris.brezillon@collabora.com>
References: <20191203141515.3597631-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The drm_bridge_get_prev_bridge() helper will be useful for bridge
drivers that want to do bus format negotiation with their neighbours.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
Changes in v4:
* Change the helper name to be consistent with the _next_bridge() helper
* Update the commit message
* Add Rbs

Changes in v3:
* Inline drm_bridge_chain_get_prev_bridge()
* Fix the doc

Changes in v2:
* Fix the kerneldoc
* Drop the !bridge || !bridge->encoder check
---
 include/drm/drm_bridge.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index 1eb854025a20..bfb0385163f1 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -426,6 +426,22 @@ drm_bridge_get_next_bridge(struct drm_bridge *bridge)
 	return list_next_entry(bridge, chain_node);
 }
 
+/**
+ * drm_bridge_get_prev_bridge() - Get the previous bridge in the chain
+ * @bridge: bridge object
+ *
+ * RETURNS:
+ * the previous bridge in the chain, or NULL if @bridge is the first.
+ */
+static inline struct drm_bridge *
+drm_bridge_get_prev_bridge(struct drm_bridge *bridge)
+{
+	if (list_is_first(&bridge->chain_node, &bridge->encoder->bridge_chain))
+		return NULL;
+
+	return list_prev_entry(bridge, chain_node);
+}
+
 /**
  * drm_bridge_chain_get_first_bridge() - Get the first bridge in the chain
  * @encoder: encoder object
-- 
2.23.0

