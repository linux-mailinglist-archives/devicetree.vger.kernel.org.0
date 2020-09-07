Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3989925F7FA
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 12:24:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728424AbgIGKYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 06:24:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728794AbgIGKRB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 06:17:01 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E537FC061575
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 03:16:59 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id g4so15209339wrs.5
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 03:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a6r4qRpyiPjYoazUXrGcYGUllitYhB0RC4eGKhazF9E=;
        b=VxIbSxKhSrWc+F+oc18qEnTOaZd41KDrz5frjSOA/RXEGtv8Rkpmq3MmHG5a3Ke2/6
         qxO6UBZoWo74fLIBwgG12aBOvgWUFfo+dNHTaPST+7WpVEmKjhtqw/e7onJ5yiYoZR+Y
         oLzYytplhw+JUDu4TMDVxz59bsx5yUvNQUFh+wCbrAJs8wNSMSP0ADg5yqkMd/JHk4NW
         BT3MePh7FTSUT6DSBOvFRKhkY+G2S7YrM03g0hceBVZoyA8kGvIzPEyGKygq9Rx3jfEG
         tIZjBwOwQonMxWYr9Y5d4Lb5cNx7LfNmZVGq7BWtx05JuotJ7L7ctpDHxGMa789PGlXA
         TV9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a6r4qRpyiPjYoazUXrGcYGUllitYhB0RC4eGKhazF9E=;
        b=QRfMW7/QDJjlqt1Zj/mRl/g1Q6xp8uZ8IkNfrCnFDy1T2YjIDGU4ukxkNodQ8N6H0C
         fvy53kPIM5jV3qc7Wpnnnlyx2hA1yVusQQCQeCdpClDA6h+bsh21eDAvrOedVqryyVI7
         hqHIbQdI3K6tWmD+zOGvpHWc8oO5w2UnFoIE0Y1AXFMeL47W+Gmx3HqWIXwsTpQVL1lU
         eACyhwYSleA6T8RhlusBdgafQEEzBDBEqrzQK5qBXjX4+V/kk2SBQf4APGT69opoX9/p
         PFr7Xqjubchbdto2Xa8hfwbyTKb8Lcgv32U0py+tAkanYsSiMOrZxyKlwgrwng3lliwn
         XOcg==
X-Gm-Message-State: AOAM533GT0O62dXM/2SrhDwtuF6SfAFKrCFhJ/FD/Ojj6KN4QPDmn80K
        rnKfTh2gEFFUDNqiBOFUriBjfQ==
X-Google-Smtp-Source: ABdhPJx2mHI+LxUYgnUtc5wgXC9XjqJnZvPO9JK3D0PlntFtIsdK2B0n8vwCwkckPL2XhfzljaycXw==
X-Received: by 2002:adf:e6c8:: with SMTP id y8mr22515101wrm.229.1599473818648;
        Mon, 07 Sep 2020 03:16:58 -0700 (PDT)
Received: from localhost.localdomain (122.105.23.93.rev.sfr.net. [93.23.105.122])
        by smtp.gmail.com with ESMTPSA id j7sm28728689wrw.35.2020.09.07.03.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 03:16:58 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     joro@8bytes.org, robh+dt@kernel.org, matthias.bgg@gmail.com,
        yong.wu@mediatek.com, miles.chen@mediatek.com,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH v4 2/3] iommu/mediatek: add flag for legacy ivrp paddr
Date:   Mon,  7 Sep 2020 12:16:48 +0200
Message-Id: <20200907101649.1573134-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907101649.1573134-1-fparent@baylibre.com>
References: <20200907101649.1573134-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new flag in order to select which IVRP_PADDR format is used
by an SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Yong Wu <yong.wu@mediatek.com>
---

v4: no change
v3: set LEGACY_IVRP_PADDR as a flag instead of platform data
v2: new patch

---
 drivers/iommu/mtk_iommu.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 785b228d39a6..b1f85a7e9346 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -116,6 +116,7 @@
 #define OUT_ORDER_WR_EN			BIT(4)
 #define HAS_SUB_COMM			BIT(5)
 #define WR_THROT_EN			BIT(6)
+#define HAS_LEGACY_IVRP_PADDR		BIT(7)
 
 #define MTK_IOMMU_HAS_FLAG(pdata, _x) \
 		((((pdata)->flags) & (_x)) == (_x))
@@ -582,7 +583,7 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
 	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
 
-	if (data->plat_data->m4u_plat == M4U_MT8173)
+	if (MTK_IOMMU_HAS_FLAG(data->plat_data, HAS_LEGACY_IVRP_PADDR))
 		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
 	else
 		regval = lower_32_bits(data->protect_base) |
@@ -818,7 +819,8 @@ static const struct mtk_iommu_plat_data mt6779_data = {
 
 static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
-	.flags	      = HAS_4GB_MODE | HAS_BCLK | RESET_AXI,
+	.flags	      = HAS_4GB_MODE | HAS_BCLK | RESET_AXI |
+			HAS_LEGACY_IVRP_PADDR,
 	.inv_sel_reg  = REG_MMU_INV_SEL_GEN1,
 	.larbid_remap = {{0}, {1}, {2}, {3}, {4}, {5}}, /* Linear mapping. */
 };
-- 
2.28.0

