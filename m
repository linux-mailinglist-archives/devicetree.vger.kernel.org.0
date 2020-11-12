Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9721F2B0148
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 09:37:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727035AbgKLIhT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 03:37:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727038AbgKLIhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 03:37:18 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C22C6C0613D1
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 00:37:16 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id w14so3844758pfd.7
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 00:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NNXh/Tn3kD4tEzF0+OhmTB/ikjusVNJKy38i4uzggqs=;
        b=ml7vZ3vRecPBdlyJx/kLR/FM8rkGZuvsHuSC/r0Feam0Ducyhd7lTNCiY7WnGKpD/P
         CJ/R/Qj6up21Gu/vDjayKylVhctUs8us+MZ8SPG4hD2vRRhDQ13nsA6Ie/tn5PpE5O2m
         MyFPMGXRuH4AGLhacFuPklUl1S8oPLp6IAlLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NNXh/Tn3kD4tEzF0+OhmTB/ikjusVNJKy38i4uzggqs=;
        b=MSrLulQOkpFC9ELaML7yjKoFyE1Kire+G6icfVwtFxbMlNpPC96EYjhRbbMmkPYElP
         8QvI86q8G1kXZXYhYEuQeGdP5C8YXo9tJAi+Ie8C94SPoyPaql1n1EJLCBdzuHM+58PP
         3h2q8wcmnYK/GnKSsVc5ut2ah/pV4R/K+1QUpBq0s/IuP/BmZvv5LuP8Go5H33A6X+JM
         rW2F0SR70taFcdvgt6s3AQr5pmWvP30wU7xFJbWRzH8HZF3AZ3fsm84gyLTqYFpIh5Zu
         rA+7Mh/GGdu8RoIDCXx1SvRaOyz131/KGG69no5apmek0biHU+rqU97T4NnrfW7o2AA1
         67Ww==
X-Gm-Message-State: AOAM532YUzG0BRi2P4cGm7E69z8MqkOvRAlInS0xkGQ0OWGXNMpkQnQ6
        KtlftQoTx+NL34ID4+mVQKVQwg==
X-Google-Smtp-Source: ABdhPJx22TIGYpOcZK5jJydSD4PvS+tYFUZ3d+L1zEx/gTsCn9Ou+rqAQCn5ob9yJ4i0hZr7u48c0w==
X-Received: by 2002:aa7:9ece:0:b029:18b:ac4c:ac94 with SMTP id r14-20020aa79ece0000b029018bac4cac94mr25844884pfq.5.1605170236307;
        Thu, 12 Nov 2020 00:37:16 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id a8sm4328404pfa.132.2020.11.12.00.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 00:37:15 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Xin Ji <xji@analogixsemi.com>, Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 2/2] drm/bridge: anx7625: disable regulators when power off
Date:   Thu, 12 Nov 2020 16:37:04 +0800
Message-Id: <20201112083704.1173908-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
In-Reply-To: <20201112083704.1173908-1-hsinyi@chromium.org>
References: <20201112083704.1173908-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When suspending the driver, anx7625_power_standby() will be called to
turn off reset-gpios and enable-gpios. However, power supplies are not
disabled. To save power, the driver can get the power supply regulators
and turn off them in anx7625_power_standby().

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 25 +++++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h |  1 +
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 65cc05982f82..eb9c4cc2504a 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -11,6 +11,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 #include <linux/types.h>
 #include <linux/workqueue.h>
@@ -875,12 +876,20 @@ static int sp_tx_edid_read(struct anx7625_data *ctx,
 static void anx7625_power_on(struct anx7625_data *ctx)
 {
 	struct device *dev = &ctx->client->dev;
+	int ret;
 
 	if (!ctx->pdata.low_power_mode) {
 		DRM_DEV_DEBUG_DRIVER(dev, "not low power mode!\n");
 		return;
 	}
 
+	ret = regulator_bulk_enable(ARRAY_SIZE(ctx->pdata.supplies),
+				    ctx->pdata.supplies);
+	if (ret < 0) {
+		DRM_DEV_DEBUG_DRIVER(dev, "cannot enable regulators %d\n", ret);
+		return;
+	}
+
 	/* Power on pin enable */
 	gpiod_set_value(ctx->pdata.gpio_p_on, 1);
 	usleep_range(10000, 11000);
@@ -894,6 +903,7 @@ static void anx7625_power_on(struct anx7625_data *ctx)
 static void anx7625_power_standby(struct anx7625_data *ctx)
 {
 	struct device *dev = &ctx->client->dev;
+	int ret;
 
 	if (!ctx->pdata.low_power_mode) {
 		DRM_DEV_DEBUG_DRIVER(dev, "not low power mode!\n");
@@ -904,6 +914,12 @@ static void anx7625_power_standby(struct anx7625_data *ctx)
 	usleep_range(1000, 1100);
 	gpiod_set_value(ctx->pdata.gpio_p_on, 0);
 	usleep_range(1000, 1100);
+
+	ret = regulator_bulk_disable(ARRAY_SIZE(ctx->pdata.supplies),
+				     ctx->pdata.supplies);
+	if (ret < 0)
+		DRM_DEV_DEBUG_DRIVER(dev, "cannot disable regulators %d\n", ret);
+
 	DRM_DEV_DEBUG_DRIVER(dev, "power down\n");
 }
 
@@ -1742,6 +1758,15 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 	platform->client = client;
 	i2c_set_clientdata(client, platform);
 
+	pdata->supplies[0].supply = "vdd10";
+	pdata->supplies[1].supply = "vdd18";
+	pdata->supplies[2].supply = "vdd33";
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(pdata->supplies),
+				      pdata->supplies);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "fail to get power supplies: %d\n", ret);
+		return ret;
+	}
 	anx7625_init_gpio(platform);
 
 	atomic_set(&platform->power_status, 0);
diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
index 193ad86c5450..e4a086b3a3d7 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.h
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
@@ -350,6 +350,7 @@ struct s_edid_data {
 struct anx7625_platform_data {
 	struct gpio_desc *gpio_p_on;
 	struct gpio_desc *gpio_reset;
+	struct regulator_bulk_data supplies[3];
 	struct drm_bridge *panel_bridge;
 	int intp_irq;
 	u32 low_power_mode;
-- 
2.29.2.222.g5d2a92d10f8-goog

