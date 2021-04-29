Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5688D36E43B
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 06:28:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235417AbhD2E32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 00:29:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235095AbhD2E32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 00:29:28 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88940C06138C
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 21:28:42 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id j189so2524257pgd.13
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 21:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q5arbhYfGXT82qjQUTN0xccKMerRCIU7+UPVnm07W9Y=;
        b=G85VcZJiBhrc0Z+xTBYX6C5fC+iasG268uM+qWiT0xg/xpPu0RRhUrnr8buAZ+LlV1
         lSKD7pRAcedECmwTgS8kTxBRZ76a6Itsaz2/daIKpP6tkNusndubKuXvj0rjc6r64pQ6
         ektV8bQmN/zPS9egbWIlp0qx+zMjeyKhAqJOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q5arbhYfGXT82qjQUTN0xccKMerRCIU7+UPVnm07W9Y=;
        b=ahIhOh3YuEbdPB+OVtGOvyLBRlCKMY04yd1y9c7M1/hGDRc2rfdazbhhkadIgwNRbv
         47XXxOBPCvCTI6KPmjpcQ2cEl1Z4EbZ/9KfxbbuwDnXpx6wP+0mwjtF1dnRLc20u7ITf
         22Ow7jLxShRllIj8Zljxflzo8L/yYa80QhgtDwpsSKvm9lUK62azA+paM5j/wNyCYDWN
         TMuirt9qMBwu4sNWot9p6aWRsknjdXHeWZVTYspztplRVXxwve9loGIYraUlsMFqvaHm
         stF8lKkS1CRO+pIocwLc5dAXWova+zFaTWZorFiPyfKPPh1HBiFBwR+WLyOdO8an+cSH
         mqhg==
X-Gm-Message-State: AOAM531xpiHl2dJHiOkVCOjqfx7w0cR3OgTwbea5JjFYbtM2t0SYB3Lx
        FD9Ne94IbDC/YMQVSHjwYHlLgg==
X-Google-Smtp-Source: ABdhPJz7d0lwcYiWWsZ+p9irRnLEfdh2OXdUkleFkMQkFzA1hAfKA+4YpXWMxwylDQGJh7nhUk4LhA==
X-Received: by 2002:a63:4550:: with SMTP id u16mr30275755pgk.440.1619670522054;
        Wed, 28 Apr 2021 21:28:42 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:f701:2ca2:56ba:8e83])
        by smtp.gmail.com with ESMTPSA id w124sm1069390pfb.73.2021.04.28.21.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 21:28:41 -0700 (PDT)
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
Subject: [PATCH v6 2/3] drm/mediatek: init panel orientation property
Date:   Thu, 29 Apr 2021 12:28:33 +0800
Message-Id: <20210429042834.1127456-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210429042834.1127456-1-hsinyi@chromium.org>
References: <20210429042834.1127456-1-hsinyi@chromium.org>
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

