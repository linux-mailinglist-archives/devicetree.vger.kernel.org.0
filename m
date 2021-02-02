Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 061A830B957
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 09:14:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231806AbhBBIOJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 03:14:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231825AbhBBIOG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 03:14:06 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9F7DC061794
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 00:12:55 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id j11so9426973plt.11
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 00:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3bXT4E5Sy6uZLs7wQdo5bJTu5WRYHheEqLaM47OwgPQ=;
        b=N9CZId4S7hNYbNn/EmNWWSAr8wF37aSzNhCtlBao3KDWLCsBnQnmZwcwgNMVJ+Qgwo
         aEvbUuzL0mg9ObRvaxRKPwBfDVNBc/IjdMlgNHMZ3Imd5TFB8ytiv7YYtsf12SVSmqA6
         D0RYUGNidfFwif5NovKfJrFGa4Yw/81TQFZvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3bXT4E5Sy6uZLs7wQdo5bJTu5WRYHheEqLaM47OwgPQ=;
        b=XHnVrvWBWf0A2gIBI7jK/Oh8GOiGgaed57ZdDX4kdkSYaYQ0Veye/74RhP9jQh+YsR
         vF2HpWhSvweTRj+LSXgX0/ggYQX2F20UoKQDOkG5uFA05ZhyzQc2SAZ4UVhhg62yz+w6
         yGMC/EvdywiSfYFs9n8Pge8B8Lq4rLjzGuEvOkrps2WLUHm6YWIAkerOhKmGvdBINK/h
         FRl6RoluC8XJNJjmGAOnp5IsllT927A6Ce8H9d3TefioNPeACryrGEMwK6lH2Gz1rdpQ
         JCr/s44PfnVmG57uItvpuCs9gP4B1IFxq0el8Jr46G4MVCJOGyZ10TfFNry2vkw1DItv
         8tNw==
X-Gm-Message-State: AOAM531L5BWSX+8FouuI8PlKdjoRBa2FKP+ys5fda8bosZNxPlwQOEtg
        kSmp29Wi7KggsrLy58rq7xNv3A==
X-Google-Smtp-Source: ABdhPJyLF2wHpV/D+HMLvMmxWe3iY+vP7l2QjMeBApFcWHo4WmvFIsbrCNchQ+/N5KYiGO8dwC/Qbg==
X-Received: by 2002:a17:90b:512:: with SMTP id r18mr3195381pjz.124.1612253575220;
        Tue, 02 Feb 2021 00:12:55 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:743e:7944:50c8:ff72])
        by smtp.gmail.com with ESMTPSA id c8sm21343325pfo.148.2021.02.02.00.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 00:12:54 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v6 5/8] drm/mediatek: Fix ccorr size config
Date:   Tue,  2 Feb 2021 16:12:34 +0800
Message-Id: <20210202081237.774442-6-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
In-Reply-To: <20210202081237.774442-1-hsinyi@chromium.org>
References: <20210202081237.774442-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

Fix setting to follow hardware datasheet. The original error setting
affects mt8192 display.

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ccorr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c b/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
index 6ee2431e6b843..6c86673a835c3 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
@@ -65,7 +65,7 @@ void mtk_ccorr_config(struct device *dev, unsigned int w,
 {
 	struct mtk_disp_ccorr *ccorr = dev_get_drvdata(dev);
 
-	mtk_ddp_write(cmdq_pkt, h << 16 | w, &ccorr->cmdq_reg, ccorr->regs,
+	mtk_ddp_write(cmdq_pkt, w << 16 | h, &ccorr->cmdq_reg, ccorr->regs,
 		      DISP_CCORR_SIZE);
 	mtk_ddp_write(cmdq_pkt, CCORR_ENGINE_EN, &ccorr->cmdq_reg, ccorr->regs,
 		      DISP_CCORR_CFG);
-- 
2.30.0.365.g02bc693789-goog

