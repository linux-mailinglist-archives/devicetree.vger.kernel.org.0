Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 512F636D174
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 06:55:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234736AbhD1E41 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 00:56:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234376AbhD1E4Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 00:56:25 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BD01C061574
        for <devicetree@vger.kernel.org>; Tue, 27 Apr 2021 21:55:41 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id z16so2975571pga.1
        for <devicetree@vger.kernel.org>; Tue, 27 Apr 2021 21:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q5arbhYfGXT82qjQUTN0xccKMerRCIU7+UPVnm07W9Y=;
        b=VTFFF9OFqyw2YMLqAax+N1JMxY/fNr/W5AB4MeQ5uAC48RGc0An02b+Se479ddBizx
         XD/X1KjCcrsMtSQlNf2LW5waQiFV1rfGU+052WMVU0QQcBCnRqMhDXmhEWMSBSbhd1iI
         2p/YqB6CSg/fIreO6cajKo9N3kjiKV7dDgsHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q5arbhYfGXT82qjQUTN0xccKMerRCIU7+UPVnm07W9Y=;
        b=i6TbaN1cQodTtd87IHLfVkA7zXjD34BzUjSR83UqEpxXiM9Vloxg4gUwVfKrojKkYJ
         9zQRoIyhqqCgRH24KPt6fLnieB8sBMMfVyyvOWg5qBSGaFsmJ5F8NNtVAsJLCHKWn09C
         Cj+rqVYbrnZ8huuSg9Tn+4CSQpTaFWFt10/d/R34mJx5P051H1bdKF17YnlTkzqoTIqS
         z2ldPlr7dC2FgX+SW1H3FfMyMV9SqbLMmXXyhl/eUplIp6wDWNjHNtkvt9s/8iE2Ugaw
         YOBVRvRBEQHBMlA+gYJDQi50irHzfbMpuwzoloWrAbtwgipzljMsRq+dTeOwLfBPUd61
         JzRQ==
X-Gm-Message-State: AOAM533XLzGtTM2uEOxW5sBDeG2pK38QGH1Uyvh7Xg4FL7NaSVR929QT
        OqjWk4ukS+f4bW1AKoKAo0Qj0A==
X-Google-Smtp-Source: ABdhPJzGs2DXC6vNxlFEZ8RvRfGO4uOiE+lprziJ7+wryJ2YehvrOUkYJqxr2cPuDE5cVXFo3KiZsw==
X-Received: by 2002:a63:942:: with SMTP id 63mr25683673pgj.67.1619585740596;
        Tue, 27 Apr 2021 21:55:40 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:8076:36e5:2db0:967])
        by smtp.gmail.com with ESMTPSA id x13sm1193170pgf.13.2021.04.27.21.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 21:55:40 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v4 2/3] drm/mediatek: init panel orientation property
Date:   Wed, 28 Apr 2021 12:55:32 +0800
Message-Id: <20210428045533.564724-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210428045533.564724-1-hsinyi@chromium.org>
References: <20210428045533.564724-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Init panel orientation property after connector is initialized. Let the
panel driver decides the orientation value later.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index ae403c67cbd9..9da1fd649131 100644
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
2.31.1.498.g6c1eba8ee3d-goog

