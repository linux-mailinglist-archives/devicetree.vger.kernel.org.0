Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E6B836BE9F
	for <lists+devicetree@lfdr.de>; Tue, 27 Apr 2021 06:50:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234791AbhD0Eul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Apr 2021 00:50:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234696AbhD0Euj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Apr 2021 00:50:39 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2E2DC061574
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 21:49:55 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id e15so3736936pfv.10
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 21:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xF3OHVoJNfqjglnjvTxLJPf73tywjjNrGA26Syn00bg=;
        b=aQkvabnsOYdSCbCI2Ahu8FMyIfugOfrAzX9FIMQJY9p2Czzu7GnXrtexTRQGyfcOXA
         zDUfD3J608v/yBPJ2tYvQStQjwqcURK8qXNGNtV4GnpwVVbXvHFDGHX/0e46PhgnQLJf
         wBihdkVOueiHhJkVMUT6VOim5Rl9dRrc7EZgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xF3OHVoJNfqjglnjvTxLJPf73tywjjNrGA26Syn00bg=;
        b=f4OTvzzRt4chIRqpG2dyYGzeT+p0l/xLi07ASg/s/4ChtHnfVoQiUulZOMF8sC4l1H
         8EXgXt8bUXVdC0r0KkavrUac1RpmXdraxQaf8ciclgeuT2/f9B5gqJmJEl0pq7UjkGrl
         9I7kRa2GdqLGkoGWh33o5Y+UudyATn+C2X35WxZ1JpoCJOtxXedogoH20rkCk4G04qEE
         mFJ0glBXWwH/3SIXeBufPDi3sVOL0SQNaipVsCEWsSj/KrOk9cKE3lwbBRVmZFOMddxm
         +T/WIL2EMTpYakPIR/1bKy85cHMkhTdRslNSYEnea81D2gvHOLrkaROyiV9JeS7oqIJL
         KjWw==
X-Gm-Message-State: AOAM531FpJYbKBj4ftqei858xn74yGo+Ce3Appdf67PBPMm+qDpk03JG
        lJmS+kVJ1vNLRmwCd9Q+1f1jILg/x/NIVA==
X-Google-Smtp-Source: ABdhPJwPPm4u4tg6YSG/bq6wlqozKqdTA0jRIW6pE9ln5m9hymH+OexWOCKpW5EL+vxYFzyZxE6Yrw==
X-Received: by 2002:a62:bd13:0:b029:25c:5ec4:c2f3 with SMTP id a19-20020a62bd130000b029025c5ec4c2f3mr20817479pff.35.1619498995453;
        Mon, 26 Apr 2021 21:49:55 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:3984:c4f5:8612:6b3e])
        by smtp.gmail.com with ESMTPSA id c125sm1151517pfa.74.2021.04.26.21.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 21:49:55 -0700 (PDT)
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
Subject: [PATCH v3 2/3] drm/mediatek: init panel orientation property
Date:   Tue, 27 Apr 2021 12:49:47 +0800
Message-Id: <20210427044948.12596-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210427044948.12596-1-hsinyi@chromium.org>
References: <20210427044948.12596-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Init panel orientation property after connector is initialized. Let the
panel driver decides the orientation value later.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index ae403c67cbd9..0bd27872f2a4 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -964,6 +964,7 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
 		ret = PTR_ERR(dsi->connector);
 		goto err_cleanup_encoder;
 	}
+	drm_connector_init_panel_orientation_property(dsi->connector);
 	drm_connector_attach_encoder(dsi->connector, &dsi->encoder);
 
 	return 0;
-- 
2.31.1.498.g6c1eba8ee3d-goog

