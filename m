Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24EE94A85E0
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 15:11:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351031AbiBCOKg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 09:10:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351035AbiBCOKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 09:10:34 -0500
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EC06C06173E
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 06:10:34 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id i30so2325521pfk.8
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 06:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H1kno40kXqd5oHnIK3ylT4ecdPILvrVqPlIbaZeuMIA=;
        b=drsICCKIjZX+H+10whVsgZJFA1+0cYNv1js2APo/s1v8pCpku3jVbowqxbuOJFdyPZ
         eCFF9GBNQFMrryrGmg0o1+bH+hqaVaAjf9PWtFX92GX5YXdMVtzUeaEmI12HIzIJ3hVA
         qqdKLTx3O493QIoXDmIdHviLYtcBRB2ANndEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H1kno40kXqd5oHnIK3ylT4ecdPILvrVqPlIbaZeuMIA=;
        b=5CKW1MmKpoaydpVpwPWQmYCGAkX98Oi7Rr8vgBlr24CTdP6bdDoriynQ0E7lD3vccG
         OJR27tKj+YYweoJVbbLmG5eOFMGpc6ujUWtyLWMeWvM3R/hWYy1EYVopBZRxhHKSz8X7
         y4JEsdiWAzSL7iSyU6SktZ75B8MQb7bfCOAd1bIlJIRq/BECzLZoFwlBKt0/XvBxxW2Q
         p7nC6wBJ6A8DgLQlU0/PRHPqqfaOm0HoVSPB3iXgHSDhF2wCav3MwtW9k7RBsed4zPWm
         j2Cocs4DSyS//+qVp3VP7yjQaIArvZF8I2rXDs5kkomUdXShozGbA2kJYFYSl68MgVvK
         ut8g==
X-Gm-Message-State: AOAM532+BvY0fqTOmBNgZqX8SMbdLA1QLWOkC3LXoi8+sQrpuvUZU+tT
        XSGB6OEQM+iBUGWbBjQqDYM9bhOZK061rA==
X-Google-Smtp-Source: ABdhPJw++DYqdL6VXabn9xYbAD0hZxWkFqsafO1u5OC5tXWjzCylo5+MwrUwxx4aTE7IaEP2FXKcXQ==
X-Received: by 2002:a63:6b02:: with SMTP id g2mr4627954pgc.526.1643897433413;
        Thu, 03 Feb 2022 06:10:33 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:cbdf:65ae:127:f762])
        by smtp.gmail.com with ESMTPSA id w11sm29532818pfu.50.2022.02.03.06.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Feb 2022 06:10:32 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH v6 2/4] drm/bridge: anx7625: Convert to use devm_kzalloc
Date:   Thu,  3 Feb 2022 22:10:21 +0800
Message-Id: <20220203141023.570180-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220203141023.570180-1-hsinyi@chromium.org>
References: <20220203141023.570180-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use devm_kzalloc instead of kzalloc and drop kfree(). Let the memory
handled by driver detach.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Xin Ji <xji@analogixsemi.com>
---
v2->v3: remove kfree() in anx7625_i2c_remove().
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 17b23940549a42..b7e3373994b480 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -2515,7 +2515,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 		return -ENODEV;
 	}
 
-	platform = kzalloc(sizeof(*platform), GFP_KERNEL);
+	platform = devm_kzalloc(dev, sizeof(*platform), GFP_KERNEL);
 	if (!platform) {
 		DRM_DEV_ERROR(dev, "fail to allocate driver data\n");
 		return -ENOMEM;
@@ -2527,7 +2527,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
 			DRM_DEV_ERROR(dev, "fail to parse DT : %d\n", ret);
-		goto free_platform;
+		return ret;
 	}
 
 	platform->client = client;
@@ -2552,7 +2552,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 	if (!platform->hdcp_workqueue) {
 		dev_err(dev, "fail to create work queue\n");
 		ret = -ENOMEM;
-		goto free_platform;
+		return ret;
 	}
 
 	platform->pdata.intp_irq = client->irq;
@@ -2637,9 +2637,6 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 	if (platform->hdcp_workqueue)
 		destroy_workqueue(platform->hdcp_workqueue);
 
-free_platform:
-	kfree(platform);
-
 	return ret;
 }
 
@@ -2666,7 +2663,6 @@ static int anx7625_i2c_remove(struct i2c_client *client)
 	if (platform->pdata.audio_en)
 		anx7625_unregister_audio(platform);
 
-	kfree(platform);
 	return 0;
 }
 
-- 
2.35.0.rc2.247.g8bbb082509-goog

