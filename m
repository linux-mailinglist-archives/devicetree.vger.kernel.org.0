Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3930351B8F
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:11:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237241AbhDASIz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 14:08:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237855AbhDASEn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 14:04:43 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A00ACC02D551
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 08:48:15 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id g20so1275315wmk.3
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 08:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qub8LkQbyb/J5uNpp4g8ATsj85wA0bgJXeqax9VzI7c=;
        b=YMHzvO+ygBA8aFd9uKuyqZjGlwdsNGAMMtdBSDTJtubu94ADR9dvOieEa5fB/2hJ0l
         fCY9RsC0BumodJ4fCz94O5BqO3NP5mF653Mgph1n7Euge3oyWB4EMdUGekJBqUNQW7tx
         dSjfH6pdtHblZFvLgGfpTqGVzpLSdpiOu6+vKsdX/alACiLi8QNdC/YvvBMZAo5SBaKV
         5W76dfTtD6FD/IXybcb4aibJ3UiyTPJeRB7RX0kicrebxrHBJXjQ7QfAW3AtxlnQCiFX
         oO01rFVypr3DxOgGp6fa7O0STysDv2Gr0drE7cLD406BhN4zEEe4gam42GM+pcQEn4zl
         /Kyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qub8LkQbyb/J5uNpp4g8ATsj85wA0bgJXeqax9VzI7c=;
        b=WLA0vDgo+w6PmkskoGYCEYkdGMKHz9w7FrIk794lbnLcXXjFya1dtk1WQJkniaGfRj
         Uhqpp8bl67/jNLvD6G8sBv0QKz0jKpZnERx0xtNlP/UjRoQSqUv4PX2RPU6jYUYgpXfg
         JnZ9ZcPx5RgAMg/bqVXhOdRcx11u7shutazzrGGsCN0dP53IbUK7ra95phwJPIPtGnjY
         SSlHVgRMtVC9vYVLq+JbjT6p7tORsMqcqeaFJ/NAQA49ctHz6cel67SvRyA2WzptT+aA
         XTnYAuEmjEk3R3u088qlO/9TLRokqdaUol1Ahd8zXt1zN4yg7coGSketnZlBDLDzDsMc
         JJfQ==
X-Gm-Message-State: AOAM533QI3mdXL50MaUy7onD/SKzCHcTZM0ug/5g9rrXsi3IebZFgQo7
        QnomRWPTmEIaN4tIUILNt7k2ug==
X-Google-Smtp-Source: ABdhPJwOHMhkkGtUIyMawLIFd333IR0I8HdHY8TQ2XF48NAgXA/43XIE6r6rIFt551KFKYFSKMWo6Q==
X-Received: by 2002:a1c:61c5:: with SMTP id v188mr8516425wmb.20.1617292094337;
        Thu, 01 Apr 2021 08:48:14 -0700 (PDT)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id y8sm8722505wmi.46.2021.04.01.08.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:48:14 -0700 (PDT)
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
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v14 01/10] iommu: Fix comment for struct iommu_fwspec
Date:   Thu,  1 Apr 2021 17:47:10 +0200
Message-Id: <20210401154718.307519-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401154718.307519-1-jean-philippe@linaro.org>
References: <20210401154718.307519-1-jean-philippe@linaro.org>
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
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/iommu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 5e7fe519430a..1d422bf722a1 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -571,7 +571,7 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * struct iommu_fwspec - per-device IOMMU instance data
  * @ops: ops for this device's IOMMU
  * @iommu_fwnode: firmware handle for this device's IOMMU
- * @iommu_priv: IOMMU driver private data for this device
+ * @flags: IOMMU_FWSPEC_* flags
  * @num_pasid_bits: number of PASID bits supported by this device
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
-- 
2.31.1

