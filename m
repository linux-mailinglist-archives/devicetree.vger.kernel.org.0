Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6A3F3DB1EB
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 05:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234737AbhG3DTX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 23:19:23 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:50106 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236802AbhG3DTS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 23:19:18 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 16U3J2ds111253;
        Thu, 29 Jul 2021 22:19:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1627615142;
        bh=rwaRX+33kokToL9/CWZTwwHvUXHgXxnQ/BF7GC0ibBo=;
        h=From:To:CC:Subject:Date;
        b=e+SuUyTHWe/6Q/yIiLpbeyceG4/KC1JSPX1wiJVae7RrsJVj5smNSq2JpkQbUOcmm
         vDIfV87lh+dSwpNST/F16hEbjAmk/F69DaAZQWvg2e+nmblvmglldwJfPqCLNsvs+E
         wOqxkaC2mJlV36bQ+mu8AN6xVaHkpxtdIJrDzcE4=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 16U3J2mw130595
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 29 Jul 2021 22:19:02 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 29
 Jul 2021 22:19:01 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 29 Jul 2021 22:19:01 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 16U3J166105705;
        Thu, 29 Jul 2021 22:19:01 -0500
Received: from localhost ([10.250.38.176])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 16U3J16x008774;
        Thu, 29 Jul 2021 22:19:01 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH] dt-bindings: soc: ti: pruss: Add dma-coherent property
Date:   Thu, 29 Jul 2021 22:19:01 -0500
Message-ID: <20210730031901.26243-1-s-anna@ti.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the PRUSS schema file to include the dma-coherent property
that indicates the coherency of the IP. The PRUSS IPs on 66AK2G
SoCs do use this property.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
Hi Santosh,

This patch updates the PRUSS binding in preparation for adding the
PRUSS nodes for 66AK2G SoCs. Without this, the dtbs_check would
complain about the undefined dma-coherent property. Patch is top
of the AM64 ICSSG binding update patch [1].

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210623165032.31223-2-s-anna@ti.com/

 .../devicetree/bindings/soc/ti/ti,pruss.yaml  | 37 +++++++++++++------
 1 file changed, 25 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
index 47d7fd24bc56..9d128b9e7deb 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
@@ -85,6 +85,8 @@ properties:
   dma-ranges:
     maxItems: 1
 
+  dma-coherent: true
+
   power-domains:
     description: |
       This property is as per sci-pm-domain.txt.
@@ -324,18 +326,29 @@ additionalProperties: false
 # - interrupt-controller
 # - pru
 
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - ti,k2g-pruss
-          - ti,am654-icssg
-          - ti,j721e-icssg
-          - ti,am642-icssg
-then:
-  required:
-    - power-domains
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,k2g-pruss
+              - ti,am654-icssg
+              - ti,j721e-icssg
+              - ti,am642-icssg
+    then:
+      required:
+        - power-domains
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,k2g-pruss
+    then:
+      required:
+        - dma-coherent
 
 examples:
   - |
-- 
2.32.0

