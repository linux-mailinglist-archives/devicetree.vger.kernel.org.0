Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 057362205D3
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2020 09:08:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728983AbgGOHHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 03:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728960AbgGOHHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jul 2020 03:07:04 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DDBBC061755
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 00:07:04 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id r19so1316347ljn.12
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 00:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XKlU4lKdj3Ftg6VNKCWCajRZmLcVTJL9ntL6mukO1Xo=;
        b=gF+PCH8lg8YMRFFsAE56yzhfmMGgdqCwmFwD+TI9qs4NjXA1tiHS6Ng9cBRIlXAV0+
         WCkjEPG3UJIHt6DeJHB/FjIubAtTL7CyxsoPExKei5HJM7ySufym6lJ+h8iRL9+vTUsw
         ISdsHJA9pYutZad938G9Urv189itUM0pmpe5WHRkQeLIjIhFcCykEhxNOtkdVMccCWtz
         EaTHFk3ScQ1oGdXiGcH/YtvSNom4QWkw2pEzygUwSi6xF6IHglEVq5V0amRAeFsVCEkZ
         +HTLxpKlANISyR6cgjlLextWUoGANjHqlz0Lv5HJ6im9wyutODiiMlXFlGzJTSIoqyIs
         zuAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XKlU4lKdj3Ftg6VNKCWCajRZmLcVTJL9ntL6mukO1Xo=;
        b=P7l0vGaJ8sl6xl8a70Acnkx9zG0D0UJvRiBpFJmfOXwaVLyLOYsE7Ssh2CfD2NH7a3
         nbkc3EK0A6gygBpUhc0/73iYPJspp/Kc5eAVptlDxJSsx9fDm1nqhyJeClSa/4FzluQn
         mOgljKhoexrP2tOAtGqqcXX+5CBXm50jHhnGGThoeyK6wXIuMVHB92UdEeCOdxPZ5pJO
         bdTDEkH2C+H2b4kcLEl15+3QeMlI42d4LwVTIhoY0oUI5yJgAhZRtxvukSeZ1PaSsPsT
         GjNgS+L4MBF08+Kj91whP9H/s9m8D67YrZkBVUwZctt3PvFsCe+6ICB3RZxyEtSGlYQ6
         JA3Q==
X-Gm-Message-State: AOAM53222bQ20gpHCOUUxiYqX1dDKWLnJOml2+k2+KXj3d1dfVuHG9Kd
        +S1jhMc13hsVtqogvZxnTFsR9RPXriw=
X-Google-Smtp-Source: ABdhPJyht9u1Fi6qxzop87V103kj55HzGKn38flKrFtKPYX7IW+C8BjpSSZJXdo5uDLpBlP6rEyH7Q==
X-Received: by 2002:a2e:9585:: with SMTP id w5mr3671931ljh.58.1594796822599;
        Wed, 15 Jul 2020 00:07:02 -0700 (PDT)
Received: from localhost.localdomain ([83.68.95.66])
        by smtp.gmail.com with ESMTPSA id 83sm276040ljj.51.2020.07.15.00.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 00:07:01 -0700 (PDT)
From:   Tomasz Nowicki <tn@semihalf.com>
To:     will@kernel.org, robin.murphy@arm.com, joro@8bytes.org,
        gregory.clement@bootlin.com, robh+dt@kernel.org, hannah@marvell.com
Cc:     linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, catalin.marinas@arm.com,
        nadavh@marvell.com, linux-arm-kernel@lists.infradead.org,
        mw@semihalf.com, Tomasz Nowicki <tn@semihalf.com>
Subject: [PATCH v4 2/4] iommu/arm-smmu: Workaround for Marvell Armada-AP806 SoC erratum #582743
Date:   Wed, 15 Jul 2020 09:06:47 +0200
Message-Id: <20200715070649.18733-3-tn@semihalf.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200715070649.18733-1-tn@semihalf.com>
References: <20200715070649.18733-1-tn@semihalf.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Hanna Hawa <hannah@marvell.com>

Due to erratum #582743, the Marvell Armada-AP806 can't access 64bit to
ARM SMMUv2 registers.

Provide implementation relevant hooks:
- split the writeq/readq to two accesses of writel/readl.
- mask the MMU_IDR2.PTFSv8 fields to not use AArch64 format (but
only AARCH32_L) since with AArch64 format 32 bits access is not supported.

Note that most 64-bit registers like TTBRn can be accessed as two 32-bit
halves without issue, and AArch32 format ensures that the register writes
which must be atomic (for TLBI etc.) need only be 32-bit.

Signed-off-by: Hanna Hawa <hannah@marvell.com>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Signed-off-by: Tomasz Nowicki <tn@semihalf.com>
---
 Documentation/arm64/silicon-errata.rst |  3 ++
 drivers/iommu/arm-smmu-impl.c          | 45 ++++++++++++++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index 936cf2a59ca4..157214d3abe1 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -125,6 +125,9 @@ stable kernels.
 | Cavium         | ThunderX2 Core  | #219            | CAVIUM_TX2_ERRATUM_219      |
 +----------------+-----------------+-----------------+-----------------------------+
 +----------------+-----------------+-----------------+-----------------------------+
+| Marvell        | ARM-MMU-500     | #582743         | N/A                         |
++----------------+-----------------+-----------------+-----------------------------+
++----------------+-----------------+-----------------+-----------------------------+
 | Freescale/NXP  | LS2080A/LS1043A | A-008585        | FSL_ERRATUM_A008585         |
 +----------------+-----------------+-----------------+-----------------------------+
 +----------------+-----------------+-----------------+-----------------------------+
diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index c75b9d957b70..59422cb92488 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -147,6 +147,48 @@ static const struct arm_smmu_impl arm_mmu500_impl = {
 	.reset = arm_mmu500_reset,
 };
 
+static u64 mrvl_mmu500_readq(struct arm_smmu_device *smmu, int page, int off)
+{
+	/*
+	 * Marvell Armada-AP806 erratum #582743.
+	 * Split all the readq to double readl
+	 */
+	return hi_lo_readq_relaxed(arm_smmu_page(smmu, page) + off);
+}
+
+static void mrvl_mmu500_writeq(struct arm_smmu_device *smmu, int page, int off,
+			       u64 val)
+{
+	/*
+	 * Marvell Armada-AP806 erratum #582743.
+	 * Split all the writeq to double writel
+	 */
+	hi_lo_writeq_relaxed(val, arm_smmu_page(smmu, page) + off);
+}
+
+static int mrvl_mmu500_cfg_probe(struct arm_smmu_device *smmu)
+{
+
+	/*
+	 * Armada-AP806 erratum #582743.
+	 * Hide the SMMU_IDR2.PTFSv8 fields to sidestep the AArch64
+	 * formats altogether and allow using 32 bits access on the
+	 * interconnect.
+	 */
+	smmu->features &= ~(ARM_SMMU_FEAT_FMT_AARCH64_4K |
+			    ARM_SMMU_FEAT_FMT_AARCH64_16K |
+			    ARM_SMMU_FEAT_FMT_AARCH64_64K);
+
+	return 0;
+}
+
+static const struct arm_smmu_impl mrvl_mmu500_impl = {
+	.read_reg64 = mrvl_mmu500_readq,
+	.write_reg64 = mrvl_mmu500_writeq,
+	.cfg_probe = mrvl_mmu500_cfg_probe,
+	.reset = arm_mmu500_reset,
+};
+
 
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 {
@@ -175,5 +217,8 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 	    of_device_is_compatible(np, "qcom,sc7180-smmu-500"))
 		return qcom_smmu_impl_init(smmu);
 
+	if (of_device_is_compatible(np, "marvell,ap806-smmu-500"))
+		smmu->impl = &mrvl_mmu500_impl;
+
 	return smmu;
 }
-- 
2.17.1

