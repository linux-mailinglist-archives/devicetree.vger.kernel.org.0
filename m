Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 614F2116FA2
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2019 15:52:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726923AbfLIOvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Dec 2019 09:51:51 -0500
Received: from mail-pg1-f193.google.com ([209.85.215.193]:41254 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726897AbfLIOvu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Dec 2019 09:51:50 -0500
Received: by mail-pg1-f193.google.com with SMTP id x8so7245085pgk.8
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2019 06:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uaDYqsyc1Amfj+rSgV5LdqRPEszOSqeoO5bxQF6wI/8=;
        b=mgRkhidWIwQrXgZ+53Q3ES0onwYvT97F/zSJomcMLUsE3rX1QvgnpHcPZGSNwySnyL
         v4fWp3ofa4Ls1qwhijcJQIQeRtVEa7DifKsIRjyLmsfGNCv6gf6Ntb/rBTM1y39ufl4B
         lHTGSCi6gahnJsCCQeNaViCA8QJnrfYvVWwbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uaDYqsyc1Amfj+rSgV5LdqRPEszOSqeoO5bxQF6wI/8=;
        b=oVjNTzijX7m0E5mdBS7Px6SFvj95N4WAEjv2OWvYu/I2IHbVYsbHsYy5a1FME/WX6p
         LXMGq43a3+mtuhEk/CuAlN6njW2aeeNq/SyNn/DW4xSvSBMW8nrEJQ6ygARvl/CqAeV5
         us37ObAAUYk1EBqfxj8qxTVnV7s9q+z57XN/rJ2Gr9ytUAd2sKoIwJ21LrugKLvirMo8
         TpESYhnIK39T/2CcDEh36dXmtsE9NK8Lx57dGk+n68/XBwwnplUSHrf1nowjgw2ELaoP
         i2S1soXH84Ezjf7DcKINwQQpugDhgDCjsbut4D3Un64/fSDfRPGhZdt99tHA1bDvDiBy
         V/rA==
X-Gm-Message-State: APjAAAVN9Mc9vjDY1k20oPDhFXGVopgRaxBsBhmXtRKAkjnip9/JuLEm
        TvheBr6x95fBo0P9HRb5j1IvVw==
X-Google-Smtp-Source: APXvYqzAxcbhb9dq2bTBZndMkD6J3hhmRbSgWIiplaCgX/EMjF8TeQ17Ny2l9Uhse5276EJgApSiUA==
X-Received: by 2002:a65:5c0a:: with SMTP id u10mr18950072pgr.258.1575903110084;
        Mon, 09 Dec 2019 06:51:50 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id k16sm29143119pfh.97.2019.12.09.06.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 06:51:49 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Archit Taneja <architt@codeaurora.org>, p.zabel@pengutronix.de,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Brugger <mbrugger@suse.com>,
        Russell King <rmk+kernel@arm.linux.org.uk>
Subject: [PATCH RESEND 4/4] drm: bridge: anx7688: Support bypass GPIO feature
Date:   Mon,  9 Dec 2019 22:50:16 +0800
Message-Id: <20191209145016.227784-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
In-Reply-To: <20191209145016.227784-1-hsinyi@chromium.org>
References: <20191209145016.227784-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Support optional feature: bypass GPIO.

Get GPIO status in irq handler. If GPIO is active, mode_fixup would be
bypassed.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/bridge/analogix-anx7688.c | 57 +++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix-anx7688.c b/drivers/gpu/drm/bridge/analogix-anx7688.c
index 5a3a2251c1c5..1d09db2cf8e9 100644
--- a/drivers/gpu/drm/bridge/analogix-anx7688.c
+++ b/drivers/gpu/drm/bridge/analogix-anx7688.c
@@ -5,11 +5,16 @@
  * Copyright 2016 Google LLC
  */
 
+#include <linux/gpio.h>
 #include <linux/i2c.h>
+#include <linux/interrupt.h>
 #include <linux/module.h>
+#include <linux/of_gpio.h>
 #include <linux/regmap.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_probe_helper.h>
 
 /* Register addresses */
 #define VENDOR_ID_REG 0x00
@@ -31,6 +36,9 @@ struct anx7688 {
 	struct i2c_client *client;
 	struct regmap *regmap;
 
+	struct gpio_desc *gpiod_bypass;
+	int bypass;
+
 	bool filter;
 };
 
@@ -49,6 +57,10 @@ static bool anx7688_bridge_mode_fixup(struct drm_bridge *bridge,
 	int totalbw, requiredbw;
 	int ret;
 
+	/* bypass anx mode fixup */
+	if (anx7688->bypass)
+		return true;
+
 	if (!anx7688->filter)
 		return true;
 
@@ -93,6 +105,19 @@ static const struct drm_bridge_funcs anx7688_bridge_funcs = {
 	.mode_fixup	= anx7688_bridge_mode_fixup,
 };
 
+static irqreturn_t gpio_display_mux_det_threaded_handler(int unused, void *data)
+{
+	struct anx7688 *anx7688 = data;
+
+	anx7688->bypass = gpiod_get_value(anx7688->gpiod_bypass);
+	dev_dbg(&anx7688->client->dev, "Interrupt %d!\n", anx7688->bypass);
+
+	if (anx7688->bridge.dev)
+		drm_kms_helper_hotplug_event(anx7688->bridge.dev);
+
+	return IRQ_HANDLED;
+}
+
 static const struct regmap_config anx7688_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -156,6 +181,38 @@ static int anx7688_i2c_probe(struct i2c_client *client,
 			 buffer[0], buffer[1]);
 	}
 
+	/* Optional bypass-gpios */
+	anx7688->gpiod_bypass = devm_gpiod_get_optional(dev, "bypass",
+							GPIOD_IN);
+	if (IS_ERR(anx7688->gpiod_bypass)) {
+		ret = PTR_ERR(anx7688->gpiod_bypass);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "bypass-gpios assigned failed\n");
+		return ret;
+	}
+	if (anx7688->gpiod_bypass) {
+		int irq;
+
+		irq = gpiod_to_irq(anx7688->gpiod_bypass);
+		if (irq < 0) {
+			dev_err(dev, "Failed to get output irq %d\n", irq);
+			return -ENODEV;
+		}
+
+		anx7688->bypass = gpiod_get_value(anx7688->gpiod_bypass);
+
+		ret = devm_request_threaded_irq(dev, irq, NULL,
+				gpio_display_mux_det_threaded_handler,
+				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING |
+				IRQF_ONESHOT,
+				"gpio-display-mux-det", anx7688);
+		if (ret) {
+			dev_err(dev,
+				"Failed to request MUX_DET threaded irq\n");
+			return ret;
+		}
+	}
+
 	anx7688->bridge.funcs = &anx7688_bridge_funcs;
 	drm_bridge_add(&anx7688->bridge);
 
-- 
2.24.0.393.g34dc348eaf-goog

