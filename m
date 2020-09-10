Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAAAA263BCC
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 06:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725876AbgIJEPY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 00:15:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725920AbgIJEO2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 00:14:28 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B665EC0613ED
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 21:14:27 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id bh1so274175plb.12
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 21:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KWwm8mWE4d4wVcJJo9tytWYejv+Pxcnm9glHhgWnu5Q=;
        b=dTCggUrLZ8gGuJz0l6b75Knxn3+MUxo3lYXr/4UHEEgOKTtC1kTS0ojPh6SX8sQU8p
         BCYj2cqqON+K/W0M5bfhEKpPbtQxeGg35NlNVjC7cyMRlsDjHlao3a0vcIe18yGVY1pc
         4t0mrw36EPOR+39cKMN1JRaE/tiBhcjr6qetI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KWwm8mWE4d4wVcJJo9tytWYejv+Pxcnm9glHhgWnu5Q=;
        b=adJawiwQBws8/hxGpnM4LbNtYMzjBm76ekkimm5pmcCwEvU8+eMsXkcdK2au3sdGs6
         OSjojH8qZKGjTA1xoGhJ879DvFH498H+U/LSQ6dNiyFivAh87INJXevZ9NmBxneGvMTE
         0F08fwIQFacX1kFjYexc2zQKMG3kFzDLBQVqsjsYhI70AqHIGYAnBbakWskxRxpBfN6F
         M4sMJywMe5wO+GcfYH4o3idCJMZmGRsnOESGwC3DvP5g2xXS8E9e8gH6hMOR1Cb9D5t9
         kdWXkbqW0I3tjp3jwwyladEXZdj5i21X1Qnu4tyBidcNJ5jl/0WsgwudqR/WvygHObkE
         p8Nw==
X-Gm-Message-State: AOAM533Q4cHbIgMi1gai55Z22rsEZM9yMgU+uSKfFSafg/utqztTDTfL
        NywjOUXfBMXWROCGeYu5exdLxg==
X-Google-Smtp-Source: ABdhPJzYfBcwkmIQmoRUkge3+F2vQd+PMsW9pyK+LSIVKTewrgGDMUCeeNY1yViHgy9zIU7mIyiTog==
X-Received: by 2002:a17:902:b409:b029:d0:cbe1:e741 with SMTP id x9-20020a170902b409b02900d0cbe1e741mr4019631plr.28.1599711267272;
        Wed, 09 Sep 2020 21:14:27 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id z11sm4266169pfc.181.2020.09.09.21.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 21:14:26 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Ikjoon Jang <ikjn@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 2/2] spi: spi-mtk-nor: support 36bit dma addressing to mediatek spi-nor
Date:   Thu, 10 Sep 2020 12:11:01 +0800
Message-Id: <20200910041101.1695195-3-ikjn@chromium.org>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
In-Reply-To: <20200910041101.1695195-1-ikjn@chromium.org>
References: <20200910041101.1695195-1-ikjn@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch enables direct mappings over 32bit range to spi-mtk-nor.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>

---

 drivers/spi/spi-mtk-nor.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-mtk-nor.c b/drivers/spi/spi-mtk-nor.c
index 6e6ca2b8e6c8..eb93ae34e670 100644
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
@@ -101,6 +103,7 @@ struct mtk_nor {
 	unsigned int spi_freq;
 	bool wbuf_en;
 	bool has_irq;
+	bool high_dma;
 	struct completion op_done;
 };
 
@@ -279,6 +282,11 @@ static int mtk_nor_read_dma(struct mtk_nor *sp, u32 from, unsigned int length,
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
@@ -578,7 +586,8 @@ static const struct spi_controller_mem_ops mtk_nor_mem_ops = {
 };
 
 static const struct of_device_id mtk_nor_match[] = {
-	{ .compatible = "mediatek,mt8173-nor" },
+	{ .compatible = "mediatek,mt8192-nor", .data = (void *)36 },
+	{ .compatible = "mediatek,mt8173-nor", .data = (void *)32 },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mtk_nor_match);
@@ -591,6 +600,7 @@ static int mtk_nor_probe(struct platform_device *pdev)
 	u8 *buffer;
 	struct clk *spi_clk, *ctlr_clk;
 	int ret, irq;
+	unsigned long dma_bits;
 
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
@@ -614,6 +624,12 @@ static int mtk_nor_probe(struct platform_device *pdev)
 		buffer = (u8 *)(((ulong)buffer + MTK_NOR_DMA_ALIGN) &
 				~MTK_NOR_DMA_ALIGN_MASK);
 
+	dma_bits = (unsigned long)of_device_get_match_data(&pdev->dev);
+	if (dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(dma_bits))) {
+		dev_err(&pdev->dev, "failed to set dma mask(%lu)\n", dma_bits);
+		return -EINVAL;
+	}
+
 	ctlr = spi_alloc_master(&pdev->dev, sizeof(*sp));
 	if (!ctlr) {
 		dev_err(&pdev->dev, "failed to allocate spi controller\n");
@@ -640,6 +656,7 @@ static int mtk_nor_probe(struct platform_device *pdev)
 	sp->dev = &pdev->dev;
 	sp->spi_clk = spi_clk;
 	sp->ctlr_clk = ctlr_clk;
+	sp->high_dma = (dma_bits > 32);
 
 	irq = platform_get_irq_optional(pdev, 0);
 	if (irq < 0) {
-- 
2.28.0.526.ge36021eeef-goog

