Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8CAF3BAC5F
	for <lists+devicetree@lfdr.de>; Sun,  4 Jul 2021 11:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbhGDJIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jul 2021 05:08:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbhGDJIS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jul 2021 05:08:18 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96518C061762
        for <devicetree@vger.kernel.org>; Sun,  4 Jul 2021 02:05:42 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id o4so5365961plg.1
        for <devicetree@vger.kernel.org>; Sun, 04 Jul 2021 02:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5qWzL2bKwutF1snBeXJY/GnIGl0Ar3EOZLIKhQCIAh4=;
        b=Oo3Nk58YdvdURePtE0A7QW6obKZfXKex7+wBc9i8v5TQENN/LUYRIJUSlbNHgEnkON
         abd5uo+wxuBwtinmgxUVoLRV0Ho70wBjkOtlvN+rYI/1SGCkcEZcqR3J3Rr1QWXSdjJI
         n/0NwutFDWwsnfswCl28VErN0Y6ONWtmdprzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5qWzL2bKwutF1snBeXJY/GnIGl0Ar3EOZLIKhQCIAh4=;
        b=sW/t9zapGHAacexKQRjpn+zI2E0NVr0MBFnx4L4diH3Z+ZDvP+u6eQBdjdlnlQN2HZ
         puGQVDLbG7tz+5Bc4RldhDlcmMhoSzVPZYdfoAkyejvGAQ976eUCvOG1gpdyZSz/rm4k
         q9//hlcQP2iosv9tl7T/MdZ6oIBlkZ9Qs5X7nJgnfQTgqELvVfU2LLfaKU9TWRlI1SeC
         6dlu4CIxbKrY2T5y/+PxxTDUeVyEfEYsSwfytVvR7ogJ/r12TSnjri/XX18uQNdnVlVB
         0L0zPH/iua2lnfwoPdbDyfz75J4zU0sgXN2CyJy4wblwYCqHQHmp8m7e+XEjYXOoL7GP
         TyOw==
X-Gm-Message-State: AOAM532v+Zhkz3q62op2HA1VJMk4zj3b866dR9TcdTZFer/0ERjuFOiG
        GU6eB0VhzLLA4Ek3fPDyL+UHYw==
X-Google-Smtp-Source: ABdhPJwrr2bLufFMR1N9V6dDMRURHUV45B3uXg9T7mcdXyFKlOG+lid6Z/lIEpZKE9V5Cq0fISQDEw==
X-Received: by 2002:a17:902:b210:b029:11a:bf7b:1a83 with SMTP id t16-20020a170902b210b029011abf7b1a83mr7353036plr.84.1625389542152;
        Sun, 04 Jul 2021 02:05:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:1ae9:772f:6f0f:3e24])
        by smtp.gmail.com with ESMTPSA id m24sm3360793pgd.60.2021.07.04.02.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 02:05:41 -0700 (PDT)
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
Subject: [RFC PATCH 15/17] drm: bridge: samsung-dsim: Move DSI init in bridge enable
Date:   Sun,  4 Jul 2021 14:32:28 +0530
Message-Id: <20210704090230.26489-16-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210704090230.26489-1-jagan@amarulasolutions.com>
References: <20210704090230.26489-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Host transfer in DSI master will invoke only when the DSI
commands sent from DSI devices like DSI Panel or DSI bridges
and this host transfer wouldn't invoke I2C based DSI
bridge drivers.

Handling DSI host initialization in transfer calls might miss
the controller setup for I2C based DSI bridges.

So, move the DSI initialization from transfer to bridge enable
as the bridge enable API as it is common across all classes
of DSI device drivers.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/bridge/samsung-dsim.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/samsung-dsim.c b/drivers/gpu/drm/bridge/samsung-dsim.c
index bc845ae100d4..54767cbf231c 100644
--- a/drivers/gpu/drm/bridge/samsung-dsim.c
+++ b/drivers/gpu/drm/bridge/samsung-dsim.c
@@ -1437,6 +1437,13 @@ static void samsung_dsim_bridge_enable(struct drm_bridge *bridge)
 
 	dsi->state |= DSIM_STATE_ENABLED;
 
+	if (!(dsi->state & DSIM_STATE_INITIALIZED)) {
+		ret = samsung_dsim_init(dsi);
+		if (ret)
+			return;
+		dsi->state |= DSIM_STATE_INITIALIZED;
+	}
+
 	samsung_dsim_set_display_mode(dsi);
 	samsung_dsim_set_display_enable(dsi, true);
 
@@ -1602,13 +1609,6 @@ static ssize_t samsung_dsim_host_transfer(struct mipi_dsi_host *host,
 	if (!(dsi->state & DSIM_STATE_ENABLED))
 		return -EINVAL;
 
-	if (!(dsi->state & DSIM_STATE_INITIALIZED)) {
-		ret = samsung_dsim_init(dsi);
-		if (ret)
-			return ret;
-		dsi->state |= DSIM_STATE_INITIALIZED;
-	}
-
 	ret = mipi_dsi_create_packet(&xfer.packet, msg);
 	if (ret < 0)
 		return ret;
-- 
2.25.1

