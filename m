Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C64241D9E83
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2020 20:02:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729185AbgESSCA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 14:02:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729164AbgESSB7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 May 2020 14:01:59 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A29A8C08C5C1
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 11:01:59 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id l18so405477wrn.6
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 11:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ai7kIqEXHeKwG+Gr5Z3fWzXYFTr0Uuv178cgklUvAS0=;
        b=euGQhHdruF6cgs5Z4ycoGf2f0h6sLLPZyUvxIcCl6CTL1Lsdmp9+0yDLbw8EpYJ6Is
         hcQFOqrPgu9pBRdXx0z+WLd7oK5x3UZxK7lA8cY0vCNOjLjH4G3xwqLkIIMJUFON6V/H
         GGHB9fJnl5FiEuXWJnn3Jy3YQ4ySvM+LNopAmcmSWGMybVyLyU2N0yo3Z2YHmNx9O3lV
         N1woyrulXY1uvZoOjAkf88VVdy6h4XsydatNyu00hbHGpy/gMA3ywck/v8vRaQP5pE0s
         Pa8v4Jy7rSmt9ngK6M/g9NVicdGqL/hQyhMIorjg7ACNRxbHTo566u247Y3q7k8wbd+D
         VcMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ai7kIqEXHeKwG+Gr5Z3fWzXYFTr0Uuv178cgklUvAS0=;
        b=oahxPO6tyz9AlrWMB224zUGtM8tEuwF+h1f1dBBJO4d3GD+0KJuTE+1ZcXcALFFL2U
         dqPisMryyCfACazmQ9Hp20YTyorIJQ1ctNHyrIlb1K7AKp8H8jUhIswQHSI4Gv/1KHpW
         lsntfgG5uzC3DjSNxPNMzDBxsn8NsLNpNjCztJUP8Lta4IRSO4G6ueDAO4x8C+IQpogc
         wpUcmyjOuHdIr9FkHY4NI58m6RHZsP0dEDva87bIhdEEuIiJ+qtFIFixY5gFSqe21QPO
         I4dw376u52vyju8yOTeA8jJDT7zVBNS6Thsvz969TigjcUrvCBo2m2tzvXzerYnHdXrn
         xYEA==
X-Gm-Message-State: AOAM533UwDZE7PApKYV5CxLXD4rJYsUOxq7eRnGXK8Y909xG0f8AIpwl
        gczyDL+uH0vGxh5wn6/f2flL5g==
X-Google-Smtp-Source: ABdhPJwyWBrOvAaqIHpiE5Du8tDChozXUZuULH3XhNQCju1QS5wmRblRvZa0CBl/o4Cg7oBG3e7jUA==
X-Received: by 2002:a5d:490d:: with SMTP id x13mr84279wrq.199.1589911318223;
        Tue, 19 May 2020 11:01:58 -0700 (PDT)
Received: from localhost.localdomain ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 11:01:57 -0700 (PDT)
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
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v7 14/24] iommu/arm-smmu-v3: Add SVA feature checking
Date:   Tue, 19 May 2020 19:54:52 +0200
Message-Id: <20200519175502.2504091-15-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Aggregate all sanity-checks for sharing CPU page tables with the SMMU
under a single ARM_SMMU_FEAT_SVA bit. For PCIe SVA, users also need to
check FEAT_ATS and FEAT_PRI. For platform SVA, they will most likely have
to check FEAT_STALLS.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 72 +++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 9332253e3608..a9f6f1d7014e 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -660,6 +660,7 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
 #define ARM_SMMU_FEAT_E2H		(1 << 16)
 #define ARM_SMMU_FEAT_BTM		(1 << 17)
+#define ARM_SMMU_FEAT_SVA		(1 << 18)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -3935,6 +3936,74 @@ static int arm_smmu_device_reset(struct arm_smmu_device *smmu, bool bypass)
 	return 0;
 }
 
+static bool arm_smmu_supports_sva(struct arm_smmu_device *smmu)
+{
+	unsigned long reg, fld;
+	unsigned long oas;
+	unsigned long asid_bits;
+
+	u32 feat_mask = ARM_SMMU_FEAT_BTM | ARM_SMMU_FEAT_COHERENCY;
+
+	if ((smmu->features & feat_mask) != feat_mask)
+		return false;
+
+	if (!(smmu->pgsize_bitmap & PAGE_SIZE))
+		return false;
+
+	/*
+	 * Get the smallest PA size of all CPUs (sanitized by cpufeature). We're
+	 * not even pretending to support AArch32 here.
+	 */
+	reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
+	fld = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_PARANGE_SHIFT);
+	switch (fld) {
+	case 0x0:
+		oas = 32;
+		break;
+	case 0x1:
+		oas = 36;
+		break;
+	case 0x2:
+		oas = 40;
+		break;
+	case 0x3:
+		oas = 42;
+		break;
+	case 0x4:
+		oas = 44;
+		break;
+	case 0x5:
+		oas = 48;
+		break;
+	case 0x6:
+		oas = 52;
+		break;
+	default:
+		return false;
+	}
+
+	/* abort if MMU outputs addresses larger than what we support. */
+	if (smmu->oas < oas)
+		return false;
+
+	/* We can support bigger ASIDs than the CPU, but not smaller */
+	fld = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_ASID_SHIFT);
+	asid_bits = fld ? 16 : 8;
+	if (smmu->asid_bits < asid_bits)
+		return false;
+
+	/*
+	 * See max_pinned_asids in arch/arm64/mm/context.c. The following is
+	 * generally the maximum number of bindable processes.
+	 */
+	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
+		asid_bits--;
+	dev_dbg(smmu->dev, "%d shared contexts\n", (1 << asid_bits) -
+		num_possible_cpus() - 2);
+
+	return true;
+}
+
 static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 {
 	u32 reg;
@@ -4147,6 +4216,9 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 
 	smmu->ias = max(smmu->ias, smmu->oas);
 
+	if (arm_smmu_supports_sva(smmu))
+		smmu->features |= ARM_SMMU_FEAT_SVA;
+
 	dev_info(smmu->dev, "ias %lu-bit, oas %lu-bit (features 0x%08x)\n",
 		 smmu->ias, smmu->oas, smmu->features);
 	return 0;
-- 
2.26.2

