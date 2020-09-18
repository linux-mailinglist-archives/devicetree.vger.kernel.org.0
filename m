Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D5B926F855
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 10:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726741AbgIRIbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 04:31:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726738AbgIRIbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 04:31:41 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36083C06178B
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 01:31:41 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id bg9so2629580plb.2
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 01:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V6QA5rlwQIgAumyCtY/vC8OZHPGW9fkvmobEZ61e3iw=;
        b=RLCsRbGEIvBCMUuhsoukaG9neeZlgVgZbHJD1ivveD5GumnlluwtLd2WdZ/jIC/XVi
         OVDwap9KXfLe1ucenLJ2xRDya+7cBCILx/fCyOEwcmdCfmTxCKCmDmCrU93XhmBaJmfn
         QGkSidPS6H6/ySwK04ULnFvBcvusmSA0Vbsog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V6QA5rlwQIgAumyCtY/vC8OZHPGW9fkvmobEZ61e3iw=;
        b=KU+s1WAqbXK39DL7TuTQ0ShGOl1LgkBjl3o7THZhgHMf5xk0eTxVRzWyS+APm3UYNH
         mwAp8PwqYx4KhTD/XPkcZRUZ18UbCox3YYuMmkio9H46bi2eP2ZDqWt4ddl+SOFnGHXn
         hnonArS3fgXsb2Q+8iftrV4x7zyhN+SwYLBtOMvEGdprL6CdQOEq5VNX0AEsOOv/+q7k
         7WBAMXmWiCUoq+oQDzHIRXKv9qw8yf5wvtbVhLm56TmTb8lBXGFlBORMBKrtY21fBPef
         g9kBy9dxEEm4sF3V/4XBW16klmjggIwSzuL6TCH0zZb1esc/XDkERpSXAA+T/h0E+lY+
         gVsg==
X-Gm-Message-State: AOAM530rTd6qNZ8QntHPyeH/+oThUxviHlhi1GhilH3goMt5/gHJMk85
        jXUqnZtaw/MIrvFx0QsdI0iZhw==
X-Google-Smtp-Source: ABdhPJygqgBey434xgCtbPNom+Nm5OBIq9zcYixgGAlrzs7AOfK44AeJ1z3uv1szI1z/iQNJZqhoBQ==
X-Received: by 2002:a17:90b:1642:: with SMTP id il2mr11671416pjb.93.1600417900741;
        Fri, 18 Sep 2020 01:31:40 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id g206sm2193172pfb.178.2020.09.18.01.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 01:31:40 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-mtd@lists.infradead.org
Cc:     Ikjoon Jang <ikjn@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 4/5] spi: spi-mtk-nor: support 36bit dma addressing to mediatek
Date:   Fri, 18 Sep 2020 16:31:22 +0800
Message-Id: <20200918162834.v2.4.Id1cb208392928afc7ceed4de06924243c7858cd0@changeid>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
In-Reply-To: <20200918083124.3921207-1-ikjn@chromium.org>
References: <20200918083124.3921207-1-ikjn@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch enables 36bit dma address support to spi-mtk-nor.
Currently 36bit dma addressing is enabled only for mt8192-nor.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---

(no changes since v1)

 drivers/spi/spi-mtk-nor.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-mtk-nor.c b/drivers/spi/spi-mtk-nor.c
index e14798a6e7d0..99dd5dca744e 100644
--- a/drivers/spi/spi-mtk-nor.c
+++ b/drivers/spi/spi-mtk-nor.c
@@ -78,6 +78,8 @@
 #define MTK_NOR_REG_DMA_FADR		0x71c
 #define MTK_NOR_REG_DMA_DADR		0x720
 #define MTK_NOR_REG_DMA_END_DADR	0x724
+#define MTK_NOR_REG_DMA_DADR_HB		0x738
+#define MTK_NOR_REG_DMA_END_DADR_HB	0x73c
 
 #define MTK_NOR_PRG_MAX_SIZE		6
 // Reading DMA src/dst addresses have to be 16-byte aligned
@@ -102,6 +104,7 @@ struct mtk_nor {
 	unsigned int spi_freq;
 	bool wbuf_en;
 	bool has_irq;
+	bool high_dma;
 	struct completion op_done;
 };
 
@@ -291,6 +294,11 @@ static int read_dma(struct mtk_nor *sp, u32 from, unsigned int length,
 	writel(dma_addr, sp->base + MTK_NOR_REG_DMA_DADR);
 	writel(dma_addr + length, sp->base + MTK_NOR_REG_DMA_END_DADR);
 
+	if (sp->high_dma) {
+		writel(dma_addr >> 32, sp->base + MTK_NOR_REG_DMA_DADR_HB);
+		writel((dma_addr + length) >> 32, sp->base + MTK_NOR_REG_DMA_END_DADR_HB);
+	}
+
 	if (sp->has_irq) {
 		reinit_completion(&sp->op_done);
 		mtk_nor_rmw(sp, MTK_NOR_REG_IRQ_EN, MTK_NOR_IRQ_DMA, 0);
@@ -594,7 +602,8 @@ static const struct spi_controller_mem_ops mtk_nor_mem_ops = {
 };
 
 static const struct of_device_id mtk_nor_match[] = {
-	{ .compatible = "mediatek,mt8173-nor" },
+	{ .compatible = "mediatek,mt8192-nor", .data = (void *)36 },
+	{ .compatible = "mediatek,mt8173-nor", .data = (void *)32 },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mtk_nor_match);
@@ -607,6 +616,7 @@ static int mtk_nor_probe(struct platform_device *pdev)
 	u8 *buffer;
 	struct clk *spi_clk, *ctlr_clk;
 	int ret, irq;
+	unsigned long dma_bits;
 
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
@@ -623,6 +633,13 @@ static int mtk_nor_probe(struct platform_device *pdev)
 	buffer = devm_kmalloc(&pdev->dev,
 			      MTK_NOR_BOUNCE_BUF_SIZE + MTK_NOR_DMA_ALIGN,
 			      GFP_KERNEL);
+
+	dma_bits = (unsigned long)of_device_get_match_data(&pdev->dev);
+	if (dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(dma_bits))) {
+		dev_err(&pdev->dev, "failed to set dma mask(%lu)\n", dma_bits);
+		return -EINVAL;
+	}
+
 	if (!buffer)
 		return -ENOMEM;
 
-- 
2.28.0.681.g6f77f65b4e-goog

