Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2423733612
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 18:33:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231802AbjFPQdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 12:33:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232752AbjFPQdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 12:33:19 -0400
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::226])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD8B35BF
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 09:33:07 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686933186;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xSSIPMer0iaS9iEZJYQR5IfN2LQER91cYqjPt6Z0kBc=;
        b=MPtq7TNEsJmImKlxUwY0DZ2+5UGBiIYJGOHgqYdYl3KtFFy3uecdlJsTM9n5YV0eTrAwCb
        FhAPDBfRa9fBpiOyTUnaP0zx95fNtu7aeXTQ/L06XrsjI1iSu4Q6nYVCiNhS4BBoiYy5ed
        B/E4N2XDJcg1SrZPd7Hs/Cpu4Fe5dp3P0L3AFve5q5V5uQaCHa7EtLi2p+0oCrOpj476a9
        Ypg8WtTxV+0MeC7ijcK27UwMpSvYEyfNfsoqcXHVHo0Tu4sUcbnmQWemWQHbk8lwT/iupP
        JUaeJ41uiTDTIyrPbxx9OWaipARK39lRKBSJekDTA6czBCmKaczXZv41mAdrBA==
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
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id F19EBC000B;
        Fri, 16 Jun 2023 16:33:04 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 5/6] drm/panel: sitronix-st7789v: Add EDT ET028013DMA panel support
Date:   Fri, 16 Jun 2023 18:32:54 +0200
Message-Id: <20230616163255.2804163-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This panel from Emerging Display Technologies Corporation features an
ST7789V2 LCD controller panel inside which is almost identical to what
the Sitronix panel driver supports.

In practice, the module physical size is specific, and experiments show
that the display will malfunction if any of the following situation
occurs:
* Pixel clock is above 3MHz
* Pixel clock is not inverted
I could not properly identify the reasons behind these failures, scope
captures show valid input signals.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../gpu/drm/panel/panel-sitronix-st7789v.c    | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index d7c5b3ad1baa..8649966ceae8 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -187,6 +187,21 @@ static const struct drm_display_mode t28cp45tn89_mode = {
 	.flags = DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC,
 };
 
+static const struct drm_display_mode et028013dma_mode = {
+	.clock = 3000,
+	.hdisplay = 240,
+	.hsync_start = 240 + 38,
+	.hsync_end = 240 + 38 + 10,
+	.htotal = 240 + 38 + 10 + 10,
+	.vdisplay = 320,
+	.vsync_start = 320 + 8,
+	.vsync_end = 320 + 8 + 4,
+	.vtotal = 320 + 8 + 4 + 4,
+	.width_mm = 43,
+	.height_mm = 58,
+	.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
+};
+
 struct st7789_panel_info default_panel = {
 	.mode = &default_mode,
 	.invert_mode = true,
@@ -203,6 +218,14 @@ struct st7789_panel_info t28cp45tn89_panel = {
 		     DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE,
 };
 
+struct st7789_panel_info et028013dma_panel = {
+	.mode = &et028013dma_mode,
+	.invert_mode = true,
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		     DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE,
+};
+
 static int st7789v_get_modes(struct drm_panel *panel,
 			     struct drm_connector *connector)
 {
@@ -474,6 +497,7 @@ static void st7789v_remove(struct spi_device *spi)
 static const struct spi_device_id st7789v_spi_id[] = {
 	{ "st7789v", (unsigned long) &default_panel },
 	{ "t28cp45tn89-v17", (unsigned long) &t28cp45tn89_panel },
+	{ "et028013dma", (unsigned long) &et028013dma_panel },
 	{ }
 };
 MODULE_DEVICE_TABLE(spi, st7789v_spi_id);
@@ -481,6 +505,7 @@ MODULE_DEVICE_TABLE(spi, st7789v_spi_id);
 static const struct of_device_id st7789v_of_match[] = {
 	{ .compatible = "sitronix,st7789v", .data = &default_panel },
 	{ .compatible = "inanbo,t28cp45tn89-v17", .data = &t28cp45tn89_panel },
+	{ .compatible = "edt,et028013dma", .data = &et028013dma_panel },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, st7789v_of_match);
-- 
2.34.1

