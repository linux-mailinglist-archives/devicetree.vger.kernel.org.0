Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E0BE538823
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 22:15:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243169AbiE3UPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 16:15:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243147AbiE3UPL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 16:15:11 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6CBF68980
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 13:15:09 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id e2so16053077wrc.1
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 13:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OCqq60cIFpi0W5rW/stTGkbaV47iCHB38Vu44v/Je2Q=;
        b=r9ZERXT93z+iXWs30IEZqxm8a2ISlpmrexl1aU/BnE/7kGjjGr4YcPWE9vj9KVytZ7
         EXMDYWAv+Kzl5tX1Aefpo97MFGU4puqLGykM6pMvQiY+UBANlF5C/hjRyUXDjZJPi35S
         pw6uKMSt97KH4ttpx561Glm9iCRqlqrtr5Ja8WNAQgDyGwrsZUvKkQla5T9nmkLTFrlO
         5BxSh/2BNI9W+uwzbAxP9YA6YaA3Zm+uQ0cR4s7lFmZ83zmQ4DNvR1UaqcgvfJnva4Ad
         22PeNE2w+HQ7GT1F5dustciKNtdPrgQ9Y3aZm1eFQRrcwVyPCH1QEoOZkS/BH5qibec0
         IROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OCqq60cIFpi0W5rW/stTGkbaV47iCHB38Vu44v/Je2Q=;
        b=RX1nLdB13O3ALLAFKEd+wKjcp2d7r68lZ5o1Ptot/bi5N2m+h9KNoEXr42N6yIgfiw
         8xkh67xJiLb+mupGptSwcig/UabBPMAn277WiuB8d+vJmmg+KO9u3WxqqDxBdeuZx5oW
         OwMdTRIGhUaQTOQhW2RWD24vlwMBdT6V+MDay59kmoUY7zikK/WK97DtljlRFWr1bc3F
         Wd3/XavXh0RG9673W4n52iNdAOEP7HRDeNICIPEypK5lSccCLxhsSomCgZcZH9U4wVQ7
         uoasDZjPlSFM8o/EyUwBu4Yj2vZuNtg6q06SMtB3e1QYDPPVOLC18gGIO1SxeDhkYexU
         eV0g==
X-Gm-Message-State: AOAM532fuvoi+zLVXN6RcaMOzxlmTk9EoE6WMzxfB9AKPOwnYhgs2m8K
        ltlv9i1uFny01DpShvSizHjpQw==
X-Google-Smtp-Source: ABdhPJzjkNI9SKbyu+IPKMI7hdxzFtaOw5Wr2qt8pXhyFiGleK1poevdfJ72z/Y8dOnIezY6TauObw==
X-Received: by 2002:a05:6000:1611:b0:210:28cc:65dd with SMTP id u17-20020a056000161100b0021028cc65ddmr10243171wrb.700.1653941708426;
        Mon, 30 May 2022 13:15:08 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id t1-20020adfe101000000b0020d110bc39esm9770401wrz.64.2022.05.30.13.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 13:15:07 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
        daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 7/7] drm/mediatek: add MT8365 SoC support
Date:   Mon, 30 May 2022 22:14:36 +0200
Message-Id: <20220530201436.902505-7-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220530201436.902505-1-fparent@baylibre.com>
References: <20220530201436.902505-1-fparent@baylibre.com>
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

Add DRM support for MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 27 ++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 6abe6bcacbdc..0a30ec75b1e2 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -195,6 +195,22 @@ static const enum mtk_ddp_comp_id mt8192_mtk_ddp_ext[] = {
 	DDP_COMPONENT_DPI0,
 };
 
+static const enum mtk_ddp_comp_id mt8365_mtk_ddp_main[] = {
+	DDP_COMPONENT_OVL0,
+	DDP_COMPONENT_RDMA0,
+	DDP_COMPONENT_COLOR0,
+	DDP_COMPONENT_CCORR,
+	DDP_COMPONENT_AAL0,
+	DDP_COMPONENT_GAMMA,
+	DDP_COMPONENT_DITHER,
+	DDP_COMPONENT_DSI0,
+};
+
+static const enum mtk_ddp_comp_id mt8365_mtk_ddp_ext[] = {
+	DDP_COMPONENT_RDMA1,
+	DDP_COMPONENT_DPI0,
+};
+
 static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
 	.main_path = mt2701_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
@@ -253,6 +269,13 @@ static const struct mtk_mmsys_driver_data mt8192_mmsys_driver_data = {
 	.ext_len = ARRAY_SIZE(mt8192_mtk_ddp_ext),
 };
 
+static const struct mtk_mmsys_driver_data mt8365_mmsys_driver_data = {
+	.main_path = mt8365_mtk_ddp_main,
+	.main_len = ARRAY_SIZE(mt8365_mtk_ddp_main),
+	.ext_path = mt8365_mtk_ddp_ext,
+	.ext_len = ARRAY_SIZE(mt8365_mtk_ddp_ext),
+};
+
 static int mtk_drm_kms_init(struct drm_device *drm)
 {
 	struct mtk_drm_private *private = drm->dev_private;
@@ -490,6 +513,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DISP_MUTEX },
 	{ .compatible = "mediatek,mt8192-disp-mutex",
 	  .data = (void *)MTK_DISP_MUTEX },
+	{ .compatible = "mediatek,mt8365-disp-mutex",
+	  .data = (void *)MTK_DISP_MUTEX },
 	{ .compatible = "mediatek,mt8173-disp-od",
 	  .data = (void *)MTK_DISP_OD },
 	{ .compatible = "mediatek,mt2701-disp-ovl",
@@ -564,6 +589,8 @@ static const struct of_device_id mtk_drm_of_ids[] = {
 	  .data = &mt8186_mmsys_driver_data},
 	{ .compatible = "mediatek,mt8192-mmsys",
 	  .data = &mt8192_mmsys_driver_data},
+	{ .compatible = "mediatek,mt8365-mmsys",
+	  .data = &mt8365_mmsys_driver_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
-- 
2.36.1

