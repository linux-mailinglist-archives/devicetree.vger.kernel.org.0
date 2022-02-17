Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E5004BA76A
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 18:47:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243828AbiBQRre (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 12:47:34 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231926AbiBQRrd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 12:47:33 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 286D91A8CEA;
        Thu, 17 Feb 2022 09:47:19 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F9AE113E;
        Thu, 17 Feb 2022 09:47:18 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E55E33F718;
        Thu, 17 Feb 2022 09:47:17 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     devicetree-spec@vger.kernel.org
Cc:     robh+dt@kernel.org, maxime@cerno.tech, devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: reserved-memory: Add restricted-dma-pool constraints
Date:   Thu, 17 Feb 2022 17:47:14 +0000
Message-Id: <a4f3d4e2feef008d1236ebc3f5f0c46360f20c60.1645119806.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "restricted-dma-pool" definition prohibits combination with either
of the "no-map" and "reusable" properties, but this is only stated in
the description text. Add those constraints to the schema so we can
properly validate them.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: Simplify with "properties:...:false" vs. "not:required:..."

 .../bindings/reserved-memory/shared-dma-pool.yaml      | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
index a4bf757d6881..618105f079be 100644
--- a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
+++ b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
@@ -56,6 +56,16 @@ properties:
       If this property is present, then Linux will use the region for
       the default pool of the consistent DMA allocator.
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: restricted-dma-pool
+then:
+  properties:
+    no-map: false
+    reusable: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.28.0.dirty

