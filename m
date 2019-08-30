Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 39F28A3F69
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 23:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728088AbfH3VGR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 17:06:17 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:59511 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727991AbfH3VGR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Aug 2019 17:06:17 -0400
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id C09AA100004;
        Fri, 30 Aug 2019 21:06:14 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        alexandre@bootlin.com, Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 2/3] dt-bindings: sound: Add Xilinx logicPD-I2S FPGA IP bindings
Date:   Fri, 30 Aug 2019 23:06:06 +0200
Message-Id: <20190830210607.22644-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830210607.22644-1-miquel.raynal@bootlin.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the logicPD I2S FPGA block bindings in yaml.

Syntax verified with dt-doc-validate.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/sound/xlnx,logicpd-i2s.yaml      | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml

diff --git a/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
new file mode 100644
index 000000000000..cbff641af199
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/xlnx,logicpd-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Device-Tree bindings for Xilinx logicPD I2S FPGA block
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+
+description: |
+  The IP supports I2S playback/capture audio. It acts as a slave and
+  clocks should come from the codec. It only supports two channels and
+  S16_LE format.
+
+properties:
+  compatible:
+    items:
+      - const: xlnx,logicpd-i2s
+
+  reg:
+    maxItems: 1
+    description:
+      Base address and size of the IP core instance.
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: tx interrupt
+      - description: rx interrupt
+    description:
+      Either the Tx interruption or the Rx interruption or both.
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: tx
+      - const: rx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupts-controller
+
+examples:
+  - |
+    logii2s_dai: logii2s-dai@43c10000 {
+        reg = <0x43c10000 0x1000>;
+        compatible = "xlnx,logicpd-i2s-dai";
+        interrupt-parent = <&intc>;
+        interrupts = <0 29 IRQ_TYPE_LEVEL_HIGH>, <0 30 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "rx", "tx";
+    };
-- 
2.20.1

