Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C30776A255
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 23:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230225AbjGaVDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 17:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231133AbjGaVDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 17:03:18 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C7E719A
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 14:03:16 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id DCD0586A57;
        Mon, 31 Jul 2023 23:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1690837395;
        bh=T74YFKmUrY/ck1eR+WbRs9vajhy7VxRX2trhC09YK/k=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=GTUQw80dxgjQpKMH4Z73NFbEBi07FEeEh4mQmGW6W4dItgqM1vQwaA3S6uK2k5N2j
         Y9n9QsTC3Y7I17epPp+8YpFSPaM/l7qD5ea2nnOUJ5TqBhlk/dz8Yx8sH2CAaPlI1v
         Ei10hAGMjPBasv/s8p/RHYjD+Mi8mVoO6U0WlCzfY7+AbrTrrYrOZiH6rED50Iiomj
         qb8fxEeqeJhRObJPf1SMOEb3PHQnKHH0tz6TWfGRMzHUnbOFxPCseUegUP6aDfDpx7
         RCyy19JY41QJS3Nq5z6YSGOOIamNnGMxQ/+OH22tQhdpBbdbevexRbur8m6bV4Ubfv
         4CKbYzlVhfEmQ==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/2] drm/panel-simple: Add Innolux G156HCE-L01 panel entry
Date:   Mon, 31 Jul 2023 23:02:58 +0200
Message-Id: <20230731210258.256152-2-marex@denx.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230731210258.256152-1-marex@denx.de>
References: <20230731210258.256152-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
dual-link LVDS TFT panel. Documentation is available at [1].
The middle frequency is tuned slightly upward from 70.93 MHz
to 72 MHz, otherwise the panel shows slight flicker.

[1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G156HCE-L01_Rev.C3_Datasheet.pdf

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/panel/panel-simple.c | 34 ++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 396a22177c674..417dd69054fc1 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2377,6 +2377,37 @@ static const struct panel_desc innolux_g121x1_l03 = {
 	},
 };
 
+static const struct display_timing innolux_g156hce_l01_timings = {
+	.pixelclock = { 120000000, 144000000, 150000000 },
+	.hactive = { 1920, 1920, 1920 },
+	.hfront_porch = { 80, 90, 100 },
+	.hback_porch = { 80, 90, 100 },
+	.hsync_len = { 20, 30, 30 },
+	.vactive = { 1080, 1080, 1080 },
+	.vfront_porch = { 3, 10, 20 },
+	.vback_porch = { 3, 10, 20 },
+	.vsync_len = { 4, 10, 10 },
+};
+
+static const struct panel_desc innolux_g156hce_l01 = {
+	.timings = &innolux_g156hce_l01_timings,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 344,
+		.height = 194,
+	},
+	.delay = {
+		.prepare = 1,		/* T1+T2 */
+		.enable = 450,		/* T5 */
+		.disable = 200,		/* T6 */
+		.unprepare = 10,	/* T3+T7 */
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode innolux_n156bge_l21_mode = {
 	.clock = 69300,
 	.hdisplay = 1366,
@@ -4243,6 +4274,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "innolux,g121x1-l03",
 		.data = &innolux_g121x1_l03,
+	}, {
+		.compatible = "innolux,g156hce-l01",
+		.data = &innolux_g156hce_l01,
 	}, {
 		.compatible = "innolux,n156bge-l21",
 		.data = &innolux_n156bge_l21,
-- 
2.40.1

