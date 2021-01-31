Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 430AF309A52
	for <lists+devicetree@lfdr.de>; Sun, 31 Jan 2021 06:13:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbhAaFLv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jan 2021 00:11:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbhAaFLs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jan 2021 00:11:48 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 570D2C061574
        for <devicetree@vger.kernel.org>; Sat, 30 Jan 2021 21:11:05 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id x9so2202241plb.5
        for <devicetree@vger.kernel.org>; Sat, 30 Jan 2021 21:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j678qJx/JPZkac4bEG/8rI07bilrUpTVTBhhwHGCLyE=;
        b=HVch7Qv7dq+iRZl0F7OTOFc01KRsOkitFn7szOaZ9AduniQxvk4XBoFLuthP8Kv6+0
         Plhwxk/rCbQwhF4rXRcgnKJqGrjCIonm0eYQsveQ2gVikK3JsdbZbzJnH6djhj1w6gIn
         +KOVbeHocLUgCb2ZDLZ7kmf5WqLdirwI4T2OY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j678qJx/JPZkac4bEG/8rI07bilrUpTVTBhhwHGCLyE=;
        b=D7TOShN62kj/1F44di1Nchn7zgcjuVSi1deUajR8+diOFic2qeBqxEur6BlKX1yqLo
         8cF2SC2ua51FihL9rEHJa4B+cD0fx5oa7ECjiMBnNcXNWutMWwSearHwtGJQuouIbOM0
         8QbCVuATYKu2uus1pdbKPlJrFSjvu4oqgix1e5fTpI3sL5p++4lQqXJLoLE4sLbOW1Ca
         BCc5wGppluKWII4lwoIf30OGn7uuIWfPGhaCqVbXLtHOgwQfi17OaokavkuZhWwIeVTa
         qleIB3A5exGVhYV2uF7CW4xdTy6oJ1ovRLTyxWWW0klvkumLi9iknfKZM9J1PWJaK653
         aEhw==
X-Gm-Message-State: AOAM531gvTveLTWiyFn6pB8DiygUfdLPFQAbfPkEk7Y2PS8OdNxH/kJO
        e0fP5R2tuv9GJsPnIMmV16yLTA==
X-Google-Smtp-Source: ABdhPJw5rGGPEQ8dqERgZpeHNpM1Tn38J69RC4BmBr0NM6uPyiS94+8Vq5WTIlas3qzw4/OIei1tzw==
X-Received: by 2002:a17:90b:60c:: with SMTP id gb12mr11373176pjb.125.1612069865252;
        Sat, 30 Jan 2021 21:11:05 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:35ef:a870:bb74:2590])
        by smtp.gmail.com with ESMTPSA id d22sm11470680pjv.11.2021.01.30.21.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jan 2021 21:11:04 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH] drm/mediatek: enable dither function
Date:   Sun, 31 Jan 2021 13:10:58 +0800
Message-Id: <20210131051058.3407985-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

Enable dither function to improve the display quality.

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
Previous version:
https://patchwork.kernel.org/project/linux-mediatek/patch/20210129092209.2584718-7-hsinyi@chromium.org/
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index c730029ac8fc7..0444b429daf00 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -53,6 +53,7 @@
 #define DITHER_EN				BIT(0)
 #define DISP_DITHER_CFG				0x0020
 #define DITHER_RELAY_MODE			BIT(0)
+#define DITHER_ENGINE_EN			BIT(1)
 #define DISP_DITHER_SIZE			0x0030
 
 #define LUT_10BIT_MASK				0x03ff
@@ -315,8 +316,12 @@ static void mtk_dither_config(struct device *dev, unsigned int w,
 {
 	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
 
-	mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->regs, DISP_DITHER_SIZE);
-	mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg, priv->regs, DISP_DITHER_CFG);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->regs,
+		      DISP_DITHER_SIZE);
+	mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, &priv->cmdq_reg, priv->regs,
+		      DISP_DITHER_CFG);
+	mtk_dither_set_common(priv->regs, &priv->cmdq_reg, bpc, DISP_DITHER_CFG,
+			      DITHER_ENGINE_EN, cmdq_pkt);
 }
 
 static void mtk_dither_start(struct device *dev)
-- 
2.30.0.365.g02bc693789-goog

