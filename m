Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E169429DFA
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 08:49:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233161AbhJLGvO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 02:51:14 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:22468 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233379AbhJLGvL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 02:51:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634021350; x=1665557350;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PRVemg1TCgZgqoh2zDWu0Su4fQCkOIKQ3XhFew+ehD8=;
  b=iTZ/ib4nRF0yaXusKorsvGb0vhY7F3CBXYwocAd7juWKNe114aORNU71
   pNOoUn0gyO60KYANLOxcR01UKYZNXUvDn3CBrtRLPC1jlJpUG5BHtxkvS
   +5ysf3VVECAotxfzL+N6QIBAZXTqMF0SPyUbR2ZVr67ApyUUzxmwQHUav
   V5uKSXy03XIT/by2I49NK1gUBecfPrzbxgeoJNIdmX6FwWiHTORAR3HxU
   GDyC7TsmdIFZPejbn1oZEasxe6eOiR6fCKSx3Bu+mncSFgOvSPCwqzw4q
   G4c6Bn6g9AQPXq3ONqcKvAuM2H3vpNNyvR0I+LQi3U52ZvFm4m6gjaly9
   Q==;
X-IronPort-AV: E=Sophos;i="5.85,366,1624312800"; 
   d="scan'208";a="19985098"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 12 Oct 2021 08:49:02 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 12 Oct 2021 08:49:02 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 12 Oct 2021 08:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634021342; x=1665557342;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PRVemg1TCgZgqoh2zDWu0Su4fQCkOIKQ3XhFew+ehD8=;
  b=kx3Z9JCGDK89LGpC+sHjVIDPofRGv5NGqipgpbJFW+YFIH58R87/lkb8
   tJHMLeGISZlBJ125b1XBPS4TXfXITxYHLoQ2fU6BesVKuflHRuWPPVLl8
   JE3CcM49YT7w0LjXbdfmW20PwGUvoFXvOmqCHV9LiZLHiVP/El1x1f/0K
   5cWCGuPz8UQVhl4n2bEHBbPBvmPlNqVP5CxtPA7NMl9OLWedg6xqjWD37
   ae3D7XWb2UuznVrMH3U1KM5roMCOrymmHw22EJYtMynaHQ0dPsPUNt9Oc
   OUvjrg46WUFZlJC+GvfPhnVH+5rOOhlcn9YLRVaZbdHGsp6KWG9vMHCcs
   A==;
X-IronPort-AV: E=Sophos;i="5.85,366,1624312800"; 
   d="scan'208";a="19985097"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2021 08:49:02 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 30EA0280065;
        Tue, 12 Oct 2021 08:49:02 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 4/4] drm/bridge: ti-sn65dsi83: Add vcc supply regulator support
Date:   Tue, 12 Oct 2021 08:48:43 +0200
Message-Id: <20211012064843.298104-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
References: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VCC needs to be enabled before releasing the enable GPIO.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/gpu/drm/bridge/ti-sn65dsi83.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index 9072342566f3..a6b1fd71dfee 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -33,6 +33,7 @@
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
@@ -143,6 +144,7 @@ struct sn65dsi83 {
 	struct mipi_dsi_device		*dsi;
 	struct drm_bridge		*panel_bridge;
 	struct gpio_desc		*enable_gpio;
+	struct regulator		*vcc;
 	int				dsi_lanes;
 	bool				lvds_dual_link;
 	bool				lvds_dual_link_even_odd_swap;
@@ -647,6 +649,12 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
 
 	ctx->panel_bridge = panel_bridge;
 
+	ctx->vcc = devm_regulator_get(dev, "vcc");
+	if (IS_ERR(ctx->vcc))
+		return dev_err_probe(dev, PTR_ERR(ctx->vcc),
+				     "Failed to get supply 'vcc': %pe\n",
+				     ctx->vcc);
+
 	return 0;
 }
 
@@ -691,7 +699,11 @@ static int sn65dsi83_probe(struct i2c_client *client,
 	ctx->bridge.of_node = dev->of_node;
 	drm_bridge_add(&ctx->bridge);
 
-	return 0;
+	ret = regulator_enable(ctx->vcc);
+	if (ret)
+		dev_err(dev, "Failed to enable vcc: %i\n", ret);
+
+	return ret;
 }
 
 static int sn65dsi83_remove(struct i2c_client *client)
@@ -702,6 +714,7 @@ static int sn65dsi83_remove(struct i2c_client *client)
 	mipi_dsi_device_unregister(ctx->dsi);
 	drm_bridge_remove(&ctx->bridge);
 	of_node_put(ctx->host_node);
+	regulator_disable(ctx->vcc);
 
 	return 0;
 }
-- 
2.25.1

