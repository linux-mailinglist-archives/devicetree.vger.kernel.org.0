Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3124F306FB0
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 08:42:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231972AbhA1HhN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 02:37:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232067AbhA1Hdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 02:33:55 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAEE6C061351
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 23:28:29 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id c132so3722985pga.3
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 23:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fne+vhWkm1Z1Aqcwns1m/8EIUHXNQn4A+aQoJ3scn6c=;
        b=JR2mytdDYyZTlKBy0TO/0LfCu+l8Qy8jLpRyEnDzR9OLN8n/wqraoIViKpWO/gQKb9
         +1+yUfi6CFUwZfR3AKsSJ08yhitKEX+7fbG82Wr7bUOCOkQk13OxXhXphD/Tr1qHfP0U
         L45FyMiaera7CCXFagCxyz4HUWh8SnJg5HMDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fne+vhWkm1Z1Aqcwns1m/8EIUHXNQn4A+aQoJ3scn6c=;
        b=f2Ll2RfRG+J7SSxjq/hM18WDgkkpWoarIrwrYGhunelNXzkGOwWSFCG2N7I1TLJ9mt
         2jx+pEBMdqWXi/X7+osVl2K9sG/0q4G0Me8cYJrxUStE+FNSf4Fnq0wyQd7W2ugykCL2
         zDWy0/ddrVuW0zgCoOa2iSYb5mh+DZ5QaZPpSAbzIeGUN9brS8vF2hfh67ZWF8bUNSxo
         1HbrcI3An3ROwP+FpElCRya23yCjYIrU6qQu05M72qUzc2nhLKy9Jacl7P2jXw3cdawm
         XS7nj40DwdWZSE7auY99cVhAonBj95p90SviSzL0MEqmIrb029lWrkoeOF5+fvWONuy0
         a1LA==
X-Gm-Message-State: AOAM5312U9UFUWcofeV1N+kFGptV0JvgPb7hOA04ZlyTKCx5/HqP1e7g
        Di0jgsuon/OAxC5KY7v7HF0UBoCFqPbEZA==
X-Google-Smtp-Source: ABdhPJzyTMG7Btac7TH5DXBrPhgpAXQ+Sjkf0xFq2Jr5myqxPMyVT2/nWmLn4j5qXYiXNB52rSQWNA==
X-Received: by 2002:a05:6a00:2281:b029:1bb:15d2:3b9f with SMTP id f1-20020a056a002281b02901bb15d23b9fmr14394166pfe.25.1611818909201;
        Wed, 27 Jan 2021 23:28:29 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id h2sm4800304pfk.4.2021.01.27.23.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 23:28:28 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v11 7/9] drm/mediatek: enable dither function
Date:   Thu, 28 Jan 2021 15:28:00 +0800
Message-Id: <20210128072802.830971-8-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210128072802.830971-1-hsinyi@chromium.org>
References: <20210128072802.830971-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

for 5 or 6 bpc panel, we need enable dither function
to improve the display quality

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 44 ++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 8173f709272be..e85625704d611 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -53,7 +53,9 @@
 #define DITHER_EN				BIT(0)
 #define DISP_DITHER_CFG				0x0020
 #define DITHER_RELAY_MODE			BIT(0)
+#define DITHER_ENGINE_EN			BIT(1)
 #define DISP_DITHER_SIZE			0x0030
+#define DITHER_REG(idx)				(0x100 + (idx) * 4)
 
 #define LUT_10BIT_MASK				0x03ff
 
@@ -313,8 +315,48 @@ static void mtk_dither_config(struct device *dev, unsigned int w,
 {
 	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
 
+	bool enable = false;
+
+	/* default value for dither reg 5 to 14 */
+	const u32 dither_setting[] = {
+		0x00000000, /* 5 */
+		0x00003002, /* 6 */
+		0x00000000, /* 7 */
+		0x00000000, /* 8 */
+		0x00000000, /* 9 */
+		0x00000000, /* 10 */
+		0x00000000, /* 11 */
+		0x00000011, /* 12 */
+		0x00000000, /* 13 */
+		0x00000000, /* 14 */
+	};
+
+	if (bpc == 5 || bpc == 6) {
+		enable = true;
+		mtk_ddp_write(cmdq_pkt,
+			      DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
+			      DITHER_NEW_BIT_MODE,
+			      &priv->cmdq_reg, priv->regs, DITHER_REG(15));
+		mtk_ddp_write(cmdq_pkt,
+			      DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
+			      DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
+			      &priv->cmdq_reg, priv->regs, DITHER_REG(16));
+	}
+
+
+	if (enable) {
+		u32 idx;
+
+		for (idx = 0; idx < ARRAY_SIZE(dither_setting); idx++)
+			mtk_ddp_write(cmdq_pkt, dither_setting[idx], &priv->cmdq_reg, priv->regs,
+				      DITHER_REG(idx + 5));
+	}
+
 	mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->regs, DISP_DITHER_SIZE);
-	mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg, priv->regs, DISP_DITHER_CFG);
+        mtk_ddp_write(cmdq_pkt, enable ? DITHER_ENGINE_EN : DITHER_RELAY_MODE, &priv->cmdq_reg, priv->regs, DISP_DITHER_CFG);
 }
 
 static void mtk_dither_start(struct device *dev)
-- 
2.30.0.280.ga3ce27912f-goog

