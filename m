Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 204732205D1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2020 09:08:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728927AbgGOHHE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 03:07:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728924AbgGOHHD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jul 2020 03:07:03 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99E67C08C5C1
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 00:07:02 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id q7so1425151ljm.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 00:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rDtvw0IlmYfY+jCdx2Lo57EMXtb9r+H9pF0oFjzHHyo=;
        b=ROeZDbiYc0S1qiJ+zPLW4iZ2xz7bxM4vKz+szew4oa0S3/i4Tsj9Db1Djs8wqhrDPA
         wJVmm30Nnb2KdsbXPrZWchGqSXHO720gjZZkro0giw2+zCmubxZOI5ILdKnQ3th9Xdgz
         l/awUtt1Ygeq4YioavlodnaPxhV7HYI8iIqmhbGdcs1ZMKNyL751oDG7y1lUrJTmJkwj
         0tq+FC77087fb7ayIUN30UuhGJcEX2m20NDwm58NrsDBJIIpNiD8XN94SUyUxYRa3PD1
         4ayfacD0RrkjIymW0xkigMB25F+DaQAQ5F3f4ISektuOrjdIKKU4GzSmG++qj2D1fL7X
         wfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rDtvw0IlmYfY+jCdx2Lo57EMXtb9r+H9pF0oFjzHHyo=;
        b=FnsTMNnGeSRcq1oTDinLOA7j8ybANcxPujol3jElNwf+31vTX/Hsm87W/wyTqgi178
         4I395hBBBCg0poSdLmkIgOlSS0rZfMvgctLsWhWKbtMABonqvY3p0DwCEcPR72LdzZTh
         Jg5RzZz8RkHnWEBlTiSzwJr4jUt/de4NR0YwVwGr6tzkYqzlqsUM8JOljUp3EY8Nv8a8
         ZyI1z4PA2B++M8gDumJdVrgoOQqPHTNQYqgfdk0qPqjCODXsLLBVQoLL8eifsn+nJFnJ
         SWavOy6zzw5CRZTpYsHTs7E83NZrH7EvLMoUi1D+CYzs3dE8jIqYKLVQhjf6s5Uio+Zo
         fJow==
X-Gm-Message-State: AOAM533hu/wMGGjyge1IxowWLZfm4TfascLhwbtDjs01HceE8jS+wUBh
        pfWTp1qzbRzrTQHIDIZp17GPIQ==
X-Google-Smtp-Source: ABdhPJydCAuceNb5bOv6bKj797GCX8yDPnodbrk36mq0CVMxEl0bcpvWYkELgCrKsdNuJMCF/cXNlg==
X-Received: by 2002:a2e:3619:: with SMTP id d25mr4044931lja.204.1594796821024;
        Wed, 15 Jul 2020 00:07:01 -0700 (PDT)
Received: from localhost.localdomain ([83.68.95.66])
        by smtp.gmail.com with ESMTPSA id 83sm276040ljj.51.2020.07.15.00.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 00:07:00 -0700 (PDT)
From:   Tomasz Nowicki <tn@semihalf.com>
To:     will@kernel.org, robin.murphy@arm.com, joro@8bytes.org,
        gregory.clement@bootlin.com, robh+dt@kernel.org, hannah@marvell.com
Cc:     linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, catalin.marinas@arm.com,
        nadavh@marvell.com, linux-arm-kernel@lists.infradead.org,
        mw@semihalf.com, Tomasz Nowicki <tn@semihalf.com>
Subject: [PATCH v4 1/4] iommu/arm-smmu: Call configuration impl hook before consuming features
Date:   Wed, 15 Jul 2020 09:06:46 +0200
Message-Id: <20200715070649.18733-2-tn@semihalf.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200715070649.18733-1-tn@semihalf.com>
References: <20200715070649.18733-1-tn@semihalf.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'cfg_probe' hook is called at the very end of configuration probing
procedure and therefore features override and workaround may become
complex like for ID register fixups. In preparation for adding Marvell
errata move 'cfg_probe' a bit earlier to have chance to adjust
the detected features before we start consuming them.

Since the Cavium quirk (the only user) does not alter features
it is safe to do so.

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Tomasz Nowicki <tn@semihalf.com>
---
 drivers/iommu/arm-smmu.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 243bc4cb2705..19f906de6420 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1728,7 +1728,7 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	unsigned int size;
 	u32 id;
 	bool cttw_reg, cttw_fw = smmu->features & ARM_SMMU_FEAT_COHERENT_WALK;
-	int i;
+	int i, ret;
 
 	dev_notice(smmu->dev, "probing hardware configuration...\n");
 	dev_notice(smmu->dev, "SMMUv%d with:\n",
@@ -1891,6 +1891,12 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_64K;
 	}
 
+	if (smmu->impl && smmu->impl->cfg_probe) {
+		ret = smmu->impl->cfg_probe(smmu);
+		if (ret)
+			return ret;
+	}
+
 	/* Now we've corralled the various formats, what'll it do? */
 	if (smmu->features & ARM_SMMU_FEAT_FMT_AARCH32_S)
 		smmu->pgsize_bitmap |= SZ_4K | SZ_64K | SZ_1M | SZ_16M;
@@ -1918,9 +1924,6 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 		dev_notice(smmu->dev, "\tStage-2: %lu-bit IPA -> %lu-bit PA\n",
 			   smmu->ipa_size, smmu->pa_size);
 
-	if (smmu->impl && smmu->impl->cfg_probe)
-		return smmu->impl->cfg_probe(smmu);
-
 	return 0;
 }
 
-- 
2.17.1

