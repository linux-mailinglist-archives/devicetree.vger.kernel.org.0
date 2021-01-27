Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89C1E30526C
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 06:48:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232876AbhA0FsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 00:48:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239712AbhA0E6B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 23:58:01 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C9E8C06178B
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 20:54:44 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id j12so393090pfj.12
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 20:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kku5mUfG6ArzofT8Gp0G6Y6k/YXISfCSiI9xyZoXKqQ=;
        b=X5vP6xGTjUSeHE8naRaj4k/+Ch2Dg3rD0xr7wvpLCEmw8icxmNbTF2b7LI5A1AweXw
         ZHL+sT/Tkg10+Vjdq54CuPhsH5KAk/W501skMzJRDYOb6vTO9j1Z1vGhXzbScVf9qVBU
         yeKZQQ/4sM/E3YSVqJFHrTa4gyKCxqkRM2SdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kku5mUfG6ArzofT8Gp0G6Y6k/YXISfCSiI9xyZoXKqQ=;
        b=Qhm3LYx1KfVFrss3w6DREHNb97hQ8cGQSD7csmruIgQAKAAtMDdh+0N4exOD4PuDwv
         AnBMKuRPWdHnym2x0PoMswvyq9wenqwrfz+iO6uCDwyhtbOvbwGbhKb2hzZ3KmLlm4uJ
         K3G6+AvLmzcUqLgAh1flmq7DeKSrfiSFkwiNJ8U1Vowma3YZxMhbfhKgxhHLYJC2tCTm
         AdBegA7JMHE7lFLlsVArLhGB/PFp2NEEBIY6OWBBMrNiWcYVFQ2q/EVkTcego8WJlUAo
         k+RkqetnawfHKNScVFNbJfwg6T8KAO1O9ArxOv0AjauS3CKMxlA2PruoxYbW1d3AM4RN
         1leg==
X-Gm-Message-State: AOAM532cEN27CiAsV3lQNcy1yXab14cFeeQZJaozyNdhudaG6F841JOp
        HKen3EGAudJFsYrJET0JwRBzCw==
X-Google-Smtp-Source: ABdhPJw2cxb7tmc6QqJmdJ2QhCqQtOU+GGW+9Ce5oeS5V3z8NOuwcxgrUep+Xy1tAJkmYlz44icQgA==
X-Received: by 2002:a63:2009:: with SMTP id g9mr9225513pgg.219.1611723283660;
        Tue, 26 Jan 2021 20:54:43 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id a141sm684484pfa.189.2021.01.26.20.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jan 2021 20:54:43 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v10 4/9] drm/mediatek: generalize mtk_dither_set() function
Date:   Wed, 27 Jan 2021 12:54:17 +0800
Message-Id: <20210127045422.2418917-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210127045422.2418917-1-hsinyi@chromium.org>
References: <20210127045422.2418917-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There may be data structure other than mtk_ddp_comp_dev that would call
mtk_dither_set(), so use regs as parameter instead of device.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_disp_drv.h     |  4 ++++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 25 +++++++++++++--------
 2 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index 46d199b7b4a29..c50d5fc9fd349 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -17,6 +17,10 @@ void mtk_color_config(struct device *dev, unsigned int w,
 		      unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
 void mtk_color_start(struct device *dev);
 
+void mtk_dither_set_common(void __iomem *regs, struct cmdq_client_reg *cmdq_reg,
+			   unsigned int bpc, unsigned int CFG,
+			   struct cmdq_pkt *cmdq_pkt);
+
 void mtk_dpi_start(struct device *dev);
 void mtk_dpi_stop(struct device *dev);
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 7b5293429426d..53d25823a37cc 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -151,33 +151,40 @@ static void mtk_ddp_clk_disable(struct device *dev)
 	clk_disable_unprepare(priv->clk);
 }
 
-static void mtk_dither_set(struct device *dev, unsigned int bpc,
-		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt)
-{
-	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
 
+void mtk_dither_set_common(void __iomem *regs, struct cmdq_client_reg *cmdq_reg,
+			   unsigned int bpc, unsigned int CFG, struct cmdq_pkt *cmdq_pkt)
+{
 	/* If bpc equal to 0, the dithering function didn't be enabled */
 	if (bpc == 0)
 		return;
 
 	if (bpc >= MTK_MIN_BPC) {
-		mtk_ddp_write(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs, DISP_DITHER_5);
-		mtk_ddp_write(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs, DISP_DITHER_7);
+		mtk_ddp_write(cmdq_pkt, 0, cmdq_reg, regs, DISP_DITHER_5);
+		mtk_ddp_write(cmdq_pkt, 0, cmdq_reg, regs, DISP_DITHER_7);
 		mtk_ddp_write(cmdq_pkt,
 			      DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
 			      DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
 			      DITHER_NEW_BIT_MODE,
-			      &priv->cmdq_reg, priv->regs, DISP_DITHER_15);
+			      cmdq_reg, regs, DISP_DITHER_15);
 		mtk_ddp_write(cmdq_pkt,
 			      DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
 			      DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
 			      DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
 			      DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
-			      &priv->cmdq_reg, priv->regs, DISP_DITHER_16);
-		mtk_ddp_write(cmdq_pkt, DISP_DITHERING, &priv->cmdq_reg, priv->regs, CFG);
+			      cmdq_reg, regs, DISP_DITHER_16);
+		mtk_ddp_write(cmdq_pkt, DISP_DITHERING, cmdq_reg, regs, CFG);
 	}
 }
 
+static void mtk_dither_set(struct device *dev, unsigned int bpc,
+		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
+
+	mtk_dither_set_common(priv->regs, &priv->cmdq_reg, bpc, CFG, cmdq_pkt);
+}
+
 static void mtk_od_config(struct device *dev, unsigned int w,
 			  unsigned int h, unsigned int vrefresh,
 			  unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
-- 
2.30.0.280.ga3ce27912f-goog

