Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C3B8776425
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 17:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230157AbjHIPkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 11:40:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232839AbjHIPjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 11:39:49 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2718E2694
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 08:39:49 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-586a3159588so15525487b3.0
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 08:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691595588; x=1692200388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=heTCs7dsv6GvWxFtBKhqH5NxQvlDCWaKtVOhiBVjHzo=;
        b=XNMmLG7ZfSIjfMuOUzinZG7jUOlFW/1qPQ+VX2RL6CyWKVVBVmGGOLj94aVupt48aL
         5v6+ol4FalLFWgiRHaXMMdy00hlrkhFTyAx4JOzc2FmZPUTKmQmEN+ZDIgt1KMt3T+Ls
         O5Qw61eeRCczz8qGSGvTqIxNk00FVMPBVpkfQTkojmTG5vD4NjKYWw2CBKLGrBARYcAg
         KSQu1Mkmq09gCkMex/E0fb3Z4UEHlhXv3qqzEmSjSnHVaJNo1qiRtuc3dXmiR8Dfm/5t
         ndLFzHeTOIEUyTs2f57LEUvEb5PWUbvZAfKN8PaEQ732CP4vo9SsKUzeoRPgn27g8jpi
         qPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691595588; x=1692200388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=heTCs7dsv6GvWxFtBKhqH5NxQvlDCWaKtVOhiBVjHzo=;
        b=TbUNrYLYzxDiLgtIXL9BVHT3tbax2Q1NpfrXTB5vmA9ZZbWnzP/h34/T3jzrFjY1Ns
         HG+kRONrZVdYLtI0CctzsYdBJX6JAOnj2+sQRm1AqK1wq0QvYPdHdw6kmLCP0vTW5TGN
         J6sMuadkRh+ZSFuEBnygoQaJpwQy668dJ+jZs8rWOvhArWC0JJNyWpwTur4PsrZXmuQr
         P3vN5Oef7XCV00IR5oWU0yO36cUwb/B9NSSUjdJp4QQwMTXyUjcUWNN+5kca+wEN9kOC
         dUrjm+V84eeab022D0SeVTBkg8C7nWim2KoazakCqbJfRsZEfFsSdqqI4sbkly/VzUiE
         2GQA==
X-Gm-Message-State: AOJu0YxXjNoq3keo++x+ZA9UM63gnAIng7IjUVGsDN9KpUKaz86K2gVl
        o3nT7ofzKmsY5KnIF+L/H5SPeZXqMgw=
X-Google-Smtp-Source: AGHT+IGo7Klo90Ro2NwyFAAnkPv29d+Pa3MnKtD1QRsaDN5/qrYptNrTr6b1H082Gtg//Df0gteYZA==
X-Received: by 2002:a81:6dc9:0:b0:57a:3942:bb74 with SMTP id i192-20020a816dc9000000b0057a3942bb74mr2862592ywc.17.1691595588241;
        Wed, 09 Aug 2023 08:39:48 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u15-20020a81a50f000000b005707fb5110bsm4043969ywg.58.2023.08.09.08.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 08:39:47 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/2] drm/panel: nv3051d: Add Support for Anbernic 351V
Date:   Wed,  9 Aug 2023 10:39:41 -0500
Message-Id: <20230809153941.1172-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230809153941.1172-1-macroalpha82@gmail.com>
References: <20230809153941.1172-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
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

