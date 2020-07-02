Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E6BA212DB6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 22:17:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726144AbgGBURC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jul 2020 16:17:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726053AbgGBURB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jul 2020 16:17:01 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0374FC08C5DD
        for <devicetree@vger.kernel.org>; Thu,  2 Jul 2020 13:17:01 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id d17so19162386ljl.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2020 13:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eJKWwwb5sZNIMmtDeQlyT8Jj6wSl1CFV9/fEuSXAZwU=;
        b=awIazyPjnY7Ozy4WBmf6iohjAWMeVLUmfItYZqGlKzRi8S3I0MoV5VXXXlo1rju0he
         jH/oGOQOZv88hF8lDWgEo1s+4BfuzWa0QW51ddyQhfF5yiTZefpWoWrFOHbqARF2pRXL
         g/lRtzvGd7SRzaQMda6Nh8Rel7M7ZksicGl8MPm9NICfmZAYzCd+N3rn7NUmSg3Wu99B
         tjismAzWn1MJMSeY+kzWTBb+IMhWnpx7M0jT7x4z/64ov+8UKR/FANC8VIPhGBKdvQdL
         xAQT61yrooLnwYiKogRqY3HmOcbJlMFI37eJKIzd19v+3BkvmVrNraFkxIbCy6Pzda7L
         1RAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eJKWwwb5sZNIMmtDeQlyT8Jj6wSl1CFV9/fEuSXAZwU=;
        b=l6TUcshGmtS6wWYbsvdHIodJFxSf4vspIBquykmhcwrPbRKcbl3R25eF+iV8nFOS+d
         jNjUX9y1L6+4OOK3BrzLADx/E8BA+nKEr/4epAhcai5Ksq1nbmko1JZj6Qmdqbwzfpxy
         Xu6H4JaWOe04cRkn4Q5im1kPTo/YMup4jcvuzQ2d5NEoHNYoAOCCgHXpp5k+Bw9w8xzM
         f78fxF1hUvNC4aZBUCTTOzYl9EVFvsFmCjwCd24kfppjIvdqEGnRqRvsULBPgyim/y3i
         utCsG3V/COwiE0ICkDmZJ7hUVdpO1h9sT7DgGEwFJb+HKIZn5+xqo7v6ujxVpv4xko4y
         qf/Q==
X-Gm-Message-State: AOAM530AHCfqaA+W9FAYQLhu5S4rKNnunwvPtdPLCpXuZXB7EejwHFeB
        ECEm/CK4LG4G4w7K/tolhiYmdA==
X-Google-Smtp-Source: ABdhPJwhWFHlehhdaC1EHXHyukD2VZsiZOAASUSH4+v3yoslhRemMCOLsyiK2U3r+dNAOF51WBRqZw==
X-Received: by 2002:a2e:b554:: with SMTP id a20mr16177178ljn.108.1593721019380;
        Thu, 02 Jul 2020 13:16:59 -0700 (PDT)
Received: from localhost.localdomain ([83.68.95.66])
        by smtp.gmail.com with ESMTPSA id y2sm3320372lji.8.2020.07.02.13.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 13:16:58 -0700 (PDT)
From:   Tomasz Nowicki <tn@semihalf.com>
To:     will@kernel.org, robin.murphy@arm.com, joro@8bytes.org,
        gregory.clement@bootlin.com, robh+dt@kernel.org, hannah@marvell.com
Cc:     linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, catalin.marinas@arm.com,
        nadavh@marvell.com, linux-arm-kernel@lists.infradead.org,
        mw@semihalf.com, Tomasz Nowicki <tn@semihalf.com>
Subject: [PATCH v3 1/4] iommu/arm-smmu: Add SMMU ID2 register fixup hook
Date:   Thu,  2 Jul 2020 22:16:30 +0200
Message-Id: <20200702201633.22693-2-tn@semihalf.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702201633.22693-1-tn@semihalf.com>
References: <20200702201633.22693-1-tn@semihalf.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We already have 'cfg_probe' hook which meant to override and apply
workarounds while probing ID registers. However, 'cfg_probe' is called
at the very end and therefore for some cases fixing up things becomes complex
or requires exporting of SMMU driver structures. Hence, seems it is better and
cleaner to do ID fixup right away. In preparation for adding Marvell
errata add an extra ID2 fixup hook.

Signed-off-by: Tomasz Nowicki <tn@semihalf.com>
---
 drivers/iommu/arm-smmu.c | 3 +++
 drivers/iommu/arm-smmu.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 243bc4cb2705..17c92e319754 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1857,6 +1857,9 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 
 	/* ID2 */
 	id = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID2);
+	if (smmu->impl && smmu->impl->cfg_id2_fixup)
+		id = smmu->impl->cfg_id2_fixup(id);
+
 	size = arm_smmu_id_size_to_bits(FIELD_GET(ARM_SMMU_ID2_IAS, id));
 	smmu->ipa_size = size;
 
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index d172c024be61..f4c8bd7d0b34 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -382,6 +382,7 @@ struct arm_smmu_impl {
 	void (*write_reg64)(struct arm_smmu_device *smmu, int page, int offset,
 			    u64 val);
 	int (*cfg_probe)(struct arm_smmu_device *smmu);
+	u32 (*cfg_id2_fixup)(u32 id);
 	int (*reset)(struct arm_smmu_device *smmu);
 	int (*init_context)(struct arm_smmu_domain *smmu_domain);
 	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
-- 
2.17.1

