Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66FA1716D82
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 21:28:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231356AbjE3T2Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 15:28:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231428AbjE3T2X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 15:28:23 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 000FFF3
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 12:28:21 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A75B4847C0;
        Tue, 30 May 2023 21:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685474900;
        bh=omn0qPdvYx0kG7n/PZJIkC9DtWFUxvle4DwjJsxCz68=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=HmYV0I7Mv576uiV8f+VBQoPpl0CSLG+wAZ7T+FjLMpaaG/VdkXaGgxzasDGTuLF45
         8DjJejxRCaUIY9dttblaTKsFfpzc1sD3aIs844UXZu2h5Jeq6IRKLdFSUw3oxu2q7+
         a7qRbPoPiHdEFRGJTR53fLGr0ZnB3+ayvYHOrcUxq1gyxbn67+/veU7K2bqP8iy7DC
         obibIQpyMrxarKwjRyQgx3CCUm4lICWyVu6rf21MM9qTLP98nWbMiSWzU03VBkHdVA
         SlS/faZAMiKKe7heOAG/4/qq4f8k1Y0Ghd2IqsoTDMEOV4XI0ogsoOPH23/oBe9rzh
         4rhijEa2+liyA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <rfoss@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/2] drm/bridge: tc358762: Add reset GPIO support
Date:   Tue, 30 May 2023 21:28:05 +0200
Message-Id: <20230530192805.648646-2-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530192805.648646-1-marex@denx.de>
References: <20230530192805.648646-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add reset GPIO support. The reset GPIO is cleared after supply regulator
was enabled, and set before supply regulator is disabled.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/bridge/tc358762.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/bridge/tc358762.c b/drivers/gpu/drm/bridge/tc358762.c
index 77f7f7f547570..5641395fd310e 100644
--- a/drivers/gpu/drm/bridge/tc358762.c
+++ b/drivers/gpu/drm/bridge/tc358762.c
@@ -11,6 +11,7 @@
  */
 
 #include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/of_graph.h>
@@ -63,6 +64,7 @@ struct tc358762 {
 	struct drm_bridge bridge;
 	struct regulator *regulator;
 	struct drm_bridge *panel_bridge;
+	struct gpio_desc *reset_gpio;
 	bool pre_enabled;
 	int error;
 };
@@ -138,6 +140,9 @@ static void tc358762_post_disable(struct drm_bridge *bridge)
 
 	ctx->pre_enabled = false;
 
+	if (ctx->reset_gpio)
+		gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+
 	ret = regulator_disable(ctx->regulator);
 	if (ret < 0)
 		dev_err(ctx->dev, "error disabling regulators (%d)\n", ret);
@@ -152,6 +157,11 @@ static void tc358762_pre_enable(struct drm_bridge *bridge)
 	if (ret < 0)
 		dev_err(ctx->dev, "error enabling regulators (%d)\n", ret);
 
+	if (ctx->reset_gpio) {
+		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+		usleep_range(5000, 10000);
+	}
+
 	ret = tc358762_init(ctx);
 	if (ret < 0)
 		dev_err(ctx->dev, "error initializing bridge (%d)\n", ret);
@@ -185,6 +195,11 @@ static int tc358762_parse_dt(struct tc358762 *ctx)
 
 	ctx->panel_bridge = panel_bridge;
 
+	/* Reset GPIO is optional */
+	ctx->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->reset_gpio))
+		return PTR_ERR(ctx->reset_gpio);
+
 	return 0;
 }
 
-- 
2.39.2

