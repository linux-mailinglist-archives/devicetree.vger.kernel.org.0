Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A11B325EE7F
	for <lists+devicetree@lfdr.de>; Sun,  6 Sep 2020 17:20:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728963AbgIFPUO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Sep 2020 11:20:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728957AbgIFPTj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Sep 2020 11:19:39 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 861DDC061756
        for <devicetree@vger.kernel.org>; Sun,  6 Sep 2020 08:19:38 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a9so11029830wmm.2
        for <devicetree@vger.kernel.org>; Sun, 06 Sep 2020 08:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0U6+N87TtQqeJvtsYL++VRaHV5Y/ETKSefP9o6FFabM=;
        b=OyUETwoInfdSh4ScoNMRqAZdPJ8qgNTcs/PCZtrGedtu8dWgAmrBhfDVsXTa4UBvGI
         5M7Rl2ssXCVXKyL3S4lLa6uvMTPO7jGhZ1IPKbyzklrYMbOvENWb+OkSQ53y6qd2ZO4s
         P+B/MmJVjjCPhP5lFS1uKSUrKRV+lNEzkU0hAzXdDcG+L0i7Sj587sFJIqDIHfyW/gJR
         p8r0R+32AHVnG37XpelpYr+7bSLaSbsY+I8FqQ8Pl3OFewkFzCWFHeTau+MI7nGQhfH5
         3uLvhvYONA8hQE5Tr9VqO6w/kiialSKWmUHD3PpghDZs/JbTzaYtNtj5VeGt7ZUdCW+E
         ZyoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0U6+N87TtQqeJvtsYL++VRaHV5Y/ETKSefP9o6FFabM=;
        b=qEEQllhiDpAPgelKXS+GDb8h44zXTEccygPkGRiK9n/3qa9h/YXle+myzcuedL2VZt
         hluZZ6WuuKV6zB1dYt3Ijo8s0ieLBMBLNS//RSGkwviQFcPspE2YL2N/2V+MMEWRMKuy
         nCMA+0OQWaL5FNiMOWo/L2UfxlOPFJ9T44TII7U/G1E9LL7s6lLtb3FDliC0OjddEAX1
         BVlcj1gF3YNukOatChdP9WIc5GNuz7wHjLCSD7EQSXxwclFO5WN4VIUjMIHzzPFv+4UK
         kHT82ZjtJFji1oBp6ZcXG1Fyi8fi5JoqQMFrUxO3THfNu2BOVPunp6sUiBWSp+AJ1nM7
         Zosg==
X-Gm-Message-State: AOAM532mpEV1+V4zV7jX+0Iy3PHQ0LSe7sCimqfWUxRg4Fap+/JSeKVz
        J4Nkoit4GX90ejFuIAskS5M/IA==
X-Google-Smtp-Source: ABdhPJyMy7k7z0Nq7lpLRDSASUYBRp7c5+96CRwDq7/6ApQXt4q76MVmMJxwJ56xh/mGeO95pXcGpA==
X-Received: by 2002:a1c:a5c8:: with SMTP id o191mr17179286wme.127.1599405577152;
        Sun, 06 Sep 2020 08:19:37 -0700 (PDT)
Received: from localhost.localdomain (208.19.23.93.rev.sfr.net. [93.23.19.208])
        by smtp.gmail.com with ESMTPSA id a15sm26420646wrn.3.2020.09.06.08.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2020 08:19:36 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     joro@8bytes.org, robh+dt@kernel.org, matthias.bgg@gmail.com,
        yong.wu@mediatek.com, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH v3 3/3] iommu/mediatek: add support for MT8167
Date:   Sun,  6 Sep 2020 17:19:28 +0200
Message-Id: <20200906151928.881209-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200906151928.881209-1-fparent@baylibre.com>
References: <20200906151928.881209-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the IOMMU on MT8167

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

V3:
	* use LEGACY_IVRP_PADDR flag instead of using a platform data member
V2:
	* removed if based on m4u_plat, and using instead the new
	  has_legacy_ivrp_paddr member that was introduced in patch 2.

---
 drivers/iommu/mtk_iommu.c | 8 ++++++++
 drivers/iommu/mtk_iommu.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index b1f85a7e9346..6079f6a23c74 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -817,6 +817,13 @@ static const struct mtk_iommu_plat_data mt6779_data = {
 	.larbid_remap  = {{0}, {1}, {2}, {3}, {5}, {7, 8}, {10}, {9}},
 };
 
+static const struct mtk_iommu_plat_data mt8167_data = {
+	.m4u_plat     = M4U_MT8167,
+	.flags        = HAS_4GB_MODE | RESET_AXI | HAS_LEGACY_IVRP_PADDR,
+	.inv_sel_reg  = REG_MMU_INV_SEL_GEN1,
+	.larbid_remap = {{0}, {1}, {2}}, /* Linear mapping. */
+};
+
 static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
 	.flags	      = HAS_4GB_MODE | HAS_BCLK | RESET_AXI |
@@ -835,6 +842,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
 static const struct of_device_id mtk_iommu_of_ids[] = {
 	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
 	{ .compatible = "mediatek,mt6779-m4u", .data = &mt6779_data},
+	{ .compatible = "mediatek,mt8167-m4u", .data = &mt8167_data},
 	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
 	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
 	{}
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 122925dbe547..df32b3e3408b 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -39,6 +39,7 @@ enum mtk_iommu_plat {
 	M4U_MT2701,
 	M4U_MT2712,
 	M4U_MT6779,
+	M4U_MT8167,
 	M4U_MT8173,
 	M4U_MT8183,
 };
-- 
2.28.0

