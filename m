Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74B8230526A
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 06:48:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232861AbhA0FsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 00:48:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238836AbhA0E6B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 23:58:01 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0AACC061794
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 20:54:50 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id g15so752533pgu.9
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 20:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vrn1EIPDQCV6JxTU+kz1dQgkwQ7HwcD+i4/it9ET80A=;
        b=GIfmPVWtCArqU58hShfQRtp9JVW9Q5txh3wsHjzy5wEQHXSQ//q4qpWXPtjWa+BJ2q
         GNQbIHm8s3eJkN7XeMXPnpc3C8F7uAO5XK2tgoynWeNk5YWjYu0XwS35KjLAQOudnDTA
         7KnJnXS3u10SfGwurLDpej70QUx8340bcwwI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vrn1EIPDQCV6JxTU+kz1dQgkwQ7HwcD+i4/it9ET80A=;
        b=to/vym2IhfqpIPTpf0jbJxBNvLH8aJjWM5ZPtlC4SF94Ate1V3TdbL9cj1UZn0KQ3Q
         NbreFT/nrxGKDlyBSC0jkMjZKFhLVcR0PC998ZFHIjZ7rxvQt5DvQz4YBX2b//TuexLf
         IaHuBqGHurV9p5gw+t9hTFjwxqEgsAGFPBGoyunWvlg7L5FvRyl3FOy9xMwHKjd8RDEc
         cqQr+IYEjoqJ0Q0kgGcuXeLhYhJzqTtIwy7eTujAhCcqb01J4sMvhjiJKZ5omXPWzic0
         /WAoQiGOzLn7plqZStPjsMxr9B2Lyq4Vp0Ao72UwsDY69wRctRdWXjwAKFOZ04yQihRE
         A6gQ==
X-Gm-Message-State: AOAM533WMLljtyxGr/32Y165ubZ2faTM/d+ULSqSyUOwX1wEB79tbhYj
        yzw0418WtayGvvMVX4HxCYz/7g==
X-Google-Smtp-Source: ABdhPJzmAE0XHnp+3O7fjrJHUt/ytzcfhArSJEaMmq1xhk9ptYxmlr6MSoR2+oAnpSFK6O9/qOSm7w==
X-Received: by 2002:a63:4d59:: with SMTP id n25mr9033962pgl.122.1611723290229;
        Tue, 26 Jan 2021 20:54:50 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id a141sm684484pfa.189.2021.01.26.20.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jan 2021 20:54:49 -0800 (PST)
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
Subject: [PATCH v10 6/9] drm/mediatek: add has_dither private data for gamma
Date:   Wed, 27 Jan 2021 12:54:19 +0800
Message-Id: <20210127045422.2418917-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210127045422.2418917-1-hsinyi@chromium.org>
References: <20210127045422.2418917-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

Not all SoC has dither function in gamma module.
Add private data to control this function setting.

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_disp_gamma.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_gamma.c b/drivers/gpu/drm/mediatek/mtk_disp_gamma.c
index b5a499d7e472c..c98fe284265d0 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_gamma.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_gamma.c
@@ -25,7 +25,7 @@
 #define LUT_10BIT_MASK				0x03ff
 
 struct mtk_disp_gamma_data {
-	u32 reserved;
+	bool has_dither;
 };
 
 /**
@@ -91,7 +91,8 @@ void mtk_gamma_config(struct device *dev, unsigned int w,
 
 	mtk_ddp_write(cmdq_pkt, h << 16 | w, &gamma->cmdq_reg, gamma->regs,
 		      DISP_GAMMA_SIZE);
-	mtk_dither_set_common(gamma->regs, &gamma->cmdq_reg, bpc, DISP_GAMMA_CFG, cmdq_pkt);
+	if (gamma->data && gamma->data->has_dither)
+		mtk_dither_set_common(gamma->regs, &gamma->cmdq_reg, bpc, DISP_GAMMA_CFG, cmdq_pkt);
 }
 
 void mtk_gamma_start(struct device *dev)
@@ -171,8 +172,13 @@ static int mtk_disp_gamma_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct mtk_disp_gamma_data mt8173_gamma_driver_data = {
+	.has_dither = true,
+};
+
 static const struct of_device_id mtk_disp_gamma_driver_dt_match[] = {
-	{ .compatible = "mediatek,mt8173-disp-gamma"},
+	{ .compatible = "mediatek,mt8173-disp-gamma",
+	  .data = &mt8173_gamma_driver_data},
 	{},
 };
 MODULE_DEVICE_TABLE(of, mtk_disp_gamma_driver_dt_match);
-- 
2.30.0.280.ga3ce27912f-goog

