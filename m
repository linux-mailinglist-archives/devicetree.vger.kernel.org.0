Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A77FA17007C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2020 14:54:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726974AbgBZNyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Feb 2020 08:54:09 -0500
Received: from foss.arm.com ([217.140.110.172]:36254 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727255AbgBZNyJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Feb 2020 08:54:09 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9862830E;
        Wed, 26 Feb 2020 05:54:06 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BB3F53F9E6;
        Wed, 26 Feb 2020 05:54:05 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, joro@8bytes.org
Cc:     iommu@lists.linux-foundation.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Cover Arm SMMU DT bindings
Date:   Wed, 26 Feb 2020 13:54:00 +0000
Message-Id: <749aba98fa70947f5c615e3b66c3d4754b93be20.1582725123.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We'd like to be aware of proposed DT binding changes even when they
don't directly touch the drivers themselves.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 38fe2f3f7b6f..0a4da999fd72 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1426,6 +1426,7 @@ M:	Will Deacon <will@kernel.org>
 R:	Robin Murphy <robin.murphy@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+F:	Documentation/devicetree/bindings/iommu/arm,smmu*
 F:	drivers/iommu/arm-smmu*
 F:	drivers/iommu/io-pgtable-arm.c
 F:	drivers/iommu/io-pgtable-arm-v7s.c
-- 
2.23.0.dirty

