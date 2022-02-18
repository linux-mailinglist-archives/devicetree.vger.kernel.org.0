Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2023B4BBB6F
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 15:58:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236423AbiBRO5A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 09:57:00 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236397AbiBRO4s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 09:56:48 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08B082B2FCA
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 06:56:18 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id d27so15031246wrc.6
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 06:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BY2INqP5/ML6M0B5RXCe3qW6LaccjrUVhDYjta1rw28=;
        b=Nn5Qt5GlmO2JofQtcrAgsfqSOdkqB7Tu5hXL1wU5yHulSqYqZhoEI/4feFzqNbfqrp
         br80hHQ0W+SbYWnzHMvh/tsB4sBXwJMWrskwR8RT0d2fbx8ec92r8h/SAac/iyzsUjns
         Hm7TyLj+eAsJmiUPkoHrACNiEWJnPW18SlQorK+lfzAg4XeO202ydsKvTFsBPBqoU9kU
         AEkryKI9f3gbLYaDDo22CnDnQz6r27txIm57q33phelJy8ZbZ64oU0fO/yu8RCR3tmb3
         tonoAnsfjNBqmJxBULHXKDDtF/5bUV5u8iE1X6tNQHhlIgoyXIRTPuzVSrIVoZ5WOMOE
         QL7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BY2INqP5/ML6M0B5RXCe3qW6LaccjrUVhDYjta1rw28=;
        b=KZqlDFyP5olLGkh+mu2HaPU94MtFv7I7jZx+olAyJT9qqp+Ato9Syt7jqlABzt2let
         Wtsjpz/rzY7iUkwBM6JbNtiSny/F9I573NuXsUWBUcC4gofAog7S5QDFXXsuWwXqR2kc
         Jw4cEXYzBvi++Qsvh1qJA4wmfmgSpP+X0vEoFUpQMAgiqNIGshJl1n2GoDPxO5I5U7sQ
         M1AEM3NHypIul7ekT9TPCP9HfKy3pExzDN1+5maEu67l9RDe2E3gEqrcOXB3lsM//T/o
         qL/+/hexaIQBQtnI4bbiTqiRquQ5CFGib4ZvGujTgpQW661LoDxJrUKjtqg455aLKnu5
         WfOw==
X-Gm-Message-State: AOAM533g9r6qI7Klq2pAysyzLr3VT6JJAd1N3d7YgugkvhVzydmAkyfP
        FW5oSeJytrLJ2E7icIu5yieTmQ==
X-Google-Smtp-Source: ABdhPJx1nSDEfTBmLfQ7yKV8krgbtdoJ22jOuH5HY/NqNK/26S8qJNcxP8B0rTBJCXywchzlr5iR6Q==
X-Received: by 2002:adf:d20c:0:b0:1e5:952c:34b5 with SMTP id j12-20020adfd20c000000b001e5952c34b5mr6528939wrh.82.1645196176558;
        Fri, 18 Feb 2022 06:56:16 -0800 (PST)
Received: from localhost.localdomain (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net. [2a02:8440:6241:3b28:3074:96af:9642:2])
        by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Feb 2022 06:56:16 -0800 (PST)
From:   Guillaume Ranquet <granquet@baylibre.com>
To:     chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, matthias.bgg@gmail.com,
        chunfeng.yun@mediatek.com, kishon@ti.com, vkoul@kernel.org,
        deller@gmx.de, ck.hu@mediatek.com, jitao.shi@mediatek.com,
        angelogioacchino.delregno@collabora.com
Cc:     dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, linux-fbdev@vger.kernel.org
Subject: [PATCH v8 09/19] drm/mediatek: dpi: move dimension_mask to board config
Date:   Fri, 18 Feb 2022 15:54:27 +0100
Message-Id: <20220218145437.18563-10-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218145437.18563-1-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add flexibility by moving the dimension mask to board config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 8ca3455ed64ee..0d3acd08ea358 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -129,6 +129,8 @@ struct mtk_dpi_conf {
 	bool swap_input_support;
 	// Mask used for HWIDTH, HPORCH, VSYNC_WIDTH and VSYNC_PORCH (no shift)
 	u32 dimension_mask;
+	// Mask used for HSIZE and VSIZE (no shift)
+	u32 hvsize_mask;
 	const struct mtk_dpi_yc_limit *limit;
 };
 
@@ -243,8 +245,10 @@ static void mtk_dpi_config_interface(struct mtk_dpi *dpi, bool inter)
 
 static void mtk_dpi_config_fb_size(struct mtk_dpi *dpi, u32 width, u32 height)
 {
-	mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE, HSIZE_MASK);
-	mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE, VSIZE_MASK);
+	mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE,
+		     dpi->conf->hvsize_mask << HSIZE);
+	mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE,
+		     dpi->conf->hvsize_mask << VSIZE);
 }
 
 static void mtk_dpi_config_channel_limit(struct mtk_dpi *dpi)
@@ -816,6 +820,7 @@ static const struct mtk_dpi_conf mt8173_conf = {
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -829,6 +834,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -841,6 +847,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -853,6 +860,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
-- 
2.34.1

