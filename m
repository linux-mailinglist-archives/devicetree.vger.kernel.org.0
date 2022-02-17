Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 472D24BA0AE
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 14:10:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233476AbiBQNK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 08:10:28 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231219AbiBQNK2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 08:10:28 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1AA55294114;
        Thu, 17 Feb 2022 05:10:13 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8029512FC;
        Thu, 17 Feb 2022 05:10:13 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 87BFA3F66F;
        Thu, 17 Feb 2022 05:10:12 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     devicetree-spec@vger.kernel.org
Cc:     robh+dt@kernel.org, maxime@cerno.tech, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: reserved-memory: Add restricted-dma-pool constraints
Date:   Thu, 17 Feb 2022 13:10:04 +0000
Message-Id: <79d1914ff04b44c3005072a990d14291c9ce6fce.1645103404.git.robin.murphy@arm.com>
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
 .../bindings/reserved-memory/shared-dma-pool.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
index a4bf757d6881..01385581f663 100644
--- a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
+++ b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
@@ -56,6 +56,19 @@ properties:
       If this property is present, then Linux will use the region for
       the default pool of the consistent DMA allocator.
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: restricted-dma-pool
+then:
+  not:
+    anyOf:
+      - required:
+          - no-map
+      - required:
+          - reusable
+
 unevaluatedProperties: false
 
 examples:
-- 
2.28.0.dirty

