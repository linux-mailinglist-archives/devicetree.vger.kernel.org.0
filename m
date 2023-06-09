Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B135729DA2
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:00:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241576AbjFIPAX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:00:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241703AbjFIPAA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 11:00:00 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 524F2269A
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:59:59 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686322797;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=eWmXyHaEO4mtkrfotZ0GVoh1PNJaSqyVIp9+8qmmMVQ=;
        b=GqgmofFZ8/g7Rl5pyey2Ku8d+5UlSGmZAsoLRwlBMxYDrzOvG4zFgW9oeCEE6ANjowgsLU
        zcHjzrRtgOgbeSdCk8oKQe3pkZ3IDF2v8QMe/5VjqQ4G7JrVz1NFNMKQfmRWKx/JpJ82/z
        sqe15sf0ONYhSPHWLlTnaql1giRyvBIKVK7wTwCezv3WfYJVibtaHGcvHDsIzWNIX47FNR
        +vaLOK8tz7tcEDCRZ74oBEfLaAdFcJysByPF86K4zJ58rp4vM00tuQ/0pZScMuLjDoZS3d
        TpCjdQDPg1eTVU3oTjN1p1J772pnkKaHdD1LCNE0QUXUbBP+fsEuoy6WM0x7fw==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id D4B16240009;
        Fri,  9 Jun 2023 14:59:56 +0000 (UTC)
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
Subject: [PATCH 3/7] drm/panel: sitronix-st7789v: Specify the expected bus format
Date:   Fri,  9 Jun 2023 16:59:47 +0200
Message-Id: <20230609145951.853533-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609145951.853533-1-miquel.raynal@bootlin.com>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LCD controller supports RGB444, RGB565 and RGB888. The value that is
written in the COLMOD register indicates using RGB888, so let's clearly
specify the in-use bus format.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index e9ca7ebb458a..0abb45bea18d 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -6,6 +6,7 @@
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
+#include <linux/media-bus-format.h>
 #include <linux/regulator/consumer.h>
 #include <linux/spi/spi.h>
 
@@ -170,6 +171,7 @@ static int st7789v_get_modes(struct drm_panel *panel,
 			     struct drm_connector *connector)
 {
 	struct drm_display_mode *mode;
+	u32 bus_format = MEDIA_BUS_FMT_RGB666_1X18;
 
 	mode = drm_mode_duplicate(connector->dev, &default_mode);
 	if (!mode) {
@@ -186,6 +188,8 @@ static int st7789v_get_modes(struct drm_panel *panel,
 
 	connector->display_info.width_mm = 61;
 	connector->display_info.height_mm = 103;
+	drm_display_info_set_bus_formats(&connector->display_info,
+					 &bus_format, 1);
 
 	return 1;
 }
-- 
2.34.1

