Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 097F345494B
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:52:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231171AbhKQOzn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:55:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231635AbhKQOzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 09:55:39 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79627C061764
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:52:40 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id e3so12384848edu.4
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jqVNNzLQfZFMm9T0Ib+FdeXKGDJ/YUZsGGIsBRM+Cmg=;
        b=bqwCM7JgZZ07zSsk3K2Xrlf91noWxlvCOW5wvJUoTK8t6dYhg6c/W8jcW9SIvxFzVc
         +umgW36friR/RPIaCX0Sl/vT9LPXAhuFKt88gHA9BzDkEYrIUbUh0Mrp4+gaMEChKBCH
         tpiazOQm2MovHH3f5Hbw+R4cIKHaSIdM8Uqgbvd/BWj1gDYS14BXrsme2BQUTa733X4y
         DarpTagh/vumiPE3/HTrTqiwkeRQELgSshaz5PNRFtnYbb+k1ve4a4K3EUWQfP7twxgb
         OdaPplKdnlUoe4UzpXRQcAPWITxVSUs95AYOSUzCosFm2Biy5quvNAAVKvuqp2fVJKmC
         z31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jqVNNzLQfZFMm9T0Ib+FdeXKGDJ/YUZsGGIsBRM+Cmg=;
        b=QKZnEMB6eS+nCbEhfwhxjsymKkvdcUj6afv8AAqQDOWjAjT5Ro9qcV9eBDu+ycxR55
         9a0aaidicTBonWwIxL+1kCXhS6mF7OLcj1RKYrbbZasUFYYM1sG1X78BrEJPGa2tfEow
         aZKBpSLnFUr5Go62mWZRL3RO0XIy//7yLVMPi+bTzw5VnctGjxVZSJlKNRLEuOWvuGyz
         qEWBZestiZGHnoobtKHK9xOGdA8x2ebXKitX5LXMGPPuCaXlk7Au+mO2/SEdOHAXOdYW
         a43vZi4YJ3ObkOhtn7TonT0lir4r/1ZgL3g+yu66DGUfdODjEK84LYOhpZuR1z70IBpG
         P/Bw==
X-Gm-Message-State: AOAM530JPdK/6VEpz/TpJqI8cVCcGYJKMdaYqmLiFOGXEz82Q/CpiD9j
        ZcSCWx5669EZNYtASoaGEaplCA==
X-Google-Smtp-Source: ABdhPJyTqJmr6Aa39fh4WLBhW8g73puWWy3pIo0FXWd0YPuiRAy0BtvSlaKkOf5iRgrfCWs6kyp4zg==
X-Received: by 2002:aa7:c943:: with SMTP id h3mr22592072edt.233.1637160759080;
        Wed, 17 Nov 2021 06:52:39 -0800 (PST)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id gs15sm63917ejc.42.2021.11.17.06.52.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 06:52:38 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID registers
Date:   Wed, 17 Nov 2021 14:48:45 +0000
Message-Id: <20211117144844.241072-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211117144844.241072-1-jean-philippe@linaro.org>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Robin Murphy <robin.murphy@arm.com>

The SMMU_PMCG_IIDR register was not present in older revisions of the
Arm SMMUv3 spec. On Arm Ltd. implementations, the IIDR value consists of
fields from several PIDR registers, allowing us to present a
standardized identifier to userspace.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/perf/arm_smmuv3_pmu.c | 55 ++++++++++++++++++++++++++++++++++-
 1 file changed, 54 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index 19697617153a..598d6978280d 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -76,6 +76,10 @@
 #define SMMU_PMCG_CR                    0xE04
 #define SMMU_PMCG_CR_ENABLE             BIT(0)
 #define SMMU_PMCG_IIDR                  0xE08
+#define SMMU_PMCG_IIDR_PRODUCTID        GENMASK(31, 20)
+#define SMMU_PMCG_IIDR_VARIANT          GENMASK(19, 16)
+#define SMMU_PMCG_IIDR_REVISION         GENMASK(15, 12)
+#define SMMU_PMCG_IIDR_IMPLEMENTER      GENMASK(11, 0)
 #define SMMU_PMCG_CEID0                 0xE20
 #define SMMU_PMCG_CEID1                 0xE28
 #define SMMU_PMCG_IRQ_CTRL              0xE50
@@ -84,6 +88,20 @@
 #define SMMU_PMCG_IRQ_CFG1              0xE60
 #define SMMU_PMCG_IRQ_CFG2              0xE64
 
+/* IMP-DEF ID registers */
+#define SMMU_PMCG_PIDR0                 0xFE0
+#define SMMU_PMCG_PIDR0_PART_0          GENMASK(7, 0)
+#define SMMU_PMCG_PIDR1                 0xFE4
+#define SMMU_PMCG_PIDR1_DES_0           GENMASK(7, 4)
+#define SMMU_PMCG_PIDR1_PART_1          GENMASK(3, 0)
+#define SMMU_PMCG_PIDR2                 0xFE8
+#define SMMU_PMCG_PIDR2_REVISION        GENMASK(7, 4)
+#define SMMU_PMCG_PIDR2_DES_1           GENMASK(2, 0)
+#define SMMU_PMCG_PIDR3                 0xFEC
+#define SMMU_PMCG_PIDR3_REVAND          GENMASK(7, 4)
+#define SMMU_PMCG_PIDR4                 0xFD0
+#define SMMU_PMCG_PIDR4_DES_2           GENMASK(3, 0)
+
 /* MSI config fields */
 #define MSI_CFG0_ADDR_MASK              GENMASK_ULL(51, 2)
 #define MSI_CFG2_MEMATTR_DEVICE_nGnRE   0x1
@@ -755,6 +773,41 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
 	dev_notice(smmu_pmu->dev, "option mask 0x%x\n", smmu_pmu->options);
 }
 
+static bool smmu_pmu_coresight_id_regs(struct smmu_pmu *smmu_pmu)
+{
+	return of_device_is_compatible(smmu_pmu->dev->of_node,
+				       "arm,mmu-600-pmcg");
+}
+
+static void smmu_pmu_get_iidr(struct smmu_pmu *smmu_pmu)
+{
+	u32 iidr = readl_relaxed(smmu_pmu->reg_base + SMMU_PMCG_IIDR);
+
+	if (!iidr && smmu_pmu_coresight_id_regs(smmu_pmu)) {
+		u32 pidr0 = readl(smmu_pmu->reg_base + SMMU_PMCG_PIDR0);
+		u32 pidr1 = readl(smmu_pmu->reg_base + SMMU_PMCG_PIDR1);
+		u32 pidr2 = readl(smmu_pmu->reg_base + SMMU_PMCG_PIDR2);
+		u32 pidr3 = readl(smmu_pmu->reg_base + SMMU_PMCG_PIDR3);
+		u32 pidr4 = readl(smmu_pmu->reg_base + SMMU_PMCG_PIDR4);
+
+		u32 productid = FIELD_GET(SMMU_PMCG_PIDR0_PART_0, pidr0) |
+				(FIELD_GET(SMMU_PMCG_PIDR1_PART_1, pidr1) << 8);
+		u32 variant = FIELD_GET(SMMU_PMCG_PIDR2_REVISION, pidr2);
+		u32 revision = FIELD_GET(SMMU_PMCG_PIDR3_REVAND, pidr3);
+		u32 implementer =
+			FIELD_GET(SMMU_PMCG_PIDR1_DES_0, pidr1) |
+			(FIELD_GET(SMMU_PMCG_PIDR2_DES_1, pidr2) << 4) |
+			(FIELD_GET(SMMU_PMCG_PIDR4_DES_2, pidr4) << 8);
+
+		iidr = FIELD_PREP(SMMU_PMCG_IIDR_PRODUCTID, productid) |
+		       FIELD_PREP(SMMU_PMCG_IIDR_VARIANT, variant) |
+		       FIELD_PREP(SMMU_PMCG_IIDR_REVISION, revision) |
+		       FIELD_PREP(SMMU_PMCG_IIDR_IMPLEMENTER, implementer);
+	}
+
+	smmu_pmu->iidr = iidr;
+}
+
 static int smmu_pmu_probe(struct platform_device *pdev)
 {
 	struct smmu_pmu *smmu_pmu;
@@ -826,7 +879,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	smmu_pmu->iidr = readl_relaxed(smmu_pmu->reg_base + SMMU_PMCG_IIDR);
+	smmu_pmu_get_iidr(smmu_pmu);
 
 	name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "smmuv3_pmcg_%llx",
 			      (res_0->start) >> SMMU_PMCG_PA_SHIFT);
-- 
2.33.1

