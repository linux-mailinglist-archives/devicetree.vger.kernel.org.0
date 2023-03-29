Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77C3A6CDA74
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230234AbjC2NS6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:18:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230245AbjC2NSj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:18:39 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33CAD5251
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:21 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id u10so14868796plz.7
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f+Jq4CQBAwZOjvBLdvikVzLpWjI0SGbxRpeBtUQtDcQ=;
        b=Ou/OtLmpNc78F/fwnqk1lzBgwyfUoX8VK7o4RpfnSYek0c6mzr55RafkbJPWpVDXEi
         eUvONb1/8WR9m/S+MqqA3BfxCALKIkNuYaZPDo/X4FFKOP2gHBDL14hZsB51ThK0gMCo
         E1irsVQt1JZisYTFF7Lfw1qND+3EgJ+bff+GA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f+Jq4CQBAwZOjvBLdvikVzLpWjI0SGbxRpeBtUQtDcQ=;
        b=1uSCDKWI5axbzryS76N6H3McPE+TnX3h3iazv9GF7LhInz5cyPMBuSIuc2vsBrmA9p
         eNDa5ctadr2nvNAJZb6LY0pmYtiMCye9lDxzmroBICzQagLXgy8OvnqrW4GXOQuYyo7e
         axkke3YyS57L4Y7gs5trV0BAVhTRwBZazMscIT27XlgkJyv6zkoUe5gyf7VU1JFiJC60
         nRL1FsLjLv/0ek1zhuO9+I71GMqqF9D37fi8a1lyqsTkQTRFyYkLlhdOPae55Z+v4cIc
         B7aYWcIOjbY6Q5aH+Tof9OhX6zSaORhy4ytE6dJ73syuy4NIA0Rz8jotjcu1x4NrjtcA
         1eow==
X-Gm-Message-State: AAQBX9cTSUzpxteJ20c6BJpFnuNFZKv+m5+kJY2FJNiiRN5YW1K0Wccn
        bIPuC6oTvL6zopBUVtJkTS3hGw==
X-Google-Smtp-Source: AKy350YCiiWm/rDw6yILBFYbQ4o+gaIGsdINxQHWQbNw3orvvBWljZZZiHyHon7RGJ7hUl10VDOAFQ==
X-Received: by 2002:a17:90b:1e4f:b0:23b:4438:e9ee with SMTP id pi15-20020a17090b1e4f00b0023b4438e9eemr2098113pjb.12.1680095899302;
        Wed, 29 Mar 2023 06:18:19 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id s16-20020a17090b071000b0023f5c867f82sm1400192pjz.41.2023.03.29.06.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:18:18 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Ondrej Jirman <megous@megous.com>
Subject: [PATCH v7 05/12] drm: panel: sitronix-st7703: Enable prepare_prev_first for xbd599
Date:   Wed, 29 Mar 2023 18:46:11 +0530
Message-Id: <20230329131615.1328366-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230329131615.1328366-1-jagan@amarulasolutions.com>
References: <20230329131615.1328366-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the drm panel prepare_prev_first flag for xbd599 panel so-that
the previous controller should be prepared first before the prepare for
the panel is called.
               
This makes sure that the previous controller(sun6i-mipi-dsi), likely to
be a DSI host controller should be initialized to LP-11 before the panel
is powered up.

Cc: Ondrej Jirman <megous@megous.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v7:
- new patch

 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index 6747ca237ced..6e6112f5d971 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -65,6 +65,7 @@ struct st7703_panel_desc {
 	unsigned int lanes;
 	unsigned long mode_flags;
 	enum mipi_dsi_pixel_format format;
+	bool prepare_prev_first;
 	int (*init_sequence)(struct st7703 *ctx);
 };
 
@@ -335,6 +336,7 @@ static const struct st7703_panel_desc xbd599_desc = {
 	.lanes = 4,
 	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE,
 	.format = MIPI_DSI_FMT_RGB888,
+	.prepare_prev_first = true,
 	.init_sequence = xbd599_init_sequence,
 };
 
@@ -544,6 +546,7 @@ static int st7703_probe(struct mipi_dsi_device *dsi)
 
 	drm_panel_init(&ctx->panel, dev, &st7703_drm_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
+	ctx->panel.prepare_prev_first = ctx->desc->prepare_prev_first;
 
 	ret = drm_panel_of_backlight(&ctx->panel);
 	if (ret)
-- 
2.25.1

