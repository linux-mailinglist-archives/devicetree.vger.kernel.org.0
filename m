Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 625A53BAC53
	for <lists+devicetree@lfdr.de>; Sun,  4 Jul 2021 11:05:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbhGDJHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jul 2021 05:07:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbhGDJHx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jul 2021 05:07:53 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31AE6C061764
        for <devicetree@vger.kernel.org>; Sun,  4 Jul 2021 02:05:18 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id cs1-20020a17090af501b0290170856e1a8aso12530764pjb.3
        for <devicetree@vger.kernel.org>; Sun, 04 Jul 2021 02:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hL+MLrJHBCEnouqDulLM6emOyYNPKN/7WWcJffUZVgI=;
        b=Ox7OeoxRhsCb8+mFylAYS173jFpOscjCTjnvDIGRdJMYounC5wKIgTpSP7XnVg6xAC
         raQssnG27OHHwoo4hz6T2qjygVeAqh3HXvS+HJMRwVeeW5DhzGewSdUD7BEygrqp0kmC
         oVtikcLRGUxzib5wVnpfq3lHqX/Oe7x+NPzK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hL+MLrJHBCEnouqDulLM6emOyYNPKN/7WWcJffUZVgI=;
        b=rg25Lozg0A8IyiFOFB3MaDUd0rBgVqxdpqYvYzUGtmNdYlvgwP5QqXDijQIAxq8J6K
         2xrpbtyZteow4YP6HB91Qzx0lomrDp07VZTB4AdWHzB05j9XHuzmRvnu+empWL2PtDZF
         AOWxKhJjAWra+iX6/Bt0/REBrRgDHVKHhyQUnbjKw7ta6NHAgPjKKA+QY+zArdoT0MTc
         rdFP6AFezqnD2GVfRl8JQ+EIpP+5flFn8XDouQ6HdCjBvVQ7eilTm5C/2x9jaYI/OIg9
         jxN+NVPrXGbZpBG+H1pbxZVhe7hl8SiIqIFLLoZQwoMyFEwlySJrxfAmiayVyCEdyQm2
         BV6w==
X-Gm-Message-State: AOAM532/P+FvHHXxlmJHz7GSOhxKSDli3S3rLvU+viTuWmfMoz38/qZ7
        KXnsGC7GhuEUI2e6gzDa4c7Tpw==
X-Google-Smtp-Source: ABdhPJyVk/7w3gX4oYTDufJRP1VggAbeuygq98DTjeKrWXsuGHlnrvYPSoR5wfCpShhHU3GcMAL8IQ==
X-Received: by 2002:a17:90b:14a:: with SMTP id em10mr8827443pjb.154.1625389517778;
        Sun, 04 Jul 2021 02:05:17 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:1ae9:772f:6f0f:3e24])
        by smtp.gmail.com with ESMTPSA id m24sm3360793pgd.60.2021.07.04.02.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 02:05:17 -0700 (PDT)
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
Subject: [RFC PATCH 11/17] drm: bridge: samsung-dsim: Find the possible DSI devices
Date:   Sun,  4 Jul 2021 14:32:24 +0530
Message-Id: <20210704090230.26489-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210704090230.26489-1-jagan@amarulasolutions.com>
References: <20210704090230.26489-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Finding panel_or_bridge might vary based on associated
DSI device drivers like DSI panel, bridge, and I2C based
DSI bridge.

All of these DSI drivers will invoke the DSI host in order
to find the panel_or_bridge from probe to host attach and
bridge_attach to host bridge attach.

So, in order to handle all these cases of finding the
panel_or_bridge invoke the finding API in host attach and
bridge attach with the DSIM_STATE_DEVICE_FOUND flag.

This way we can handle all possible cases of finding the
DSI devices.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/bridge/samsung-dsim.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/samsung-dsim.c b/drivers/gpu/drm/bridge/samsung-dsim.c
index 2222c27feffd..9a2df1212d0f 100644
--- a/drivers/gpu/drm/bridge/samsung-dsim.c
+++ b/drivers/gpu/drm/bridge/samsung-dsim.c
@@ -248,6 +248,7 @@ struct samsung_dsim_transfer {
 #define DSIM_STATE_INITIALIZED		BIT(1)
 #define DSIM_STATE_CMD_LPM		BIT(2)
 #define DSIM_STATE_VIDOUT_AVAILABLE	BIT(3)
+#define DSIM_STATE_DEVICE_FOUND		BIT(4)
 
 struct samsung_dsim_driver_data {
 	const unsigned int *reg_ofs;
@@ -1475,6 +1476,15 @@ static int samsung_dsim_bridge_attach(struct drm_bridge *bridge,
 				      enum drm_bridge_attach_flags flags)
 {
 	struct samsung_dsim *dsi = bridge_to_dsi(bridge);
+	int ret;
+
+	if (!(dsi->state & DSIM_STATE_DEVICE_FOUND)) {
+		ret = samsung_dsim_panel_or_bridge(dsi, dsi->dev->of_node);
+		if (ret)
+			return ret;
+
+		dsi->state |= DSIM_STATE_DEVICE_FOUND;
+	}
 
 	dsi->drm = bridge->dev;
 
@@ -1498,9 +1508,13 @@ static int samsung_dsim_host_attach(struct mipi_dsi_host *host,
 	struct drm_device *drm = dsi->drm;
 	int ret;
 
-	ret = samsung_dsim_panel_or_bridge(dsi, device->dev.of_node);
-	if (ret)
-		return ret;
+	if (!(dsi->state & DSIM_STATE_DEVICE_FOUND)) {
+		ret = samsung_dsim_panel_or_bridge(dsi, device->dev.of_node);
+		if (ret)
+			return ret;
+
+		dsi->state |= DSIM_STATE_DEVICE_FOUND;
+	}
 
 	/*
 	 * This is a temporary solution and should be made by more generic way.
-- 
2.25.1

