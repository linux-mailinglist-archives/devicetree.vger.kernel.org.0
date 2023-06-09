Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA9F8729DA4
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:00:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241258AbjFIPAW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:00:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241722AbjFIPAB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 11:00:01 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57A7B2D48
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 08:00:00 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686322799;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=nkO/Yx1g5fUFscK6SXf1oYePN1dBcfgeIQishrjax9Y=;
        b=b26cyEGiP/4WbeJB/EMzSH3bUSUVKnwmNzjcraJwT0ygt+Xp0vOsZkKvv6p4tnjaP+7STx
        9UWb+lXLHAeJ4Iwk7qldte4+GYVsEgD+fElB/SE8DTxM2qngUgQtEqTGiNIm6e//8qfTvH
        4ZRE3/0qeNjuYoXcz0ow5Gsom/rgkZZiTWL0w3Z3iCnJMQ6oGuBSOiexIWLfeDDy4nWj/H
        jjCP1Vj8mEfwyVIC9P2Sw6kpxanGPVwXJgtyWFDVW1gpc1tAN3w7o/zrQIOZZOKnCvL1zm
        DIR0BHUBLuRjdh5WvoPoUDsJU5hDP1L39R5GnnqwKny7g+CD2I9ksP9jthQdWw==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 14459240006;
        Fri,  9 Jun 2023 14:59:58 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 4/7] drm/panel: sitronix-st7789v: Use platform data
Date:   Fri,  9 Jun 2023 16:59:48 +0200
Message-Id: <20230609145951.853533-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609145951.853533-1-miquel.raynal@bootlin.com>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Sitronix ST7789V LCD controller is actually packaged in a number of
different panels with slightly different properties. Before introducing
the support for another pannel using this same LCD controller, let's
move all the panel-specific information into a dedicated structure that
is available as platform data.

There is no functional change.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../gpu/drm/panel/panel-sitronix-st7789v.c    | 30 +++++++++++++++----
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index 0abb45bea18d..212bccc31804 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -112,11 +112,19 @@
 			return val;		\
 	} while (0)
 
+struct st7789v_panel_info {
+	const struct drm_display_mode *display_mode;
+	u16 width_mm;
+	u16 height_mm;
+	u32 bus_format;
+};
+
 struct st7789v {
 	struct drm_panel panel;
 	struct spi_device *spi;
 	struct gpio_desc *reset;
 	struct regulator *power;
+	const struct st7789v_panel_info *panel_info;
 };
 
 enum st7789v_prefix {
@@ -170,10 +178,11 @@ static const struct drm_display_mode default_mode = {
 static int st7789v_get_modes(struct drm_panel *panel,
 			     struct drm_connector *connector)
 {
+	struct st7789v *ctx = panel_to_st7789v(panel);
+	const struct st7789v_panel_info *panel_info = ctx->panel_info;
 	struct drm_display_mode *mode;
-	u32 bus_format = MEDIA_BUS_FMT_RGB666_1X18;
 
-	mode = drm_mode_duplicate(connector->dev, &default_mode);
+	mode = drm_mode_duplicate(connector->dev, panel_info->display_mode);
 	if (!mode) {
 		dev_err(panel->dev, "failed to add mode %ux%ux@%u\n",
 			default_mode.hdisplay, default_mode.vdisplay,
@@ -186,10 +195,10 @@ static int st7789v_get_modes(struct drm_panel *panel,
 	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 	drm_mode_probed_add(connector, mode);
 
-	connector->display_info.width_mm = 61;
-	connector->display_info.height_mm = 103;
+	connector->display_info.width_mm = panel_info->width_mm;
+	connector->display_info.height_mm = panel_info->height_mm;
 	drm_display_info_set_bus_formats(&connector->display_info,
-					 &bus_format, 1);
+					 &panel_info->bus_format, 1);
 
 	return 1;
 }
@@ -365,6 +374,8 @@ static int st7789v_probe(struct spi_device *spi)
 	if (!ctx)
 		return -ENOMEM;
 
+	ctx->panel_info = device_get_match_data(&spi->dev);
+
 	spi_set_drvdata(spi, ctx);
 	ctx->spi = spi;
 
@@ -404,8 +415,15 @@ static void st7789v_remove(struct spi_device *spi)
 	drm_panel_remove(&ctx->panel);
 }
 
+static const struct st7789v_panel_info st7789v_info = {
+	.display_mode = &default_mode,
+	.width_mm = 64,
+	.height_mm = 103,
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
+};
+
 static const struct of_device_id st7789v_of_match[] = {
-	{ .compatible = "sitronix,st7789v" },
+	{ .compatible = "sitronix,st7789v", .data = &st7789v_info },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, st7789v_of_match);
-- 
2.34.1

