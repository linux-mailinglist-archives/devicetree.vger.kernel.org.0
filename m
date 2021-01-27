Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C50C1306016
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 16:47:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236402AbhA0PrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 10:47:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236594AbhA0PpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 10:45:19 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0EFDC06178C
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 07:44:38 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id u14so2071769wmq.4
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 07:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uiSdj3ahcV4jfiq23D9UAVEBduTBnIEfUfM+Rzx87y0=;
        b=Mrx2fWY2rsbi1BLTyPkIpFFj1S95FTrb66KJsxbFJgvM+8jkmHybwZuT/uj2GyWSLn
         dTZlf3d5ggBEtQJVU1JMBsZJaRmAfVfM5257W62qCe/W8//8I4bOuDWGMwebfaSU5SOG
         xtztN8LNapip2/77JVFc1aRqgfg1tTvKUweHlQ0c4sB9B0Z5BMSK5/gPD6hi+kJ43i7A
         14KnhgsBvK7j5+kIOT8IeBEBNpRdSgZatwC8vPLINLrQYzrqDsxn2UFQ/6s98efXxZtp
         pVNIwL2mjFs+mTlq8X/6x03Xrt1e0+vBfm/XstFBcxptX6POl5gEQ29G8nnJ/4ROC+Jj
         xpTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uiSdj3ahcV4jfiq23D9UAVEBduTBnIEfUfM+Rzx87y0=;
        b=p4OfO/alUs/FEcJKqMVAunbos/aqhr4YtWyULBSUwexAAC6s++XkDqnYyvXq781rKM
         csC7QMRuJV4MErIw3dmZtxV4gyxMyCmDfrOzaPdKTItwudg7amzCxbPzIqVsrza5r/GP
         b6yLLCPGo+lqwN0zzM8y9/IAih2z7yhYt0l4eXyTTvEg7PVEzE40+O9Pf7Va5vbf/euo
         zmeK0IAiDz8efO3zGObwjq0VLR+ieWanT3lfQb1dCrVXerdXsztazeZZngzvNQ9gQaEk
         sYieFkjnhuNzTDq57ky8ZX5iJk+ZV0uvUP8xBnpP5iRk87oeI+wc4dN0ffVbgnbIqmxR
         XFOQ==
X-Gm-Message-State: AOAM530v6uBXWuV6N30vwUOxptXRXP7MBF/OLfnvIBcAigxhybi4bfev
        FZc4Szxo0sd71SJZOFesfIvv0A==
X-Google-Smtp-Source: ABdhPJwX5c9WHQvg18Gz9XuxMNONYUxp2DhAyUzAjv7EFKCA7Yg+sUNaNdG1XL4EXschcvUWjjZ+bg==
X-Received: by 2002:a1c:2341:: with SMTP id j62mr4832905wmj.34.1611762277458;
        Wed, 27 Jan 2021 07:44:37 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id r13sm3046921wmh.9.2021.01.27.07.44.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 07:44:36 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org
Cc:     lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
        guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, Jonathan.Cameron@huawei.com,
        eric.auger@redhat.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, baolu.lu@linux.intel.com,
        jacob.jun.pan@linux.intel.com, kevin.tian@intel.com,
        vdumpa@nvidia.com, zhangfei.gao@linaro.org,
        shameerali.kolothum.thodi@huawei.com, vivek.gautam@arm.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        David Woodhouse <dwmw2@infradead.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Zhou Wang <wangzhou1@hisilicon.com>
Subject: [PATCH v12 03/10] iommu: Separate IOMMU_DEV_FEAT_IOPF from IOMMU_DEV_FEAT_SVA
Date:   Wed, 27 Jan 2021 16:43:16 +0100
Message-Id: <20210127154322.3959196-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210127154322.3959196-1-jean-philippe@linaro.org>
References: <20210127154322.3959196-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some devices manage I/O Page Faults (IOPF) themselves instead of relying
on PCIe PRI or Arm SMMU stall. Allow their drivers to enable SVA without
mandating IOMMU-managed IOPF. The other device drivers now need to first
enable IOMMU_DEV_FEAT_IOPF before enabling IOMMU_DEV_FEAT_SVA. Enabling
IOMMU_DEV_FEAT_IOPF on its own doesn't have any effect visible to the
device driver, it is used in combination with other features.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: Lu Baolu <baolu.lu@linux.intel.com>
Cc: Will Deacon <will@kernel.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: Zhou Wang <wangzhou1@hisilicon.com>
---
 include/linux/iommu.h | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index b7ea11fc1a93..00348e4c3c26 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -156,10 +156,24 @@ struct iommu_resv_region {
 	enum iommu_resv_type	type;
 };
 
-/* Per device IOMMU features */
+/**
+ * enum iommu_dev_features - Per device IOMMU features
+ * @IOMMU_DEV_FEAT_AUX: Auxiliary domain feature
+ * @IOMMU_DEV_FEAT_SVA: Shared Virtual Addresses
+ * @IOMMU_DEV_FEAT_IOPF: I/O Page Faults such as PRI or Stall. Generally
+ *			 enabling %IOMMU_DEV_FEAT_SVA requires
+ *			 %IOMMU_DEV_FEAT_IOPF, but some devices manage I/O Page
+ *			 Faults themselves instead of relying on the IOMMU. When
+ *			 supported, this feature must be enabled before and
+ *			 disabled after %IOMMU_DEV_FEAT_SVA.
+ *
+ * Device drivers query whether a feature is supported using
+ * iommu_dev_has_feature(), and enable it using iommu_dev_enable_feature().
+ */
 enum iommu_dev_features {
-	IOMMU_DEV_FEAT_AUX,	/* Aux-domain feature */
-	IOMMU_DEV_FEAT_SVA,	/* Shared Virtual Addresses */
+	IOMMU_DEV_FEAT_AUX,
+	IOMMU_DEV_FEAT_SVA,
+	IOMMU_DEV_FEAT_IOPF,
 };
 
 #define IOMMU_PASID_INVALID	(-1U)
-- 
2.30.0

