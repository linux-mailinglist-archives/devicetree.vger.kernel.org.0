Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3610E351CCF
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:47:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236043AbhDASVZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 14:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236790AbhDASSj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 14:18:39 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF691C02D557
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 08:48:18 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id j9so2277214wrx.12
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 08:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sUWtTRDLrHxGgocdCnYzpMC09q0TV2vzmGZT++QRllg=;
        b=iglZ+Ee6thHgb0bhSj83X5eaiV9O2aLtAksg9FEqCkLGGs18RszyBaVuM1/s8cdLcC
         IC6YDWk+v/FZKsUaiwqmmv146BYVIt0m70lItcr2N0SuGaAkzdNF3M0tRz+11Qokz7l1
         lskzXakxl9mU3PS1s7L4BTyQ0eK93mtQnY+okmAo1IBlpkX6MrRL5ciIT6uPpZOEsdD7
         PCYWlLuq1ic0CY7/r/lsDmNH5/RrrfsKoLfLEEgEJuPQWWhMYaCZQy43ZW4xaUV9U5L9
         l8OeftUntEw+OtfNSMz85YRfPFW3x1uIs2+8p5Y2Nn2nZOTnnwMJIelLUA576ha6F+yf
         17tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sUWtTRDLrHxGgocdCnYzpMC09q0TV2vzmGZT++QRllg=;
        b=i5HOyflHNpkfNkdHuJZjaouS1ksWBvmwJtyRYXRjyjHWe+QcxYzJ6j/YOEXxLUdbIA
         EVnDMIicvXJ0r1UAcbzG1PAxz5mmeVDHvQcmMBwRRHPqFTAqtghfWofyhFbatwJUgWTg
         tLtxg6uuap0jmnxdW9ZPHGywKFVpa9TdHjGweOWvPWxtmkxqLIewfIT8+CbETli6NM6T
         I9wx1zk+9DlmEeWcSo3Kn4em59GHyYPySv+1Awv8um8Tc3wS6w6QHD+f28LKPfKWDrB3
         T4SC+/Go19LUt64zPmSIx0kq9K1KfJTSRWMJ0Deim3l4y88POk+fTMMHx/SfE+DAaIBP
         i3uQ==
X-Gm-Message-State: AOAM530t8IZvwJOm+eVtWpe/u2G1pFlrkGyA9rffVmu5KywiqeAYwMx8
        wYJ2JLOu5xKuKMCUApVLWSC7B5vuY9SW+g==
X-Google-Smtp-Source: ABdhPJz1Rfdsjw9gzRYBDHIMKFUYkmB2ZhwgBz9419vLWB1onBeKqnNMtOUXwIBAc9XzC92qWWLxhQ==
X-Received: by 2002:a5d:5047:: with SMTP id h7mr10862243wrt.111.1617292097577;
        Thu, 01 Apr 2021 08:48:17 -0700 (PDT)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id y8sm8722505wmi.46.2021.04.01.08.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:48:17 -0700 (PDT)
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
        zhukeqian1@huawei.com, wangzhou1@hisilicon.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        David Woodhouse <dwmw2@infradead.org>
Subject: [PATCH v14 04/10] iommu/vt-d: Support IOMMU_DEV_FEAT_IOPF
Date:   Thu,  1 Apr 2021 17:47:13 +0200
Message-Id: <20210401154718.307519-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401154718.307519-1-jean-philippe@linaro.org>
References: <20210401154718.307519-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow drivers to query and enable IOMMU_DEV_FEAT_IOPF, which amounts to
checking whether PRI is enabled.

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Lu Baolu <baolu.lu@linux.intel.com>
---
 drivers/iommu/intel/iommu.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index ee0932307d64..c5c5fd444779 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -5343,6 +5343,8 @@ static int siov_find_pci_dvsec(struct pci_dev *pdev)
 static bool
 intel_iommu_dev_has_feat(struct device *dev, enum iommu_dev_features feat)
 {
+	struct device_domain_info *info = get_domain_info(dev);
+
 	if (feat == IOMMU_DEV_FEAT_AUX) {
 		int ret;
 
@@ -5357,13 +5359,13 @@ intel_iommu_dev_has_feat(struct device *dev, enum iommu_dev_features feat)
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
@@ -5374,6 +5376,9 @@ intel_iommu_dev_enable_feat(struct device *dev, enum iommu_dev_features feat)
 	if (feat == IOMMU_DEV_FEAT_AUX)
 		return intel_iommu_enable_auxd(dev);
 
+	if (feat == IOMMU_DEV_FEAT_IOPF)
+		return intel_iommu_dev_has_feat(dev, feat) ? 0 : -ENODEV;
+
 	if (feat == IOMMU_DEV_FEAT_SVA) {
 		struct device_domain_info *info = get_domain_info(dev);
 
-- 
2.31.1

