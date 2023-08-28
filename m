Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8677D78A977
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 11:59:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbjH1J7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 05:59:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230246AbjH1J6u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 05:58:50 -0400
X-Greylist: delayed 534 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 28 Aug 2023 02:58:47 PDT
Received: from mout-y-209.mailbox.org (mout-y-209.mailbox.org [IPv6:2001:67c:2050:103:465::209])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53710C6
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 02:58:47 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-y-209.mailbox.org (Postfix) with ESMTPS id 4RZ5Px4QWLz9tyR;
        Mon, 28 Aug 2023 11:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1693216197;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=iuvUE2osa5GSGbpu88Etoey7JOXIgOwyPBv4izznOXk=;
        b=GTdd5mHc+iY+nF1lKArq6utuzkxzlOrlhltVjOxDXp8T/sYs5G1MZzBt3oTC9LSpSb0FB/
        sC2jpU61aDcSGKqtvYAZTfIVyFocRvPUvmBb1iaEdRHeWe3QuBmcpJtIjTw/V+qLaP8xT8
        CED12QYTP37vOajVRNdErq325DwgWxRGlqAivk0BtGfWeMF455trRUz4fxFnDk0rtBhWal
        9PgDWSbI11R7zEEc9j1ToJ9HyzDEpOKjElg5rZK8fJiIJvmGxSJoFX+Q9PMgV295FnvX3p
        qKJwngFWTuxuTbMkhk5jDY3JWoIMzNxRPbvZzyEAcnLlNoguNyUCt2BG5i6EMQ==
From:   Elmar Albert <eal.git@mailbox.org>
To:     dri-devel@lists.freedesktop.org
Cc:     Elmar Albert <ealbert@data-modul.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/2] drm/panel: Add AUO G156HAN04.0 LVDS display support
Date:   Mon, 28 Aug 2023 11:49:43 +0200
Message-Id: <20230828094943.123676-2-eal.git@mailbox.org>
In-Reply-To: <20230828094943.123676-1-eal.git@mailbox.org>
References: <20230828094943.123676-1-eal.git@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: ee8afiaeotodthe69yd3w6e9bhpc5g6x
X-MBO-RS-ID: a47634a458d5c44ba2f
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Elmar Albert <ealbert@data-modul.com>

G156HAN04.0 is a Color Active Matrix Liquid Crystal Display composed of
a TFT LCD panel, a driver circuit, and LED backlight system. The screen
format is intended to supportthe 16:9 FHD, 1920(H) x 1080(V) screen
and 16.7M colors (RGB 8-bits ) with LED backlight driving circuit.
All input signals are LVDS interface compatible.

G156HAN04.0 is designed for a display unit of notebook style
personal computer and industrial machine.

Signed-off-by: Elmar Albert <ealbert@data-modul.com>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 36 ++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 52572fde9705..4fe6dafcabf6 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1050,6 +1050,39 @@ static const struct panel_desc auo_g133han01 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct display_timing auo_g156han04_timings = {
+	.pixelclock = { 137000000, 141000000, 146000000 },
+
+	.hactive = { 1920, 1920, 1920 },
+	.hfront_porch = { 60, 60, 60 },
+	.hback_porch =  { 90, 92, 111 },
+	.hsync_len =    { 32, 32, 32 },
+
+	.vactive = { 1080, 1080, 1080 },
+	.vfront_porch = { 12, 12, 12 },
+	.vback_porch =  { 24, 36, 56 },
+	.vsync_len =    {  8,  8,  8 },
+};
+
+static const struct panel_desc auo_g156han04 = {
+	.timings = &auo_g156han04_timings,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 344,
+		.height = 194,
+	},
+	.delay = {
+		.prepare = 50,		/* T2 */
+		.enable = 200,		/* T3 */
+		.disable = 110,		/* T10 */
+		.unprepare = 1000,	/* T13 */
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode auo_g156xtn01_mode = {
 	.clock = 76000,
 	.hdisplay = 1366,
@@ -4118,6 +4151,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "auo,g133han01",
 		.data = &auo_g133han01,
+	}, {
+		.compatible = "auo,g156han04",
+		.data = &auo_g156han04,
 	}, {
 		.compatible = "auo,g156xtn01",
 		.data = &auo_g156xtn01,
-- 
2.34.1

