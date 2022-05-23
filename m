Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C24C4530BF5
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 11:04:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232135AbiEWIqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 04:46:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232027AbiEWIqg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 04:46:36 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6593E5FD9
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 01:46:35 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id jx22so13782575ejb.12
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 01:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8KZ9e+aFywu8cob9B7lyv8cw/GG4lY7xYjZnUL2c5Po=;
        b=x6a0/a59LPzK/XbjLygNZX+iuxxHylNyyOs3r109raURIjnZdsiY/qUM3RzicmAgRL
         g0Nd5CRWwWwTy/qomFzYeX3g/CjTeg2mI7yEXg0HQhnb90sMlip0m/Ew6N+3nNvXE6gg
         9d6FbvhKtkLNXd2qpA354YSaJhzZ6YGKFn+L22TnIUZ23k2hlEo1EFe8LMk6lNiViNpp
         /X2reVm7Zce6S8CAWolYqpb/uizlg/dfwAU1vjiPCCPvPXlrV2wxK3PwFSC2tMnga59d
         ZwxJqzZutwdSpR1Ku3+rfFSeqBer6+OuTmQK+ZjCTgRJS/1k9W2ZQS7pp8ag13X7jC1m
         hyZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8KZ9e+aFywu8cob9B7lyv8cw/GG4lY7xYjZnUL2c5Po=;
        b=1bwnB/oeXZuMKDpdn7oRF0L6/5OWvvBt7x8CI+Gdu4hD3F/0B0ybL5K9hbAn8bezkP
         OWGUJCQd9Egy5vKeg3xNzy6qM6Vq4hsli5C0XDp+/91spInO7C9gOX0zlhVFb1LNXQwX
         Ee5I+LAhE/jh9CRupJKh/4EgZ1Wpt2sNh0m2c2Snun5+vRFWszabqhGWXJo0bDFu6hba
         TawSJFxYioUKQV9tH77VAqHcqEEc7rAlup2HS+syCkUyBzyjpJV2Y7U2QC011zi9nJMe
         a6XmIIWjH0rDLS4IxvFXxMUh/5JtQ4QgufJNmdZ3+6SMQfrouhmLsGV/zWsU1KqnAEwR
         SRrw==
X-Gm-Message-State: AOAM530erw3B0lGgVyN5Wyr4wYGk8Upax30E0Voao0cAE+Kcive8rY1e
        8KeYzeKf5aeZdlOY+vWB4r4NjQ==
X-Google-Smtp-Source: ABdhPJwDRYBw80yFFSMqilCh6Rwe3b3/Gwjq4XKqz2jH2FgXaRVvRV2qPJPfLQhSkrW6CBKtFhnKdw==
X-Received: by 2002:a17:907:78cb:b0:6fe:9ca3:2a9b with SMTP id kv11-20020a17090778cb00b006fe9ca32a9bmr17175623ejc.727.1653295593558;
        Mon, 23 May 2022 01:46:33 -0700 (PDT)
Received: from prec5560.. ([176.74.57.19])
        by smtp.gmail.com with ESMTPSA id s17-20020a1709060c1100b006fee27d471csm905706ejf.150.2022.05.23.01.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 01:46:32 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, xji@analogixsemi.com,
        hsinyi@chromium.org, sam@ravnborg.org, tzimmermann@suse.de,
        maxime@cerno.tech, jose.exposito89@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] Revert "drm/bridge: anx7625: Use DPI bus type"
Date:   Mon, 23 May 2022 10:46:14 +0200
Message-Id: <20220523084615.13510-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit a77c2af0994e24ee36c7ffb6dc852770bdf06fb1.
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 01f46d9189c1..53a5da6c49dd 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -1623,14 +1623,14 @@ static int anx7625_parse_dt(struct device *dev,
 
 	anx7625_get_swing_setting(dev, pdata);
 
-	pdata->is_dpi = 0; /* default dsi mode */
+	pdata->is_dpi = 1; /* default dpi mode */
 	pdata->mipi_host_node = of_graph_get_remote_node(np, 0, 0);
 	if (!pdata->mipi_host_node) {
 		DRM_DEV_ERROR(dev, "fail to get internal panel.\n");
 		return -ENODEV;
 	}
 
-	bus_type = 0;
+	bus_type = V4L2_FWNODE_BUS_TYPE_PARALLEL;
 	mipi_lanes = MAX_LANES_SUPPORT;
 	ep0 = of_graph_get_endpoint_by_regs(np, 0, 0);
 	if (ep0) {
@@ -1640,8 +1640,8 @@ static int anx7625_parse_dt(struct device *dev,
 		mipi_lanes = of_property_count_u32_elems(ep0, "data-lanes");
 	}
 
-	if (bus_type == V4L2_FWNODE_BUS_TYPE_DPI) /* bus type is DPI */
-		pdata->is_dpi = 1;
+	if (bus_type == V4L2_FWNODE_BUS_TYPE_PARALLEL) /* bus type is Parallel(DSI) */
+		pdata->is_dpi = 0;
 
 	pdata->mipi_lanes = mipi_lanes;
 	if (pdata->mipi_lanes > MAX_LANES_SUPPORT || pdata->mipi_lanes <= 0)
-- 
2.34.1

