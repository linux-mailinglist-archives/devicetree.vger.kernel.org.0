Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA4C2E2155
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 21:32:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728795AbgLWUah (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 15:30:37 -0500
Received: from mout.kundenserver.de ([212.227.17.10]:53135 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728563AbgLWUah (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 15:30:37 -0500
Received: from localhost.localdomain ([37.4.249.194]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N1whr-1juOHo3Ia1-012GVD; Wed, 23 Dec 2020 21:27:53 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Eric Anholt <eric@anholt.net>, Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.org>
Subject: [PATCH 2/4] drm/v3d: Set dma_mask as well as coherent_dma_mask
Date:   Wed, 23 Dec 2020 21:27:23 +0100
Message-Id: <1608755245-18069-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
References: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:I6eIz9QT5FQaoqLrLyudDnWIK7ylWVUNJTT6VXZQmaNclBOqxaG
 QZjbnv5FMeEat5VFJ+unjzj8N7FCH3XIQ6EpPDqhfQiTHRnfhdL9e+Jfr4b4iLYDM/UCPCz
 4tQOZuy1P/qUJgVav08EX+dGubKdBddKK4G/PVQ01mNVbqkyb9uV3MYO+s9PHUE3GoXo5OO
 tGzgkovKr2fvv9P3sk1mw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JD8Xuhx8lwQ=:5DE7wkDO+8oe2MyhYPixS5
 k8qrwxyZRxnACC2HLuOL+R0odh2fOcWWKN8zbzrMwWr5g5fajw4zJMjopDoeyuwbWZ785p+OZ
 sj/3XhiJswOL0+MlJHHxIY3HjvbIX6YX9xaTRrLLrt/36/rc90XRBaGB3YY8yslv1MYgB+GRl
 bWBdF+NX9fn03kuGCRqyVgqmkZDXq0i4fe14ZoWlkdTBwiHTqdVIJeqRk9jca/J8vcMXokygR
 0sfswBY3hENVahp4Khi/AlXKuqL98lt7D7hl1T197qqLfYw2nKLc57QiY7RM2yAjxnoR14KrA
 4NVZBOa9teWRsM07/OQVDbDOBrKU0cQjj9a5jDQT+Veh61V1xohJG5yp6sEZIxkgk+FV9K2TH
 aczu1UrasgifeeQ5OTWyJn2WCqwuTmzNJnc0w0Krn+18wq0xGjWmdEmQDTk/2VMjbN9/bfbg6
 pG0FPQnVig==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Phil Elwell <phil@raspberrypi.org>

Both coherent_dma_mask and dma_mask act as constraints on allocations
and bounce buffer usage, so be sure to set dma_mask to the appropriate
value otherwise the effective mask could be incorrect.

Signed-off-by: Phil Elwell <phil@raspberrypi.org>
---
 drivers/gpu/drm/v3d/v3d_drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index 42d401f..99e22be 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -232,8 +232,8 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 		return ret;
 
 	mmu_debug = V3D_READ(V3D_MMU_DEBUG_INFO);
-	dev->coherent_dma_mask =
-		DMA_BIT_MASK(30 + V3D_GET_FIELD(mmu_debug, V3D_MMU_PA_WIDTH));
+	dma_set_mask_and_coherent(dev,
+		DMA_BIT_MASK(30 + V3D_GET_FIELD(mmu_debug, V3D_MMU_PA_WIDTH)));
 	v3d->va_width = 30 + V3D_GET_FIELD(mmu_debug, V3D_MMU_VA_WIDTH);
 
 	ident1 = V3D_READ(V3D_HUB_IDENT1);
-- 
2.7.4

