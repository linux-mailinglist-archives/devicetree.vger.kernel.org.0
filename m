Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B9254A7571
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 17:06:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345743AbiBBQGN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 11:06:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345654AbiBBQGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 11:06:11 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87DBBC06173B
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 08:06:11 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id u11so18701891plh.13
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 08:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H1kno40kXqd5oHnIK3ylT4ecdPILvrVqPlIbaZeuMIA=;
        b=eCNIwVf1UszjQp3t8C03ncVpIjOPernL3qKHVwkQsOmZHmZ5zYbbw4HGs6R6qk+yNR
         2+M6RnlBh2+Y9CpyHWGAB0+/VD+JS3y0Fv5iCfPNRglL02xg61DMAbTDG/3AMXAwo+Pg
         bBpCJKzHuH/425GXGj4MSFv8xlc9QVlOj4bIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H1kno40kXqd5oHnIK3ylT4ecdPILvrVqPlIbaZeuMIA=;
        b=b7S8L6ni+7jOzuXf5mhmFWOf3OPp/QmojVNA09U76zSUlLyUEtbx+bOzQTGub+8wXo
         dyL3BFZheAb6nPAl0ZbTqtCHCwgU2GXTn8mrt1ORr/FjICotKe/iCmVi655Y9e6rdwCS
         qtRoazHkn2kUnAWQ4bpBk1cl3ChQ/H0I9tbUW+lHXzgpJY5r7yjAc6QjPIKx/5ookFKH
         mkHjTjfsVWQUfm9rvMASg/nAyl2XQRS503ZiG9gRIDr7OuoLRAZhKa5GPh29WcteLbrK
         zjmmT0d87f/jc+ZBepqhJb9EHb0rj3nFm2QBm9aEggLxNKyfU/kUm/fnKLVZ7YC9NcvM
         AhHg==
X-Gm-Message-State: AOAM532TFy1S//Qdc7caZ6MC2qJfVhmBPjHpxXtNqpb0qnn6BfQsIuXX
        luUxrp5qI+a6AlqkH1fSHlhzdw==
X-Google-Smtp-Source: ABdhPJzUD24F/TZr17nwIVcYrxd8vfKzfmfXbAlOcbW8sRVyKwgtR4FkwC/X7OzrDzLeJS8OW/QmfA==
X-Received: by 2002:a17:90b:380f:: with SMTP id mq15mr8912309pjb.66.1643817970945;
        Wed, 02 Feb 2022 08:06:10 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:7ce0:466c:be86:774])
        by smtp.gmail.com with ESMTPSA id g5sm14722397pgc.51.2022.02.02.08.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 08:06:10 -0800 (PST)
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
Subject: [PATCH RESEND v5 2/4] drm/bridge: anx7625: Convert to use devm_kzalloc
Date:   Thu,  3 Feb 2022 00:06:00 +0800
Message-Id: <20220202160602.440792-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220202160602.440792-1-hsinyi@chromium.org>
References: <20220202160602.440792-1-hsinyi@chromium.org>
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

