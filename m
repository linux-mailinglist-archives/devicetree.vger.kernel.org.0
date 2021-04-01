Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA3D3517FF
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 19:48:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235809AbhDARnO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 13:43:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234906AbhDARlP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 13:41:15 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2353C02D550
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 08:48:14 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso1154266wmi.0
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 08:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/Rqc2+6jggGKUT8/YAMcYP1juQODWAVCbo22wEIJOzg=;
        b=XkGSJlAzvgm3OxpT3lKOGiYqyTKylXidnXzbEQbvCvOrv1JBib0O+woGdI2pYUzsPs
         YjutU8dIM58r6FFx5bM2W2CM8K58JHvsTmyfbNYnImC1dY0paQzXYNdCjmKlXRsfcDgm
         Stf3yokmr8D+AOKQTwhqLBhdA0cqvjMkZ8pnxKFNO9KfoiXWpAwOaB93U9kQ38CRvfBy
         lt6wN4kmg7pd0aOwB5QGaod87brX+NBDUPbTIFW4J9utStdorl8ftkrcD/5bzDb+OPvd
         /qs2jGX46hUvuBn78thXYzyOco0wVORhvSd0yrP8wSpA/H0+dQsvw20J7EYNcXSEAnCZ
         /Xyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/Rqc2+6jggGKUT8/YAMcYP1juQODWAVCbo22wEIJOzg=;
        b=F6Bmcp3wOZNy8xmvsIV0+eyDdyAtCakPFyXcYozzbvr1svw5XKULA2Fs0YrBSfc0ec
         UxC9+TOqL8WxsmNvq8anJKCA/0Tz1gjWZo+VOYJIgE6U+wNg473u7A1bF/jVONdqwKaj
         yxQkhJQ/Lz/dT086bBju6e7eyhE/DdMWQsybCb20DRuv3eHzhJaPkymLJqqaejHGz+qT
         DeAUFyI0+BaUZj2ZB4xtmW/jtZBUzztm/FI8ErBwzIsbbuwUyU4UXpTQyn9WC/YkKQYf
         7PQh5EejfjFr4q0fX5lEL5u95Z3aWp9ACEWUyTFIHUs+GPlriFUVi6jqb7LW8NKiXQNX
         uU4w==
X-Gm-Message-State: AOAM531u+qCkrBq2GCPyTflgkie7dn9G23dPHhtNEDjTothKGcpgj3PM
        1L2ukOzk2l79JQ5+Nb44t4YhAw==
X-Google-Smtp-Source: ABdhPJxN1jziZ4oZxiGvM5oGVMwG6ILgdWAeLhxA89O6osCdjCFgqJR9jExdn0MmdGKlbB9xdLtK0w==
X-Received: by 2002:a1c:23c2:: with SMTP id j185mr8637858wmj.54.1617292093384;
        Thu, 01 Apr 2021 08:48:13 -0700 (PDT)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id y8sm8722505wmi.46.2021.04.01.08.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:48:13 -0700 (PDT)
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
Subject: [PATCH v14 00/10] iommu: I/O page faults for SMMUv3
Date:   Thu,  1 Apr 2021 17:47:09 +0200
Message-Id: <20210401154718.307519-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add stall support to the SMMUv3 driver, along with a common I/O Page
Fault handler.

Since [v13] I added review and ack tags (Thanks!), and a lockdep_assert.
It would be good to have all of it in v5.13, since patch 10 introduces
the first user for the IOPF interface from patch 6.  But if that's not
possible, please pick patches 1-6 so the Vt-d driver can start using
them.

[v13] https://lore.kernel.org/linux-iommu/20210302092644.2553014-1-jean-philippe@linaro.org/

Jean-Philippe Brucker (10):
  iommu: Fix comment for struct iommu_fwspec
  iommu/arm-smmu-v3: Use device properties for pasid-num-bits
  iommu: Separate IOMMU_DEV_FEAT_IOPF from IOMMU_DEV_FEAT_SVA
  iommu/vt-d: Support IOMMU_DEV_FEAT_IOPF
  uacce: Enable IOMMU_DEV_FEAT_IOPF
  iommu: Add a page fault handler
  iommu/arm-smmu-v3: Maintain a SID->device structure
  dt-bindings: document stall property for IOMMU masters
  ACPI/IORT: Enable stall support for platform devices
  iommu/arm-smmu-v3: Add stall support for platform devices

 drivers/iommu/Makefile                        |   1 +
 .../devicetree/bindings/iommu/iommu.txt       |  18 +
 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h   |  56 ++-
 drivers/iommu/iommu-sva-lib.h                 |  53 ++
 include/linux/iommu.h                         |  26 +-
 drivers/acpi/arm64/iort.c                     |  15 +-
 .../iommu/arm/arm-smmu-v3/arm-smmu-v3-sva.c   |  59 ++-
 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c   | 355 ++++++++++++--
 drivers/iommu/intel/iommu.c                   |  11 +-
 drivers/iommu/io-pgfault.c                    | 461 ++++++++++++++++++
 drivers/iommu/of_iommu.c                      |   5 -
 drivers/misc/uacce/uacce.c                    |  39 +-
 12 files changed, 1025 insertions(+), 74 deletions(-)
 create mode 100644 drivers/iommu/io-pgfault.c

-- 
2.31.1

