Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 201203FD7A2
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 12:27:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235036AbhIAK2R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 06:28:17 -0400
Received: from relmlor2.renesas.com ([210.160.252.172]:19304 "EHLO
        relmlie6.idc.renesas.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S232386AbhIAK2Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 06:28:16 -0400
X-IronPort-AV: E=Sophos;i="5.84,368,1620658800"; 
   d="scan'208";a="92650960"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 01 Sep 2021 19:27:19 +0900
Received: from localhost.localdomain (unknown [10.166.14.185])
        by relmlir5.idc.renesas.com (Postfix) with ESMTP id ED9214000914;
        Wed,  1 Sep 2021 19:27:18 +0900 (JST)
From:   Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To:     joro@8bytes.org, will@kernel.org, robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH 0/2] iommu/ipmmu-vmsa: Add support for r8a779a0
Date:   Wed,  1 Sep 2021 19:27:03 +0900
Message-Id: <20210901102705.556093-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds support for r8a779a0 (R-Car V3U).

Yoshihiro Shimoda (2):
  dt-bindings: iommu: renesas,ipmmu-vmsa: add r8a779a0 support
  iommu/ipmmu-vmsa: Add support for r8a779a0

 .../bindings/iommu/renesas,ipmmu-vmsa.yaml    |  1 +
 drivers/iommu/ipmmu-vmsa.c                    | 19 ++++++++++++++++++-
 2 files changed, 19 insertions(+), 1 deletion(-)

-- 
2.25.1

