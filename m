Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A430308687
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 08:37:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232289AbhA2Hgk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 02:36:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232294AbhA2HgI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 02:36:08 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ECA5C061794
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 23:34:57 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id o16so6098901pgg.5
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 23:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z0VzfNDnc1RNpKDeThOpKuoraFZ7ZUithfDN0lHwcjc=;
        b=TZlyGJRidU43SvB+usEmJhbiogpEBxkWU7lt38+Hx8JDPJUO+68ZyCxSXCNgPBDW25
         0uYkOXwFqmxlBYwzrJ1s1BbLh8cDVbUleOI/cLu1ScjXfvn0gwFW6biVIqPg9Pe+fARn
         s3Z8/v3SE5rdkXQops9PO/SAcOecDmpJSPSjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z0VzfNDnc1RNpKDeThOpKuoraFZ7ZUithfDN0lHwcjc=;
        b=m6Lwf1FaL1tvEu6qdWUO6fDhWGtLR/EfOJVALqUv0ajaqo/S0gutgILut9AjTABnAx
         /857tdVEYEHk38Y/XlA2XuUeAMIM4gVLqzHkNPGq2ylydKJFpcPtq0yMBQg0T6J42Ilb
         lqFGdRpLdXbYvDDGNgT9YxjIaOp+KLGaxSzz9Jb5kqFG9jP44ZxPzIW5CZMjYWNcItUs
         n4bZhTWgjt8f/xVAQ7nxY9s9cABIZhlGV92N2+uhzf5Gn6SbDKeLLAfWELjhkIg4mwtf
         +VnbX5slfCKY1hBV7MvHIdCJK5qiiyPuGoSYGZRAHI+tJuF3tpjPgBSmS3L81y1ipDc2
         sXkA==
X-Gm-Message-State: AOAM533GASGVNMWBEMIb1VyqWg3o5c+p7IgZk4Zc+mMapq3vZEA5dSa9
        jSb6QP1bdJWZJPERk/lHWKxS2A==
X-Google-Smtp-Source: ABdhPJy0ekUDoYPIR7eUwYsy3duD/m0fqRvopGyLRi/0wI+d34WZYnW5TQk31h5jTmTx9tnOn/Drkw==
X-Received: by 2002:a63:e30d:: with SMTP id f13mr3528882pgh.39.1611905696728;
        Thu, 28 Jan 2021 23:34:56 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:51f1:c468:a70b:7c09])
        by smtp.gmail.com with ESMTPSA id p1sm7689980pfn.21.2021.01.28.23.34.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 23:34:56 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v4 6/8] drm/mediatek: add matrix bits private data for ccorr
Date:   Fri, 29 Jan 2021 15:34:34 +0800
Message-Id: <20210129073436.2429834-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
In-Reply-To: <20210129073436.2429834-1-hsinyi@chromium.org>
References: <20210129073436.2429834-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

matrix bits of mt8183 is 12
matrix bits of mt8192 is 13

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_disp_ccorr.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c b/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
index 0c68090eb1e92..1c7163a12f3b1 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
@@ -31,8 +31,10 @@
 #define DISP_CCORR_COEF_3			0x008C
 #define DISP_CCORR_COEF_4			0x0090
 
+#define CCORR_MATRIX_BITS			12
+
 struct mtk_disp_ccorr_data {
-	u32 reserved;
+	u32 matrix_bits;
 };
 
 /**
@@ -116,6 +118,7 @@ void mtk_ccorr_ctm_set(struct device *dev, struct drm_crtc_state *state)
 	uint16_t coeffs[9] = { 0 };
 	int i;
 	struct cmdq_pkt *cmdq_pkt = NULL;
+	u32 matrix_bits;
 
 	if (!blob)
 		return;
@@ -123,8 +126,16 @@ void mtk_ccorr_ctm_set(struct device *dev, struct drm_crtc_state *state)
 	ctm = (struct drm_color_ctm *)blob->data;
 	input = ctm->matrix;
 
-	for (i = 0; i < ARRAY_SIZE(coeffs); i++)
+	if (ccorr->data)
+		matrix_bits = ccorr->data->matrix_bits;
+	else
+		matrix_bits = CCORR_MATRIX_BITS;
+
+	for (i = 0; i < ARRAY_SIZE(coeffs); i++) {
 		coeffs[i] = mtk_ctm_s31_32_to_s1_10(input[i]);
+		if (matrix_bits > CCORR_MATRIX_BITS)
+			coeffs[i] <<= (matrix_bits - CCORR_MATRIX_BITS);
+	}
 
 	mtk_ddp_write(cmdq_pkt, coeffs[0] << 16 | coeffs[1],
 		      &ccorr->cmdq_reg, ccorr->regs, DISP_CCORR_COEF_0);
@@ -205,8 +216,13 @@ static int mtk_disp_ccorr_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct mtk_disp_ccorr_data mt8183_ccorr_driver_data = {
+	.matrix_bits = CCORR_MATRIX_BITS,
+};
+
 static const struct of_device_id mtk_disp_ccorr_driver_dt_match[] = {
-	{ .compatible = "mediatek,mt8183-disp-ccorr"},
+	{ .compatible = "mediatek,mt8183-disp-ccorr",
+	  .data = &mt8183_ccorr_driver_data},
 	{},
 };
 MODULE_DEVICE_TABLE(of, mtk_disp_ccorr_driver_dt_match);
-- 
2.30.0.365.g02bc693789-goog

