Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8AC302421
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 12:14:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727487AbhAYLLd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 06:11:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727749AbhAYLJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 06:09:25 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AEE0C061788
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 03:08:44 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id a9so11867821wrt.5
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 03:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0PBUJkI6WkOQ4c7ebH11XhAeKbkF/R51HzjghE20E74=;
        b=B9KaUOkkiIKWv8s2IR7smiU5sFPjAiN4DvikF1sFMVhKC/uIOvl6ALbKbwpshTHYhq
         uYlkIkMlTVMct834n78aPdvWscG0Eyoc3EnZzONmkn1iXAjMvIy14TGKqXDA4TRJF+ty
         C1CX4PhEEl2T7Ze64pq+ykjrVSqBRYatUZ/6X2KCNmaNWfVgcV20lYHtHjonRCOnLcMH
         USX0CG8hmctAWUpJOgFG0Dkm38Mlx+PprBnJWCsMtGrpZiyguw/Shyso3CvfZCLsaMwh
         aKw5HbfQon2fs6p5JnEGwxdfmg2YXdVUGZpsLiN5qVpWj3UQkrgaxM8HgHAN529NHgQF
         Kpyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0PBUJkI6WkOQ4c7ebH11XhAeKbkF/R51HzjghE20E74=;
        b=bDU3bxezoXjG/0x/A7mOgvLRokK35tFlQIoW3S4ZELCZ1AICrstaN7uhG4ujyXq04Y
         yeRBBs8IEhaDloqTePYONghWwx9QZ/0TXnrp4zZRAv7KRBW7+tzwta5UQsnJ9prKc4uq
         2Z5uUUrEaztx2/psMeDsBdw1C47Rg19+FC6c38V655VYMBP3E63/XgA9PHlQ57FVOhCl
         abPK3Xk8Vl2Chy6PKY9tHDlf2LnUjl4cJS03XZhl0u0LUvCsOJz1EinRvNd52V3qyM30
         AOOw3wQ5iYoZ1u+whL0VcTVEZ1zGSi71vO/iZr1bGKUVRP02m7rgbkyc6oZAlFkcC5R0
         Ts1g==
X-Gm-Message-State: AOAM530hXNQ8mf+OF+yu/oRhicj2KH14fj3R+0Zq+scdeX2ht/sul2AL
        5yy0TZxJnfZny8Sz+TDEUQqa1Q==
X-Google-Smtp-Source: ABdhPJysfh1q1euhmxdF39MyQwz999TrOoxuskw/mmjCLv2xHjgMkWMz/PjTfVOd4PHUoWNZqBaizg==
X-Received: by 2002:adf:e8c5:: with SMTP id k5mr338835wrn.242.1611572923092;
        Mon, 25 Jan 2021 03:08:43 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id u6sm16636014wro.75.2021.01.25.03.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 03:08:42 -0800 (PST)
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
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v11 01/10] iommu: Fix comment for struct iommu_fwspec
Date:   Mon, 25 Jan 2021 12:06:42 +0100
Message-Id: <20210125110650.3232195-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210125110650.3232195-1-jean-philippe@linaro.org>
References: <20210125110650.3232195-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 986d5ecc5699 ("iommu: Move fwspec->iommu_priv to struct
dev_iommu") removed iommu_priv from fwspec and commit 5702ee24182f
("ACPI/IORT: Check ATS capability in root complex nodes") added @flags.
Update the struct doc.

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/iommu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index b3f0e2018c62..bdf3f34a4457 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -570,7 +570,7 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * struct iommu_fwspec - per-device IOMMU instance data
  * @ops: ops for this device's IOMMU
  * @iommu_fwnode: firmware handle for this device's IOMMU
- * @iommu_priv: IOMMU driver private data for this device
+ * @flags: IOMMU_FWSPEC_* flags
  * @num_pasid_bits: number of PASID bits supported by this device
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
-- 
2.30.0

