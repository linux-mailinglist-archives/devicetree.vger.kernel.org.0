Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDF1C3ACA5D
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 13:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234174AbhFRLsf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 07:48:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234100AbhFRLse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 07:48:34 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3F5BC061574
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 04:46:25 -0700 (PDT)
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:4cb:a870:141f:c87a:873e:7b6f])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: benjamin.gaignard)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 39D9B1F40891;
        Fri, 18 Jun 2021 12:46:23 +0100 (BST)
From:   Benjamin Gaignard <benjamin.gaignard@collabora.com>
To:     will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
        xxm@rock-chips.com, robin.murphy@arm.com, joro@8bytes.org,
        dan.carpenter@oracle.com
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] iommu: rockchip: Fix physical address decoding
Date:   Fri, 18 Jun 2021 13:46:15 +0200
Message-Id: <20210618114615.443961-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Restore bits 39 to 32 at correct position.
It reverses the operation done in rk_dma_addr_dte_v2().

Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/iommu/rockchip-iommu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 94b9d8e5b9a40..e55482a477080 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -544,12 +544,13 @@ static inline u32 rk_dma_addr_dte(dma_addr_t dt_dma)
 }
 
 #define DT_HI_MASK GENMASK_ULL(39, 32)
+#define DTE_BASE_HI_MASK GENMASK(11, 4)
 #define DT_SHIFT   28
 
 static inline phys_addr_t rk_dte_addr_phys_v2(u32 addr)
 {
 	return (phys_addr_t)(addr & RK_DTE_PT_ADDRESS_MASK) |
-	       ((addr & DT_HI_MASK) << DT_SHIFT);
+	       ((addr & DTE_BASE_HI_MASK) << DT_SHIFT);
 }
 
 static inline u32 rk_dma_addr_dte_v2(dma_addr_t dt_dma)
-- 
2.25.1

