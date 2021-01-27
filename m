Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5983E305268
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 06:48:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232779AbhA0FsG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 00:48:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238792AbhA0E5z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 23:57:55 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC32AC061786
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 20:54:40 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id s24so534421pjp.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 20:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HSBHxC6BVq05Sqe74BC637dMAggq9obPvY1bN+IbxX8=;
        b=QLrYujKWg6brD9Dn4569hiEZyanZ/c1eZlO9Y8Xkr3ZSqZ1GIkkMBWnx2iweqHKFzN
         98LgtgS7J1HKyPBfvqi3D+M21Balppe5d6zFiEFpyw+/iVnP8zFYOM+lB8LdHlVKjcOr
         XiAKpeDyKeqCp9VkmeyO3GpLbsopCwWYpXvAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HSBHxC6BVq05Sqe74BC637dMAggq9obPvY1bN+IbxX8=;
        b=P/wPWXTv0HWbU449yvrcaZ/89nzJ/K9I1CHHI4roF833eR3itcYy0C0ReLudERHeV4
         40XXq0j18AV4Z6PPv7XoNidREr6LwT+kHxQ+ZU7J+sBlyV2LQjOOlrjbpLULczzQH0jg
         Sy50TSLmjCVp/2l7Wvr+/m1TzcsBOuks1cUpdzTU+pmAFgh+PAxhaXeLHbcCF8MxZlsw
         J30iA8NdaqYFJ6awQMDJVFc7vFYfhjque/yekoPY6KVfxNQYwrq0zpZCgEhkrVkZwj91
         Mb9AD6fC2QRk6RZsrF2ZY9jXho2PGWnWNzMnB3PkkelFGCTxkchxTMrZv/EwOkgIR6Jx
         JoTA==
X-Gm-Message-State: AOAM5336EjznqNVkoTjG4CmI5hLy3MFtYURiCSkmn6LkS2ICj/DA7VCP
        X1TN7FIDiMTI9AC+Lp7SMrOVrQ==
X-Google-Smtp-Source: ABdhPJy/lxAmlDmjnchY5j6fyQaiGPSUiu+V7cni9mncc8A/hA+9bzzULC0varJkx+Ggb//BqKRJVQ==
X-Received: by 2002:a17:902:70c6:b029:df:d62a:8c69 with SMTP id l6-20020a17090270c6b02900dfd62a8c69mr9586813plt.20.1611723280370;
        Tue, 26 Jan 2021 20:54:40 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id a141sm684484pfa.189.2021.01.26.20.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jan 2021 20:54:39 -0800 (PST)
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
Subject: [PATCH v10 3/9] drm/mediatek: add RDMA fifo size error handle
Date:   Wed, 27 Jan 2021 12:54:16 +0800
Message-Id: <20210127045422.2418917-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210127045422.2418917-1-hsinyi@chromium.org>
References: <20210127045422.2418917-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

This patch add RDMA fifo size error handle
rdma fifo size will not always bigger than the calculated threshold
if that case happened, we need set fifo size as the threshold

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
index b84004394970f..04b9542010b00 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
@@ -168,6 +168,10 @@ void mtk_rdma_config(struct device *dev, unsigned int width,
 	 * account for blanking, and with a pixel depth of 4 bytes:
 	 */
 	threshold = width * height * vrefresh * 4 * 7 / 1000000;
+
+	if (threshold > rdma_fifo_size)
+		threshold = rdma_fifo_size;
+
 	reg = RDMA_FIFO_UNDERFLOW_EN |
 	      RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) |
 	      RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
-- 
2.30.0.280.ga3ce27912f-goog

