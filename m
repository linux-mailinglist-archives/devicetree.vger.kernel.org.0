Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AFAF493CCD
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 16:18:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355621AbiASPSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 10:18:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355620AbiASPR7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 10:17:59 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAF4EC06161C
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:17:59 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id h12so2740833pjq.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3q9wkMinheXrqXy/yp63auEPN8EtJaQhX9gCBlzKxgs=;
        b=Zdrn3Q/sjcYybnCWRu+AhUNqW46Mcf7GN9hnGfFvlRO6R+4JRocOrAC65tdFdThPV0
         O5YFdHpPjjqW5B0DMrVfI8KJrd8wZUksbqeTBRBITITMUrlcV6FNjeZpvx8Ajf/akXLQ
         tYQ1J6gCzrjsaz9AGcQFzhK7LaabpIo+esYmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3q9wkMinheXrqXy/yp63auEPN8EtJaQhX9gCBlzKxgs=;
        b=I9XV3019TC13X1LAu4+g+c0sFLrVEd4zlK1ESpMKtErCi5CaL5Nx0FOd7tzHmj3S1o
         lykPT/3+aSwarsN79PRcj49seNX6EdYsuT5girpmDioXQIQSXqM95dbM+4n6A7KuZVuU
         AjwhFTd2vCcES7e3o2g3OrDBL8RU3OCItMf4ZH2n1t49RN6rLpCc5oqMIdUk/JqMz91x
         s7/NFAiGd8BTSKdEaCrEFJUwSWx1yXD0qfJ2TvyE1/4U5iSB8jCuiYw8WRACOfhj6E4e
         qp7udHIz1/tkRw+JDw3vOwobn4kzT9vaKngLdYYIwhPP6gaxxLBOdRsE+IFatkrOh6N2
         lHRQ==
X-Gm-Message-State: AOAM530W0sH+BpWJ0SRLDx6n+WLgt9zIlq4aMj23gTo1A6SMuEs5hAa7
        funXyqAOAAHKQc8vNDxazNIE8A==
X-Google-Smtp-Source: ABdhPJzj6S8M29551fXljrtaSezPvrG8R5E7z1zyIjmFRDld04a3/q4jBB5qrR8JahUduArog2NHwg==
X-Received: by 2002:a17:902:e80b:b0:14a:67fc:a40 with SMTP id u11-20020a170902e80b00b0014a67fc0a40mr32624045plg.102.1642605479193;
        Wed, 19 Jan 2022 07:17:59 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ab3b:7ccf:392:3f04])
        by smtp.gmail.com with ESMTPSA id ip14sm6731596pjb.11.2022.01.19.07.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 07:17:58 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH v5 2/4] drm/bridge: anx7625: Convert to use devm_kzalloc
Date:   Wed, 19 Jan 2022 23:17:49 +0800
Message-Id: <20220119151751.986185-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220119151751.986185-1-hsinyi@chromium.org>
References: <20220119151751.986185-1-hsinyi@chromium.org>
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
2.34.1.703.g22d0c6ccf7-goog

