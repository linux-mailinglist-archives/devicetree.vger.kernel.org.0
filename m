Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 642AF733611
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 18:33:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231695AbjFPQdS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 12:33:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230260AbjFPQdR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 12:33:17 -0400
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D6F630FB
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 09:33:05 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686933184;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=vhH1R0k1FMdZMqZ1ZmsO99xF4oMGZu9gJvi4I7LfLsg=;
        b=noxmovHQ8qcAa8FiD6l2wd9EDxeauzev60RNLh+aiNP/CcnvTjeNBakKeKb13dVaExApmU
        WjZTCZT42nh7QZwkGbdyO5i5m5RTFYiefLabyyEOXdeT/GefkXa7ZtaqKqPy2KeYiuoAS5
        3e3xX6alivxarp+EITetPN5igwZZtFlxYprVONw0bD/X3D2wM74geOcIDTCyiufB04VnbR
        Cglr8Fz4lk63KeftbTiTD0XNo2RmrTRtB/5Sr0dZyvY7SHDPMuX2mlJIrTrru8e5SWbTTJ
        mei5svfMKQoD+8eBKVSXf/HNuGtGhFZb8Xeju96xRWMfdpcppWy9xHchLk7xkw==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7B6F7C0007;
        Fri, 16 Jun 2023 16:33:03 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 4/6] drm/panel: sitronix-st7789v: Clarify a definition
Date:   Fri, 16 Jun 2023 18:32:53 +0200
Message-Id: <20230616163255.2804163-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Sitronix datasheet explains BIT(1) of the RGBCTRL register as the
DOTCLK/PCLK edge used to sample the data lines:

    “0” The data is input on the positive edge of DOTCLK
    “1” The data is input on the negative edge of DOTCLK

IOW, this bit implies a falling edge and not a high state. Correct the
definition to ease the comparison with the datasheet.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index 605b9f6d0f14..d7c5b3ad1baa 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -27,7 +27,7 @@
 #define ST7789V_RGBCTRL_RCM(n)			(((n) & 3) << 5)
 #define ST7789V_RGBCTRL_VSYNC_HIGH		BIT(3)
 #define ST7789V_RGBCTRL_HSYNC_HIGH		BIT(2)
-#define ST7789V_RGBCTRL_PCLK_HIGH		BIT(1)
+#define ST7789V_RGBCTRL_PCLK_FALLING		BIT(1)
 #define ST7789V_RGBCTRL_DE_LOW			BIT(0)
 #define ST7789V_RGBCTRL_VBP(n)			((n) & 0x7f)
 #define ST7789V_RGBCTRL_HBP(n)			((n) & 0x1f)
@@ -259,7 +259,7 @@ static int st7789v_prepare(struct drm_panel *panel)
 	if (ctx->info->mode->flags & DRM_MODE_FLAG_PHSYNC)
 		polarity |= ST7789V_RGBCTRL_HSYNC_HIGH;
 	if (ctx->info->bus_flags & DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE)
-		polarity |= ST7789V_RGBCTRL_PCLK_HIGH;
+		polarity |= ST7789V_RGBCTRL_PCLK_FALLING;
 	if (ctx->info->bus_flags & DRM_BUS_FLAG_DE_LOW)
 		polarity |= ST7789V_RGBCTRL_DE_LOW;
 
-- 
2.34.1

