Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E7CE350E72
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 07:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbhDAFcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 01:32:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232944AbhDAFcJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 01:32:09 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88510C0613E6
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 22:32:09 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id l1so426002plg.12
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 22:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c1cAo8Q6JnwrIFH4GqvcB//z48eg380I+/+VVYBbplQ=;
        b=VgKK5ZLepHRx7vc1FI63cNrjnwmnj0HJ5skSzcgCRAMpBqZNnIk0WT2R/mxuVDLU2I
         LCzScLegxgUR4FykNGGWqSjqsodeDAwEIEgL7L2veWyMM55PFoH8SGN5lA7HMtf+139a
         A+1h0pkmpOiuIBHNeku4I41s8U+AaNdhXCNo8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c1cAo8Q6JnwrIFH4GqvcB//z48eg380I+/+VVYBbplQ=;
        b=rff5vUlO7Jksn1mtG3cWtRRGnryMrXjEbE9ly20R42HUmXEHKaIkOdBngK02IpWYFP
         gxbE7QNH1TKEvqJIttRSiecXYuOr3luoDATdYsLkPKWwsVsKad0CfsMeydP6Lbx7eHJL
         7AaiLdj5/Xx+2xTXwwnxR5IEw+X9z9f45sUebTfSa1IBooDwp025m9yOsD3dihxFP4Xe
         0BzoxbKMCmDV2+T570RjmhHcfuZDcrwKoOQv0u+3XycSnmGdEBfM/eTb7F3s//PV4CI2
         s5yIoZ/G25hvPrvHEHHKdgtjDOKrvZSwlS6ED4mHv3VUPNW14lxJCqG0qD4PwN4MauQn
         sgPw==
X-Gm-Message-State: AOAM533t4qnu/mf8OZO8rCwNv9b8UWKNHVbBZLIqkVAZozj2O75R1Jg1
        Uc6EnAVP15YuqGO4ppICcDDOnw==
X-Google-Smtp-Source: ABdhPJybYXeNDW+BlCY1C2JhUoEV3Kldg2fII3nPuGiLcfTJI0u4CrMSNybS0oKxNZaNhiDh4LA2rA==
X-Received: by 2002:a17:90a:a603:: with SMTP id c3mr7052936pjq.107.1617255129107;
        Wed, 31 Mar 2021 22:32:09 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:8730:fe8e:d1f8:82c])
        by smtp.gmail.com with ESMTPSA id mz11sm3990058pjb.6.2021.03.31.22.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 22:32:08 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org
Cc:     Robert Foss <robert.foss@linaro.org>,
        David Airlie <airlied@linux.ie>, Xin Ji <xji@analogixsemi.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [RESEND PATCH v4 2/2] drm/bridge: anx7625: disable regulators when power off
Date:   Thu,  1 Apr 2021 13:32:02 +0800
Message-Id: <20210401053202.159302-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
In-Reply-To: <20210401053202.159302-1-hsinyi@chromium.org>
References: <20210401053202.159302-1-hsinyi@chromium.org>
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
Reviewed-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Xin Ji <xji@analogixsemi.com>
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 34 +++++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h |  1 +
 2 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 65cc05982f826..23283ba0c4f93 100644
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
index 193ad86c54503..e4a086b3a3d7b 100644
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
2.31.0.291.g576ba9dcdaf-goog

