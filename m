Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B682770635
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 18:45:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbjHDQpQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Aug 2023 12:45:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbjHDQpP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 12:45:15 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D7B9B2
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 09:45:14 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-584034c706dso24847207b3.1
        for <devicetree@vger.kernel.org>; Fri, 04 Aug 2023 09:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691167514; x=1691772314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=heTCs7dsv6GvWxFtBKhqH5NxQvlDCWaKtVOhiBVjHzo=;
        b=TInh3hRhBr8KOCnYQq6q9//bUQoBDfdSnKFkkt6lsRUqjHDHQNzbzIlmnsOV/9Qf4P
         2Z/RY6OHVz5wbEi8WHJBmec7UlgqiI4r+HkPWHG4s4W+DP39VSW535rAq7E1aeV4tpz3
         lMTQJcB/Bo8AxaYlPGfCazvrs2xNvWA225Gf5OQdqfVyaB+mFbdmsI4Ts/0y7tui3EtC
         idl4MmJLHhJ8aBbyRvlpkUJaWWK7bwPHioS01TIpK7Q7x13w6+x5xd1qgHepyFoTvyT6
         G7w7ylsi48NQwrkA3o8ET+qTiVNKcR11AsW31D6aKnT3uilFj+UW5CYgqszaaKoFgOfN
         NXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691167514; x=1691772314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=heTCs7dsv6GvWxFtBKhqH5NxQvlDCWaKtVOhiBVjHzo=;
        b=fdJHeV9leaumGqm96Pf46SYq4NCwFNYvDJA/tgyXITOqum6cL0lCyzagVbt+DLLGhI
         16v2AhIRy8D1eyBo0tGWZBSeh/oE2TAMNuFzzvvIzyeLnWfTCKlrH2KIy2erDLtpCoMe
         8SxmGa47Zg7Gr5A2iHzsPnkRjYNBy57gQsWCHjb+VzOU7n5jUYzF67NL9XLfZ6FTwA3V
         sviXcXQUSmL3TuhcaSR/U4OOqbor3QDjut/PMnPD1crJ6VlM7NxKQlRMunGNS6/k7U59
         ykE/gl2AQenwDXyZd2WCkfC3FCQTg9qoOUXqiJbYZXnVSH7GSjrE0abNBZv+c4BRIfce
         Uq8g==
X-Gm-Message-State: AOJu0Yxe4xLK3LbtQk9xXNEo+r8ZWzqxkOKdcgbucrJIcyC6F4SMwECf
        GxnvKffKElBcCMHKVnCVlbU=
X-Google-Smtp-Source: AGHT+IHTGB14ZbpyJgjwdEyv82+UY4dSBA5dU/gamPpHwG27emZI22leB43lLUAhHDLmUfdr5lKneg==
X-Received: by 2002:a0d:f6c4:0:b0:583:523e:6569 with SMTP id g187-20020a0df6c4000000b00583523e6569mr2104490ywf.17.1691167513746;
        Fri, 04 Aug 2023 09:45:13 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j63-20020a816e42000000b00582fae92aa7sm825248ywc.93.2023.08.04.09.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 09:45:13 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] drm/panel: nv3051d: Add Support for Anbernic 351V
Date:   Fri,  4 Aug 2023 11:45:03 -0500
Message-Id: <20230804164503.135169-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230804164503.135169-1-macroalpha82@gmail.com>
References: <20230804164503.135169-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic 351V. Just like the 353 series the
underlying vendor is unknown/unmarked (at least not visible in a
non-destructive manner). The panel had slightly different init
sequences and timings in the BSP kernel, but works fine with the
same ones used in the existing driver. The panel will not work without
the inclusion of the MIPI_DSI_CLOCK_NON_CONTINUOUS flag, and this flag
prevents the 353 series from working correctly, so a new compatible
string is added.

Tested colors and timings using modetest and all seem to work identical
to the 353 otherwise.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../gpu/drm/panel/panel-newvision-nv3051d.c    | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
index a07958038ffd..dc0d6dcca683 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
@@ -28,6 +28,7 @@ struct nv3051d_panel_info {
 	unsigned int num_modes;
 	u16 width_mm, height_mm;
 	u32 bus_flags;
+	unsigned long mode_flags;
 };
 
 struct panel_nv3051d {
@@ -385,8 +386,7 @@ static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
 
 	dsi->lanes = 4;
 	dsi->format = MIPI_DSI_FMT_RGB888;
-	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
-			  MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
+	dsi->mode_flags = ctx->panel_info->mode_flags;
 
 	drm_panel_init(&ctx->panel, &dsi->dev, &panel_nv3051d_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
@@ -480,10 +480,24 @@ static const struct nv3051d_panel_info nv3051d_rgxx3_info = {
 	.width_mm = 70,
 	.height_mm = 57,
 	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
+};
+
+static const struct nv3051d_panel_info nv3051d_rg351v_info = {
+	.display_modes = nv3051d_rgxx3_modes,
+	.num_modes = ARRAY_SIZE(nv3051d_rgxx3_modes),
+	.width_mm = 70,
+	.height_mm = 57,
+	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET |
+		      MIPI_DSI_CLOCK_NON_CONTINUOUS,
 };
 
 static const struct of_device_id newvision_nv3051d_of_match[] = {
 	{ .compatible = "newvision,nv3051d", .data = &nv3051d_rgxx3_info },
+	{ .compatible = "anbernic,rg351v-panel", .data = &nv3051d_rg351v_info },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, newvision_nv3051d_of_match);
-- 
2.34.1

