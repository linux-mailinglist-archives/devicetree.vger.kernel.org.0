Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC42B4676AC
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 12:45:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238228AbhLCLst (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 06:48:49 -0500
Received: from foss.arm.com ([217.140.110.172]:47992 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234517AbhLCLst (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 3 Dec 2021 06:48:49 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9036514BF;
        Fri,  3 Dec 2021 03:45:25 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DFF753F5A1;
        Fri,  3 Dec 2021 03:45:24 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org
Cc:     mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH 12/14] dt-bindings: perf: arm-cmn: Add CI-700
Date:   Fri,  3 Dec 2021 11:45:01 +0000
Message-Id: <5f0b372f808f1468e6d9500cedafbecd10254674.1638530442.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1638530442.git.robin.murphy@arm.com>
References: <cover.1638530442.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CI-700 is a new client-level coherent interconnect derived from
the enterprise-level CMN family, and shares the same PMU design.

CC: devicetree@vger.kernel.org
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../devicetree/bindings/perf/arm,cmn.yaml     | 21 ++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/perf/arm,cmn.yaml b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
index 42424ccbdd0c..2d4219ec7eda 100644
--- a/Documentation/devicetree/bindings/perf/arm,cmn.yaml
+++ b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
@@ -12,12 +12,14 @@ maintainers:
 
 properties:
   compatible:
-    const: arm,cmn-600
+    enum:
+      - arm,cmn-600
+      - arm,ci-700
 
   reg:
     items:
       - description: Physical address of the base (PERIPHBASE) and
-          size (up to 64MB) of the configuration address space.
+          size of the configuration address space.
 
   interrupts:
     minItems: 1
@@ -31,14 +33,23 @@ properties:
 
   arm,root-node:
     $ref: /schemas/types.yaml#/definitions/uint32
-    description: Offset from PERIPHBASE of the configuration
-      discovery node (see TRM definition of ROOTNODEBASE).
+    description: Offset from PERIPHBASE of CMN-600's configuration
+      discovery node (see TRM definition of ROOTNODEBASE). Not
+      relevant for newer CMN/CI products.
 
 required:
   - compatible
   - reg
   - interrupts
-  - arm,root-node
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: arm,cmn-600
+then:
+  required:
+    - arm,root-node
 
 additionalProperties: false
 
-- 
2.28.0.dirty

