Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C48F41D9E72
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2020 20:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728875AbgESSBx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 14:01:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727066AbgESSBw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 May 2020 14:01:52 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EFE4C08C5C0
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 11:01:52 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id u188so220181wmu.1
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 11:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OlE3rnOB9MCKbV81bgfQSo1zIBpkt/AF9XwsE8EZHww=;
        b=PVltUbDtiUNJUYohQuAJijXOuB5A5bH0xkzVWvUq1H2+e2ibU19HCBKJgHG0LpvJOO
         Ig0UqvmrBwPjchj2eoYBA6yTE2yZMjt27StiBfvKzwPY0A4BZboeHT5Mq2aJCYWh6O3p
         Q4Dn6OKJZaLDx+E+zM3jpPFK6EoXV1JbeExIqt2da3BtZrBlufWbqYdyZBpifE02CiWo
         Dpcps1X5V7yvnFwAb6dgOCso+myoqErPY0GbTB3T56uonYvfNM2sdhN6ZZlzeHJdmz9V
         sW1KoZznYpI78h/lNulsayaggPntaZw0EAA8Mo+eWW+YEWyHD4MAwpzLho0o134xN2lw
         mKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OlE3rnOB9MCKbV81bgfQSo1zIBpkt/AF9XwsE8EZHww=;
        b=qSufx/X6EgqGq+4KEzg22vl028k66XXoNbWO6CNQlXTvelmUadFr+781ZwtVb9uzwW
         486S9E2DVEoHkQm+bKIz7DHwslxuLuYwOPH4S5i00zdQ7WbyYF7OVFmGkIqk14JwF8VW
         dxCIbiRNo4nVMiUIBDqDI4Zari1f3am3L3dDRM/uC+SwhqB970RjEbZ3LyBZwwEzBW9V
         TfmyjceFArCnwNuMW8pnzrVWGkgXkGDpa22yQed0iJ+bNdGwYFvByx7i1F7EIUx4ZuQg
         8FUZoHaeJt1rq7kd5WMVQ4Teob5Xx9VQIozQkWkybrFa5YsEl+q7lOq5y6RVnC36VKCB
         WCMg==
X-Gm-Message-State: AOAM533IC6nOy/lqysueBPKNuTSB4SWMKjd+gReDOm2mAZNla38KryU9
        gI5NshloxFz57tRGFUHbD4gbyw==
X-Google-Smtp-Source: ABdhPJxm6LwKarbOgqdR2lNw/X/XowWuMGizAMxxxXwhldyYMSyTlek4+lJ4QVEwMcaSb4ml0HljTw==
X-Received: by 2002:a1c:2e41:: with SMTP id u62mr615750wmu.91.1589911310989;
        Tue, 19 May 2020 11:01:50 -0700 (PDT)
Received: from localhost.localdomain ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 11:01:50 -0700 (PDT)
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
Subject: [PATCH v7 08/24] iommu/arm-smmu-v3: Manage ASIDs with xarray
Date:   Tue, 19 May 2020 19:54:46 +0200
Message-Id: <20200519175502.2504091-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In preparation for sharing some ASIDs with the CPU, use a global xarray to
store ASIDs and their context. ASID#0 is now reserved, and the ASID
space is global.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index b5467e3e9250..847c7de0a93f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -667,7 +667,6 @@ struct arm_smmu_device {
 
 #define ARM_SMMU_MAX_ASIDS		(1 << 16)
 	unsigned int			asid_bits;
-	DECLARE_BITMAP(asid_map, ARM_SMMU_MAX_ASIDS);
 
 #define ARM_SMMU_MAX_VMIDS		(1 << 16)
 	unsigned int			vmid_bits;
@@ -727,6 +726,8 @@ struct arm_smmu_option_prop {
 	const char *prop;
 };
 
+static DEFINE_XARRAY_ALLOC1(asid_xa);
+
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
 	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
@@ -1765,6 +1766,14 @@ static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
 	cdcfg->cdtab = NULL;
 }
 
+static void arm_smmu_free_asid(struct arm_smmu_ctx_desc *cd)
+{
+	if (!cd->asid)
+		return;
+
+	xa_erase(&asid_xa, cd->asid);
+}
+
 /* Stream table manipulation functions */
 static void
 arm_smmu_write_strtab_l1_desc(__le64 *dst, struct arm_smmu_strtab_l1_desc *desc)
@@ -2450,10 +2459,9 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
-		if (cfg->cdcfg.cdtab) {
+		if (cfg->cdcfg.cdtab)
 			arm_smmu_free_cd_tables(smmu_domain);
-			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
-		}
+		arm_smmu_free_asid(&cfg->cd);
 	} else {
 		struct arm_smmu_s2_cfg *cfg = &smmu_domain->s2_cfg;
 		if (cfg->vmid)
@@ -2468,14 +2476,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 				       struct io_pgtable_cfg *pgtbl_cfg)
 {
 	int ret;
-	int asid;
+	u32 asid;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 	typeof(&pgtbl_cfg->arm_lpae_s1_cfg.tcr) tcr = &pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 
-	asid = arm_smmu_bitmap_alloc(smmu->asid_map, smmu->asid_bits);
-	if (asid < 0)
-		return asid;
+	ret = xa_alloc(&asid_xa, &asid, &cfg->cd,
+		       XA_LIMIT(1, (1 << smmu->asid_bits) - 1), GFP_KERNEL);
+	if (ret)
+		return ret;
 
 	cfg->s1cdmax = master->ssid_bits;
 
@@ -2508,7 +2517,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 out_free_cd_tables:
 	arm_smmu_free_cd_tables(smmu_domain);
 out_free_asid:
-	arm_smmu_bitmap_free(smmu->asid_map, asid);
+	arm_smmu_free_asid(&cfg->cd);
 	return ret;
 }
 
-- 
2.26.2

