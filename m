Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7814F9A7D
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 18:23:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230324AbiDHQZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 12:25:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbiDHQZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 12:25:09 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9A5C10F6D5
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 09:23:05 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id w7so8756432pfu.11
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 09:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QPxziLerI0UxR876U+YKww6O14nhkPwPhp+Yk2SkNsw=;
        b=rDDE8uCIU3LYezldcEHFRYI6cOB3JUQZN/iN2Il9OLtfRc7c2RAjkHq+QErHuKDnM5
         2alUmfbCzYSjQKDZU0EYXbMjcn2f3dkvpxYi8pkaYLCr5zuC0gPGX1VeKNh0dvR/Ttxr
         7BYQd2KeH+61Ln0wnd6UDJnz+9xIWEUavyC98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QPxziLerI0UxR876U+YKww6O14nhkPwPhp+Yk2SkNsw=;
        b=dHRUMr9Djf1O7oIkuPRdNg0oKYl0oFjwcJq8qHv4b/k+BRijfO1PZgXgxylezdyKuD
         aH4kb4cRtek/XDk/7ap+h6QNqN7oSp+Xd9D58czP9CNyzxyEe7xTzr5+gMCljTJiaRKA
         8Jxf2xhPsTM2IL4ha+Twtw8hM2y/d9Gdx0lAGsM/n31nZkAZ364vL9770XCIqU52lIcY
         tnd4ckUD/MwBBc8oU8FyEXVbMTB25emZz87SlfDov2KyIyiP+oYbKBJa+CpWlu+wMaZw
         aSxEvHVwNKUfg7LUW6UHXRGxVH8yohW95CgqlsrJOwDkT6a4Vk2rImeeIWwAx0U6TVn3
         COTw==
X-Gm-Message-State: AOAM532gmHK83cHQRmsqvaiBosCdKZryoz1kwUOqTQslbORZ2DkPiPVm
        91/NF+gARHESwbGhboMl++WqgQ==
X-Google-Smtp-Source: ABdhPJxPVGWGup1T6RoQcsTJT63gC5gHW6058VTwOoGmi0zBV6zns5k2sSb0Mf0pvBF1rw4e1ZWkYQ==
X-Received: by 2002:a63:d955:0:b0:398:b864:ab71 with SMTP id e21-20020a63d955000000b00398b864ab71mr16413922pgj.515.1649434985368;
        Fri, 08 Apr 2022 09:23:05 -0700 (PDT)
Received: from j-ThinkPad-E14-Gen-2.domain.name ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id n18-20020a056a0007d200b004fdac35672fsm24929863pfu.68.2022.04.08.09.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 09:23:04 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Inki Dae <inki.dae@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Fancy Fang <chen.fang@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
        Adam Ford <aford173@gmail.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 07/11] drm: bridge: samsung-dsim: Add atomic_check
Date:   Fri,  8 Apr 2022 21:51:04 +0530
Message-Id: <20220408162108.184583-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408162108.184583-1-jagan@amarulasolutions.com>
References: <20220408162108.184583-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixing up the mode flags is required in order to correlate the
correct sync flags of the surrounding components in the chain
to make sure the whole pipeline can work properly.

So, handle the mode flags via bridge, atomic_check.

v1:
* fix mode flags in atomic_check instead of mode_fixup

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/bridge/samsung-dsim.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/bridge/samsung-dsim.c b/drivers/gpu/drm/bridge/samsung-dsim.c
index 1fe4b8e737a4..38db1f93ed51 100644
--- a/drivers/gpu/drm/bridge/samsung-dsim.c
+++ b/drivers/gpu/drm/bridge/samsung-dsim.c
@@ -1338,6 +1338,19 @@ static void samsung_dsim_atomic_post_disable(struct drm_bridge *bridge,
 	pm_runtime_put_sync(dsi->dev);
 }
 
+static int samsung_dsim_atomic_check(struct drm_bridge *bridge,
+				     struct drm_bridge_state *bridge_state,
+				     struct drm_crtc_state *crtc_state,
+				     struct drm_connector_state *conn_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
+
+	adjusted_mode->flags |= (DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC);
+	adjusted_mode->flags &= ~(DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC);
+
+	return 0;
+}
+
 static void samsung_dsim_mode_set(struct drm_bridge *bridge,
 				  const struct drm_display_mode *mode,
 				  const struct drm_display_mode *adjusted_mode)
@@ -1359,6 +1372,7 @@ static const struct drm_bridge_funcs samsung_dsim_bridge_funcs = {
 	.atomic_duplicate_state		= drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state		= drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset			= drm_atomic_helper_bridge_reset,
+	.atomic_check			= samsung_dsim_atomic_check,
 	.atomic_pre_enable		= samsung_dsim_atomic_pre_enable,
 	.atomic_enable			= samsung_dsim_atomic_enable,
 	.atomic_disable			= samsung_dsim_atomic_disable,
-- 
2.25.1

