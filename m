Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 368CB3A3B6C
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 07:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229908AbhFKFhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 01:37:55 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:36692 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230445AbhFKFhy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 01:37:54 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15B5Zief052852;
        Fri, 11 Jun 2021 00:35:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623389744;
        bh=OK1BBN5vDtJG0Xmb5r7XtXcCR1ZluEMiVIvUDOuvIUU=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=Ek2HwlpdqJTn6XkMx6o8ViwEXoLzn2IPa/+qVQ8tllbXuvoZc0K0i9HC7tizfcyIw
         yhrXwC9QaYREQOvcy1XAYQZsw8lCUKILlWZRWujr+Kpbg5ovZfBqcGlgq83KDCZnbh
         HUOXEQJsu2mo6Db+f+ovDUpIxIru/3InXO7h5BK4=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15B5ZisO100919
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 11 Jun 2021 00:35:44 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 11
 Jun 2021 00:35:43 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 11 Jun 2021 00:35:43 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15B5ZbTL088083;
        Fri, 11 Jun 2021 00:35:41 -0500
From:   Vignesh Raghavendra <vigneshr@ti.com>
To:     Vignesh Raghavendra <vigneshr@ti.com>
CC:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        <linux-mtd@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/2] dt-bindings: mtd: Convert cypress,hyperflash to YAML schema
Date:   Fri, 11 Jun 2021 11:05:32 +0530
Message-ID: <20210611053533.16701-2-vigneshr@ti.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210611053533.16701-1-vigneshr@ti.com>
References: <20210611053533.16701-1-vigneshr@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert cypress,hyperflash bindings to YAML schema

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 .../bindings/mtd/cypress,hyperflash.yaml      | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/cypress,hyperflash.yaml

diff --git a/Documentation/devicetree/bindings/mtd/cypress,hyperflash.yaml b/Documentation/devicetree/bindings/mtd/cypress,hyperflash.yaml
new file mode 100644
index 000000000000..4341c0b0410c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/cypress,hyperflash.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/cypress,hyperflash.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HyperFlash serial NOR flash chips
+
+maintainers:
+  - Vignesh Raghavendra <vigneshr@ti.com>
+
+allOf:
+  - $ref: "mtd.yaml#"
+
+properties:
+  compatible:
+    items:
+      - const: cypress,hyperflash
+      - const: cfi-flash
+    description:
+      HyperFlash serial NOR flash chips compliant with Cypress HyperBus
+      specification and supports Cypress CFI specification 1.5 command set.
+
+  reg:
+    maxItems: 1
+
+  partitions:
+    type: object
+
+  '#address-cells': true
+  '#size-cells': true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    memory-controller {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        flash@0 {
+            #address-cells = <1>;
+            #size-cells = <1>;
+            compatible = "cypress,hyperflash", "cfi-flash";
+            reg = <0x0 0x4000000>;
+        };
+    };
-- 
2.32.0

