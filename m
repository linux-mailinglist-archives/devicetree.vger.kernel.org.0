Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5D5D537A97
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 14:24:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236097AbiE3MYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 08:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbiE3MYW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 08:24:22 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08B17793B8
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 05:24:22 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1nveRV-0002Mj-9Q; Mon, 30 May 2022 14:24:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1nveRV-005RpE-TR; Mon, 30 May 2022 14:24:16 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1nveRT-003r3e-VE; Mon, 30 May 2022 14:24:15 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH 2/2] drm/panel: simple: add ETML0700Y5DHA panel
Date:   Mon, 30 May 2022 14:24:07 +0200
Message-Id: <20220530122407.918874-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220530122407.918874-1-m.felsch@pengutronix.de>
References: <20220530122407.918874-1-m.felsch@pengutronix.de>
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

Add support for the 1024x600 LVDS panel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 4a2e580a2f7b..a5ccdf160dc7 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1685,6 +1685,32 @@ static const struct panel_desc edt_etm0700g0bdh6 = {
 	.connector_type = DRM_MODE_CONNECTOR_DPI,
 };
 
+static const struct display_timing edt_etml0700y5dha_timing = {
+	.pixelclock = { 40800000, 51200000, 67200000 },
+	.hactive = { 1024, 1024, 1024 },
+	.hfront_porch = { 30, 106, 125 },
+	.hback_porch = { 30, 106, 125 },
+	.hsync_len = { 30, 108, 126 },
+	.vactive = { 600, 600, 600 },
+	.vfront_porch = { 3, 12, 67},
+	.vback_porch = { 3, 12, 67 },
+	.vsync_len = { 4, 11, 66 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
+		 DISPLAY_FLAGS_DE_HIGH,
+};
+
+static const struct panel_desc edt_etml0700y5dha = {
+	.timings = &edt_etml0700y5dha_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 155,
+		.height = 86,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode edt_etmv570g2dhu_mode = {
 	.clock = 25175,
 	.hdisplay = 640,
@@ -3868,6 +3894,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "edt,etm0700g0edh6",
 		.data = &edt_etm0700g0bdh6,
+	}, {
+		.compatible = "edt,etml0700y5dha",
+		.data = &edt_etml0700y5dha,
 	}, {
 		.compatible = "edt,etmv570g2dhu",
 		.data = &edt_etmv570g2dhu,
-- 
2.30.2

