Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE1B429708F
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 15:32:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S464854AbgJWNbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 09:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S464888AbgJWNbm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 09:31:42 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D6FAC0613D4
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:31:41 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e2so1579648wme.1
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g+2yN9MeRTEf/pnT8y/kZe4gz63gE6nshqU+Yqjv0/I=;
        b=dPB4J4uq4UmIx/feUZt/6vYh5sK0pnO9jZRfvO+jfbOL6OULIEcCQo/zLlWVo0Re9T
         PBQfcFLylfMH9c5MILSk/ytseU3R6p4wywTIPUZyVJgQ5MHgJoPVLFu8CtaTvU0rpXAc
         D7dh1HC3zpOl3Elt/GbcDesudaLQ6/lmnOL7RNILjDR9Wgz6yHarIqBGxds8PD/2J8xq
         sV5IjcrI6TZlHIzo+IVQ59ohoRQDy0+YSGpB5FRAkBlBzZmITIecDJGZ++eeDV58inNr
         ofy48vywVaElIXHD/S37euH4PaLPyQ0pQEKrQRuZVsGM45I1Q9XvtFQF+Fc6t9C5AjfZ
         J+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g+2yN9MeRTEf/pnT8y/kZe4gz63gE6nshqU+Yqjv0/I=;
        b=sCatwEYNCF4fWMzHYatpL1t79p5LKS5LWfTgAJz7gtOlD2LdbeWLiOz2+7iEuF7a3Y
         tOdaJjbwlT37IKNZAloSQzFuTh4faS95NQl1S0UWPZ1nnZp6YuMbXELJcVdh+MyHQ1PB
         sT4ZTctW3f/BgDNCmbOg1ZNnnQLMlWYkPq1SpItp2Kir2BX17yGfhxHmw6/S7ReqE/tz
         oEEbd8iDqoWlYwjQ26GLZbQewKHYXBlUYp6tl8+2AqXa/YN58ZzrtHgRBzB4dBEhkVLA
         5mWx58Ectw3kAtB46XVNpWggz6Q0L3puAeyNe2CyWOxzz0LpGeCCRxB6aNuBW/B5iS10
         aeog==
X-Gm-Message-State: AOAM532yZQwVq9yPP4LW8pOvGTuQRTABw84KoCzR6fP69dfslHj6+KC+
        U6PhSr1sqKLBB8HQ8jKTcfEwIg==
X-Google-Smtp-Source: ABdhPJx3cxGQumgk9TFoam7BXXLYtxG3Pzw2YD4YI6h/rEfg8EwN7KF842rzjfywLCEt05riGq4EBQ==
X-Received: by 2002:a7b:c055:: with SMTP id u21mr2295428wmc.27.1603459899863;
        Fri, 23 Oct 2020 06:31:39 -0700 (PDT)
Received: from localhost.localdomain (211.160.185.81.rev.sfr.net. [81.185.160.211])
        by smtp.gmail.com with ESMTPSA id f6sm3146107wru.50.2020.10.23.06.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 06:31:39 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, daniel@ffwll.ch,
        airlied@linux.ie, p.zabel@pengutronix.de, chunkuang.hu@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH v2 3/5] drm/mediatek: add disp-color MT8167 support
Date:   Fri, 23 Oct 2020 15:31:28 +0200
Message-Id: <20201023133130.194140-4-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023133130.194140-1-fparent@baylibre.com>
References: <20201023133130.194140-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for disp-color on MT8167 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---

Changelog:

V2: No change

 drivers/gpu/drm/mediatek/mtk_disp_color.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
index 3ae9c810845b..a1227cefbf31 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
@@ -16,6 +16,7 @@
 
 #define DISP_COLOR_CFG_MAIN			0x0400
 #define DISP_COLOR_START_MT2701			0x0f00
+#define DISP_COLOR_START_MT8167			0x0400
 #define DISP_COLOR_START_MT8173			0x0c00
 #define DISP_COLOR_START(comp)			((comp)->data->color_offset)
 #define DISP_COLOR_WIDTH(comp)			(DISP_COLOR_START(comp) + 0x50)
@@ -148,6 +149,10 @@ static const struct mtk_disp_color_data mt2701_color_driver_data = {
 	.color_offset = DISP_COLOR_START_MT2701,
 };
 
+static const struct mtk_disp_color_data mt8167_color_driver_data = {
+	.color_offset = DISP_COLOR_START_MT8167,
+};
+
 static const struct mtk_disp_color_data mt8173_color_driver_data = {
 	.color_offset = DISP_COLOR_START_MT8173,
 };
@@ -155,6 +160,8 @@ static const struct mtk_disp_color_data mt8173_color_driver_data = {
 static const struct of_device_id mtk_disp_color_driver_dt_match[] = {
 	{ .compatible = "mediatek,mt2701-disp-color",
 	  .data = &mt2701_color_driver_data},
+	{ .compatible = "mediatek,mt8167-disp-color",
+	  .data = &mt8167_color_driver_data},
 	{ .compatible = "mediatek,mt8173-disp-color",
 	  .data = &mt8173_color_driver_data},
 	{},
-- 
2.28.0

