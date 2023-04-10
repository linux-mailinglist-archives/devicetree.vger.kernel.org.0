Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A11A96DC4AA
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 10:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229663AbjDJIwl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 04:52:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjDJIwk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 04:52:40 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A538010B
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 01:52:12 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-94a35b11c08so109690966b.3
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 01:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681116729; x=1683708729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qCvx4T7aanPiUqpFl/M0cMKkdvIDQFWcCiUFxZeM/NU=;
        b=Y/dl73ECeQJmxGjfNGFXGoj+tH3jDlPFyNtkQbgPt8AGF/iCm+V3lt8qgzwpYsWWQl
         wBHBNEH6FPMOWum5niMWUFshrjNYbyWkAfFqnqBwNR6SU0IOERdQPagVi6odqzeOjOQU
         whQYjImi9JeZaGl8e3AFT197+L4iOOkPhsyq+7sVrAorYzbmmXXGG9n9MbXBgSHeoYyq
         z82tM8UGSbFqUermTYc8JIH/T1BBIg7mlSpio1NEcsquv6gZzA+L/vHSkKf1IbS//v+h
         DZgXthrfsyELJywaonFiGARS6cuv/z8C3d5DMbN1qUQajV8vb0goOsA9kHN4xSFsDMGC
         SoUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681116729; x=1683708729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qCvx4T7aanPiUqpFl/M0cMKkdvIDQFWcCiUFxZeM/NU=;
        b=HSY04+p2B6jzfg2XehVHYNZdZwGZExn4lWCZ9/ggkD2KD5YUDE4VA19u7GPebUZiQa
         F6jywSMpTfqLc2KSg7AbqEdAMmUPqmCc5RcOS0gislMtxHUu8Qis0s5uVWuqCxPXyW/D
         uzpM9+7lWkyyvpDbVVRICHk0ID2K36i7NG+MwtbxrqdC+qAdX720ta6f+h05zUXPBwO8
         O8Yw7bsCQUhslkPjgkmPsYP7ED6DR/ZqJzZL6uD97IRJUYcbfLWAM5C3nk6boNcqJTyC
         YMcrmgjcZosWib+vTFWeSmJFt3qXSJhzzp/aVL1sY3Ion3kSDaMTEkIsmIr6Ejs//O7W
         LnvA==
X-Gm-Message-State: AAQBX9fL1/4dvumRPjVfIIfDeVl8uNPgAQ6SnDiUvRrUc3/7WbW8FcH8
        kWITzTTOihqo1bZY948m+PY=
X-Google-Smtp-Source: AKy350b+eqHkqWt2X3cAZ+ksESIZiHh0LCjG8NmoiClTQLYlCGhrNn9z1ont5uVVtrkNnozW62+qaA==
X-Received: by 2002:a05:6402:138e:b0:504:8c4a:d1e with SMTP id b14-20020a056402138e00b005048c4a0d1emr5611231edv.8.1681116728661;
        Mon, 10 Apr 2023 01:52:08 -0700 (PDT)
Received: from localhost.localdomain ([154.72.161.184])
        by smtp.gmail.com with ESMTPSA id v13-20020a50954d000000b004fc649481basm4709962eda.58.2023.04.10.01.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 01:52:08 -0700 (PDT)
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
Subject: [PATCH 2/2] drm: sun4i: tie DSI PHY Poweron/off to crtc enable/disable
Date:   Mon, 10 Apr 2023 09:47:50 +0100
Message-Id: <20230410084750.164016-3-fusibrandon13@gmail.com>
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

Poweron/off the DSI PHY when the crtc is enabled/disabled. This allows the modeset
helpers to manage the DSI sink while preserving the old drm_panel_<prepare,enable>
and drm_panel_<disable,unprepare> sequences.

Signed-off-by: Brandon Cheo Fusi <fusibrandon13@gmail.com>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 523a6d787..6f50dc66a 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -190,7 +190,7 @@ void sun4i_tcon_set_status(struct sun4i_tcon *tcon,
 			   const struct drm_encoder *encoder,
 			   bool enabled)
 {
-	bool is_lvds = false;
+	bool is_lvds = false, is_dsi = false;
 	int channel;
 
 	switch (encoder->encoder_type) {
@@ -198,6 +198,8 @@ void sun4i_tcon_set_status(struct sun4i_tcon *tcon,
 		is_lvds = true;
 		fallthrough;
 	case DRM_MODE_ENCODER_DSI:
+		is_dsi = true;
+		fallthrough;
 	case DRM_MODE_ENCODER_NONE:
 		channel = 0;
 		break;
@@ -221,6 +223,12 @@ void sun4i_tcon_set_status(struct sun4i_tcon *tcon,
 		sun4i_tcon_lvds_set_status(tcon, encoder, true);
 
 	sun4i_tcon_channel_set_status(tcon, channel, enabled);
+
+	if (is_dsi) {
+		/* turn DSI phy on or off */
+		(enabled) ? sun6i_dsi_phy_power_on(encoder)
+				  : sun6i_dsi_phy_power_off(encoder);
+	}
 }
 
 void sun4i_tcon_enable_vblank(struct sun4i_tcon *tcon, bool enable)
-- 
2.30.2

