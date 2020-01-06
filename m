Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 21D04130BEB
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2020 02:53:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727226AbgAFBxG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jan 2020 20:53:06 -0500
Received: from mail-lf1-f65.google.com ([209.85.167.65]:36823 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727303AbgAFBxF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jan 2020 20:53:05 -0500
Received: by mail-lf1-f65.google.com with SMTP id n12so35359318lfe.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2020 17:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iD+50azB+tBKY9G51G0/uhlJUSlWLQtRjkrA1mNR5YY=;
        b=stOruzXeJyJ/iE3IWrf9S/Cd2tR8jd2uiRl9BelOJJzATVGY+EwgRN7zdChxXra/3a
         WzLGlNiBdQS7iHYgL9imf5adLfJgc0JD9VzJhNPhOxlwoKhZ18ygZMVCpX3b/Cgco9yu
         Mo1AiiazwDJf+MxlfxwzeFnHBsWtJXQhIB9sqb5l9lHXz8QmcsegEsMqNoJV/CxscDhM
         gFkNRUd6U/ThpkgZyI70UTPBhxkMV4YoNFq/h5X4QVysEI8w/o4ADhUJHb8h2TNbb5gB
         BLoacIOt9Al3CKrbwv/46H7MnBZbRX5QeUWswo0xBE/o43u2daBvCQzoCjNi9rhIC//t
         HD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iD+50azB+tBKY9G51G0/uhlJUSlWLQtRjkrA1mNR5YY=;
        b=GeY9Da6o6dLwXAT8PzhK6+u/r31Aq+mTPtEzCIWGo9Mhq43X4ahVeakx1LB2rJa9B/
         LHjS6YgD53fzITsFpfbi20NjKf+7fFsL+PcIMxDpVAGanLV06ynkBW9oOmyZC00juI9g
         buOLQbGOLSJKsEkbaTWWQLb1109AY8N4vbCYdVX0fQZ3okDlWySCL3CRYM7q+SsvFTk7
         ZnnSHNnk4Fhi26KCP6wA36E8uCztN/1R8QNOLZRdc2UUMc6fWn1kp5gsR5hZIVtoqgfp
         2z7sbExGXzs/RkwYpjgriJ1BVhJRlSr/NZInvEiSJCt4NzBsHphibwTJkN26aPSSkHlr
         b9iw==
X-Gm-Message-State: APjAAAUUEe6JmP6DxVY5je7u2H7p2tLBZ+Un3i64TQ3O3GLKGf7tLuZh
        kCQzBaY7trPDqnuH1zSuZ3ouDqsOeBXxBw==
X-Google-Smtp-Source: APXvYqyQsSVL56NAprHy8ONdVeBhui2YsYjZVSScZMAt+kEwr25M7JfCOcTjn2UDxwdNN0NSjx24ug==
X-Received: by 2002:ac2:5582:: with SMTP id v2mr15879998lfg.183.1578275582860;
        Sun, 05 Jan 2020 17:53:02 -0800 (PST)
Received: from localhost.bredbandsbolaget (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
        by smtp.gmail.com with ESMTPSA id v26sm28389374lfq.73.2020.01.05.17.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 17:53:02 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/2 v2] dt-bindings: Convert Faraday FTIDE010 to DT schema
Date:   Mon,  6 Jan 2020 02:52:56 +0100
Message-Id: <20200106015256.13194-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This uses the new pata-sata-controller.yaml schema to
convert the Faraday FTIDE010 to DT schema.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Rename the node for the example controller to "ide@"
- Rename the drives to ports, so ide-port@0 etc instead of
  drive@0.
---
 .../bindings/ata/faraday,ftide010.txt         | 38 --------
 .../bindings/ata/faraday,ftide010.yaml        | 89 +++++++++++++++++++
 2 files changed, 89 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/faraday,ftide010.txt
 create mode 100644 Documentation/devicetree/bindings/ata/faraday,ftide010.yaml

diff --git a/Documentation/devicetree/bindings/ata/faraday,ftide010.txt b/Documentation/devicetree/bindings/ata/faraday,ftide010.txt
deleted file mode 100644
index a0c64a29104d..000000000000
--- a/Documentation/devicetree/bindings/ata/faraday,ftide010.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-* Faraday Technology FTIDE010 PATA controller
-
-This controller is the first Faraday IDE interface block, used in the
-StorLink SL2312 and SL3516, later known as the Cortina Systems Gemini
-platform. The controller can do PIO modes 0 through 4, Multi-word DMA
-(MWDM)modes 0 through 2 and Ultra DMA modes 0 through 6.
-
-On the Gemini platform, this PATA block is accompanied by a PATA to
-SATA bridge in order to support SATA. This is why a phandle to that
-controller is compulsory on that platform.
-
-The timing properties are unique per-SoC, not per-board.
-
-Required properties:
-- compatible: should be one of
-  "cortina,gemini-pata", "faraday,ftide010"
-  "faraday,ftide010"
-- interrupts: interrupt for the block
-- reg: registers and size for the block
-
-Optional properties:
-- clocks: a SoC clock running the peripheral.
-- clock-names: should be set to "PCLK" for the peripheral clock.
-
-Required properties for "cortina,gemini-pata" compatible:
-- sata: a phande to the Gemini PATA to SATA bridge, see
-  cortina,gemini-sata-bridge.txt for details.
-
-Example:
-
-ata@63000000 {
-	compatible = "cortina,gemini-pata", "faraday,ftide010";
-	reg = <0x63000000 0x100>;
-	interrupts = <4 IRQ_TYPE_EDGE_RISING>;
-	clocks = <&gcc GEMINI_CLK_GATE_IDE>;
-	clock-names = "PCLK";
-	sata = <&sata>;
-};
diff --git a/Documentation/devicetree/bindings/ata/faraday,ftide010.yaml b/Documentation/devicetree/bindings/ata/faraday,ftide010.yaml
new file mode 100644
index 000000000000..f7b9b625c0f2
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/faraday,ftide010.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/faraday,ftide010.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Faraday Technology FTIDE010 PATA controller
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  This controller is the first Faraday IDE interface block, used in the
+  StorLink SL3512 and SL3516, later known as the Cortina Systems Gemini
+  platform. The controller can do PIO modes 0 through 4, Multi-word DMA
+  (MWDM) modes 0 through 2 and Ultra DMA modes 0 through 6.
+
+  On the Gemini platform, this PATA block is accompanied by a PATA to
+  SATA bridge in order to support SATA. This is why a phandle to that
+  controller is compulsory on that platform.
+
+  The timing properties are unique per-SoC, not per-board.
+
+properties:
+  compatible:
+    oneOf:
+      - const: faraday,ftide010
+      - items:
+        - const: cortina,gemini-pata
+        - const: faraday,ftide010
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+  clock-names:
+    const: PCLK
+
+  sata:
+    description:
+      phandle to the Gemini PATA to SATA bridge, if available
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+allOf:
+  - $ref: pata-sata-common.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: cortina,gemini-pata
+
+    then:
+      required:
+        - sata
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/cortina,gemini-clock.h>
+
+    ide@63000000 {
+      compatible = "cortina,gemini-pata", "faraday,ftide010";
+      reg = <0x63000000 0x100>;
+      interrupts = <4 IRQ_TYPE_EDGE_RISING>;
+      clocks = <&gcc GEMINI_CLK_GATE_IDE>;
+      clock-names = "PCLK";
+      sata = <&sata>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      ide-port@0 {
+        reg = <0>;
+      };
+      ide-port@1 {
+        reg = <1>;
+      };
+    };
+
+...
-- 
2.21.0

