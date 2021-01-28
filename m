Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A9C53074AD
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 12:27:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231264AbhA1LYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 06:24:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbhA1LYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 06:24:42 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6177C061788
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 03:23:27 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id o20so3806714pfu.0
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 03:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SNp9/vLmz3bR9T1B0y0cKkt8awogqgl+qcD/N9kMY9k=;
        b=IUJyIKlSrFnUHLdAkfhADDqp8stTuen7BghGtxnUjKAKlO2oZ5804158xa0nsyPtuW
         T8+UjHCt5ZW/+iyqIhNhfxrIIa0Hhj1Yc3i1d/55agG17oCcDxbDXCShVUXerUmefojz
         cdwowupLDWrMNco6PXhGczWHV6Y018IAjDNwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SNp9/vLmz3bR9T1B0y0cKkt8awogqgl+qcD/N9kMY9k=;
        b=QEaw1PoGRp+LQJFiSc5qinzmU7CcJj6WGzRr6oXAKEjMse8UhwNRS5U4yALUfGuLnH
         +jt8U9CJIvu6OsWdVRxjWGcqpR4aokZn0U24EpNz7PAKW2J5va4rpqXIyH8AUZXwtaKi
         We+c0S1n9h9MUn3dN85fcwoBo0+4IK2VaEx20p/C5DAQuj4IE+VDBlFAPw8DmS8XAC8A
         7dBa4Vh9F4BLaa4N4JtISOBq6hmwFfQP0MQvjtoQ7WPURj1S3Es5/pilZnfQ8FRiy4/p
         K8axPHnDrfYf+++hrg95WEZtYnnMULT7C9qIS4txCdACJJ/hpeDbpsodF+OKNUpFWee0
         XMAQ==
X-Gm-Message-State: AOAM5338j7zVw89DhNtS0L0kbi1GviAyq0AW63q0xJJutplPTrhwcZDb
        DHAmIogaHBPT4WqtarfV6rY05g==
X-Google-Smtp-Source: ABdhPJxRbAZfXaMfG2CzNM/Nam1YJbkQEj3m+nU5blmbkFjg/vcAWyjWZzEqlvw+1+otYQkSyYMeBA==
X-Received: by 2002:a63:fe05:: with SMTP id p5mr15721153pgh.161.1611833007494;
        Thu, 28 Jan 2021 03:23:27 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id j198sm3138315pfd.71.2021.01.28.03.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 03:23:26 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v12 3/8] drm/mediatek: add mtk_dither_set_common() function
Date:   Thu, 28 Jan 2021 19:23:09 +0800
Message-Id: <20210128112314.1304160-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210128112314.1304160-1-hsinyi@chromium.org>
References: <20210128112314.1304160-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Current implementation of mtk_dither_set() cast dev data to
struct mtk_ddp_comp_dev. But other devices with different dev data
would also call this function.

Separate necessary parameters out so other device components (dither,
gamma) can call this function.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_drv.h     |  4 +++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 27 ++++++++++++++-------
 2 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index 46d199b7b4a29..9e5537f76b22a 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -17,6 +17,10 @@ void mtk_color_config(struct device *dev, unsigned int w,
 		      unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
 void mtk_color_start(struct device *dev);
 
+void mtk_dither_set_common(void __iomem *regs, struct cmdq_client_reg *cmdq_reg,
+			   unsigned int bpc, unsigned int cfg,
+			   unsigned int dither_en, struct cmdq_pkt *cmdq_pkt);
+
 void mtk_dpi_start(struct device *dev);
 void mtk_dpi_stop(struct device *dev);
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 7b5293429426d..07804ab16f44d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -151,33 +151,42 @@ static void mtk_ddp_clk_disable(struct device *dev)
 	clk_disable_unprepare(priv->clk);
 }
 
-static void mtk_dither_set(struct device *dev, unsigned int bpc,
-		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt)
-{
-	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
 
+void mtk_dither_set_common(void __iomem *regs, struct cmdq_client_reg *cmdq_reg,
+			   unsigned int bpc, unsigned int cfg,
+			   unsigned int dither_en, struct cmdq_pkt *cmdq_pkt)
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
+		mtk_ddp_write(cmdq_pkt, dither_en, cmdq_reg, regs, cfg);
 	}
 }
 
+static void mtk_dither_set(struct device *dev, unsigned int bpc,
+		    unsigned int cfg, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
+
+	mtk_dither_set_common(priv->regs, &priv->cmdq_reg, bpc, cfg,
+			      DISP_DITHERING, cmdq_pkt);
+}
+
 static void mtk_od_config(struct device *dev, unsigned int w,
 			  unsigned int h, unsigned int vrefresh,
 			  unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
-- 
2.30.0.280.ga3ce27912f-goog

