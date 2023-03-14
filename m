Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 994626B916F
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 12:18:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231406AbjCNLS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 07:18:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231370AbjCNLSV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 07:18:21 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA3961ADEB
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 04:17:48 -0700 (PDT)
Received: from fabio-Precision-3551.. (unknown [IPv6:2804:14c:485:4b69:d086:7d15:2ce3:1a1b])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 84D16861C5;
        Tue, 14 Mar 2023 12:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1678792659;
        bh=5UVq9kWaDSvkl4Rfih2050+zoQO8g2q290YPZ7fsYME=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=p8zxERBlTl6EmELJFG3+3NTNt64GsbVFwAGSB1AwaSC8vCWbffiPnTxxqB0UOBSrO
         EytfrsQaDut3BNujxc+ImPBrhiMgmW0/sHYf8V13HNaabMyim9Faspi271jeAuun34
         eH6ilSOtiXXpF/T0bWNCBYWHanBkWi9rQ7bmK0XzKLD+xN7Htgm1qM1Imwki+vjIsL
         bTuAP++WCZud8uv/ts7B7hmDXgHHNYQYlzhm41IhGv1SJV1uXY/qZvEVifCCVv/iXv
         7nKq8GzmqAOOAJP7VMqGK5tAVWH4/cHDQh8JIqSMMBzuSx7SxVFY22ofcMH0ahVyqL
         7RyJNHaXaO0Ig==
From:   Fabio Estevam <festevam@denx.de>
To:     neil.armstrong@linaro.org
Cc:     sam@ravnborg.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, CPHEALY@gmail.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] drm/panel: seiko-43wvf1g: Add the 'enable-gpios' property
Date:   Tue, 14 Mar 2023 08:17:24 -0300
Message-Id: <20230314111724.1520178-2-festevam@denx.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230314111724.1520178-1-festevam@denx.de>
References: <20230314111724.1520178-1-festevam@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sometimes a GPIO is needed to turn on/off the display.

Add support for this usecase by introducing the optional 'enable-gpios'
property.

Tested on a imx53qsb board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 drivers/gpu/drm/panel/panel-seiko-43wvf1g.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
index 76160e5d43bd..c250ca36a5b3 100644
--- a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
+++ b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -48,6 +49,7 @@ struct seiko_panel {
 	const struct seiko_panel_desc *desc;
 	struct regulator *dvdd;
 	struct regulator *avdd;
+	struct gpio_desc *enable_gpio;
 };
 
 static inline struct seiko_panel *to_seiko_panel(struct drm_panel *panel)
@@ -139,6 +141,8 @@ static int seiko_panel_unprepare(struct drm_panel *panel)
 	if (!p->prepared)
 		return 0;
 
+	gpiod_set_value_cansleep(p->enable_gpio, 0);
+
 	regulator_disable(p->avdd);
 
 	/* Add a 100ms delay as per the panel datasheet */
@@ -174,6 +178,8 @@ static int seiko_panel_prepare(struct drm_panel *panel)
 		goto disable_dvdd;
 	}
 
+	gpiod_set_value_cansleep(p->enable_gpio, 1);
+
 	p->prepared = true;
 
 	return 0;
@@ -252,6 +258,12 @@ static int seiko_panel_probe(struct device *dev,
 	if (IS_ERR(panel->avdd))
 		return PTR_ERR(panel->avdd);
 
+	panel->enable_gpio = devm_gpiod_get_optional(dev, "enable",
+						     GPIOD_OUT_LOW);
+	if (IS_ERR(panel->enable_gpio))
+		return dev_err_probe(dev, PTR_ERR(panel->enable_gpio),
+				     "failed to request GPIO\n");
+
 	drm_panel_init(&panel->base, dev, &seiko_panel_funcs,
 		       DRM_MODE_CONNECTOR_DPI);
 
-- 
2.34.1

