Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04EB21BFEC3
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2020 16:40:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728280AbgD3Okn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Apr 2020 10:40:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727070AbgD3Okn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Apr 2020 10:40:43 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DF2DC035495
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2020 07:40:42 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id d17so7203266wrg.11
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2020 07:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZadwRE38IWIhaFQo0YVkHBPD8BeJdD1SqF7b7sjhqXs=;
        b=Wj3SSPBpi9BxJeSf2iIofL9VA5F9WntpxEFfh1WMHTPJiDCKe8+5ygnbzYWkBMPZUX
         pWea64rFN/BaEPpyzbULOsXmjtrQgwA8V1FbdVgXUVZQbCukvXsL9x8DaZmfXBa7u2pu
         G6fpXjl2kQ1jzO0qppuyhBYmcQNQ/aQ3+OKRvDxMzRS0K6zHw23SfF4rSucq/yQU5uSE
         6zL/USMwc69CQnClYQFWiUHG+RutYJuqjI1ESyKWrRD9orf/IZZbggEJTNwjXxq4o9Wx
         LQm8WwWxxYVT2G1HlO9Jcr1h4lkHYE8ykXrB4inPRVlL8IVPIBLOLdMsqYrkTLyCTmfL
         8EbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZadwRE38IWIhaFQo0YVkHBPD8BeJdD1SqF7b7sjhqXs=;
        b=Jtima6oPaHwyJCKuF8ZT5HD0DKUJHlVWCLiShJNC3aOofD7slatTT4r62CMPMwAfty
         aG1qHHPvbLuPE1Y18hyVrv8J7NJJQjL+T5HhFBYDIVoaygMelYHZ005vv9uicWv4Ayeo
         Motb6wqeoFhCzbv0XXCOeNAUmV9tQhpsAnhLC+McMb/UyvIp8+A3sswObjaAoz5P4WUA
         /sU1IvD6w4qMCVTZXsZvm4JVTSzC+x3QbkHuhmR1f3ayaJlk0YNz2xFfG+NJejOYACPN
         yVwYMk4I9WJzFufRO+6OFYzQ4mPSlxnMD3gkEpSTzfXGHe0DN4lgkd+ohw4vPKJtKrKi
         ZHog==
X-Gm-Message-State: AGi0PuY4Y+mj3CQnmCK6qgyT4fGYm2GJN+D27GhlffkHqE8m6KGZrNaR
        1CBTF1RUbOsfyAjWecRgdOpqWw==
X-Google-Smtp-Source: APiQypJSVyg1VR6sFhtwHuHRRh8dnOdKGBzgx/I0C6D8dHpNyzKcNfJ7Zj6HuK3s9OYL8E8aOHwxjQ==
X-Received: by 2002:a05:6000:8b:: with SMTP id m11mr4355479wrx.168.1588257641304;
        Thu, 30 Apr 2020 07:40:41 -0700 (PDT)
Received: from localhost.localdomain ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2020 07:40:40 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org
Cc:     joro@8bytes.org, catalin.marinas@arm.com, will@kernel.org,
        robin.murphy@arm.com, kevin.tian@intel.com,
        baolu.lu@linux.intel.com, Jonathan.Cameron@huawei.com,
        jacob.jun.pan@linux.intel.com, christian.koenig@amd.com,
        felix.kuehling@amd.com, zhangfei.gao@linaro.org, jgg@ziepe.ca,
        xuzaibo@huawei.com, fenghua.yu@intel.com, hch@infradead.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v6 19/25] iommu/arm-smmu-v3: Add support for Hardware Translation Table Update
Date:   Thu, 30 Apr 2020 16:34:18 +0200
Message-Id: <20200430143424.2787566-20-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If the SMMU supports it and the kernel was built with HTTU support, enable
hardware update of access and dirty flags. This is essential for shared
page tables, to reduce the number of access faults on the fault queue.

We can enable HTTU even if CPUs don't support it, because the kernel
always checks for HW dirty bit and updates the PTE flags atomically.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index c65937d953b5f..240cd0bc00e62 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -58,6 +58,8 @@
 #define IDR0_ASID16			(1 << 12)
 #define IDR0_ATS			(1 << 10)
 #define IDR0_HYP			(1 << 9)
+#define IDR0_HD				(1 << 7)
+#define IDR0_HA				(1 << 6)
 #define IDR0_BTM			(1 << 5)
 #define IDR0_COHACC			(1 << 4)
 #define IDR0_TTF			GENMASK(3, 2)
@@ -309,6 +311,9 @@
 #define CTXDESC_CD_0_TCR_IPS		GENMASK_ULL(34, 32)
 #define CTXDESC_CD_0_TCR_TBI0		(1ULL << 38)
 
+#define CTXDESC_CD_0_TCR_HA		(1UL << 43)
+#define CTXDESC_CD_0_TCR_HD		(1UL << 42)
+
 #define CTXDESC_CD_0_AA64		(1UL << 41)
 #define CTXDESC_CD_0_S			(1UL << 44)
 #define CTXDESC_CD_0_R			(1UL << 45)
@@ -660,6 +665,8 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_E2H		(1 << 16)
 #define ARM_SMMU_FEAT_BTM		(1 << 17)
 #define ARM_SMMU_FEAT_SVA		(1 << 18)
+#define ARM_SMMU_FEAT_HA		(1 << 19)
+#define ARM_SMMU_FEAT_HD		(1 << 20)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -1715,10 +1722,17 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 		 * this substream's traffic
 		 */
 	} else { /* (1) and (2) */
+		u64 tcr = cd->tcr;
+
 		cdptr[1] = cpu_to_le64(cd->ttbr & CTXDESC_CD_1_TTB0_MASK);
 		cdptr[2] = 0;
 		cdptr[3] = cpu_to_le64(cd->mair);
 
+		if (!(smmu->features & ARM_SMMU_FEAT_HD))
+			tcr &= ~CTXDESC_CD_0_TCR_HD;
+		if (!(smmu->features & ARM_SMMU_FEAT_HA))
+			tcr &= ~CTXDESC_CD_0_TCR_HA;
+
 		/*
 		 * STE is live, and the SMMU might read dwords of this CD in any
 		 * order. Ensure that it observes valid values before reading
@@ -1726,7 +1740,7 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 		 */
 		arm_smmu_sync_cd(smmu_domain, ssid, true);
 
-		val = cd->tcr |
+		val = tcr |
 #ifdef __BIG_ENDIAN
 			CTXDESC_CD_0_ENDI |
 #endif
@@ -1965,10 +1979,12 @@ static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
 		return old_cd;
 	}
 
+	/* HA and HD will be filtered out later if not supported by the SMMU */
 	tcr = FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, 64ULL - VA_BITS) |
 	      FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, ARM_LPAE_TCR_RGN_WBWA) |
 	      FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, ARM_LPAE_TCR_RGN_WBWA) |
 	      FIELD_PREP(CTXDESC_CD_0_TCR_SH0, ARM_LPAE_TCR_SH_IS) |
+	      CTXDESC_CD_0_TCR_HA | CTXDESC_CD_0_TCR_HD |
 	      CTXDESC_CD_0_TCR_EPD1 | CTXDESC_CD_0_AA64;
 
 	switch (PAGE_SIZE) {
@@ -4461,6 +4477,12 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 			smmu->features |= ARM_SMMU_FEAT_E2H;
 	}
 
+	if (reg & (IDR0_HA | IDR0_HD)) {
+		smmu->features |= ARM_SMMU_FEAT_HA;
+		if (reg & IDR0_HD)
+			smmu->features |= ARM_SMMU_FEAT_HD;
+	}
+
 	/*
 	 * If the CPU is using VHE, but the SMMU doesn't support it, the SMMU
 	 * will create TLB entries for NH-EL1 world and will miss the
-- 
2.26.2

