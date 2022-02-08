Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 911644AD3B7
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 09:42:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351069AbiBHImq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 03:42:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350872AbiBHImp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 03:42:45 -0500
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A77EFC0401F6
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 00:42:43 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id e6so17671822pfc.7
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 00:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B51vztbAqanx3odcGYslN+f+8QXuSl3IGdZkOcgCEP4=;
        b=hSZaqn46Eg0k230j9msW8ZWdSycTD9QMSFONsAMN8N1GCF9epels6qCenWB+VLnHwi
         teHq4HupE7iMOHfyDa7zXdzjdrXplNx1GCcS6au9TnF+ZWtgVkOseJI3ghUEeNeJhkPZ
         shrywUSRRfEgTRLCyYagH0Kb0aulUHKv+f3OQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B51vztbAqanx3odcGYslN+f+8QXuSl3IGdZkOcgCEP4=;
        b=PlXG1lHXIfptbqCVMZ40/y7kORPONoaUP2c4/tx5B1VGWbMIsoda2A5CBAVqJYbsFT
         H41TXyKSK+iFioqszLbpymUHpxpYaihWLA+QR+4OZ1DtEsjkNDMMZtO2H+UrAS+FiGsA
         W+Ua0ywp5fTVbqU2Kk3TaZMod+lO/Qhwg8zlVsoEGJypI7C1LRs8lk+JTJZhBS+/Wu26
         lq8atEg8yEUnlFxNZhFF5LX1PKdQl48r166A9ZWjIl92OCGF8bImA0/fC02KWRDpsjfr
         WJISUleldRA6iNqVhRTystCOuXbGFOq3jdLzf54OAe+hX4Ns0HoBuvQOXV5uoRRdnane
         TPgg==
X-Gm-Message-State: AOAM530lK3lGS1EkgVHONJ0ioihptGb3bPvjeW9PjCgGTnyY35u0aKrI
        srYVkSibVvbY29z4u6K4r7l+Kw==
X-Google-Smtp-Source: ABdhPJwHECSzf8M58olhYXNLvBSmJuhfsp/CcQrf6d4N0193YY0h7uxL1BuFys94fBnhwtRkxle5pw==
X-Received: by 2002:a63:f709:: with SMTP id x9mr2665838pgh.428.1644309763116;
        Tue, 08 Feb 2022 00:42:43 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:7d9a:166e:9d34:ff4f])
        by smtp.gmail.com with ESMTPSA id m14sm15362390pfc.170.2022.02.08.00.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 00:42:42 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
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
        Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PATCH v8 2/3] drm/mediatek: init panel orientation property
Date:   Tue,  8 Feb 2022 16:42:33 +0800
Message-Id: <20220208084234.1684930-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208084234.1684930-1-hsinyi@chromium.org>
References: <20220208084234.1684930-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
index 5d90d2eb001935..491bf5b0a2b984 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -965,6 +965,13 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
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
2.35.0.263.gb82422642f-goog

