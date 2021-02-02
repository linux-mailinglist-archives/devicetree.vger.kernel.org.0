Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1685F30B955
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 09:14:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231866AbhBBIOH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 03:14:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231601AbhBBIOG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 03:14:06 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6302C06178B
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 00:12:50 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id j2so12743764pgl.0
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 00:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5kE2WPdhtm7LXIUh2wEzkDNY4SHQKg7ATXWyFrajYR8=;
        b=Eg6CDrl+RJ4MpFUiUiMgXmZASqgfKOIwbIa61fp78u2rBFEP9o/YcaOVulfsUPtPkM
         otE0nC+mp0q2r6ch9XyJOVJbr7jyyloXXJBiBtCZ/Zd6b3TymhvWMmRVrRLSLVP45mIi
         r4Aa0GvF1SzKkwWMlq/exS6IIzZNNxRDwtN3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5kE2WPdhtm7LXIUh2wEzkDNY4SHQKg7ATXWyFrajYR8=;
        b=UZgsUR1j1x79t2CyohRS3cPdOapQFe7Wq6/DiCyOwkDrd18aP1aMAXnbFRowBckbta
         AZH4c/YBNIBJlxPgRzobBWMX2QF1ITgwEdIO7uqKCIcVEGY2f4wsvL7kY+ukq8PVvzZ5
         43e6HBc3/5P4XWKakHs5IA4OEefpyOg2moWWowKsmRn6nnp8P7xl/ZWxVmpNw7gtE9vM
         K0HFLGxgD052/ws/XkFwkfGWNrhKcoROaZNIb9Zd90U9nGB2TpZPHbOJW5cAA14RHiZZ
         zG8Bf3N63U8qKgLw91mfFhZLh1wvTCcg8Q5mQvLf1oSKrHO4OEudl5cFzzIOf6m1TJV1
         UatQ==
X-Gm-Message-State: AOAM533epU3/LJqxNKaziPK4WkvfbS92lUE5nM7du2uSqz4bqJLZKF3L
        ASnTtMvdmkfDKqyo0t6NA5p37A==
X-Google-Smtp-Source: ABdhPJxqKLT2Pn2GRfqixmny1yg2Ep3WCjWXRRx3Ovn5OhUAa7//XVPTABEqYbWDoYTs21yJe/rwrg==
X-Received: by 2002:a63:5952:: with SMTP id j18mr20940749pgm.29.1612253570226;
        Tue, 02 Feb 2021 00:12:50 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:743e:7944:50c8:ff72])
        by smtp.gmail.com with ESMTPSA id c8sm21343325pfo.148.2021.02.02.00.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 00:12:49 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v6 3/8] drm/mediatek: add component RDMA4
Date:   Tue,  2 Feb 2021 16:12:32 +0800
Message-Id: <20210202081237.774442-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
In-Reply-To: <20210202081237.774442-1-hsinyi@chromium.org>
References: <20210202081237.774442-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

This patch add component RDMA4

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 0a84ae53eb72a..7f5614a6faab8 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -526,6 +526,7 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_ID_MAX] = {
 	[DDP_COMPONENT_RDMA0]		= { MTK_DISP_RDMA,	0, &ddp_rdma },
 	[DDP_COMPONENT_RDMA1]		= { MTK_DISP_RDMA,	1, &ddp_rdma },
 	[DDP_COMPONENT_RDMA2]		= { MTK_DISP_RDMA,	2, &ddp_rdma },
+	[DDP_COMPONENT_RDMA4]		= { MTK_DISP_RDMA,      4, &ddp_rdma },
 	[DDP_COMPONENT_UFOE]		= { MTK_DISP_UFOE,	0, &ddp_ufoe },
 	[DDP_COMPONENT_WDMA0]		= { MTK_DISP_WDMA,	0, NULL },
 	[DDP_COMPONENT_WDMA1]		= { MTK_DISP_WDMA,	1, NULL },
-- 
2.30.0.365.g02bc693789-goog

