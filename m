Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 060F539BD78
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 18:44:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbhFDQqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 12:46:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230103AbhFDQqi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 12:46:38 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2775C061766
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 09:44:51 -0700 (PDT)
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:4cb:a870:389:b21e:a7e4:8cad])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: benjamin.gaignard)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9ABE61F43C5D;
        Fri,  4 Jun 2021 17:44:49 +0100 (BST)
From:   Benjamin Gaignard <benjamin.gaignard@collabora.com>
To:     will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
        xxm@rock-chips.com, robin.murphy@arm.com, joro@8bytes.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v8 0/4] Add IOMMU driver for rk356x
Date:   Fri,  4 Jun 2021 18:44:37 +0200
Message-Id: <20210604164441.798362-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds the IOMMU driver for rk356x SoC.
Since a new compatible is needed to distinguish this second version of 
IOMMU hardware block from the first one, it is an opportunity to convert
the binding to DT schema.

version 8:
 - Fix compilation issue.

version 7:
 - Set DMA mask
 - Fix rk_iommu_enable()
 - rebased on v5.13-rc3 tag

version 6:
 - Remove #include <module.h>
 - Remove pt_address_mask field
 - Only use once of_device_get_match_data
 - Return an error if ops don't match

version 5:
 - Add internal ops inside the driver to be able to add variants.
 - Add support of v2 variant.
 - Stop using 'version' field
 - Use GENMASK macro

version 4:
 - Add description for reg items
 - Remove useless interrupt-names properties
 - Add description for interrupts items
 - Remove interrupt-names properties from DST files

version 3:
 - Rename compatible with soc prefix
 - Rebase on v5.12 tag

version 2:
 - Fix iommu-cells typo in rk322x.dtsi
 - Change maintainer
 - Change reg maxItems
 - Add power-domains property

Benjamin Gaignard (4):
  dt-bindings: iommu: rockchip: Convert IOMMU to DT schema
  dt-bindings: iommu: rockchip: Add compatible for v2
  iommu: rockchip: Add internal ops to handle variants
  iommu: rockchip: Add support for iommu v2

 .../bindings/iommu/rockchip,iommu.txt         |  38 ----
 .../bindings/iommu/rockchip,iommu.yaml        |  85 +++++++++
 drivers/iommu/rockchip-iommu.c                | 171 +++++++++++++++---
 3 files changed, 234 insertions(+), 60 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
 create mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

-- 
2.25.1

