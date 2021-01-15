Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF7562F7372
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 08:05:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730191AbhAOHDx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 02:03:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725995AbhAOHDw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 02:03:52 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AFF4C0613C1
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 23:03:12 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id c79so4928743pfc.2
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 23:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Jl2+hlh3x6jkGwlX8WqlsLyequQpH3wXfp/SkKRuhe4=;
        b=Z+cBgFMgXTm78gUF5OKaiv/CgSP2yAzAPQDOk8e7Okn8sxsQ4vpnFw8EOlzyzMDao9
         om3ph+cY69yK3tHyKd9mF/1IOKtChvr8Wyu8QbG/fgz94sjloBk7MP2w8sNiHHa8YxfC
         Qzs2gfrkxUeCuXZ0GHRHA4kdl3ff44yIgJ/xE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Jl2+hlh3x6jkGwlX8WqlsLyequQpH3wXfp/SkKRuhe4=;
        b=tC857PmFz0agii3K2yven5COJ3VJAJ90VurqNNlHZApEc/L7Pf8i4lTaeBQJsY44j2
         SRixo+PEz5sO1TSWddi/zfr7Vi3WdyYjYmQt9sQEF5Ih+WTytK03vXdTUFr1TnjvZUeP
         CYTycQw3CSb0kzp/h9hrXylf+/imrXsSY7Icqyvkxbud6tuZzrvmtpZ6laToYnxjynwR
         MyrBTkkLkiUCViIHI4S36bUhBbRigXq8AaBA7Ze5+ec4Xdl6hgwShsYyTFxQIXkzH553
         NsGtqhydi0csyjChkSk0j6/Kke+WT99jvlp7ZA7ITFQAeU7o1hvoY3aVWCFhkf6bEVWK
         2+Xw==
X-Gm-Message-State: AOAM5330OKMqYliwvsBzKI/6Vhc/ZfAWWr9GZEc03s7fLtSiLNtC5nh+
        5QmDurD9OI6qlRK86ien+vBw3A==
X-Google-Smtp-Source: ABdhPJyfblq3yeliOQGfgSMELoffZ1xsuuDx5AbEg/nZkDji079XClxuemor1VUY8+ydtI9Oo8u8Pw==
X-Received: by 2002:a65:488d:: with SMTP id n13mr10912182pgs.315.1610694191580;
        Thu, 14 Jan 2021 23:03:11 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id x12sm7101064pfj.25.2021.01.14.23.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 23:03:11 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Xin Ji <xji@analogixsemi.com>, David Airlie <airlied@linux.ie>
Cc:     Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v3 2/2] drm/bridge: anx7625: disable regulators when power off
Date:   Fri, 15 Jan 2021 15:02:52 +0800
Message-Id: <20210115070250.2271571-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
In-Reply-To: <20210115070250.2271571-1-hsinyi@chromium.org>
References: <20210115070250.2271571-1-hsinyi@chromium.org>
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
Change:
v3: add delays between regulators power on
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 34 +++++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h |  1 +
 2 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 65cc05982f82..23283ba0c4f9 100644
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
@@ -875,12 +876,25 @@ static int sp_tx_edid_read(struct anx7625_data *ctx,
 static void anx7625_power_on(struct anx7625_data *ctx)
 {
 	struct device *dev = &ctx->client->dev;
+	int ret, i;
 
 	if (!ctx->pdata.low_power_mode) {
 		DRM_DEV_DEBUG_DRIVER(dev, "not low power mode!\n");
 		return;
 	}
 
+	for (i = 0; i < ARRAY_SIZE(ctx->pdata.supplies); i++) {
+		ret = regulator_enable(ctx->pdata.supplies[i].consumer);
+		if (ret < 0) {
+			DRM_DEV_DEBUG_DRIVER(dev, "cannot enable supply %d: %d\n",
+					     i, ret);
+			goto reg_err;
+		}
+		usleep_range(2000, 2100);
+	}
+
+	usleep_range(4000, 4100);
+
 	/* Power on pin enable */
 	gpiod_set_value(ctx->pdata.gpio_p_on, 1);
 	usleep_range(10000, 11000);
@@ -889,11 +903,16 @@ static void anx7625_power_on(struct anx7625_data *ctx)
 	usleep_range(10000, 11000);
 
 	DRM_DEV_DEBUG_DRIVER(dev, "power on !\n");
+	return;
+reg_err:
+	for (--i; i >= 0; i--)
+		regulator_disable(ctx->pdata.supplies[i].consumer);
 }
 
 static void anx7625_power_standby(struct anx7625_data *ctx)
 {
 	struct device *dev = &ctx->client->dev;
+	int ret;
 
 	if (!ctx->pdata.low_power_mode) {
 		DRM_DEV_DEBUG_DRIVER(dev, "not low power mode!\n");
@@ -904,6 +923,12 @@ static void anx7625_power_standby(struct anx7625_data *ctx)
 	usleep_range(1000, 1100);
 	gpiod_set_value(ctx->pdata.gpio_p_on, 0);
 	usleep_range(1000, 1100);
+
+	ret = regulator_bulk_disable(ARRAY_SIZE(ctx->pdata.supplies),
+				     ctx->pdata.supplies);
+	if (ret < 0)
+		DRM_DEV_DEBUG_DRIVER(dev, "cannot disable supplies %d\n", ret);
+
 	DRM_DEV_DEBUG_DRIVER(dev, "power down\n");
 }
 
@@ -1742,6 +1767,15 @@ static int anx7625_i2c_probe(struct i2c_client *client,
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
2.30.0.284.gd98b1dd5eaa7-goog

