Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EF6A2EF474
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 16:04:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727450AbhAHPEG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 10:04:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727380AbhAHPEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 10:04:05 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A74C0612B0
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 07:02:47 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id r3so9332316wrt.2
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 07:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8RN8kwidJOzPyA7Qpg3RtqPE4flzC/x9Wg3rMV7wees=;
        b=Fak3o+zy1duaz7jSvXKzMTPcG81rNMh00UGR6hiDG1yuhxLSQ0h3vd3WpSV7arh3RV
         qJe6332Hy8nYJaxBYNayIHQD5Xkd1eCzyPT4ZxRBMRVpXG3kj2rAb7VRFuzCuNVwD5bD
         cXoaGCab5mUM9vZfl6eJvNpd+XcMEU7m/GaWL7uRAx5jG2eTnBEVtYCjOnifCBfK8kY1
         77Tq+/+ndHgQ2WC8bjQk1SxdJe+kBe4xMcJHNbXFOaNsS2cWnI6xlGWAGtZXcYtKnW2D
         Wl0BJiddYbKSNl5cZ5IQpZuuSAZzPnrI0FEXytcHQScVZeC6b+prft5hhEZyOvBJ0e+t
         no7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8RN8kwidJOzPyA7Qpg3RtqPE4flzC/x9Wg3rMV7wees=;
        b=H3+t5KoTUJRCrDI2cmx2b2iYUc8qh38pFM3UAcnDCmKs8DUHg7X/AOiYhZMryBnAzN
         +Eqx4lRa+ztgqp4mQNVMBgtJncGlwNY43MEqVZrO1U/LfBONsUxkvHAZsfU94+ANhftx
         /2UEu0ZCP9CniOUdjFtjGJGIud6uV3sPKiW/GAV8rGnCm4L5bxzfdOWWuBY9fWVKt9lY
         29Mz+n5rJRdQE4gBQCsL089IME6v0iIDksoaGoCPPfEnduSsKgSUXgJ29C7sj/p7jtDk
         dC/n8TvJfe5jFPi2eketRr83qn3d9MK6vEjQ/3URgWKn06dmcAHevnRAcuhaFwLS4Qm4
         2CCA==
X-Gm-Message-State: AOAM530aLYno24P3WTI5+O5Alqnd9Ob3Ewx37xTHFHbRQPWVy+L/paNU
        K1aD1Wgtdtrq2JsiJKzL1V0UmQ==
X-Google-Smtp-Source: ABdhPJzmCME7Gtvq9iiLZjWDDsj68d4w8hOf5Ni1fB49vFhOqLmIi+oPyKBJ5yMjjTfIAjCKE04XBA==
X-Received: by 2002:a5d:690d:: with SMTP id t13mr4077051wru.410.1610118153487;
        Fri, 08 Jan 2021 07:02:33 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id s13sm14258464wra.53.2021.01.08.07.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 07:02:32 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org
Cc:     lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
        guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, Jonathan.Cameron@huawei.com,
        eric.auger@redhat.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, baolu.lu@linux.intel.com,
        vdumpa@nvidia.com, zhangfei.gao@linaro.org,
        shameerali.kolothum.thodi@huawei.com, vivek.gautam@arm.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        David Woodhouse <dwmw2@infradead.org>
Subject: [PATCH v9 04/10] iommu/vt-d: Support IOMMU_DEV_FEAT_IOPF
Date:   Fri,  8 Jan 2021 15:52:12 +0100
Message-Id: <20210108145217.2254447-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108145217.2254447-1-jean-philippe@linaro.org>
References: <20210108145217.2254447-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow drivers to query and enable IOMMU_DEV_FEAT_IOPF, which amounts to
checking whether PRI is enabled.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Lu Baolu <baolu.lu@linux.intel.com>
---
 drivers/iommu/intel/iommu.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 788119c5b021..630639c753f9 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -5263,6 +5263,8 @@ static int siov_find_pci_dvsec(struct pci_dev *pdev)
 static bool
 intel_iommu_dev_has_feat(struct device *dev, enum iommu_dev_features feat)
 {
+	struct device_domain_info *info = get_domain_info(dev);
+
 	if (feat == IOMMU_DEV_FEAT_AUX) {
 		int ret;
 
@@ -5277,13 +5279,13 @@ intel_iommu_dev_has_feat(struct device *dev, enum iommu_dev_features feat)
 		return !!siov_find_pci_dvsec(to_pci_dev(dev));
 	}
 
-	if (feat == IOMMU_DEV_FEAT_SVA) {
-		struct device_domain_info *info = get_domain_info(dev);
+	if (feat == IOMMU_DEV_FEAT_IOPF)
+		return info && info->pri_supported;
 
+	if (feat == IOMMU_DEV_FEAT_SVA)
 		return info && (info->iommu->flags & VTD_FLAG_SVM_CAPABLE) &&
 			info->pasid_supported && info->pri_supported &&
 			info->ats_supported;
-	}
 
 	return false;
 }
@@ -5294,6 +5296,9 @@ intel_iommu_dev_enable_feat(struct device *dev, enum iommu_dev_features feat)
 	if (feat == IOMMU_DEV_FEAT_AUX)
 		return intel_iommu_enable_auxd(dev);
 
+	if (feat == IOMMU_DEV_FEAT_IOPF)
+		return intel_iommu_dev_has_feat(dev, feat) ? 0 : -ENODEV;
+
 	if (feat == IOMMU_DEV_FEAT_SVA) {
 		struct device_domain_info *info = get_domain_info(dev);
 
-- 
2.29.2

