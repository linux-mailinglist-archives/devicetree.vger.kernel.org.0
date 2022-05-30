Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F96B5376E4
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 10:51:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233556AbiE3ITc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 04:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233462AbiE3ITb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 04:19:31 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 150886CF7A
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 01:19:30 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id g184so9545299pgc.1
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 01:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aXGQfQ7lsNUfjhcCcz/m8HUah1p/vDnEfDkpaJXX40Q=;
        b=j7HdUtSWpyZjY31tsETWgaBomYbcUL4NPjLRCEhLhcJhNgIJMPG4h8aVerkAWtdhJA
         6xH+tfkb3bQV9uMkXvjv7squthw5m7QHVK9FPoxGwWesDXlxRpcFVzLVr8fh8Qp0i1Oy
         Cqr4umRydtfoIGytttZl5eX60xAiPR+cvlQfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aXGQfQ7lsNUfjhcCcz/m8HUah1p/vDnEfDkpaJXX40Q=;
        b=GqPEAG5RDWKxcn98XPmdoAjmIEH8CdWMetHiEDPAoY/Ea00OZdTmX9EHKL7q9FL4CU
         cXUTIOs7TmxQ+XcK/RRMg8HPsoosnP6mpYz8FR1B+s9DpVmTxhhxLlJV8M7iSWVLh/2u
         DTLtfohlbQdaurogw7xRDRudvtQ9hPs3p8V4MpWUkb07R3H/l4GvI4AcUmbJc34npeA/
         p5LjPnExLPxD94wopgZt6L+/agisbI4o/eCPM2biAPhBLqXuJx/q5czBlSDUSdNVroGt
         lwT8obugsSnbNncNuHIqeo9yYi9pyB8s2NdTws2Rm/WDit5fHXE29CyxGYfIzsF8oqiE
         NUYQ==
X-Gm-Message-State: AOAM533We5CSUJDO9Bit4gnAEfX8xYEYiP3dbgoVmSr8JFpDt7qxdQ35
        rKAbCvtAZlGRS1gbq/0tuQZXcw==
X-Google-Smtp-Source: ABdhPJznWw2scunjHm2cr/VTVq8k2dY3+xmqHFPQlQtp4K4hBNUYcOpZOCvf/PBzDXdbEYlNMCt0bA==
X-Received: by 2002:a63:2107:0:b0:3fb:ac79:50ed with SMTP id h7-20020a632107000000b003fbac7950edmr12877684pgh.105.1653898769559;
        Mon, 30 May 2022 01:19:29 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ae1c:3d63:abec:1097])
        by smtp.gmail.com with ESMTPSA id m1-20020a170902f64100b001618b70dcc9sm8537900plg.101.2022.05.30.01.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 01:19:29 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org
Cc:     Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Simon Ser <contact@emersion.fr>,
        Harry Wentland <harry.wentland@amd.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Emil Velikov <emil.l.velikov@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>
Subject: [PATCH v10 2/4] drm/mediatek: init panel orientation property
Date:   Mon, 30 May 2022 16:19:08 +0800
Message-Id: <20220530081910.3947168-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220530081910.3947168-1-hsinyi@chromium.org>
References: <20220530081910.3947168-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Init panel orientation property after connector is initialized. Let the
panel driver decides the orientation value later.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index d9f10a33e6fa..3db44d9b161a 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -822,6 +822,13 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
 		ret = PTR_ERR(dsi->connector);
 		goto err_cleanup_encoder;
 	}
+
+	ret = drm_connector_init_panel_orientation_property(dsi->connector);
+	if (ret) {
+		DRM_ERROR("Unable to init panel orientation\n");
+		goto err_cleanup_encoder;
+	}
+
 	drm_connector_attach_encoder(dsi->connector, &dsi->encoder);
 
 	return 0;
-- 
2.36.1.124.g0e6072fb45-goog

