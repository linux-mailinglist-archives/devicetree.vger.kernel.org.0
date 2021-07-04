Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D6543BAC41
	for <lists+devicetree@lfdr.de>; Sun,  4 Jul 2021 11:04:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbhGDJHQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jul 2021 05:07:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbhGDJHQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jul 2021 05:07:16 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD38BC061762
        for <devicetree@vger.kernel.org>; Sun,  4 Jul 2021 02:04:40 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id x21-20020a17090aa395b029016e25313bfcso9479653pjp.2
        for <devicetree@vger.kernel.org>; Sun, 04 Jul 2021 02:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4/t/yuyJpK03/e85JwmT4sPri76hH2e7sinXKHn6Jm4=;
        b=PBfEFr1BFMVjj3B+E0cmJ2WWmRzElaTVeIW2FUDP67VEsqTV2t4doQ/laPx33w01ZZ
         QLkKZPLV88HMSQWHmWGqufXpWw6dHjL2B6Zf4xwMHSm8DB1Rh0y3enlxGz/w/DcGkIip
         tjR3OU0WtVrMK2ooLVJLQc1P87TGWNHy+uWHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4/t/yuyJpK03/e85JwmT4sPri76hH2e7sinXKHn6Jm4=;
        b=nCk7xLXfRSBCN7vZj7aedJSnMGGYjVeS3dJ6UEfI2E2T4hGCNmuN43mORX64PWGwxK
         6XX8CFZGEW3iInM5RCbSjaRUyHCdYDoU4n6REG3aGpO8YxkQ9tR6lbAdDfLcve32WNES
         +5YO9sBzsLq3nHgEVlCTUBJ5jfZiVPgI25gNbBBbHnT+2t/z+DmaV8+ooYtp2SUl5+jy
         3jepQoQk1hg72ds+RXNogGDw7FrjK+XUgXjd0dHuirYJ0yuIHVkXZpWoXyISUNyCHKAN
         /xcQIKOYsAqyiJlhd8AwvOm+NqejY2T/Ve8BUr4i4IPSaa3vuwPLMzQ6ZA0+yYZfImc3
         f4Nw==
X-Gm-Message-State: AOAM5307hUNz3wmnIEOt5O4frCtAWFGg68uyGyvnmAuRcd8lKil5kjTB
        sjAVr2LWAJ0tSMtsxvX0/XK9IQ==
X-Google-Smtp-Source: ABdhPJy77aPWv0aLk8PVV9lGvo6WZzNRAOw/jXfAWvLysS/qv7rPpqLNr9aOcMxLgr7szCl4Cxz56A==
X-Received: by 2002:a17:90a:d598:: with SMTP id v24mr8316714pju.185.1625389480337;
        Sun, 04 Jul 2021 02:04:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:1ae9:772f:6f0f:3e24])
        by smtp.gmail.com with ESMTPSA id m24sm3360793pgd.60.2021.07.04.02.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 02:04:39 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [RFC PATCH 05/17] drm/exynos: dsi: Get the mode from bridge
Date:   Sun,  4 Jul 2021 14:32:18 +0530
Message-Id: <20210704090230.26489-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210704090230.26489-1-jagan@amarulasolutions.com>
References: <20210704090230.26489-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now the exynos dsi driver is fully aware of bridge
handling, so get the display mode from bridge, mode_set
API instead of legacy encoder crtc.

This makes bridge usage more efficient instead of relying
on encoder stack.

Add mode_set in drm_bridge_funcs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/exynos/exynos_drm_dsi.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index d828be07c325..99a1b8c22313 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -275,6 +275,7 @@ struct exynos_dsi {
 	u32 format;
 
 	int state;
+	struct drm_display_mode mode;
 	struct drm_property *brightness;
 	struct completion completed;
 
@@ -881,7 +882,7 @@ static int exynos_dsi_init_link(struct exynos_dsi *dsi)
 
 static void exynos_dsi_set_display_mode(struct exynos_dsi *dsi)
 {
-	struct drm_display_mode *m = &dsi->encoder.crtc->state->adjusted_mode;
+	struct drm_display_mode *m = &dsi->mode;
 	unsigned int num_bits_resol = dsi->driver_data->num_bits_resol;
 	u32 reg;
 
@@ -1411,6 +1412,15 @@ static void exynos_dsi_bridge_disable(struct drm_bridge *bridge)
 	pm_runtime_put_sync(dsi->dev);
 }
 
+static void exynos_dsi_bridge_mode_set(struct drm_bridge *bridge,
+				       const struct drm_display_mode *mode,
+				       const struct drm_display_mode *adjusted_mode)
+{
+	struct exynos_dsi *dsi = bridge_to_dsi(bridge);
+
+	drm_mode_copy(&dsi->mode, adjusted_mode);
+}
+
 static int exynos_dsi_panel_or_bridge(struct exynos_dsi *dsi,
 				      struct device_node *node)
 {
@@ -1451,6 +1461,7 @@ static int exynos_dsi_bridge_attach(struct drm_bridge *bridge,
 static const struct drm_bridge_funcs exynos_dsi_bridge_funcs = {
 	.enable = exynos_dsi_bridge_enable,
 	.disable = exynos_dsi_bridge_disable,
+	.mode_set = exynos_dsi_bridge_mode_set,
 	.attach = exynos_dsi_bridge_attach,
 };
 
-- 
2.25.1

