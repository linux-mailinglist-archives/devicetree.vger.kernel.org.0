Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16304CBD26
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 16:28:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389005AbfJDO2E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 10:28:04 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:60421 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388986AbfJDO2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 10:28:04 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 438F4C0022;
        Fri,  4 Oct 2019 14:28:02 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 16/21] dt-bindings: marvell: Convert the SoC compatibles description to YAML
Date:   Fri,  4 Oct 2019 16:27:33 +0200
Message-Id: <20191004142738.7370-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the file detailing Marvell EBU compatibles to json-schema.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/arm/marvell/armada-7k-8k.txt     | 24 -----------
 .../bindings/arm/marvell/armada-7k-8k.yaml    | 40 +++++++++++++++++++
 2 files changed, 40 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
 create mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
deleted file mode 100644
index df98a9c82a8c..000000000000
--- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Marvell Armada 7K/8K Platforms Device Tree Bindings
----------------------------------------------------
-
-Boards using a SoC of the Marvell Armada 7K or 8K families must carry
-the following root node property:
-
- - compatible, with one of the following values:
-
-   - "marvell,armada7020", "marvell,armada-ap806-dual", "marvell,armada-ap806"
-      when the SoC being used is the Armada 7020
-
-   - "marvell,armada7040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
-      when the SoC being used is the Armada 7040
-
-   - "marvell,armada8020", "marvell,armada-ap806-dual", "marvell,armada-ap806"
-      when the SoC being used is the Armada 8020
-
-   - "marvell,armada8040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
-      when the SoC being used is the Armada 8040
-
-Example:
-
-compatible = "marvell,armada7040-db", "marvell,armada7040",
-             "marvell,armada-ap806-quad", "marvell,armada-ap806";
diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
new file mode 100644
index 000000000000..294595e00028
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR X11)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/marvell/armada-7k-8k.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Armada 7K/8K Platforms Device Tree Bindings
+
+maintainers:
+  - Gregory CLEMENT <gregory.clement@bootlin.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+
+      - description: Armada 7020 SoC
+        items:
+          - const: marvell,armada7020
+          - const: marvell,armada-ap806-dual
+          - const: marvell,armada-ap806
+
+      - description: Armada 7040 SoC
+        items:
+          - const: marvell,armada7040
+          - const: marvell,armada-ap806-quad
+          - const: marvell,armada-ap806
+
+      - description: Armada 8020 SoC
+        items:
+          - const: marvell,armada8020
+          - const: marvell,armada-ap806-dual
+          - const: marvell,armada-ap806
+
+      - description: Armada 8040 SoC
+        items:
+          - const: marvell,armada8040
+          - const: marvell,armada-ap806-quad
+          - const: marvell,armada-ap806
-- 
2.20.1

