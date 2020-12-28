Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DF212E664F
	for <lists+devicetree@lfdr.de>; Mon, 28 Dec 2020 17:12:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394156AbgL1QL5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Dec 2020 11:11:57 -0500
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:45883 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394154AbgL1QL4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Dec 2020 11:11:56 -0500
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 993E0240009;
        Mon, 28 Dec 2020 16:11:14 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v3 2/4] dt-bindings: i3c: Describe Silvaco master binding
Date:   Mon, 28 Dec 2020 17:11:05 +0100
Message-Id: <20201228161107.11804-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228161107.11804-1-miquel.raynal@bootlin.com>
References: <20201228161107.11804-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Silvaco provide a dual-role I3C master.

Description is rather simple: it needs a register mapping, three
clocks and an interrupt.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/i3c/silvaco,i3c-master.yaml      | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml

diff --git a/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml b/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
new file mode 100644
index 000000000000..509de48455b0
--- /dev/null
+++ b/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i3c/silvaco,i3c-master.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Silvaco I3C master
+
+maintainers:
+  - Conor Culhane <conor.culhane@silvaco.com>
+
+properties:
+  compatible:
+    const: silvaco,i3c-master
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: pclk, the system clock
+      - description: fast_clk, for the bus
+      - description: slow_clk, for other events
+
+  clock-names:
+    minItems: 3
+    maxItems: 3
+
+  resets:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clock-names
+  - clocks
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    i3c-master@a0000000 {
+        compatible = "silvaco,i3c-master";
+        clocks = <&zynqmp_clk 71>, <&fclk>, <&sclk>;
+        clock-names = "pclk", "fast_clk", "slow_clk";
+        interrupt-parent = <&gic>;
+        interrupts = <0 89 4>;
+        reg = <0xa0000000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
-- 
2.20.1

