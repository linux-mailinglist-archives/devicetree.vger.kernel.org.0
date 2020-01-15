Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1C59913C1CF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 13:53:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728925AbgAOMxf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 07:53:35 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38501 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728939AbgAOMxe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 07:53:34 -0500
Received: by mail-wr1-f66.google.com with SMTP id y17so15643682wrh.5
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 04:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K6CSSuB6nIgGj1j0dtfzDyCMzgzvK2deYX3HdVqg7mU=;
        b=K4KJ/UDXF+XRt36wtLUHXD1FivcHN0LNsYHSdz3wzfJ6eZ2Rvsu0h3ikSVmt+psJay
         DMgDu5MB5+bb3S7d5Jmjh2+0WR50qwZZu4wArTK7jaQ11taCtpnDOuLS4HdHdnTb3E00
         ixhKZE7tQ+047OFbSyvHEPCscnIFqsbIgvdng7p2Km3d+C/yyaeFjTG8n+uLXh5VaHZY
         kJMY1xF/TlH5kaYyZYt2KmtjpAHzVrXDkw0oLPixNXrmvm2NnxZfLkP7dDSLdEt1zaoC
         AICaf8xdbKGlJIyYWh0obqVPzd/mNV0gPuCzm4jP8EY99+dV+kGfPCqybyYbma0shiix
         2VMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K6CSSuB6nIgGj1j0dtfzDyCMzgzvK2deYX3HdVqg7mU=;
        b=RbwfmXoCqSAsCv6LAUAZ5WarSMILbx7eMjPNRfuZ1hruBk1nNy1VATfYtHZiO1rC7g
         Vkabf80WCC2H33b/uAYVweyLnOr6AUweN7Qi9x2UN2EBkxSL7DX3PNMkuZ3JTnsiXTga
         AUIcFBs3f7IUiBJHzi+W03QaCb6huD3d0sW8BPrWrxH2ExZRUxZ3CchHcO5Xfa4rbw9R
         Ummfm2fF8WfYngu0FgLZWxq5+p4Mt6Y528YB4SzGED4Jt/F6gyMMI7pgEqNIu3y3CcNN
         Y6Eb3ejKJJb3og06R3cqA690KDFV9Rbdi2I7r97mGKtqqaxOchW/MY6cUA85FL5eZ0DB
         Q+OQ==
X-Gm-Message-State: APjAAAWwXo1q2vlPFHNhVv7iErTBZq1RmvfIF67DvdIk1s92g6RU8TkS
        ey+AUMXumpPSzlah5mA7e/bKxg==
X-Google-Smtp-Source: APXvYqyjYUJDyqw5fP5RmGWdo3rZKdkTRbxjHr7iti208dwREaMeQn8r2ydm2Ou0/U52o5/nrrd+iA==
X-Received: by 2002:a5d:5708:: with SMTP id a8mr32550295wrv.79.1579092813387;
        Wed, 15 Jan 2020 04:53:33 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 04:53:32 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, will@kernel.org
Cc:     joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com,
        lorenzo.pieralisi@arm.com, guohanjun@huawei.com,
        sudeep.holla@arm.com, rjw@rjwysocki.net, lenb@kernel.org,
        robin.murphy@arm.com, bhelgaas@google.com, eric.auger@redhat.com,
        jonathan.cameron@huawei.com, zhangfei.gao@linaro.org
Subject: [PATCH v5 05/13] iommu/arm-smmu-v3: Prepare arm_smmu_s1_cfg for SSID support
Date:   Wed, 15 Jan 2020 13:52:31 +0100
Message-Id: <20200115125239.136759-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When adding SSID support to the SMMUv3 driver, we'll need to manipulate
leaf pasid tables and context descriptors. Extract the context
descriptor structure and align with the way stream tables are handled.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 46 ++++++++++++++++++++++---------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 837b4283b4dc..e7c7e34d385f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -553,16 +553,21 @@ struct arm_smmu_strtab_l1_desc {
 	dma_addr_t			l2ptr_dma;
 };
 
+struct arm_smmu_ctx_desc {
+	u16				asid;
+	u64				ttbr;
+	u64				tcr;
+	u64				mair;
+};
+
+struct arm_smmu_ctx_desc_cfg {
+	__le64				*cdtab;
+	dma_addr_t			cdtab_dma;
+};
+
 struct arm_smmu_s1_cfg {
-	__le64				*cdptr;
-	dma_addr_t			cdptr_dma;
-
-	struct arm_smmu_ctx_desc {
-		u16	asid;
-		u64	ttbr;
-		u64	tcr;
-		u64	mair;
-	}				cd;
+	struct arm_smmu_ctx_desc_cfg	cdcfg;
+	struct arm_smmu_ctx_desc	cd;
 };
 
 struct arm_smmu_s2_cfg {
@@ -1471,6 +1476,7 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 				    struct arm_smmu_s1_cfg *cfg)
 {
 	u64 val;
+	__le64 *cdptr = cfg->cdcfg.cdtab;
 
 	/*
 	 * We don't need to issue any invalidation here, as we'll invalidate
@@ -1488,12 +1494,12 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
 		val |= CTXDESC_CD_0_S;
 
-	cfg->cdptr[0] = cpu_to_le64(val);
+	cdptr[0] = cpu_to_le64(val);
 
 	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
-	cfg->cdptr[1] = cpu_to_le64(val);
+	cdptr[1] = cpu_to_le64(val);
 
-	cfg->cdptr[3] = cpu_to_le64(cfg->cd.mair);
+	cdptr[3] = cpu_to_le64(cfg->cd.mair);
 }
 
 /* Stream table manipulation functions */
@@ -1624,7 +1630,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
 			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
 
-		val |= (s1_cfg->cdptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
+		val |= (s1_cfg->cdcfg.cdtab_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
 			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
 	}
 
@@ -2138,11 +2144,11 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
-		if (cfg->cdptr) {
+		if (cfg->cdcfg.cdtab) {
 			dmam_free_coherent(smmu_domain->smmu->dev,
 					   CTXDESC_CD_DWORDS << 3,
-					   cfg->cdptr,
-					   cfg->cdptr_dma);
+					   cfg->cdcfg.cdtab,
+					   cfg->cdcfg.cdtab_dma);
 
 			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
 		}
@@ -2167,9 +2173,11 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	if (asid < 0)
 		return asid;
 
-	cfg->cdptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
-					 &cfg->cdptr_dma, GFP_KERNEL);
-	if (!cfg->cdptr) {
+	cfg->cdcfg.cdtab = dmam_alloc_coherent(smmu->dev,
+					       CTXDESC_CD_DWORDS << 3,
+					       &cfg->cdcfg.cdtab_dma,
+					       GFP_KERNEL);
+	if (!cfg->cdcfg.cdtab) {
 		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
 		ret = -ENOMEM;
 		goto out_free_asid;
-- 
2.24.1

