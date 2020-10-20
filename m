Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62DC02941A0
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 19:43:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437254AbgJTRnU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 13:43:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437226AbgJTRnI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 13:43:08 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57F98C0613D1
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 10:43:08 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id i1so3228648wro.1
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 10:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jUKyzhSGhUR/Bwwd5x38HZWQ53tYZ5QssSwc3z6VJCg=;
        b=WnvZJskixl0tYxIjUvfdGfd3sQFS/qQ7mBwPCXEslhPAIP8Mf53G5brThLZkuzn0PQ
         +N5GMsL02ari+rbsuqrlf032XTeg8kuwW3GwGPH1d4tNoXxfMqJ2Zez9pn/tIx2U1z/9
         jaenEiZWJsAmrEMpVm6IxMNe0N3rFNPM0qxiMdEG+GuZHrKd03khMy+vPcRYWJL3gsE2
         Ltm4+juqIRNNziZDNWoMPqgkpInngwFBFbdB+u6m3CDOXjQr9UWQciRtoA844ZGOAemA
         TswLIGcpSC7erqVAnCrGGIjwmnkplMMEYZOCkGEhCFQ2ukKKR72z5EmSwl4aLfH1dsS0
         /I1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jUKyzhSGhUR/Bwwd5x38HZWQ53tYZ5QssSwc3z6VJCg=;
        b=RiCgQBo+ZfdjDHWnaeIMNNeaKr+sFFBs5+vizGAb0/aEueTOAEnRWA64GIcNrGrt9j
         Hc1uF+QflcO79JnRu2mC4IMb+ORb3he6nDsfxuS+A+Knz/rVLh9o5lpQD7luEBmNVFrA
         lfYhrH5T32+jqWOeKGgEasGgYmuS2FhWlsvsGE+nUoKvFImswwTggmsuWqEYPAmV8jCJ
         hfGxxpVbtdZuJS4PNGXkxTMv4dJxbosxLK73TV3YhEAJeeLvELem7glIrKQNZU72I8aN
         iZT9IM5RBl4QTsinzeIPAmHdmuIJU41bYUW5Dwh4t6+tO5vXUBdk2FoC5slwmBFagRZS
         K0uA==
X-Gm-Message-State: AOAM532lP4q1xvVqodBqQ4MEr6CsdFe5hBr3LttUCOhiKVp+cr28OhrC
        kaB87K6duTGmfOTyI0wiEFqSxQ==
X-Google-Smtp-Source: ABdhPJylIT9S52zEh0LE5r5mbFdXBQ69vOLAAksKF1Kpq3OlZP0kKeEVshgGZzd/uO0H63x7NnFyfg==
X-Received: by 2002:a5d:5604:: with SMTP id l4mr4614953wrv.140.1603215787049;
        Tue, 20 Oct 2020 10:43:07 -0700 (PDT)
Received: from localhost.localdomain (199.170.185.81.rev.sfr.net. [81.185.170.199])
        by smtp.gmail.com with ESMTPSA id v123sm3297756wme.7.2020.10.20.10.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 10:43:06 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, daniel@ffwll.ch,
        airlied@linux.ie, p.zabel@pengutronix.de, chunkuang.hu@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 6/8] drm/mediatek: dsi: add support for MT8167 SoC
Date:   Tue, 20 Oct 2020 19:42:51 +0200
Message-Id: <20201020174253.3757771-7-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020174253.3757771-1-fparent@baylibre.com>
References: <20201020174253.3757771-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add platform data to support the MT8167 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 08786734df8e..d90dd0f83292 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -1182,6 +1182,11 @@ static int mtk_dsi_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct mtk_dsi_driver_data mt8167_dsi_driver_data = {
+	.reg_cmdq_off = 0x180,
+	.use_hs_on_power_on = true,
+};
+
 static const struct mtk_dsi_driver_data mt8173_dsi_driver_data = {
 	.reg_cmdq_off = 0x200,
 };
@@ -1199,6 +1204,8 @@ static const struct mtk_dsi_driver_data mt8183_dsi_driver_data = {
 static const struct of_device_id mtk_dsi_of_match[] = {
 	{ .compatible = "mediatek,mt2701-dsi",
 	  .data = &mt2701_dsi_driver_data },
+	{ .compatible = "mediatek,mt8167-dsi",
+	  .data = &mt8167_dsi_driver_data },
 	{ .compatible = "mediatek,mt8173-dsi",
 	  .data = &mt8173_dsi_driver_data },
 	{ .compatible = "mediatek,mt8183-dsi",
-- 
2.28.0

