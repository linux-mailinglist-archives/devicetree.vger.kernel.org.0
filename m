Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 73A4BC2435
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2019 17:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731522AbfI3PZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Sep 2019 11:25:30 -0400
Received: from foss.arm.com ([217.140.110.172]:56876 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731127AbfI3PZ3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Sep 2019 11:25:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80D891000;
        Mon, 30 Sep 2019 08:25:29 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3E29F3F706;
        Mon, 30 Sep 2019 08:25:28 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     robh@kernel.org, tomeu.vizoso@collabora.com, sudeep.holla@arm.com
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, liviu.dudau@arm.com,
        lorenzo.pieralisi@arm.com, steven.price@arm.com
Subject: [PATCH 2/2] drm/panfrost: Use coherent pagetable walk on Juno
Date:   Mon, 30 Sep 2019 16:24:59 +0100
Message-Id: <1e499f85220b735849126171e64ebdd1da0302ce.1569856049.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Although going full "dma-coherent" ends badly due to GEM objects still
being forcibly mapped non-cacheable, we can at least take advantage of
Juno's ACE-lite integration to skip cache maintenance for pagetables.

CC: Rob Herring <robh@kernel.org>
CC: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

This isn't really meant as a series, I'm just sending it together
with patch #1 for context.

 drivers/gpu/drm/panfrost/panfrost_mmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index bdd990568476..560439f63277 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -365,6 +365,9 @@ int panfrost_mmu_pgtable_alloc(struct panfrost_file_priv *priv)
 		.iommu_dev	= pfdev->dev,
 	};
 
+	if (of_device_is_compatible(pfdev->dev->of_node, "arm,juno-mali"))
+		pfdev->mmu->pgtbl_cfg.coherent_walk = true;
+
 	mmu->pgtbl_ops = alloc_io_pgtable_ops(ARM_MALI_LPAE, &mmu->pgtbl_cfg,
 					      priv);
 	if (!mmu->pgtbl_ops)
-- 
2.21.0.dirty

