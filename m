Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80C1826147A
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 18:23:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731910AbgIHQXX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 12:23:23 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:50680 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731901AbgIHQXK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 12:23:10 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088GN5pl035707;
        Tue, 8 Sep 2020 11:23:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599582185;
        bh=DpCEXlu+AxBlgy3lST5U2ahF07ru5rmIbnlEYCNUFQE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=StxKxiQKY8NvBja26a08SjzJPZNZcftEFOlwD0r7aKL5+nm4Oeb1oxnhzc9eki0C4
         BIfCrM8nPJ4NAcxnEgd3Z0d27qR4GvdzmKVeVfaSHEo7fSDRq/8H0qH11+QcxzAxKm
         LGda3/MoG04/pxvwRgQ7YxewkXejXmfqlnbM2UOg=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 088GN57C123613
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 11:23:05 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 11:23:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 11:23:05 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088GMqAp044781;
        Tue, 8 Sep 2020 11:23:02 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 2/5] dt-bindings: arm: ti: Convert K3 board/soc bindings to DT schema
Date:   Tue, 8 Sep 2020 21:52:49 +0530
Message-ID: <20200908162252.17672-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200908162252.17672-1-lokeshvutla@ti.com>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert TI K3 Board/SoC bindings to DT schema format.

Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../devicetree/bindings/arm/ti/k3.txt         | 26 ----------------
 .../devicetree/bindings/arm/ti/k3.yaml        | 31 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 32 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/ti/k3.txt
 create mode 100644 Documentation/devicetree/bindings/arm/ti/k3.yaml

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.txt b/Documentation/devicetree/bindings/arm/ti/k3.txt
deleted file mode 100644
index 333e7256126a..000000000000
--- a/Documentation/devicetree/bindings/arm/ti/k3.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Texas Instruments K3 Multicore SoC architecture device tree bindings
---------------------------------------------------------------------
-
-Platforms based on Texas Instruments K3 Multicore SoC architecture
-shall follow the following scheme:
-
-SoCs
-----
-
-Each device tree root node must specify which exact SoC in K3 Multicore SoC
-architecture it uses, using one of the following compatible values:
-
-- AM654
-  compatible = "ti,am654";
-
-- J721E
-  compatible = "ti,j721e";
-
-Boards
-------
-
-In addition, each device tree root node must specify which one or more
-of the following board-specific compatible values:
-
-- AM654 EVM
-  compatible = "ti,am654-evm", "ti,am654";
diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
new file mode 100644
index 000000000000..c5e3e4aeda8e
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/ti/k3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments K3 Multicore SoC architecture device tree bindings
+
+maintainers:
+  - Nishanth Menon <nm@ti.com>
+
+description: |
+  Platforms based on Texas Instruments K3 Multicore SoC architecture
+  shall have the following properties.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+
+      - description: K3 AM654 SoC
+        items:
+          - enum:
+              - ti,am654-evm
+          - const: ti,am654
+
+      - description: K3 J721E SoC
+        items:
+          - const: ti,j721e
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index e4647c84c987..076fae9aa75b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2636,7 +2636,7 @@ M:	Tero Kristo <t-kristo@ti.com>
 M:	Nishanth Menon <nm@ti.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
-F:	Documentation/devicetree/bindings/arm/ti/k3.txt
+F:	Documentation/devicetree/bindings/arm/ti/k3.yaml
 F:	arch/arm64/boot/dts/ti/Makefile
 F:	arch/arm64/boot/dts/ti/k3-*
 F:	include/dt-bindings/pinctrl/k3.h
-- 
2.28.0

