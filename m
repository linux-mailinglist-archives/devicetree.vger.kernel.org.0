Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E4CE393662
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 21:37:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235109AbhE0Tir (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 15:38:47 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:42727 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235065AbhE0Tir (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 15:38:47 -0400
Received: by mail-ot1-f51.google.com with SMTP id n3-20020a9d74030000b029035e65d0a0b8so1288901otk.9
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 12:37:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bM7teNdrWGeeKeqjqgBnHJlc51CGMA8O85N2k47LNWU=;
        b=A7ktCqK2hIhxMfwjg38RFwcaIudh5A7ol3f74pJtxj2A/SxFXhNhq8rh9NCSL+1v9W
         Ujkp9WOc+t8jjRpuLx6BummI60i4ZXb7gh5AxzoqAmMSHaGn2ND95E4ysf8AsRWQdp4r
         hYJO95Dcpo/19zDRuMPw5BqnxRvsTHXyvJNUu/CxSe/qGXPJbHETa/oAdjAk0DDR3S0E
         btxFDRf2/6nfFAYCWXjLiqLNenYoTsq6Qr/zBASgKPZ+0rLsYtNDSq8qoXOkWa47BcVI
         xfe+los4WAQTkixYsFJC3ZxNYQjVr6NlSnQKCnNl9fjliegd8gIqRDbd+QcMk1WRua0T
         mpdA==
X-Gm-Message-State: AOAM533IrJTbiGm2h7TnBzx+PFpBuVJCnomKiX25LzOSILUnhzcxj3Ei
        GAGABKeS1D0qzUCu5w5AAQ==
X-Google-Smtp-Source: ABdhPJx2rk5aR8F+8SGi4lpbgHbvMF3hS2pg2ZQp9GUKOHBvp00wBGsABpF8lvv25hTCyEwBuONAig==
X-Received: by 2002:a05:6830:1e54:: with SMTP id e20mr4116083otj.227.1622144232461;
        Thu, 27 May 2021 12:37:12 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id v19sm686961otk.22.2021.05.27.12.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 12:37:11 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Frank Rowand <frowand.list@gmail.com>,
        iommu@lists.linux-foundation.org
Subject: [PATCH 1/2] iommu: Remove unused of_get_dma_window()
Date:   Thu, 27 May 2021 14:37:09 -0500
Message-Id: <20210527193710.1281746-1-robh@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

of_get_dma_window() was added in 2012 and removed in 2014 in commit
891846516317 ("memory: Add NVIDIA Tegra memory controller support").
Remove it and simplify the header to use forward declarations for
structs rather than includes.

Cc: Joerg Roedel <joro@8bytes.org>
Cc: Will Deacon <will@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: iommu@lists.linux-foundation.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/iommu/of_iommu.c | 68 ----------------------------------------
 include/linux/of_iommu.h | 17 ++--------
 2 files changed, 3 insertions(+), 82 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index a9d2df001149..5696314ae69e 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -19,74 +19,6 @@
 
 #define NO_IOMMU	1
 
-/**
- * of_get_dma_window - Parse *dma-window property and returns 0 if found.
- *
- * @dn: device node
- * @prefix: prefix for property name if any
- * @index: index to start to parse
- * @busno: Returns busno if supported. Otherwise pass NULL
- * @addr: Returns address that DMA starts
- * @size: Returns the range that DMA can handle
- *
- * This supports different formats flexibly. "prefix" can be
- * configured if any. "busno" and "index" are optionally
- * specified. Set 0(or NULL) if not used.
- */
-int of_get_dma_window(struct device_node *dn, const char *prefix, int index,
-		      unsigned long *busno, dma_addr_t *addr, size_t *size)
-{
-	const __be32 *dma_window, *end;
-	int bytes, cur_index = 0;
-	char propname[NAME_MAX], addrname[NAME_MAX], sizename[NAME_MAX];
-
-	if (!dn || !addr || !size)
-		return -EINVAL;
-
-	if (!prefix)
-		prefix = "";
-
-	snprintf(propname, sizeof(propname), "%sdma-window", prefix);
-	snprintf(addrname, sizeof(addrname), "%s#dma-address-cells", prefix);
-	snprintf(sizename, sizeof(sizename), "%s#dma-size-cells", prefix);
-
-	dma_window = of_get_property(dn, propname, &bytes);
-	if (!dma_window)
-		return -ENODEV;
-	end = dma_window + bytes / sizeof(*dma_window);
-
-	while (dma_window < end) {
-		u32 cells;
-		const void *prop;
-
-		/* busno is one cell if supported */
-		if (busno)
-			*busno = be32_to_cpup(dma_window++);
-
-		prop = of_get_property(dn, addrname, NULL);
-		if (!prop)
-			prop = of_get_property(dn, "#address-cells", NULL);
-
-		cells = prop ? be32_to_cpup(prop) : of_n_addr_cells(dn);
-		if (!cells)
-			return -EINVAL;
-		*addr = of_read_number(dma_window, cells);
-		dma_window += cells;
-
-		prop = of_get_property(dn, sizename, NULL);
-		cells = prop ? be32_to_cpup(prop) : of_n_size_cells(dn);
-		if (!cells)
-			return -EINVAL;
-		*size = of_read_number(dma_window, cells);
-		dma_window += cells;
-
-		if (cur_index++ == index)
-			break;
-	}
-	return 0;
-}
-EXPORT_SYMBOL_GPL(of_get_dma_window);
-
 static int of_iommu_xlate(struct device *dev,
 			  struct of_phandle_args *iommu_spec)
 {
diff --git a/include/linux/of_iommu.h b/include/linux/of_iommu.h
index 16f4b3e87f20..55c1eb300a86 100644
--- a/include/linux/of_iommu.h
+++ b/include/linux/of_iommu.h
@@ -2,29 +2,18 @@
 #ifndef __OF_IOMMU_H
 #define __OF_IOMMU_H
 
-#include <linux/device.h>
-#include <linux/iommu.h>
-#include <linux/of.h>
+struct device;
+struct device_node;
+struct iommu_ops;
 
 #ifdef CONFIG_OF_IOMMU
 
-extern int of_get_dma_window(struct device_node *dn, const char *prefix,
-			     int index, unsigned long *busno, dma_addr_t *addr,
-			     size_t *size);
-
 extern const struct iommu_ops *of_iommu_configure(struct device *dev,
 					struct device_node *master_np,
 					const u32 *id);
 
 #else
 
-static inline int of_get_dma_window(struct device_node *dn, const char *prefix,
-			    int index, unsigned long *busno, dma_addr_t *addr,
-			    size_t *size)
-{
-	return -EINVAL;
-}
-
 static inline const struct iommu_ops *of_iommu_configure(struct device *dev,
 					 struct device_node *master_np,
 					 const u32 *id)
-- 
2.27.0

