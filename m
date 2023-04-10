Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02C176DC4A5
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 10:51:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229760AbjDJIu6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 04:50:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbjDJIuy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 04:50:54 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73AE25B8B
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 01:50:24 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-94a342f15e4so78505666b.0
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 01:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681116610; x=1683708610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w1PPutowbE1ddcNuSAkCSkroxKYobdEeWd9KbxPUEEU=;
        b=LGokBRfwoSyZtR+ih01/in6zmOZnvXuD0gRgan30Ovo+XaSic5WzY5NP0OsgxDn2BD
         AQFQUcqrQGq4Y4LxFytV9jBA+GuNfiKUMpcHpw8SY+VcyHINzPe7SZuN1CRF4KdQtYci
         1zbPaxCZQgEletquEAe90/xgnK4r7T51t4hs2NEloEKXpbjRj94RMFM9nBDsM0U10Gbj
         cL3SNK11tuZF2nvLlVNm19bOmr6Meku4x7yt7EEvnlPnM0tR8Rk2saCNs95CwiBi5Nyw
         hBfasGfcB0buCGwQo0Tprro2EnXeLsKORetkxx1xrP9jG+h/G1KDeknmZtRH2nKqAmVj
         95dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681116610; x=1683708610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w1PPutowbE1ddcNuSAkCSkroxKYobdEeWd9KbxPUEEU=;
        b=6DJGrt8w29zNVFQjyAncz9dBD1xZIEJp6xLwBHfxZVCJIQOVYYMr0ynA9GtXT0SwiV
         GoLAxjbLyP8HnrNO+ZiqyaGktBN+BpyQGXXiv2/6MIzLiHZIhkzQelCLXwQ1acZJbXQb
         ZHdu83JSg+R+1CHJ0BOHhcJvV220hphed5upaUhPG5VShJA95SmlZwDgZPlhNl2OImzl
         4rR4oKB7PV8pfrBvkj/WtCQIoMMZO+NYhdBKRaxA0UgWH/q6mueqsrselFXBc0b51obu
         Ex8UWK4OE3iTVxvYnC+xzdhve48ooaahFySelpZEk8NalSaIiMVc4fyVxwXF4K2Ej/Ha
         No6Q==
X-Gm-Message-State: AAQBX9e2ZEF7Dyf+zp1GLt+FrmH6O+2IpmIskUTPvxomBj7Er//wr8j0
        vLbq/arBPa4EKq1ELZ1ArmE=
X-Google-Smtp-Source: AKy350b5k9AR/6UulnkpYaBxALJEatRglMDChZn26EjA3zlioQLSx33nmJs40SAHZ2UuLARzkJjy8w==
X-Received: by 2002:aa7:d697:0:b0:504:852a:6856 with SMTP id d23-20020aa7d697000000b00504852a6856mr7280281edr.16.1681116609374;
        Mon, 10 Apr 2023 01:50:09 -0700 (PDT)
Received: from localhost.localdomain ([154.72.161.184])
        by smtp.gmail.com with ESMTPSA id v13-20020a50954d000000b004fc649481basm4709962eda.58.2023.04.10.01.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 01:50:08 -0700 (PDT)
From:   Brandon Cheo Fusi <fusibrandon13@gmail.com>
To:     maxime@cerno.tech
Cc:     airlied@gmail.com, andrzej.hajda@intel.com, daniel@ffwll.ch,
        dave.stevenson@raspberrypi.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, jagan@amarulasolutions.com,
        jernej.skrabec@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        maarten.lankhorst@linux.intel.com, marex@denx.de,
        neil.armstrong@linaro.org, rfoss@kernel.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, tzimmermann@suse.de,
        wens@csie.org, Brandon Cheo Fusi <fusibrandon13@gmail.com>
Subject: [PATCH 1/2] drm: sun4i/dsi: factor out DSI PHY poweron and poweroff
Date:   Mon, 10 Apr 2023 09:47:49 +0100
Message-Id: <20230410084750.164016-2-fusibrandon13@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230410084750.164016-1-fusibrandon13@gmail.com>
References: <20230410084750.164016-1-fusibrandon13@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Factor out PHY poweron and poweroff sequences from sun6i_dsi_encoder_enable
and sun6i_dsi_encoder_disable.This leaves nothing to be be done in
sun6i_dsi_encoder_disable, so get rid of that. Also remove
drm_panel_<prepare/enable/disable/unprepare> as these would be invoked the
modeset helpers.

Signed-off-by: Brandon Cheo Fusi <fusibrandon13@gmail.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 64 ++++++++++++--------------
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  4 ++
 2 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 760ff05ea..4dc92109e 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -713,7 +713,7 @@ static int sun6i_dsi_start(struct sun6i_dsi *dsi,
 	return 0;
 }
 
-static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
+void sun6i_dsi_phy_power_on(const struct drm_encoder *encoder)
 {
 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
 	struct sun6i_dsi *dsi = encoder_to_sun6i_dsi(encoder);
@@ -768,43 +768,12 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
 	phy_set_mode(dsi->dphy, PHY_MODE_MIPI_DPHY);
 	phy_configure(dsi->dphy, &opts);
 	phy_power_on(dsi->dphy);
-
-	if (dsi->panel)
-		drm_panel_prepare(dsi->panel);
-
-	/*
-	 * FIXME: This should be moved after the switch to HS mode.
-	 *
-	 * Unfortunately, once in HS mode, it seems like we're not
-	 * able to send DCS commands anymore, which would prevent any
-	 * panel to send any DCS command as part as their enable
-	 * method, which is quite common.
-	 *
-	 * I haven't seen any artifact due to that sub-optimal
-	 * ordering on the panels I've tested it with, so I guess this
-	 * will do for now, until that IP is better understood.
-	 */
-	if (dsi->panel)
-		drm_panel_enable(dsi->panel);
-
-	sun6i_dsi_start(dsi, DSI_START_HSC);
-
-	udelay(1000);
-
-	sun6i_dsi_start(dsi, DSI_START_HSD);
 }
 
-static void sun6i_dsi_encoder_disable(struct drm_encoder *encoder)
+void sun6i_dsi_phy_power_off(const struct drm_encoder *encoder)
 {
 	struct sun6i_dsi *dsi = encoder_to_sun6i_dsi(encoder);
 
-	DRM_DEBUG_DRIVER("Disabling DSI output\n");
-
-	if (dsi->panel) {
-		drm_panel_disable(dsi->panel);
-		drm_panel_unprepare(dsi->panel);
-	}
-
 	phy_power_off(dsi->dphy);
 	phy_exit(dsi->dphy);
 
@@ -813,6 +782,34 @@ static void sun6i_dsi_encoder_disable(struct drm_encoder *encoder)
 	regulator_disable(dsi->regulator);
 }
 
+static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder, struct drm_atomic_state *old_state)
+{
+	struct sun6i_dsi *dsi = encoder_to_sun6i_dsi(encoder);
+
+	DRM_DEBUG_DRIVER("Enabling DSI output\n");
+
+	sun6i_dsi_start(dsi, DSI_START_HSC);
+
+	udelay(1000);
+
+	sun6i_dsi_start(dsi, DSI_START_HSD);
+
+	/*
+	 * NOTE
+	 *
+	 * Unfortunately, once in HS mode, it seems like we're not
+	 * able to send DCS commands anymore, which would prevent any
+	 * panel to send any DCS command as part as their enable
+	 * method, which is quite common.
+	 *
+	 * So maybe panels/bridges should send any init DCS commands in their
+	 * prepare/pre_enable methods? This should work as the DSI PHY is active
+	 * before those hooks are called.
+	 *
+	 * This will do for now, until that IP is better understood.
+	 */
+}
+
 static int sun6i_dsi_get_modes(struct drm_connector *connector)
 {
 	struct sun6i_dsi *dsi = connector_to_sun6i_dsi(connector);
@@ -843,7 +840,6 @@ static const struct drm_connector_funcs sun6i_dsi_connector_funcs = {
 };
 
 static const struct drm_encoder_helper_funcs sun6i_dsi_enc_helper_funcs = {
-	.disable	= sun6i_dsi_encoder_disable,
 	.enable		= sun6i_dsi_encoder_enable,
 };
 
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index f1ddefe0f..a0b541f48 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -40,6 +40,10 @@ struct sun6i_dsi {
 	const struct sun6i_dsi_variant *variant;
 };
 
+void sun6i_dsi_phy_power_on(const struct drm_encoder *encoder);
+
+void sun6i_dsi_phy_power_off(const struct drm_encoder *encoder);
+
 static inline struct sun6i_dsi *host_to_sun6i_dsi(struct mipi_dsi_host *host)
 {
 	return container_of(host, struct sun6i_dsi, host);
-- 
2.30.2

