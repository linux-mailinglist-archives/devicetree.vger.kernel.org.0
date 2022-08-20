Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F3B459B008
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 21:49:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231213AbiHTTsn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:48:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbiHTTsj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:48:39 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8CE217A88
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=yPQNUvxFfjxuFGLxuzDbBYBYTShrxNxLh7RaBOiSVN0=; b=QVJsiCobhDs5UE4t0lPKf0gjET
        dlgOEBH+rhsGk0y+7xzPwS596oE+g4g2+G3/fROWgyCLT2MAYCiqOoNYuH7jWo4l7yJU4UKS5LQ5Z
        WzH/bhPTvfunrdInJ78TkTTyq3vk+NtJivoQVZKKbyNfNS7c240jmR8BqzqpsmG+mVfU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPUSL-00E48U-Oe; Sat, 20 Aug 2022 21:48:29 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 08/11] DT: mtd: Convert orion-nand to YAML
Date:   Sat, 20 Aug 2022 21:48:01 +0200
Message-Id: <20220820194804.3352415-9-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220820194804.3352415-1-andrew@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This works for Kirkwood, but orion5x has an odd bus structure
which results in some warnings.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../bindings/mtd/marvell,orion-nand.yaml      | 85 +++++++++++++++++++
 .../devicetree/bindings/mtd/orion-nand.txt    | 50 -----------
 2 files changed, 85 insertions(+), 50 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml
 delete mode 100644 Documentation/devicetree/bindings/mtd/orion-nand.txt

diff --git a/Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml b/Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml
new file mode 100644
index 000000000000..127c12e6f5ce
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/marvell,orion-nand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Orion NAND Controller Device Tree Bindings
+
+allOf:
+  - $ref: "nand-controller.yaml"
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    enum:
+      - marvell,orion-nand
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  cle:
+    description:
+      Address line number connected to CLE. Default is 0
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 255
+
+  ale:
+    description:
+      Address line number connected to ALE. Default is 1
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 255
+
+  bank-width:
+    description: Width (in bytes) of the bank.  Equal to the device width times
+      the number of interleaved chips.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 1, 2, 4 ]
+
+  chip-delay:
+    description:
+      Chip dependent delay for transferring data from array to read
+      registers in usecs
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 255
+
+  partitions:
+    type: object
+
+patternProperties:
+  "@[0-9a-f]+$":
+    $ref: "/schemas/mtd/partitions/partition.yaml"
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    nand-controller@f4000000 {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        cle = <0>;
+        ale = <1>;
+        bank-width = <1>;
+        chip-delay = <25>;
+        compatible = "marvell,orion-nand";
+        reg = <0xf4000000 0x400>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/mtd/orion-nand.txt b/Documentation/devicetree/bindings/mtd/orion-nand.txt
deleted file mode 100644
index 2d6ab660e603..000000000000
--- a/Documentation/devicetree/bindings/mtd/orion-nand.txt
+++ /dev/null
@@ -1,50 +0,0 @@
-NAND support for Marvell Orion SoC platforms
-
-Required properties:
-- compatible : "marvell,orion-nand".
-- reg : Base physical address of the NAND and length of memory mapped
-	region
-
-Optional properties:
-- cle : Address line number connected to CLE. Default is 0
-- ale : Address line number connected to ALE. Default is 1
-- bank-width : Width in bytes of the device. Default is 1
-- chip-delay : Chip dependent delay for transferring data from array to read
-               registers in usecs
-
-The device tree may optionally contain sub-nodes describing partitions of the
-address space. See partition.txt for more detail.
-
-Example:
-
-nand@f4000000 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-	cle = <0>;
-	ale = <1>;
-	bank-width = <1>;
-	chip-delay = <25>;
-	compatible = "marvell,orion-nand";
-	reg = <0xf4000000 0x400>;
-
-	partition@0 {
-		label = "u-boot";
-		reg = <0x0000000 0x100000>;
-		read-only;
-	};
-
-	partition@100000 {
-		label = "uImage";
-		reg = <0x0100000 0x200000>;
-	};
-
-	partition@300000 {
-		label = "dtb";
-		reg = <0x0300000 0x100000>;
-	};
-
-	partition@400000 {
-		label = "root";
-		reg = <0x0400000 0x7d00000>;
-	};
-};
-- 
2.37.2

