Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CE164755C4
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 11:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236564AbhLOKFS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 05:05:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236488AbhLOKFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 05:05:18 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 752D5C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 02:05:15 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id x131so20229930pfc.12
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 02:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s6I6PVDiB5pjSFYBufZhX7FLrObvdsszj8DUlsHONsA=;
        b=frgDETcBuG4mUuuCcXsbGuRB0prsYpLTZ3mQqhVFnj/9xQu2rXS/ZvJ/y76KwdtyQt
         PoVO3mhyxyhbzum7Wr9NVyXIojquTrbTUYTxDBB4xR57TDXZoHP3QbSwmWy4zHokP464
         W8dPAycmjUme5JSnKyOazC4GRZ33GlqUZCZrg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s6I6PVDiB5pjSFYBufZhX7FLrObvdsszj8DUlsHONsA=;
        b=fE6EFF5zZgiTv09PfJtugY2TiZ2JWpnMSgKmUaKQ85IsdoyyU4ORCTe/gny1dGb6g5
         5M7EnxJn2hXP2AmUeoV3TIK//LeFSOsPqFBlmkVHeQUuCn1ZkgPoF7MNvK2v+sT5ghNs
         1nzaOu0jCCMa5poshKIofQcGLL3g2lqxQpjXI3fdJg4jcEFxi1bVZ6UQOV9lSYJdnd6b
         qawnv7KBb2yQAVny2dhNEHOLKmWkvbQ0bbTH/FAGsL4j3eH1rW8f/uwDtHWQkVpouF43
         NCDmX+t8EDaLi8r67PYhcnV5dQ8mlwsyVb27qTyQGPWacrfpuK9BratsNp3rMvjw/WoV
         aiXQ==
X-Gm-Message-State: AOAM5322odFHmJuIy0bLOwCgnAbNeDtSGqQx3ss9OdFcJ5Y+Do+JTgjw
        3byJv8x4a/R//3s42/bGksSg6A==
X-Google-Smtp-Source: ABdhPJxlj7+9XFvTEKpjWZtqqMeiRvecAiTEYT04jkyqgpRuG3goVeKkrE67uRaUdMaQv4v5hIUjlg==
X-Received: by 2002:a63:fe4a:: with SMTP id x10mr7181417pgj.531.1639562714968;
        Wed, 15 Dec 2021 02:05:14 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:a7:8328:d9c4:5bc9])
        by smtp.gmail.com with ESMTPSA id e7sm2050014pfv.156.2021.12.15.02.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 02:05:14 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2] drm: bridge: tc358764: Use drm panel_bridge API
Date:   Wed, 15 Dec 2021 15:34:59 +0530
Message-Id: <20211215100459.44196-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace the manual panel handling code by a drm panel_bridge via
devm_drm_of_get_bridge().

Adding panel_bridge handling,

- Drops drm_connector and related operations as drm_bridge_attach
  creates connector during attachment.

- Drops panel pointer and panel healpers.

This simplifies the driver and allows all components in the display
pipeline to be treated as bridges.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- s/panel_bridge/next_bridge
- drop unneeded headers

 drivers/gpu/drm/bridge/tc358764.c | 104 ++----------------------------
 1 file changed, 6 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358764.c b/drivers/gpu/drm/bridge/tc358764.c
index c1e35bdf9232..dca41ed32f8a 100644
--- a/drivers/gpu/drm/bridge/tc358764.c
+++ b/drivers/gpu/drm/bridge/tc358764.c
@@ -16,14 +16,9 @@
 #include <video/mipi_display.h>
 
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_bridge.h>
-#include <drm/drm_crtc.h>
-#include <drm/drm_fb_helper.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
-#include <drm/drm_panel.h>
 #include <drm/drm_print.h>
-#include <drm/drm_probe_helper.h>
 
 #define FLD_MASK(start, end)    (((1 << ((start) - (end) + 1)) - 1) << (end))
 #define FLD_VAL(val, start, end) (((val) << (end)) & FLD_MASK(start, end))
@@ -153,10 +148,9 @@ static const char * const tc358764_supplies[] = {
 struct tc358764 {
 	struct device *dev;
 	struct drm_bridge bridge;
-	struct drm_connector connector;
+	struct drm_bridge *next_bridge;
 	struct regulator_bulk_data supplies[ARRAY_SIZE(tc358764_supplies)];
 	struct gpio_desc *gpio_reset;
-	struct drm_panel *panel;
 	int error;
 };
 
@@ -210,12 +204,6 @@ static inline struct tc358764 *bridge_to_tc358764(struct drm_bridge *bridge)
 	return container_of(bridge, struct tc358764, bridge);
 }
 
-static inline
-struct tc358764 *connector_to_tc358764(struct drm_connector *connector)
-{
-	return container_of(connector, struct tc358764, connector);
-}
-
 static int tc358764_init(struct tc358764 *ctx)
 {
 	u32 v = 0;
@@ -278,43 +266,11 @@ static void tc358764_reset(struct tc358764 *ctx)
 	usleep_range(1000, 2000);
 }
 
-static int tc358764_get_modes(struct drm_connector *connector)
-{
-	struct tc358764 *ctx = connector_to_tc358764(connector);
-
-	return drm_panel_get_modes(ctx->panel, connector);
-}
-
-static const
-struct drm_connector_helper_funcs tc358764_connector_helper_funcs = {
-	.get_modes = tc358764_get_modes,
-};
-
-static const struct drm_connector_funcs tc358764_connector_funcs = {
-	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = drm_connector_cleanup,
-	.reset = drm_atomic_helper_connector_reset,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
-};
-
-static void tc358764_disable(struct drm_bridge *bridge)
-{
-	struct tc358764 *ctx = bridge_to_tc358764(bridge);
-	int ret = drm_panel_disable(bridge_to_tc358764(bridge)->panel);
-
-	if (ret < 0)
-		dev_err(ctx->dev, "error disabling panel (%d)\n", ret);
-}
-
 static void tc358764_post_disable(struct drm_bridge *bridge)
 {
 	struct tc358764 *ctx = bridge_to_tc358764(bridge);
 	int ret;
 
-	ret = drm_panel_unprepare(ctx->panel);
-	if (ret < 0)
-		dev_err(ctx->dev, "error unpreparing panel (%d)\n", ret);
 	tc358764_reset(ctx);
 	usleep_range(10000, 15000);
 	ret = regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
@@ -335,72 +291,25 @@ static void tc358764_pre_enable(struct drm_bridge *bridge)
 	ret = tc358764_init(ctx);
 	if (ret < 0)
 		dev_err(ctx->dev, "error initializing bridge (%d)\n", ret);
-	ret = drm_panel_prepare(ctx->panel);
-	if (ret < 0)
-		dev_err(ctx->dev, "error preparing panel (%d)\n", ret);
-}
-
-static void tc358764_enable(struct drm_bridge *bridge)
-{
-	struct tc358764 *ctx = bridge_to_tc358764(bridge);
-	int ret = drm_panel_enable(ctx->panel);
-
-	if (ret < 0)
-		dev_err(ctx->dev, "error enabling panel (%d)\n", ret);
 }
 
 static int tc358764_attach(struct drm_bridge *bridge,
 			   enum drm_bridge_attach_flags flags)
-{
-	struct tc358764 *ctx = bridge_to_tc358764(bridge);
-	struct drm_device *drm = bridge->dev;
-	int ret;
-
-	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) {
-		DRM_ERROR("Fix bridge driver to make connector optional!");
-		return -EINVAL;
-	}
-
-	ctx->connector.polled = DRM_CONNECTOR_POLL_HPD;
-	ret = drm_connector_init(drm, &ctx->connector,
-				 &tc358764_connector_funcs,
-				 DRM_MODE_CONNECTOR_LVDS);
-	if (ret) {
-		DRM_ERROR("Failed to initialize connector\n");
-		return ret;
-	}
-
-	drm_connector_helper_add(&ctx->connector,
-				 &tc358764_connector_helper_funcs);
-	drm_connector_attach_encoder(&ctx->connector, bridge->encoder);
-	ctx->connector.funcs->reset(&ctx->connector);
-	drm_connector_register(&ctx->connector);
-
-	return 0;
-}
-
-static void tc358764_detach(struct drm_bridge *bridge)
 {
 	struct tc358764 *ctx = bridge_to_tc358764(bridge);
 
-	drm_connector_unregister(&ctx->connector);
-	ctx->panel = NULL;
-	drm_connector_put(&ctx->connector);
+	return drm_bridge_attach(bridge->encoder, ctx->next_bridge, bridge, flags);
 }
 
 static const struct drm_bridge_funcs tc358764_bridge_funcs = {
-	.disable = tc358764_disable,
 	.post_disable = tc358764_post_disable,
-	.enable = tc358764_enable,
 	.pre_enable = tc358764_pre_enable,
 	.attach = tc358764_attach,
-	.detach = tc358764_detach,
 };
 
 static int tc358764_parse_dt(struct tc358764 *ctx)
 {
 	struct device *dev = ctx->dev;
-	int ret;
 
 	ctx->gpio_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->gpio_reset)) {
@@ -408,12 +317,11 @@ static int tc358764_parse_dt(struct tc358764 *ctx)
 		return PTR_ERR(ctx->gpio_reset);
 	}
 
-	ret = drm_of_find_panel_or_bridge(ctx->dev->of_node, 1, 0, &ctx->panel,
-					  NULL);
-	if (ret && ret != -EPROBE_DEFER)
-		dev_err(dev, "cannot find panel (%d)\n", ret);
+	ctx->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
+	if (IS_ERR(ctx->next_bridge))
+		return PTR_ERR(ctx->next_bridge);
 
-	return ret;
+	return 0;
 }
 
 static int tc358764_configure_regulators(struct tc358764 *ctx)
-- 
2.25.1

