Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9486725F7D4
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 12:21:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728837AbgIGKVD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 06:21:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728798AbgIGKRD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 06:17:03 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE13FC061756
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 03:17:01 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id a9so13658447wmm.2
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 03:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2AcZ+ht5heIUGMeBtkrSAl5QfbjkEelxxHKDjkGuZF4=;
        b=KltwrjUzSC3k4btOVShbI2P9fHUWGgNbRAPmHJTtAi6/JEb36d5AntVkI4lzadidvf
         4rvV0jYBTTbsZi3pZ8fjZbxeP1tjOVlfsPFwAt1bjeCZs7rJDVJbJyN5Lwa+du4rZ+Hk
         XQEB78tFEop+SHR7b1KscY+z5cBD/vIIRFTh2g5XOrIm2acQOAB9XnMI70w/a5fRXN0U
         HBto/oEqQAfPKHF2FssPCM57qNk6wqR87VhAw2GXUw13Ft1umShjzltUa0eIU3eZ6lC2
         s7noChxVg5u+RbAsNvEWuhOMzXxcYL2eNpw54g3rBv4m0dwYbD2JozVlzVA8w3H6jycl
         8oGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2AcZ+ht5heIUGMeBtkrSAl5QfbjkEelxxHKDjkGuZF4=;
        b=OdGRxHVT1wKj2FhM38e91141E7XE5J19t4byYC5D6e5ncED4Cd6Fmx0KP5WKluFFhM
         qlIRcSRgG1YPXbmuoJH35+idV64DumKKJ/N02FXexzmh5sAJ3pD7NCzb5SMPDN9t+qLu
         o2HFAE/DnwU/6bQkskvMVaL6A0a7f6zapga9xjUtKcgBz4wvpF1/WFixlsDLoJz5CiDL
         gkr5WD2XZrdp0BXliWxBwwTzZ/VG7pIlTYOSxeSbtlzaNdw71pi4LZTBeO1+CZwD0l5U
         6yOgoFwBBZrwiKNjUUq3GReIUcF/+VDoXgshvo68buHWiTvu4kUciE7d3FWIeVMYOPoD
         viGA==
X-Gm-Message-State: AOAM531jWR7Q9rcdeVnwDC6d04vg1Ob2sOksP4ihDVNvlnXbXng/wORq
        QFtSC4AOUx/RwTDWtB8vhZeunA==
X-Google-Smtp-Source: ABdhPJyud3Q1FarNaloME4DE60XHhksKDdkBuTqKpEI/obuHP2Cli5CKDBJKYcqqf9+p8T2C8RQClA==
X-Received: by 2002:a1c:dd87:: with SMTP id u129mr19928577wmg.172.1599473820650;
        Mon, 07 Sep 2020 03:17:00 -0700 (PDT)
Received: from localhost.localdomain (122.105.23.93.rev.sfr.net. [93.23.105.122])
        by smtp.gmail.com with ESMTPSA id j7sm28728689wrw.35.2020.09.07.03.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 03:17:00 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     joro@8bytes.org, robh+dt@kernel.org, matthias.bgg@gmail.com,
        yong.wu@mediatek.com, miles.chen@mediatek.com,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH v4 3/3] iommu/mediatek: add support for MT8167
Date:   Mon,  7 Sep 2020 12:16:49 +0200
Message-Id: <20200907101649.1573134-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907101649.1573134-1-fparent@baylibre.com>
References: <20200907101649.1573134-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the IOMMU on MT8167

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

V4;
	* Removed HAS_4GB_MODE flag since this SoC does not seem to support it
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
index b1f85a7e9346..4ff071eb5279 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -817,6 +817,13 @@ static const struct mtk_iommu_plat_data mt6779_data = {
 	.larbid_remap  = {{0}, {1}, {2}, {3}, {5}, {7, 8}, {10}, {9}},
 };
 
+static const struct mtk_iommu_plat_data mt8167_data = {
+	.m4u_plat     = M4U_MT8167,
+	.flags        = RESET_AXI | HAS_LEGACY_IVRP_PADDR,
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

