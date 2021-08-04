Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF66B3E084A
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 20:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239377AbhHDSuc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 14:50:32 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:55812 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239295AbhHDSub (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 14:50:31 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 174IoATn080652;
        Wed, 4 Aug 2021 13:50:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1628103010;
        bh=Sf1IS8Hi9MP5nnvnMXuVrRpwWOFRmZK+iai4dE5d3lE=;
        h=From:To:CC:Subject:Date;
        b=qFcPqnaeh4FhCMrEaWnPLOsQnwoUzvcDFv2zXWL6HBsI4YAHcXN2YVtPjxdv85qdA
         mdeS7Ny+IdVKsRpfSUAGuxAf0BXcMV+nnUjY09QaCLVfHuX3AXCCcBpgVi7orlhCBM
         qC0peoNiHQnI+rwJDtHE6kByeVG09NH1E7KrgJgU=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 174IoAOj129147
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 4 Aug 2021 13:50:10 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 4 Aug
 2021 13:50:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 4 Aug 2021 13:50:09 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 174Io9jY108085;
        Wed, 4 Aug 2021 13:50:09 -0500
Received: from localhost ([10.250.68.246])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 174Io8jL015349;
        Wed, 4 Aug 2021 13:50:09 -0500
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
Subject: [PATCH v2] dt-bindings: soc: ti: pruss: Add dma-coherent property
Date:   Wed, 4 Aug 2021 13:50:08 -0500
Message-ID: <20210804185008.30096-1-s-anna@ti.com>
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

The new added dma-coherent property is a required property _only_
for 66AK2G SoCs and is not required/applicable for other SoCs, so
the binding is backward compatible for other SoCs. This update is
being done before the corresponding dts nodes can be added for 66AK2G
SoCs.

Signed-off-by: Suman Anna <s-anna@ti.com>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v2: 
 - No code changes, only updated the patch description (added 2nd para) to 
   address Rob's review comments
 - Picked up review tags
 - Patch is still on top of AM64 ICSSG binding update patch [1]
v1: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210730031901.26243-1-s-anna@ti.com/

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

