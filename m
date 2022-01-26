Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A8BB49C992
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 13:24:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241225AbiAZMYl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 07:24:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241220AbiAZMYk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 07:24:40 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C1E1C06161C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 04:24:40 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:c4c8:1afa:4649:d034])
        by xavier.telenet-ops.be with bizsmtp
        id nQQc2600u2MCa5R01QQc3d; Wed, 26 Jan 2022 13:24:37 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1nChLo-00BUFj-KA; Wed, 26 Jan 2022 13:24:36 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1nChLo-004bRo-4P; Wed, 26 Jan 2022 13:24:36 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: iommu: renesas,ipmmu-vmsa: Reformat renesas,ipmmu-main description
Date:   Wed, 26 Jan 2022 13:24:32 +0100
Message-Id: <ea2205791573e6d99f3cb65cae99bdbfa4f65c97.1643199809.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove trailing whitespace and break overly long lines.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/iommu/renesas,ipmmu-vmsa.yaml       | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/renesas,ipmmu-vmsa.yaml b/Documentation/devicetree/bindings/iommu/renesas,ipmmu-vmsa.yaml
index 507853fcc746eea1..67da53e8d4d10aa0 100644
--- a/Documentation/devicetree/bindings/iommu/renesas,ipmmu-vmsa.yaml
+++ b/Documentation/devicetree/bindings/iommu/renesas,ipmmu-vmsa.yaml
@@ -69,9 +69,9 @@ properties:
     items:
       - items:
           - description: phandle to main IPMMU
-          - description: the interrupt bit number associated with the particular 
-              cache IPMMU device. The interrupt bit number needs to match the main 
-              IPMMU IMSSTR register. Only used by cache IPMMU instances.
+          - description: the interrupt bit number associated with the particular
+              cache IPMMU device. The interrupt bit number needs to match the
+              main IPMMU IMSSTR register. Only used by cache IPMMU instances.
     description:
       Reference to the main IPMMU phandle plus 1 cell. The cell is
       the interrupt bit number associated with the particular cache IPMMU
-- 
2.25.1

