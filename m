Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7F7A306FB8
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 08:42:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231736AbhA1HjC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 02:39:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232018AbhA1Hba (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 02:31:30 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77BFAC061788
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 23:28:17 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id f63so3420117pfa.13
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 23:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HSBHxC6BVq05Sqe74BC637dMAggq9obPvY1bN+IbxX8=;
        b=DJj103V2Njc+NoO4woEfA6J6X06d1HNMixRSgUCD5i0E/Q5qZzyKLjmNvPwif/eGKc
         x4uj6ZJJvdI53nD54eSOpHTcXDkRa701yNtQND0RXA6a5jtK9+81T9fY9zqgFvbzM2Tg
         tyU27jVZZ3Sn59hSSX/CVQLatnBFMHE/s5XNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HSBHxC6BVq05Sqe74BC637dMAggq9obPvY1bN+IbxX8=;
        b=Fkp2EIwjETiqzL2f/UeyJEjbVMSEpCZKbpq5vZJzePeQXsCi/WNAdbPq/BURAxFiWY
         5lwJ/tRo48swRt6yI7pbexSeAaGuiaYN8/aNGxCR3Ex1fvaeL+bhU6NRXx5zWk4LLuAH
         geu7bsnsmJOb4sIG+MwbhULX1tXP0eN15ainGIh2VEAhNCsClH7QX35Eu2vcd1lnueZA
         Za/fSvJ1VBy6+G47a2HwTrbFpU1XoksOu/fOwYqWZU49dTkx5L9V8OFlTg9UiFZmm2xR
         V6MOz4Z6etlSToMlHGKlCscc4kQGHYy0oJxFhtCaST3pQKtyzmjN71+TNczXZsb4M9Bf
         01bA==
X-Gm-Message-State: AOAM532TOxdARPX5rLl0xx/1apfr2AAu+5wYEGKYqL4mXp7PI1gxVQP9
        OdVCaW3UdUQLkyOmdpmbDHbm9g==
X-Google-Smtp-Source: ABdhPJwxuGlbJMSCFjgxLE5OD4BDM1JEJbkoAhNZxMSevFQzC2n/y/UMOceeaZv3CtUn/6bVeLGZbA==
X-Received: by 2002:a63:c444:: with SMTP id m4mr15080576pgg.420.1611818897031;
        Wed, 27 Jan 2021 23:28:17 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id h2sm4800304pfk.4.2021.01.27.23.28.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 23:28:16 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v11 3/9] drm/mediatek: add RDMA fifo size error handle
Date:   Thu, 28 Jan 2021 15:27:56 +0800
Message-Id: <20210128072802.830971-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210128072802.830971-1-hsinyi@chromium.org>
References: <20210128072802.830971-1-hsinyi@chromium.org>
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

