Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DED748D393
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 09:29:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231603AbiAMI3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 03:29:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbiAMI3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 03:29:24 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2514CC061748
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 00:29:24 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id u11so3376256plh.13
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 00:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I4op/u68zI+4WVyhPoMH6yG4GghylPG80uqiNuH7iz0=;
        b=mw3VLB1Iuvvy9py7WeAUm99j4YmT3btnkjvUT+Td3XKqGtB0pNs1QCkudkqICjzhlU
         rxsfZ+4f+ig651o9W5weUKXy4BDknzJkTnx/M5D/0i/yA8ZrpA44W2ia1JHQB9MccERW
         ZG4pyh+yY3XyFtdAdFpeYYely6qDMzORKN6Wg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I4op/u68zI+4WVyhPoMH6yG4GghylPG80uqiNuH7iz0=;
        b=C4wpwoMWwXx2Uvb5mrI6NvrHQJKdhE1nTGqOBAXc0TLL71xDdLQ59nBrb8EeirnN1R
         OzszvJJnllFlYHZqaF32cGf8DPnMyy/yqPNgMKmPSOjI9NrDvdxcl0/3TuWxpQHnJvSQ
         iPgDpxd1ot3+4t0W3Drlg87Rg5POk2BHAjegZqasKsP3NwUXLeaCFLMuUbgv27CcsQJb
         n5PXnmslP7z5Z4TUTCqab1pEL8sNnFJGAaqxn9z0OhkV215Vq+Dqag4Obshsoh5YXhBk
         CAZKrLWpaG42PND2ji7CUxgW8H4kJR4R2DrksqE0RYElJrA0EhTXC9vrc8/DGPCVaNsR
         /U4w==
X-Gm-Message-State: AOAM5338k+Qob0qbhBbtPeu2vZi8BOzCZfhFRxhVCgPRs3mzZwHfhfuV
        sGA8/jiMFIuB21ehE+TGK/d0Zw==
X-Google-Smtp-Source: ABdhPJz/RtyoDXSF8VlNzPzCVqMhK9QWK+OP7Ul83B39Sj4ZdhnXQwSmK4XsSL71wkAnaItnDK+RKw==
X-Received: by 2002:a17:903:2341:b0:14a:5184:3ea7 with SMTP id c1-20020a170903234100b0014a51843ea7mr3393290plh.107.1642062563642;
        Thu, 13 Jan 2022 00:29:23 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:3ced:e0da:4852:430c])
        by smtp.gmail.com with ESMTPSA id b12sm2109894pfv.148.2022.01.13.00.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 00:29:23 -0800 (PST)
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
Subject: [PATCH v3 1/3] drm/bridge: anx7625: Convert to use devm_kzalloc
Date:   Thu, 13 Jan 2022 16:29:16 +0800
Message-Id: <20220113082918.2279347-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
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
index 0b858c78abe8b6..d3661c78770a8f 100644
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
2.34.1.575.g55b058a8bb-goog

