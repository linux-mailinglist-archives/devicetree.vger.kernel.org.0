Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CAEA36DDCC
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 19:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241253AbhD1RFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 13:05:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241448AbhD1RFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 13:05:13 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7EFFC06138A
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 10:04:24 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id y30so16698pgl.7
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 10:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q5arbhYfGXT82qjQUTN0xccKMerRCIU7+UPVnm07W9Y=;
        b=Oh1pOQY3nDNpYWg6CBPvoxbwz9Lp5/mgbvExVmkdIhmJlVZGash3DmwrmBb4CIKHon
         qhIf723E2NT3KLDzilpKerGauzvnOHbY+s/nFoAFNFIGUDyS721zHl0d0K2csd5vwIJO
         eIVQuYBad9ZmHQ0iSC96gsmAMu/m1PJWWkJCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q5arbhYfGXT82qjQUTN0xccKMerRCIU7+UPVnm07W9Y=;
        b=prlLSTfYHOTBFL3jjZJRe0ECZGvE4TCtoEX8UR65ZLCU7gmCP2YY2yFlhbVO7T5sK8
         u8aaqlFY+oL3vvUFJlHZZut0uzLpBmuxp/SCnDyoQdBiYSjecGKskcngbODG//PkQphI
         BxIJ3jeMglq02/s4C/BLsJ9MxcOwCe1KWFUYzqpGSQNqgvtfQeaRGDk9lh+LW5G3eZfg
         dc0xBeswHAFQgem8k2MQ8ZBNo3jRvpGVgBFrUgxg8k5nJ6hsanVh/9CzFFIu3w1L5UAt
         vgf8/YaTVx8jFZkSXMijBhz7V82ASuPD+juIgHC7q0aG1UYMrrZ9I4DBvngWUNg4+60c
         3lTA==
X-Gm-Message-State: AOAM533HApoIKotkjtLnXnTYSs+LOby/kuY5AJEboFAQbFNjy0IhGFPP
        hFfMy7MbdDvyauEJBrwVQH6+Kw==
X-Google-Smtp-Source: ABdhPJxErM53epytFNpIJdI3/a9zdSqFrICBlsEBiJkNLoECwWzSEjPVpUQPi64CmaQN2g4Kj9Mq2A==
X-Received: by 2002:a63:1921:: with SMTP id z33mr28455929pgl.211.1619629464253;
        Wed, 28 Apr 2021 10:04:24 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1faf:c32e:8742:d913])
        by smtp.gmail.com with ESMTPSA id c8sm244351pfp.160.2021.04.28.10.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 10:04:23 -0700 (PDT)
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
Subject: [PATCH v5 2/4] drm/mediatek: init panel orientation property
Date:   Thu, 29 Apr 2021 01:04:14 +0800
Message-Id: <20210428170416.1027484-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210428170416.1027484-1-hsinyi@chromium.org>
References: <20210428170416.1027484-1-hsinyi@chromium.org>
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

