Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB0F6538821
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 22:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243152AbiE3UPL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 16:15:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235259AbiE3UPI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 16:15:08 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58B2E81486
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 13:15:07 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id q21so4822252wra.2
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 13:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PD07AGQSISBrBm8fI0Y+y6jJGPbS9zphsEozNpxvp5c=;
        b=MIjCVNm9g03WUwxU5l29QvEepUh5wgB7oQF4k3VLWcYaS9VXU+YwiZFLHJ3xuT1eSW
         nfeoWSQ3Cx/AgyV8zGDKSNUGXjId6MJxju4d+uaToMm2lBCqtTOldeSKsdYeocKgPt6D
         dZVvQ6Mxp5sMfcruCnIxWupF/gPGMBjsDRzn+lCvvIw+tg8dBT2+NAXfkzpUjRX5sUUC
         E257NMxeK8YUQWugfDhCqwmO8DVnL/8cDLQ5sC+LTETOKTR4CIsFg/KT7pRcoFc2YrS2
         VMvs2eDy8Ql5unLyZ1AdVLM32fevHoEod0supyC5nJJeKF7FJokoujZTL4357QG7MrNL
         IKew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PD07AGQSISBrBm8fI0Y+y6jJGPbS9zphsEozNpxvp5c=;
        b=TOYripgIvQqfrGPG2Xg1qHcYt7CW5QwyoKyIu2lBfchCHdJWf0pkVnjZe5L1aVu/3J
         eygGj3g1B90QOl0DgOYdTH0LUjcL7khpHkxCT6C1UxGJg+IvGhdcVfd2k6LfDbRe7PoY
         HZTrugDecH6Ue3asWC1pLQGf3Ee8xMljRCdtlgDtvOXF29/ZpADgj4mNU5xMbnQkoaNy
         slQ4Cd0RR/X6yLj5nain1XkxgQePvakzydHxjAsaSqeYy4DHDF8C7z3Kte3TkkqpGFIF
         Ssklgpy58XwcJ23cqwvHdlz6Un9Mvfa+GlNZepOeVov3pObUTRI5xeyuZBxhxB7Cv47l
         dQAw==
X-Gm-Message-State: AOAM530WuiVAOoCuNHKyaNL/80ZJ9zT9TP9mDSBcrcgfSC3pjqiqam4r
        dhbtMIcLbcq0QUI68lvu8t14ZA==
X-Google-Smtp-Source: ABdhPJzABVtC2tkCZEtAl4IfibZ4A1woYgNYxWWP2/bB92DTuTd5TnPRpW2iy1sQkdfWlmVR0yHj5Q==
X-Received: by 2002:a05:6000:15c7:b0:210:472:e0e8 with SMTP id y7-20020a05600015c700b002100472e0e8mr20637968wry.365.1653941706961;
        Mon, 30 May 2022 13:15:06 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id t1-20020adfe101000000b0020d110bc39esm9770401wrz.64.2022.05.30.13.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 13:15:06 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
        daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 6/7] drm/mediatek: dpi: add support for dpi clock
Date:   Mon, 30 May 2022 22:14:35 +0200
Message-Id: <20220530201436.902505-6-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220530201436.902505-1-fparent@baylibre.com>
References: <20220530201436.902505-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MT8365 requires an additional clock for DPI. Add support for that
additional clock.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index e61cd67b978f..7872db60840e 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -72,6 +72,7 @@ struct mtk_dpi {
 	struct device *dev;
 	struct clk *engine_clk;
 	struct clk *pixel_clk;
+	struct clk *dpi_clk;
 	struct clk *tvd_clk;
 	int irq;
 	struct drm_display_mode mode;
@@ -412,6 +413,7 @@ static void mtk_dpi_power_off(struct mtk_dpi *dpi)
 	mtk_dpi_disable(dpi);
 	clk_disable_unprepare(dpi->pixel_clk);
 	clk_disable_unprepare(dpi->engine_clk);
+	clk_disable_unprepare(dpi->dpi_clk);
 }
 
 static int mtk_dpi_power_on(struct mtk_dpi *dpi)
@@ -421,10 +423,16 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 	if (++dpi->refcount != 1)
 		return 0;
 
+	ret = clk_prepare_enable(dpi->dpi_clk);
+	if (ret) {
+		dev_err(dpi->dev, "failed to enable dpi clock: %d\n", ret);
+		goto err_refcount;
+	}
+
 	ret = clk_prepare_enable(dpi->engine_clk);
 	if (ret) {
 		dev_err(dpi->dev, "Failed to enable engine clock: %d\n", ret);
-		goto err_refcount;
+		goto err_engine;
 	}
 
 	ret = clk_prepare_enable(dpi->pixel_clk);
@@ -441,6 +449,8 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 
 err_pixel:
 	clk_disable_unprepare(dpi->engine_clk);
+err_engine:
+	clk_disable_unprepare(dpi->dpi_clk);
 err_refcount:
 	dpi->refcount--;
 	return ret;
@@ -893,6 +903,12 @@ static int mtk_dpi_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	dpi->dpi_clk = devm_clk_get_optional(dev, "dpi");
+	if (IS_ERR(dpi->dpi_clk)) {
+		return dev_err_probe(dev, ret, "Failed to get dpi clock: %pe\n",
+				     dpi->dpi_clk);
+	}
+
 	dpi->irq = platform_get_irq(pdev, 0);
 	if (dpi->irq <= 0)
 		return -EINVAL;
-- 
2.36.1

