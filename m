Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 503AE5B98BF
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 12:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbiIOK3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 06:29:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbiIOK3d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 06:29:33 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB95CF0
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 03:29:31 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id n8so6043076wmr.5
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 03:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=t1tgoHzcuNz6608F9ral59980nRZm0iCe/jA9+SaWcw=;
        b=xfY46AXwiEIXzTNjMYfvBmoBvK4Okl/KzOSF3uSeGFm9POQCmX8JyovEnujiJcNHwM
         Q3BVJh22F5JuOT6W6BYomK3QVYIlZkz0XNt+sRs7eohfl2mDzwt9HSwzSjqL1+PF1j5C
         I99VRPz5qfWn/dIucemh/z/u9xxMc9BOy2JhbFIgxaaqqq3q9hJ6G5dA/ZIfbEJy5t0z
         zrTUFWM6+xc6gsr7KV0J85QlrOcwQ4zjeDX9eNA9jOm6bMTFUHS7HeImyzOvC1Kl9jea
         +QRxQhQeaOoNkcXJWMYW5xrvveb4Xy7B53oSinOGsWTXdBO0E9KnJAdbVNffCEsei0Jv
         kVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=t1tgoHzcuNz6608F9ral59980nRZm0iCe/jA9+SaWcw=;
        b=hb9YfBG7YJ+KhNm26ULJP10r/k9pSApY7++CdnUr+S6DE5RzOuDMw2j+fBT1GhAFhY
         qYvF3Bc87ln/JNftgt4H1r5lJy5SXZvCqXaot1CN1NEuqzmLillf+/aEI5CKwsbP8mQw
         YwXOvMTFOFm/M8L8S85qTInc8mlkKUjqlEneqMlPWDK3Ccd7uVc/mKzhartsD5BSh2Ud
         8Bw7coWjmf2iQjM16McBUdXo10RIQRsG/RjqIbGRmk+wJc/c+UEC0Z0vI/vJudMiFpU1
         /cfwbGOkt1Em185lM+45KYS5cGizGiAoxZb+rqrYMRFDVRkTIN31+apfdq13kGvTPfiQ
         +DFg==
X-Gm-Message-State: ACrzQf0VnzkR0qxQ4gx+lUy+dMilqbJ0IFDPYZ+pCze3UifuVS41QTdx
        FjeE1qdzv4ac1xsERNRfWscaMQ==
X-Google-Smtp-Source: AMsMyM6l0IFcUEUYMdFQtm6+1h40cpF70ZwsOEncfkwpO534Z60smPFIjDXh6oCkTPCcHe7qz5kDEg==
X-Received: by 2002:a05:600c:5110:b0:3b4:b3d7:c30f with SMTP id o16-20020a05600c511000b003b4b3d7c30fmr333227wms.93.1663237770497;
        Thu, 15 Sep 2022 03:29:30 -0700 (PDT)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id q17-20020adff951000000b00228dff8d975sm2098257wrr.109.2022.09.15.03.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 03:29:29 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v1 2/2] Revert "drm/bridge: chrontel-ch7033: Add byteswap order setting"
Date:   Thu, 15 Sep 2022 12:29:24 +0200
Message-Id: <20220915102924.370090-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220915102924.370090-1-robert.foss@linaro.org>
References: <20220915102924.370090-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Revert this patch since it depends on devicetree functionality that
previously has been reverted in the below commit.

commit e798ba3374a1 ("Revert "dt-bindings: Add byteswap order to chrontel ch7033"")

This reverts commit ce9564cfc9aea65e68eb343c599317633bc2321a.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 drivers/gpu/drm/bridge/chrontel-ch7033.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/bridge/chrontel-ch7033.c b/drivers/gpu/drm/bridge/chrontel-ch7033.c
index c5719908ce2d..ba060277c3fd 100644
--- a/drivers/gpu/drm/bridge/chrontel-ch7033.c
+++ b/drivers/gpu/drm/bridge/chrontel-ch7033.c
@@ -68,7 +68,6 @@ enum {
 	BYTE_SWAP_GBR	= 3,
 	BYTE_SWAP_BRG	= 4,
 	BYTE_SWAP_BGR	= 5,
-	BYTE_SWAP_MAX	= 6,
 };
 
 /* Page 0, Register 0x19 */
@@ -356,8 +355,6 @@ static void ch7033_bridge_mode_set(struct drm_bridge *bridge,
 	int hsynclen = mode->hsync_end - mode->hsync_start;
 	int vbporch = mode->vsync_start - mode->vdisplay;
 	int vsynclen = mode->vsync_end - mode->vsync_start;
-	u8 byte_swap;
-	int ret;
 
 	/*
 	 * Page 4
@@ -401,16 +398,8 @@ static void ch7033_bridge_mode_set(struct drm_bridge *bridge,
 	regmap_write(priv->regmap, 0x15, vbporch);
 	regmap_write(priv->regmap, 0x16, vsynclen);
 
-	/* Input color swap. Byte order is optional and will default to
-	 * BYTE_SWAP_BGR to preserve backwards compatibility with existing
-	 * driver.
-	 */
-	ret = of_property_read_u8(priv->bridge.of_node, "chrontel,byteswap",
-				  &byte_swap);
-	if (!ret && byte_swap < BYTE_SWAP_MAX)
-		regmap_update_bits(priv->regmap, 0x18, SWAP, byte_swap);
-	else
-		regmap_update_bits(priv->regmap, 0x18, SWAP, BYTE_SWAP_BGR);
+	/* Input color swap. */
+	regmap_update_bits(priv->regmap, 0x18, SWAP, BYTE_SWAP_BGR);
 
 	/* Input clock and sync polarity. */
 	regmap_update_bits(priv->regmap, 0x19, 0x1, mode->clock >> 16);
-- 
2.34.1

