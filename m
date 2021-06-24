Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62F263B2D04
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 12:55:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232334AbhFXK5x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 06:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232311AbhFXK5r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 06:57:47 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA083C061574
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 03:55:27 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id 69so2754118plc.5
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 03:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ovqPGUQPtbi9LNkbTpa5Y8dCy9rTdlKhQzy2ogksdJE=;
        b=LZguRud9skgmE05y7DdRbbHenMIcXxUkQGAfGtYIuObeQwsrZBdlKras4snIntfFGW
         UMvilXQaSeu16CBluo5pYm314hKeCeddvQxIFODOQk97WxdR4bJYCnYbc/xbC6619FV5
         5jsAp3Wx33VRGJQ/6MIWYVtEOf/O8w+Ubdx9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ovqPGUQPtbi9LNkbTpa5Y8dCy9rTdlKhQzy2ogksdJE=;
        b=r40ubbdboPW1qluyYF5a50b2uqrhMj+G6wpXt734kGmzC2PjioRgXUvTEG7G4Ytc9H
         HIfF3DMd68pwG91P5RtQio+uV2uCLO90GGDYucrWG1JqEnp0/ZGdiPNcG2nkeY4cJm9b
         em7WpJ+245ELn292uzy9tvCe6kUeo3EEqALAHo6CSuaWEemfaDufNrYvTONasRABCHsl
         ClZM4Rm19HZJXigyY9taoBzRMUmM12tNXjuC9kwDSk+emKYOdN8nOWZz/oe7olqEHrfq
         gSqLaFbPaR64DVJ2wQeZ9bNGgmjilFnzpfcTgFNqdoL4Dk762TNiQnliVwHEmCJCWBXi
         ZNig==
X-Gm-Message-State: AOAM530G+HLBol4vxjqoo9wUWR3szgJoAFySsYr373bHWFLePA7hmyUS
        0UefnqN+/9kV7fnv+p3xWt8W2g==
X-Google-Smtp-Source: ABdhPJw1VAb8x6usa6X7gmyM/UenV/k+g8Gc96ZuEqGo8DCN70yTuL0TZ9yHRL+gn1ALSzPY8Iuylw==
X-Received: by 2002:a17:90a:66ca:: with SMTP id z10mr4765432pjl.78.1624532127367;
        Thu, 24 Jun 2021 03:55:27 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:368f:686c:969:1f38])
        by smtp.gmail.com with ESMTPSA id t7sm2212536pgh.52.2021.06.24.03.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 03:55:27 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        intel-gfx@lists.freedesktop.org
Cc:     Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v6 RESEND 2/3] drm/mediatek: init panel orientation property
Date:   Thu, 24 Jun 2021 18:55:16 +0800
Message-Id: <20210624105517.3886963-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
In-Reply-To: <20210624105517.3886963-1-hsinyi@chromium.org>
References: <20210624105517.3886963-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
index ae403c67cbd92..9da1fd6491319 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -964,6 +964,13 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
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
2.32.0.288.g62a8d224e6-goog

