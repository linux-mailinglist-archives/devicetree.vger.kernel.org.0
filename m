Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DF754B3AE4
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 11:37:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235059AbiBMKey (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 05:34:54 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235062AbiBMKeu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 05:34:50 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 030B65D67A
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 02:34:46 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id w1so8299721plb.6
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 02:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XlBwl7o2DNhygikLmKSXtkQRcDcWt/TKcyEWF2to5rk=;
        b=VAAPmWcvaHNUdrS2u53/VaEJDPb9prLyiHuw80d7g6QMuXnIKY50lvgl2QrHuDGpx+
         XH7B5g/EPetbCInq7yCPXlCwSvmjuDrYU0SF6499sCxwSFHw0BsYSammHG+XCsC8uGDo
         LdGckrvNCOE16ID/se/afR6GDAqSd0Hv1ATyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XlBwl7o2DNhygikLmKSXtkQRcDcWt/TKcyEWF2to5rk=;
        b=h9n456rwcFRUypVSB58dTrAgc7kQ8L6TH/K1gIIt1UVYVWS9PHiP70XmxRerdakEjO
         Y980NCzeUECsA8EDpX3FmpDpi7pxh8XIAOXME9d+xnLJG/V5hWvLG58VBKUouN7qCaKQ
         heWEZ961IwWU0yMcB4zwg77cqPHmfQ89tQ4CN0XYJ+jbpLY8Gl+il8wLTct8x1olAJbM
         MhEz4KZ3RUm2uUb9PprmVAQ07FKPwzhTMFgfyIExe9TwMt1a4JvcUnnpG0730Gp/uW4L
         jOe5r1p7y1WanNULelFG0KlmWaN5WS+GM4kn5WmH7DKM7eEwahXB2T83nWUI38CRXCCG
         RZnA==
X-Gm-Message-State: AOAM5313JMDlgP2qDkonAJkfFwDB0PzBqC/dYS1IcCE0kR8QFBVb+pIV
        6JV1A2G00/xd8RQwzfc5jRd1ug==
X-Google-Smtp-Source: ABdhPJx94pETzDPyGgDuZhPH83OhmsRPB3UaRsFJltfeL30LyGvKcouT89u1M5Mn4hHkMLPS7/2rwQ==
X-Received: by 2002:a17:902:7281:: with SMTP id d1mr9449746pll.26.1644748485459;
        Sun, 13 Feb 2022 02:34:45 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:3653:bf18:8571:5f26])
        by smtp.gmail.com with ESMTPSA id n85sm1589407pfd.142.2022.02.13.02.34.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 02:34:45 -0800 (PST)
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
Subject: [PATCH v7 2/4] drm/bridge: anx7625: Convert to use devm_kzalloc
Date:   Sun, 13 Feb 2022 18:34:35 +0800
Message-Id: <20220213103437.3363848-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
In-Reply-To: <20220213103437.3363848-1-hsinyi@chromium.org>
References: <20220213103437.3363848-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
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
2.35.1.265.g69c8d7142f-goog

