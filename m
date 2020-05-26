Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40B891A8691
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 19:04:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391185AbgDNREX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 13:04:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2391056AbgDNRET (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Apr 2020 13:04:19 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB92FC061A0E
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 10:04:18 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id o81so8229064wmo.2
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 10:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fDR92FG/W9XzyoEKCk0ZF8N6Phe9WGPiX+0dpA5beXc=;
        b=NEj+O1VPlDE3+b9GRhqJpb7imwatVrbEHRPijSau+X9Vbg+US5qIqjILEeTsiMZyzd
         Jbi8pl9C2UJZk5wt+F2ohcMMgOlmn6vRXNL+oLg3PX1OQyFq5Vi7QeyaSHWpCnKH9wwW
         BQcMuKVX1Kxci3T4tlG5aUlteOmxPqpT3W6wO26dWN/t7wdHaxqmgBUfDWUgwMMU2ufA
         pOJXldxAAh12JJAT7GYE/YQAYLgMhCdkm9Y3ZNUlaySCcDtsLm5njdvcwhqHN+ekOPfb
         7Kguikc/vkv7QzJrcpWobUk53WblaNZeBLUQoi01vtQvlCASM3Ery/NF+KrJ8hZbl8nn
         tsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fDR92FG/W9XzyoEKCk0ZF8N6Phe9WGPiX+0dpA5beXc=;
        b=mpFG85+D5zG2K+VDUj0tYKiRnzdVNTAlcz4Zu4vrSMSrWjBiZDD0DrWJ7PohpxIksV
         8EiEvnru/e3LmGXsObzvind0aXUBNvkqMw+5hrPOmuOEJo4DmZCFh3iYvEfYy1ffy4rT
         p999um5YUK0Jlc1B2eE6ELK0PLYj5Gs5+d6F4drYuuYrHEy1DZ6Wkqzrhvqqj5MppInZ
         uV+FJQiON2qJR6vOLsL0nc0PpoNUsgcDO6ZSmfTXG/PtwLYJNlIzicXPcl0gj08boJTC
         Hnz7NtGpbvclaCHevW/8sDBcghMf/NybfOv+ZRLdq1a95sPQNH8BMEkUMCFkYFcC9mr6
         DcAA==
X-Gm-Message-State: AGi0PuZf3WDTP7Tq0I4KKQK/wUxm4+F4DD9n+q72J78fueJh+RngTfQD
        avCyzkUnL4vqfuF8af1Z1+jGdA==
X-Google-Smtp-Source: APiQypIdArRSrPXSdknP2IMK7ppxpSO4QpwtmnnSeA+CSALQDIlf3m4G7fjFu80JrmrhRYEK5Otokw==
X-Received: by 2002:a1c:4e16:: with SMTP id g22mr723817wmh.157.1586883857511;
        Tue, 14 Apr 2020 10:04:17 -0700 (PDT)
Received: from localhost.localdomain ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 10:04:16 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org
Cc:     joro@8bytes.org, catalin.marinas@arm.com, will@kernel.org,
        robin.murphy@arm.com, kevin.tian@intel.com,
        baolu.lu@linux.intel.com, Jonathan.Cameron@huawei.com,
        jacob.jun.pan@linux.intel.com, christian.koenig@amd.com,
        zhangfei.gao@linaro.org, jgg@ziepe.ca, xuzaibo@huawei.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v5 00/25] iommu: Shared Virtual Addressing and SMMUv3 support
Date:   Tue, 14 Apr 2020 19:02:28 +0200
Message-Id: <20200414170252.714402-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Shared Virtual Addressing (SVA) allows to share process page tables with
devices using the IOMMU. Add a generic implementation of the IOMMU SVA
API, and add support in the Arm SMMUv3 driver.

Since v4 [1] I changed the PASID lifetime. It isn't released when the
corresponding process address space dies, but when the device driver calls
unbind. This alleviates the mmput() path as we don't need to ensure that
the device driver stops DMA there anymore. For more details see my
proposal from last week [2], which is a requirement for this series. As a
result patch 1 has separate clear() and detach() operations, and patch 17
has a new context descriptor state. 

Other changes are a simplification of the locking in patch 1 and overall
cleanups following review comments.

[1] [PATCH v4 00/26] iommu: Shared Virtual Addressing and SMMUv3 support
    https://lore.kernel.org/linux-iommu/20200224182401.353359-1-jean-philippe@linaro.org/
[2] [PATCH 0/2] iommu: Remove iommu_sva_ops::mm_exit()
    https://lore.kernel.org/linux-iommu/20200408140427.212807-1-jean-philippe@linaro.org/

Jean-Philippe Brucker (25):
  mm/mmu_notifiers: pass private data down to alloc_notifier()
  iommu/sva: Manage process address spaces
  iommu: Add a page fault handler
  iommu/sva: Search mm by PASID
  iommu/iopf: Handle mm faults
  iommu/sva: Register page fault handler
  arm64: mm: Add asid_gen_match() helper
  arm64: mm: Pin down ASIDs for sharing mm with devices
  iommu/io-pgtable-arm: Move some definitions to a header
  iommu/arm-smmu-v3: Manage ASIDs with xarray
  arm64: cpufeature: Export symbol read_sanitised_ftr_reg()
  iommu/arm-smmu-v3: Share process page tables
  iommu/arm-smmu-v3: Seize private ASID
  iommu/arm-smmu-v3: Add support for VHE
  iommu/arm-smmu-v3: Enable broadcast TLB maintenance
  iommu/arm-smmu-v3: Add SVA feature checking
  iommu/arm-smmu-v3: Implement mm operations
  iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
  iommu/arm-smmu-v3: Add support for Hardware Translation Table Update
  iommu/arm-smmu-v3: Maintain a SID->device structure
  dt-bindings: document stall property for IOMMU masters
  iommu/arm-smmu-v3: Add stall support for platform devices
  PCI/ATS: Add PRI stubs
  PCI/ATS: Export PRI functions
  iommu/arm-smmu-v3: Add support for PRI

 drivers/iommu/Kconfig                         |   13 +
 drivers/iommu/Makefile                        |    2 +
 .../devicetree/bindings/iommu/iommu.txt       |   18 +
 arch/arm64/include/asm/mmu.h                  |    1 +
 arch/arm64/include/asm/mmu_context.h          |   11 +-
 drivers/iommu/io-pgtable-arm.h                |   30 +
 drivers/iommu/iommu-sva.h                     |   78 +
 include/linux/iommu.h                         |   75 +
 include/linux/mmu_notifier.h                  |   11 +-
 include/linux/pci-ats.h                       |    8 +
 arch/arm64/kernel/cpufeature.c                |    1 +
 arch/arm64/mm/context.c                       |  103 +-
 drivers/iommu/arm-smmu-v3.c                   | 1398 +++++++++++++++--
 drivers/iommu/io-pgfault.c                    |  525 +++++++
 drivers/iommu/io-pgtable-arm.c                |   27 +-
 drivers/iommu/iommu-sva.c                     |  557 +++++++
 drivers/iommu/iommu.c                         |    1 +
 drivers/iommu/of_iommu.c                      |    5 +-
 drivers/misc/sgi-gru/grutlbpurge.c            |    5 +-
 drivers/pci/ats.c                             |    4 +
 mm/mmu_notifier.c                             |    6 +-
 21 files changed, 2716 insertions(+), 163 deletions(-)
 create mode 100644 drivers/iommu/io-pgtable-arm.h
 create mode 100644 drivers/iommu/iommu-sva.h
 create mode 100644 drivers/iommu/io-pgfault.c
 create mode 100644 drivers/iommu/iommu-sva.c

-- 
2.26.0

