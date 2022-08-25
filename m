Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D43D75A05AF
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231954AbiHYBdg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232090AbiHYBdc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:32 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C04D8E443
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=UfWkC4Z9AaOsktqow6zdB23nlskuT6avNjnKGzzWVlY=; b=BtHRUsqTRiKxkWX6CoOf6rFOXa
        xK7lSlIusLSwE68GeGsAvYoJM2MTqziFog6J816lhrZDn56UEqC6Ez9lKdsje9UeqYWVmnCQLDHyl
        Hi99z4s0Z/2paXI8KuhLzpVIL5LWiSi3inaNM791AZYKSoMnMCnLCBf5EYpDCZIDw6bY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW2j-DD; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 03/12] dt-bindings: pinctrl: Convert marvell,kirkwood-pintctrl to DT schema
Date:   Thu, 25 Aug 2022 03:32:49 +0200
Message-Id: <20220825013258.3459714-4-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220825013258.3459714-1-andrew@lunn.ch>
References: <20220825013258.3459714-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the text description to YAML. To keep the YAML versions
readable, add a file per compatible.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../pinctrl/marvell,88f6180-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6190-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6192-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6281-pinctrl.yaml      |  74 ++++
 .../pinctrl/marvell,88f6282-pinctrl.yaml      |  74 ++++
 .../pinctrl/marvell,98dx1135-pinctrl.yaml     |  72 ++++
 .../pinctrl/marvell,98dx4122-pinctrl.yaml     |  72 ++++
 .../pinctrl/marvell,kirkwood-pinctrl.txt      | 359 ------------------
 8 files changed, 511 insertions(+), 359 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt

diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml
new file mode 100644
index 000000000000..89c98ce27f6e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/marvell,88f6180-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Kirkwood 88f6180 pin controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+description:
+  Bindings for Marvell's Kirkwood 88F6180 memory-mapped pin controller.
+
+properties:
+  compatible:
+    items:
+      - const: marvell,88f6180-pinctrl
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  '^pmx-.*$':
+    type: object
+
+    properties:
+      marvell,function:
+        $ref: "/schemas/types.yaml#/definitions/string"
+        description:
+          Indicates the function to select.
+        enum: [ audio, gpio, gpo, mii, nand, pex, ptp, ptp-1, ptp-2, sdio,
+                spi, sysrst, twsi0, uart0, uart1 ]
+
+      marvell,pins:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description:
+          Array of MPP pins to be used for the given function.
+        minItems: 1
+        items:
+          pattern: '^mpp([0-9]|[1-3][0-9]|4[0-4])$'
+
+    required:
+      - marvell,function
+      - marvell,pins
+
+  additionalProperties: false
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pinctrl@80020100 {
+      compatible = "marvell,88f6180-pinctrl";
+      reg = <0x80020100 0x20>;
+
+      pmx_spi: pmx-spidc {
+        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
+        marvell,function = "spi";
+      };
+
+      pmx_spic_gpio: pmx-gpio-spi {
+        marvell,pins = "mpp26", "mpp27";
+        marvell,function = "gpio";
+      };
+    };
diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml
new file mode 100644
index 000000000000..b1c1d06388e2
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/marvell,88f6190-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Kirkwood 88f6190 pin controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+description:
+  Bindings for Marvell's Kirkwood 88F6190 memory-mapped pin controller.
+
+properties:
+  compatible:
+    items:
+      - const: marvell,88f6190-pinctrl
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  'pmx-.*$':
+    type: object
+
+    properties:
+      marvell,function:
+        $ref: "/schemas/types.yaml#/definitions/string"
+        description:
+          Indicates the function to select.
+        enum: [ ge1, gpio, gpo, mii, mii-1, nand, pex, ptp, ptp-1, ptp-2,
+                sata0, sdio, spi, sysrst, twsi0, uart0, uart1 ]
+
+      marvell,pins:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description:
+          Array of MPP pins to be used for the given function.
+        minItems: 1
+        items:
+          pattern: '^mpp([0-9]|[1-3][0-9]|4[0-4])$'
+
+    required:
+      - marvell,function
+      - marvell,pins
+
+  additionalProperties: false
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pinctrl@80020100 {
+      compatible = "marvell,88f6180-pinctrl";
+      reg = <0x80020100 0x20>;
+
+      pmx_spi: pmx-spidc {
+        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
+        marvell,function = "spi";
+      };
+
+      pmx_spi_gpio: pmx-gpio-spi {
+        marvell,pins = "mpp26", "mpp27";
+        marvell,function = "gpio";
+      };
+    };
diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml
new file mode 100644
index 000000000000..e23a6a4dc1bb
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/marvell,88f6192-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Kirkwood 88f6192 pin controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+description:
+  Bindings for Marvell's Kirkwood 88F6192 memory-mapped pin controller.
+
+properties:
+  compatible:
+    items:
+      - const: marvell,88f6192-pinctrl
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  '^pmx-.*$':
+    type: object
+
+    properties:
+      marvell,function:
+        $ref: "/schemas/types.yaml#/definitions/string"
+        description:
+          Indicates the function to select.
+        enum: [ audio, ge1, gpio, gpo, mii, mii-1, nand, pex, ptp, ptp-1, ptp-2,
+                sata0, sata1, sdio, spi, sysrst, tdm, ts, twsi0, uart0, uart1 ]
+
+      marvell,pins:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description:
+          Array of MPP pins to be used for the given function.
+        minItems: 1
+        items:
+          pattern: '^mpp([0-9]|[1-3][0-9]|4[0-4])$'
+
+    required:
+      - marvell,function
+      - marvell,pins
+
+  additionalProperties: false
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pinctrl@80020100 {
+      compatible = "marvell,88f6180-pinctrl";
+      reg = <0x80020100 0x20>;
+
+      pmx_spi: pmx-spidc {
+        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
+        marvell,function = "spi";
+      };
+
+      pmx_spic_gpio: pmx-gpio-spi {
+        marvell,pins = "mpp26", "mpp27";
+        marvell,function = "gpio";
+      };
+    };
diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml
new file mode 100644
index 000000000000..f83eef4323d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/marvell,88f6281-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Kirkwood 88f6281 pin controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+description:
+  Bindings for Marvell's Kirkwood 88F6281 memory-mapped pin controller.
+
+properties:
+  compatible:
+    items:
+      - const: marvell,88f6281-pinctrl
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  '^pmx-':
+    type: object
+
+    properties:
+      marvell,function:
+        $ref: "/schemas/types.yaml#/definitions/string"
+        description:
+          Indicates the function to select.
+        enum: [ audio, ge1, gpio, gpo, mii, mii-1, nand, pex, ptp, ptp-1, ptp-2,
+                sata0, sata1, sdio, spi, sysrst, tdm, ts, twsi0, twsi1, uart0,
+                uart1 ]
+
+      marvell,pins:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description:
+          Array of MPP pins to be used for the given function.
+        minItems: 1
+        items:
+          pattern: '^mpp([0-9]|[1-3][0-9]|4[0-9])$'
+
+    required:
+      - marvell,function
+      - marvell,pins
+
+  additionalProperties: false
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pinctrl@80020100 {
+      compatible = "marvell,88f6180-pinctrl";
+      reg = <0x80020100 0x20>;
+
+      pmx_spi: pmx-spi {
+        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
+        marvell,function = "spi";
+      };
+
+      pmx_spi_gpio: pmx-gpio-spi {
+        marvell,pins = "mpp26", "mpp27";
+        marvell,function = "gpio";
+      };
+    };
diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml
new file mode 100644
index 000000000000..d3cbeaa37e75
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/marvell,88f6282-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Kirkwood 88f6282 pin controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+description:
+  Bindings for Marvell's Kirkwood 88F6282 memory-mapped pin controller.
+
+properties:
+  compatible:
+    items:
+      - const: marvell,88f6282-pinctrl
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  '^pmx-':
+    type: object
+
+    properties:
+      marvell,function:
+        $ref: "/schemas/types.yaml#/definitions/string"
+        description:
+          Indicates the function to select.
+        enum: [ audio, ge1, gpio, gpo, lcd, mii, mii-1, nand, pex,
+                sata0, sata1, sdio, spi, sysrst, tdm, ts, twsi0, twsi1, uart0,
+                uart1 ]
+
+      marvell,pins:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description:
+          Array of MPP pins to be used for the given function.
+        minItems: 1
+        items:
+          pattern: '^mpp([0-9]|[1-3][0-9]|4[0-8])$'
+
+    required:
+      - marvell,function
+      - marvell,pins
+
+  additionalProperties: false
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pinctrl@80020100 {
+      compatible = "marvell,88f6180-pinctrl";
+      reg = <0x80020100 0x20>;
+
+      pmx_spi: pmx-spidc {
+        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
+        marvell,function = "spi";
+      };
+
+      pmx_spi_gpio: pmx-gpio-spi {
+        marvell,pins = "mpp26", "mpp27";
+        marvell,function = "gpio";
+      };
+    };
diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml
new file mode 100644
index 000000000000..60f7b209bfc1
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/marvell,98dx1135-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell 98dx1135 pin controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+description:
+  Bindings for Marvell's 98DX1135 memory-mapped pin controller.
+
+properties:
+  compatible:
+    items:
+      - const: marvell,98dx1135-pinctrl
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  '^pmx-':
+    type: object
+
+    properties:
+      marvell,function:
+        $ref: "/schemas/types.yaml#/definitions/string"
+        description:
+          Indicates the function to select.
+        enum: [ gpio, gpo, nand, pex, spi, sysrst, twsi0, uart0, uart1 ]
+
+      marvell,pins:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description:
+          Array of MPP pins to be used for the given function.
+        minItems: 1
+        items:
+          pattern: '^mpp([0-9]|[1-3][0-9]|4[0-4])$'
+
+    required:
+      - marvell,function
+      - marvell,pins
+
+  additionalProperties: false
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pinctrl@80020100 {
+      compatible = "marvell,88f6180-pinctrl";
+      reg = <0x80020100 0x20>;
+
+      pmx_spi: pmx-spidc {
+        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
+        marvell,function = "spi";
+      };
+
+      pmx_spi_gpio: pmx-gpio-spi {
+        marvell,pins = "mpp26", "mpp27";
+        marvell,function = "gpio";
+      };
+    };
diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml
new file mode 100644
index 000000000000..cf5a2c8cf8f1
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/marvell,98dx4122-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell 98dx4122 pin controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+description:
+  Bindings for Marvell's 98DX4122 memory-mapped pin controller.
+
+properties:
+  compatible:
+    items:
+      - const: marvell,98dx4122-pinctrl
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  '^pmx-':
+    type: object
+
+    properties:
+      marvell,function:
+        $ref: "/schemas/types.yaml#/definitions/string"
+        description:
+          Indicates the function to select.
+        enum: [ gpio, gpo, nand, pex, spi, sysrst, twsi0, uart0, uart1 ]
+
+      marvell,pins:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description:
+          Array of MPP pins to be used for the given function.
+        minItems: 1
+        items:
+          pattern: '^mpp([0-9]|[1-3][0-9]|4[0-4])$'
+
+    required:
+      - marvell,function
+      - marvell,pins
+
+  additionalProperties: false
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pinctrl@80020100 {
+      compatible = "marvell,88f6180-pinctrl";
+      reg = <0x80020100 0x20>;
+
+      pmx_spi: pmx-spidc {
+        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
+        marvell,function = "spi";
+      };
+
+      pmx_spi_gpio: pmx-gpio-spi {
+        marvell,pins = "mpp26", "mpp27";
+        marvell,function = "gpio";
+      };
+    };
diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt
deleted file mode 100644
index 2932f171ee85..000000000000
--- a/Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt
+++ /dev/null
@@ -1,359 +0,0 @@
-* Marvell Kirkwood SoC pinctrl driver for mpp
-
-Please refer to marvell,mvebu-pinctrl.txt in this directory for common binding
-part and usage.
-
-Required properties:
-- compatible: "marvell,88f6180-pinctrl",
-              "marvell,88f6190-pinctrl", "marvell,88f6192-pinctrl",
-              "marvell,88f6281-pinctrl", "marvell,88f6282-pinctrl",
-              "marvell,98dx4122-pinctrl", "marvell,98dx1135-pinctrl"
-- reg: register specifier of MPP registers
-
-This driver supports all kirkwood variants, i.e. 88f6180, 88f619x, and 88f628x.
-It also support the 88f6281-based variant in the 98dx412x Bobcat SoCs.
-
-Available mpp pins/groups and functions:
-Note: brackets (x) are not part of the mpp name for marvell,function and given
-only for more detailed description in this document.
-
-* Marvell Kirkwood 88f6180
-
-name          pins     functions
-================================================================================
-mpp0          0        gpio, nand(io2), spi(cs)
-mpp1          1        gpo, nand(io3), spi(mosi)
-mpp2          2        gpo, nand(io4), spi(sck)
-mpp3          3        gpo, nand(io5), spi(miso)
-mpp4          4        gpio, nand(io6), uart0(rxd), ptp(clk)
-mpp5          5        gpo, nand(io7), uart0(txd), ptp(trig)
-mpp6          6        sysrst(out), spi(mosi), ptp(trig)
-mpp7          7        gpo, pex(rsto), spi(cs), ptp(trig)
-mpp8          8        gpio, twsi0(sda), uart0(rts), uart1(rts), ptp(clk),
-                       mii(col)
-mpp9          9        gpio, twsi(sck), uart0(cts), uart1(cts), ptp(evreq),
-                       mii(crs)
-mpp10         10       gpo, spi(sck), uart0(txd), ptp(trig)
-mpp11         11       gpio, spi(miso), uart0(rxd), ptp(clk), ptp-1(evreq),
-                       ptp-2(trig)
-mpp12         12       gpo, sdio(clk)
-mpp13         13       gpio, sdio(cmd), uart1(txd)
-mpp14         14       gpio, sdio(d0), uart1(rxd), mii(col)
-mpp15         15       gpio, sdio(d1), uart0(rts), uart1(txd)
-mpp16         16       gpio, sdio(d2), uart0(cts), uart1(rxd), mii(crs)
-mpp17         17       gpio, sdio(d3)
-mpp18         18       gpo, nand(io0)
-mpp19         19       gpo, nand(io1)
-mpp35         35       gpio, mii(rxerr)
-mpp36         36       gpio, audio(spdifi)
-mpp37         37       gpio, audio(spdifo)
-mpp38         38       gpio, audio(rmclk)
-mpp39         39       gpio, audio(bclk)
-mpp40         40       gpio, audio(sdo)
-mpp41         41       gpio, audio(lrclk)
-mpp42         42       gpio, audio(mclk)
-mpp43         43       gpio, audio(sdi)
-mpp44         44       gpio, audio(extclk)
-
-* Marvell Kirkwood 88f6190
-
-name          pins     functions
-================================================================================
-mpp0          0        gpio, nand(io2), spi(cs)
-mpp1          1        gpo, nand(io3), spi(mosi)
-mpp2          2        gpo, nand(io4), spi(sck)
-mpp3          3        gpo, nand(io5), spi(miso)
-mpp4          4        gpio, nand(io6), uart0(rxd), ptp(clk)
-mpp5          5        gpo, nand(io7), uart0(txd), ptp(trig), sata0(act)
-mpp6          6        sysrst(out), spi(mosi), ptp(trig)
-mpp7          7        gpo, pex(rsto), spi(cs), ptp(trig)
-mpp8          8        gpio, twsi0(sda), uart0(rts), uart1(rts), ptp(clk),
-                       mii(col), mii-1(rxerr)
-mpp9          9        gpio, twsi(sck), uart0(cts), uart1(cts), ptp(evreq),
-                       mii(crs), sata0(prsnt)
-mpp10         10       gpo, spi(sck), uart0(txd), ptp(trig)
-mpp11         11       gpio, spi(miso), uart0(rxd), ptp(clk), ptp-1(evreq),
-                       ptp-2(trig), sata0(act)
-mpp12         12       gpo, sdio(clk)
-mpp13         13       gpio, sdio(cmd), uart1(txd)
-mpp14         14       gpio, sdio(d0), uart1(rxd), mii(col)
-mpp15         15       gpio, sdio(d1), uart0(rts), uart1(txd), sata0(act)
-mpp16         16       gpio, sdio(d2), uart0(cts), uart1(rxd), mii(crs)
-mpp17         17       gpio, sdio(d3), sata0(prsnt)
-mpp18         18       gpo, nand(io0)
-mpp19         19       gpo, nand(io1)
-mpp20         20       gpio, ge1(txd0)
-mpp21         21       gpio, ge1(txd1), sata0(act)
-mpp22         22       gpio, ge1(txd2)
-mpp23         23       gpio, ge1(txd3), sata0(prsnt)
-mpp24         24       gpio, ge1(rxd0)
-mpp25         25       gpio, ge1(rxd1)
-mpp26         26       gpio, ge1(rxd2)
-mpp27         27       gpio, ge1(rxd3)
-mpp28         28       gpio, ge1(col)
-mpp29         29       gpio, ge1(txclk)
-mpp30         30       gpio, ge1(rxclk)
-mpp31         31       gpio, ge1(rxclk)
-mpp32         32       gpio, ge1(txclko)
-mpp33         33       gpo, ge1(txclk)
-mpp34         34       gpio, ge1(txen)
-mpp35         35       gpio, ge1(rxerr), sata0(act), mii(rxerr)
-
-* Marvell Kirkwood 88f6192
-
-name          pins     functions
-================================================================================
-mpp0          0        gpio, nand(io2), spi(cs)
-mpp1          1        gpo, nand(io3), spi(mosi)
-mpp2          2        gpo, nand(io4), spi(sck)
-mpp3          3        gpo, nand(io5), spi(miso)
-mpp4          4        gpio, nand(io6), uart0(rxd), ptp(clk), sata1(act)
-mpp5          5        gpo, nand(io7), uart0(txd), ptp(trig), sata0(act)
-mpp6          6        sysrst(out), spi(mosi), ptp(trig)
-mpp7          7        gpo, pex(rsto), spi(cs), ptp(trig)
-mpp8          8        gpio, twsi0(sda), uart0(rts), uart1(rts), ptp(clk),
-                       mii(col), mii-1(rxerr), sata1(prsnt)
-mpp9          9        gpio, twsi(sck), uart0(cts), uart1(cts), ptp(evreq),
-                       mii(crs), sata0(prsnt)
-mpp10         10       gpo, spi(sck), uart0(txd), ptp(trig), sata1(act)
-mpp11         11       gpio, spi(miso), uart0(rxd), ptp(clk), ptp-1(evreq),
-                       ptp-2(trig), sata0(act)
-mpp12         12       gpo, sdio(clk)
-mpp13         13       gpio, sdio(cmd), uart1(txd)
-mpp14         14       gpio, sdio(d0), uart1(rxd), mii(col), sata1(prsnt)
-mpp15         15       gpio, sdio(d1), uart0(rts), uart1(txd), sata0(act)
-mpp16         16       gpio, sdio(d2), uart0(cts), uart1(rxd), mii(crs),
-                       sata1(act)
-mpp17         17       gpio, sdio(d3), sata0(prsnt)
-mpp18         18       gpo, nand(io0)
-mpp19         19       gpo, nand(io1)
-mpp20         20       gpio, ge1(txd0), ts(mp0), tdm(tx0ql), audio(spdifi),
-                       sata1(act)
-mpp21         21       gpio, ge1(txd1), sata0(act), ts(mp1), tdm(rx0ql),
-                       audio(spdifo)
-mpp22         22       gpio, ge1(txd2), ts(mp2), tdm(tx2ql), audio(rmclk),
-                       sata1(prsnt)
-mpp23         23       gpio, ge1(txd3), sata0(prsnt), ts(mp3), tdm(rx2ql),
-                       audio(bclk)
-mpp24         24       gpio, ge1(rxd0), ts(mp4), tdm(spi-cs0), audio(sdo)
-mpp25         25       gpio, ge1(rxd1), ts(mp5), tdm(spi-sck), audio(lrclk)
-mpp26         26       gpio, ge1(rxd2), ts(mp6), tdm(spi-miso), audio(mclk)
-mpp27         27       gpio, ge1(rxd3), ts(mp7), tdm(spi-mosi), audio(sdi)
-mpp28         28       gpio, ge1(col), ts(mp8), tdm(int), audio(extclk)
-mpp29         29       gpio, ge1(txclk), ts(mp9), tdm(rst)
-mpp30         30       gpio, ge1(rxclk), ts(mp10), tdm(pclk)
-mpp31         31       gpio, ge1(rxclk), ts(mp11), tdm(fs)
-mpp32         32       gpio, ge1(txclko), ts(mp12), tdm(drx)
-mpp33         33       gpo, ge1(txclk), tdm(drx)
-mpp34         34       gpio, ge1(txen), tdm(spi-cs1)
-mpp35         35       gpio, ge1(rxerr), sata0(act), mii(rxerr), tdm(tx0ql)
-
-* Marvell Kirkwood 88f6281
-
-name          pins     functions
-================================================================================
-mpp0          0        gpio, nand(io2), spi(cs)
-mpp1          1        gpo, nand(io3), spi(mosi)
-mpp2          2        gpo, nand(io4), spi(sck)
-mpp3          3        gpo, nand(io5), spi(miso)
-mpp4          4        gpio, nand(io6), uart0(rxd), ptp(clk), sata1(act)
-mpp5          5        gpo, nand(io7), uart0(txd), ptp(trig), sata0(act)
-mpp6          6        sysrst(out), spi(mosi), ptp(trig)
-mpp7          7        gpo, pex(rsto), spi(cs), ptp(trig)
-mpp8          8        gpio, twsi0(sda), uart0(rts), uart1(rts), ptp(clk),
-                       mii(col), mii-1(rxerr), sata1(prsnt)
-mpp9          9        gpio, twsi(sck), uart0(cts), uart1(cts), ptp(evreq),
-                       mii(crs), sata0(prsnt)
-mpp10         10       gpo, spi(sck), uart0(txd), ptp(trig), sata1(act)
-mpp11         11       gpio, spi(miso), uart0(rxd), ptp(clk), ptp-1(evreq),
-                       ptp-2(trig), sata0(act)
-mpp12         12       gpio, sdio(clk)
-mpp13         13       gpio, sdio(cmd), uart1(txd)
-mpp14         14       gpio, sdio(d0), uart1(rxd), mii(col), sata1(prsnt)
-mpp15         15       gpio, sdio(d1), uart0(rts), uart1(txd), sata0(act)
-mpp16         16       gpio, sdio(d2), uart0(cts), uart1(rxd), mii(crs),
-                       sata1(act)
-mpp17         17       gpio, sdio(d3), sata0(prsnt)
-mpp18         18       gpo, nand(io0)
-mpp19         19       gpo, nand(io1)
-mpp20         20       gpio, ge1(txd0), ts(mp0), tdm(tx0ql), audio(spdifi),
-                       sata1(act)
-mpp21         21       gpio, ge1(txd1), sata0(act), ts(mp1), tdm(rx0ql),
-                       audio(spdifo)
-mpp22         22       gpio, ge1(txd2), ts(mp2), tdm(tx2ql), audio(rmclk),
-                       sata1(prsnt)
-mpp23         23       gpio, ge1(txd3), sata0(prsnt), ts(mp3), tdm(rx2ql),
-                       audio(bclk)
-mpp24         24       gpio, ge1(rxd0), ts(mp4), tdm(spi-cs0), audio(sdo)
-mpp25         25       gpio, ge1(rxd1), ts(mp5), tdm(spi-sck), audio(lrclk)
-mpp26         26       gpio, ge1(rxd2), ts(mp6), tdm(spi-miso), audio(mclk)
-mpp27         27       gpio, ge1(rxd3), ts(mp7), tdm(spi-mosi), audio(sdi)
-mpp28         28       gpio, ge1(col), ts(mp8), tdm(int), audio(extclk)
-mpp29         29       gpio, ge1(txclk), ts(mp9), tdm(rst)
-mpp30         30       gpio, ge1(rxclk), ts(mp10), tdm(pclk)
-mpp31         31       gpio, ge1(rxclk), ts(mp11), tdm(fs)
-mpp32         32       gpio, ge1(txclko), ts(mp12), tdm(drx)
-mpp33         33       gpo, ge1(txclk), tdm(drx)
-mpp34         34       gpio, ge1(txen), tdm(spi-cs1), sata1(act)
-mpp35         35       gpio, ge1(rxerr), sata0(act), mii(rxerr), tdm(tx0ql)
-mpp36         36       gpio, ts(mp0), tdm(spi-cs1), audio(spdifi)
-mpp37         37       gpio, ts(mp1), tdm(tx2ql), audio(spdifo)
-mpp38         38       gpio, ts(mp2), tdm(rx2ql), audio(rmclk)
-mpp39         39       gpio, ts(mp3), tdm(spi-cs0), audio(bclk)
-mpp40         40       gpio, ts(mp4), tdm(spi-sck), audio(sdo)
-mpp41         41       gpio, ts(mp5), tdm(spi-miso), audio(lrclk)
-mpp42         42       gpio, ts(mp6), tdm(spi-mosi), audio(mclk)
-mpp43         43       gpio, ts(mp7), tdm(int), audio(sdi)
-mpp44         44       gpio, ts(mp8), tdm(rst), audio(extclk)
-mpp45         45       gpio, ts(mp9), tdm(pclk)
-mpp46         46       gpio, ts(mp10), tdm(fs)
-mpp47         47       gpio, ts(mp11), tdm(drx)
-mpp48         48       gpio, ts(mp12), tdm(dtx)
-mpp49         49       gpio, ts(mp9), tdm(rx0ql), ptp(clk)
-
-* Marvell Kirkwood 88f6282
-
-name          pins     functions
-================================================================================
-mpp0          0        gpio, nand(io2), spi(cs)
-mpp1          1        gpo, nand(io3), spi(mosi)
-mpp2          2        gpo, nand(io4), spi(sck)
-mpp3          3        gpo, nand(io5), spi(miso)
-mpp4          4        gpio, nand(io6), uart0(rxd), sata1(act), lcd(hsync)
-mpp5          5        gpo, nand(io7), uart0(txd), sata0(act), lcd(vsync)
-mpp6          6        sysrst(out), spi(mosi)
-mpp7          7        gpo, spi(cs), lcd(pwm)
-mpp8          8        gpio, twsi0(sda), uart0(rts), uart1(rts), mii(col),
-                       mii-1(rxerr), sata1(prsnt)
-mpp9          9        gpio, twsi(sck), uart0(cts), uart1(cts), mii(crs),
-                       sata0(prsnt)
-mpp10         10       gpo, spi(sck), uart0(txd), sata1(act)
-mpp11         11       gpio, spi(miso), uart0(rxd), sata0(act)
-mpp12         12       gpo, sdio(clk), audio(spdifo), spi(mosi), twsi(sda)
-mpp13         13       gpio, sdio(cmd), uart1(txd), audio(rmclk), lcd(pwm)
-mpp14         14       gpio, sdio(d0), uart1(rxd), mii(col), sata1(prsnt),
-                       audio(spdifi), audio-1(sdi)
-mpp15         15       gpio, sdio(d1), uart0(rts), uart1(txd), sata0(act),
-                       spi(cs)
-mpp16         16       gpio, sdio(d2), uart0(cts), uart1(rxd), mii(crs),
-                       sata1(act), lcd(extclk)
-mpp17         17       gpio, sdio(d3), sata0(prsnt), sata1(act), twsi1(sck)
-mpp18         18       gpo, nand(io0), pex(clkreq)
-mpp19         19       gpo, nand(io1)
-mpp20         20       gpio, ge1(txd0), ts(mp0), tdm(tx0ql), audio(spdifi),
-                       sata1(act), lcd(d0)
-mpp21         21       gpio, ge1(txd1), sata0(act), ts(mp1), tdm(rx0ql),
-                       audio(spdifo), lcd(d1)
-mpp22         22       gpio, ge1(txd2), ts(mp2), tdm(tx2ql), audio(rmclk),
-                       sata1(prsnt), lcd(d2)
-mpp23         23       gpio, ge1(txd3), sata0(prsnt), ts(mp3), tdm(rx2ql),
-                       audio(bclk), lcd(d3)
-mpp24         24       gpio, ge1(rxd0), ts(mp4), tdm(spi-cs0), audio(sdo),
-                       lcd(d4)
-mpp25         25       gpio, ge1(rxd1), ts(mp5), tdm(spi-sck), audio(lrclk),
-                       lcd(d5)
-mpp26         26       gpio, ge1(rxd2), ts(mp6), tdm(spi-miso), audio(mclk),
-                       lcd(d6)
-mpp27         27       gpio, ge1(rxd3), ts(mp7), tdm(spi-mosi), audio(sdi),
-                       lcd(d7)
-mpp28         28       gpio, ge1(col), ts(mp8), tdm(int), audio(extclk),
-                       lcd(d8)
-mpp29         29       gpio, ge1(txclk), ts(mp9), tdm(rst), lcd(d9)
-mpp30         30       gpio, ge1(rxclk), ts(mp10), tdm(pclk), lcd(d10)
-mpp31         31       gpio, ge1(rxclk), ts(mp11), tdm(fs), lcd(d11)
-mpp32         32       gpio, ge1(txclko), ts(mp12), tdm(drx), lcd(d12)
-mpp33         33       gpo, ge1(txclk), tdm(drx), lcd(d13)
-mpp34         34       gpio, ge1(txen), tdm(spi-cs1), sata1(act), lcd(d14)
-mpp35         35       gpio, ge1(rxerr), sata0(act), mii(rxerr), tdm(tx0ql),
-                       lcd(d15)
-mpp36         36       gpio, ts(mp0), tdm(spi-cs1), audio(spdifi), twsi1(sda)
-mpp37         37       gpio, ts(mp1), tdm(tx2ql), audio(spdifo), twsi1(sck)
-mpp38         38       gpio, ts(mp2), tdm(rx2ql), audio(rmclk), lcd(d18)
-mpp39         39       gpio, ts(mp3), tdm(spi-cs0), audio(bclk), lcd(d19)
-mpp40         40       gpio, ts(mp4), tdm(spi-sck), audio(sdo), lcd(d20)
-mpp41         41       gpio, ts(mp5), tdm(spi-miso), audio(lrclk), lcd(d21)
-mpp42         42       gpio, ts(mp6), tdm(spi-mosi), audio(mclk), lcd(d22)
-mpp43         43       gpio, ts(mp7), tdm(int), audio(sdi), lcd(d23)
-mpp44         44       gpio, ts(mp8), tdm(rst), audio(extclk), lcd(clk)
-mpp45         45       gpio, ts(mp9), tdm(pclk), lcd(e)
-mpp46         46       gpio, ts(mp10), tdm(fs), lcd(hsync)
-mpp47         47       gpio, ts(mp11), tdm(drx), lcd(vsync)
-mpp48         48       gpio, ts(mp12), tdm(dtx), lcd(d16)
-mpp49         49       gpo, tdm(rx0ql), pex(clkreq), lcd(d17)
-
-* Marvell Bobcat 98dx4122
-
-name          pins     functions
-================================================================================
-mpp0          0        gpio, nand(io2), spi(cs)
-mpp1          1        gpo, nand(io3), spi(mosi)
-mpp2          2        gpo, nand(io4), spi(sck)
-mpp3          3        gpo, nand(io5), spi(miso)
-mpp4          4        gpio, nand(io6), uart0(rxd)
-mpp5          5        gpo, nand(io7), uart0(txd)
-mpp6          6        sysrst(out), spi(mosi)
-mpp7          7        gpo, pex(rsto), spi(cs)
-mpp8          8        gpio, twsi0(sda), uart0(rts), uart1(rts)
-mpp9          9        gpio, twsi(sck), uart0(cts), uart1(cts)
-mpp10         10       gpo, spi(sck), uart0(txd)
-mpp11         11       gpio, spi(miso), uart0(rxd)
-mpp13         13       gpio, uart1(txd)
-mpp14         14       gpio, uart1(rxd)
-mpp15         15       gpio, uart0(rts)
-mpp16         16       gpio, uart0(cts)
-mpp18         18       gpo, nand(io0)
-mpp19         19       gpo, nand(io1)
-mpp34         34       gpio
-mpp35         35       gpio
-mpp36         36       gpio
-mpp37         37       gpio
-mpp38         38       gpio
-mpp39         39       gpio
-mpp40         40       gpio
-mpp41         41       gpio
-mpp42         42       gpio
-mpp43         43       gpio
-mpp44         44       gpio
-mpp45         45       gpio
-mpp49         49       gpio
-
-* Marvell Poncat2 98dx1135
-
-name          pins     functions
-================================================================================
-
-mpp0          0        gpio, nand(io2), spi(cs)
-mpp1          1        gpo, nand(io3), spi(mosi)
-mpp2          2        gpo, nand(io4), spi(sck)
-mpp3          3        gpo, nand(io5), spi(miso)
-mpp4          4        gpio, nand(io6), uart0(rxd)
-mpp5          5        gpo, nand(io7), uart0(txd)
-mpp6          6        sysrst(out)
-mpp7          7        gpo, spi(cs)
-mpp8          8        gpio, twsi0(sda), uart1(rts)
-mpp9          9        gpio, twsi(sck), uart1(cts)
-mpp10         10       gpo, uart0(txd)
-mpp11         11       gpio, uart0(rxd)
-mpp13         13       gpio, uart1(txd)
-mpp14         14       gpio, uart1(rxd)
-mpp15         15       gpio, uart0(rts)
-mpp16         16       gpio, uart0(cts)
-mpp17         17       gpio, nand(cle)
-mpp18         18       gpo, nand(io0)
-mpp19         19       gpo, nand(io1)
-mpp20         20       gpio
-mpp21         21       gpio
-mpp22         22       gpio
-mpp23         23       gpio
-mpp24         24       gpio
-mpp25         25       gpio
-mpp26         26       gpio
-mpp27         27       gpio
-mpp28         28       gpio, nand(ren)
-mpp29         29       gpio, nand(wen)
-mpp30         30       gpio
-mpp31         31       gpio
-mpp32         32       gpio
-mpp33         33       gpio
-mpp34         34       gpio, nand(ale)
-mpp35         35       gpio, nand(cen)
-- 
2.37.2

