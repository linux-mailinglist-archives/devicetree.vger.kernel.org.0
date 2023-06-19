Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3447735034
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:30:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231439AbjFSJag (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231761AbjFSJaD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:30:03 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 420201994
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:29:26 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687166965;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=0deo1sCqZPvcxv3hWzdd9xwp6LIJeBhlyjLpaHqVONQ=;
        b=puZUwAQOeKIPFWjmaxX0Dyjmx09NkHpu/J5x5sDz7sqYIl7IavuXzdYNO8oTJPrWEjw3OJ
        EcN+SleXhMY3i7XnLtr8+isZEAsh+PXv7iyeJjw9KasD19CAqvv9h+z7Een/eBcUSkI4zb
        g+kL16HJG0hjic3VT8YKMT4vsmgkrc+HYUW4AVFrZGC0ORhgjnn1zzeRaBcN0qglOv0Ct0
        G3quE4/RrVwdaJQN0ssnpiheqTdVUPtxOYIKiVHTNyL5Dx7f73oSVCy8S/7akefHriGwWp
        WftNpEOmsezYHcF+3RQcrHBbBqswy1RtBUTmp3tlFOMBeI578M2up0r0DtVT3Q==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id B91B41BF210;
        Mon, 19 Jun 2023 09:29:23 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 02/17] dt-bindings: mtd: Create a file for raw NAND chip properties
Date:   Mon, 19 Jun 2023 11:29:01 +0200
Message-Id: <20230619092916.3028470-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619092916.3028470-1-miquel.raynal@bootlin.com>
References: <20230619092916.3028470-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In an effort to constrain as much as we can the existing binding, we
want to add "unevaluatedProperties: false" in all the NAND chip
descriptions part of NAND controller bindings. But in order to do that
properly, we also need to reference a file which contains all the
"allowed" properties. Right now this file is nand-chip.yaml but in
practice raw NAND controllers may use additional properties in their
NAND chip children node. These properties are listed under
nand-controller.yaml, which makes the "unevaluatedProperties" checks
fail while the description are valid. We need to move these NAND chip
related properties into another file, because we do not want to pollute
nand-chip.yaml which is also referenced by eg. SPI-NAND devices.

Let's create a raw-nand-chip.yaml file to reference all the properties a
raw NAND chip description can contain. The chain of inheritance becomes:
  nand-controller.yaml <- raw-nand-chip.yaml
  raw-nand-chip.yaml   <- nand-chip.yaml
  spi-nand.yaml        <- nand-chip.yaml

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/mtd/nand-controller.yaml         |  85 +--------------
 .../bindings/mtd/raw-nand-chip.yaml           | 102 ++++++++++++++++++
 2 files changed, 104 insertions(+), 83 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index f70a32d2d9d4..83a4fe4cc29d 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -16,16 +16,6 @@ description: |
   children nodes of the NAND controller. This representation should be
   enforced even for simple controllers supporting only one chip.
 
-  The ECC strength and ECC step size properties define the user
-  desires in terms of correction capability of a controller. Together,
-  they request the ECC engine to correct {strength} bit errors per
-  {size} bytes.
-
-  The interpretation of these parameters is implementation-defined, so
-  not all implementations must support all possible
-  combinations. However, implementations are encouraged to further
-  specify the value(s) they support.
-
 properties:
   $nodename:
     pattern: "^nand-controller(@.*)?"
@@ -51,79 +41,8 @@ properties:
 
 patternProperties:
   "^nand@[a-f0-9]$":
-    $ref: nand-chip.yaml#
-
-    properties:
-      reg:
-        description:
-          Contains the chip-select IDs.
-
-      nand-ecc-placement:
-        description:
-          Location of the ECC bytes. This location is unknown by default
-          but can be explicitly set to "oob", if all ECC bytes are
-          known to be stored in the OOB area, or "interleaved" if ECC
-          bytes will be interleaved with regular data in the main area.
-        $ref: /schemas/types.yaml#/definitions/string
-        enum: [ oob, interleaved ]
-
-      nand-bus-width:
-        description:
-          Bus width to the NAND chip
-        $ref: /schemas/types.yaml#/definitions/uint32
-        enum: [8, 16]
-        default: 8
-
-      nand-on-flash-bbt:
-        description:
-          With this property, the OS will search the device for a Bad
-          Block Table (BBT). If not found, it will create one, reserve
-          a few blocks at the end of the device to store it and update
-          it as the device ages. Otherwise, the out-of-band area of a
-          few pages of all the blocks will be scanned at boot time to
-          find Bad Block Markers (BBM). These markers will help to
-          build a volatile BBT in RAM.
-        $ref: /schemas/types.yaml#/definitions/flag
-
-      nand-ecc-maximize:
-        description:
-          Whether or not the ECC strength should be maximized. The
-          maximum ECC strength is both controller and chip
-          dependent. The ECC engine has to select the ECC config
-          providing the best strength and taking the OOB area size
-          constraint into account. This is particularly useful when
-          only the in-band area is used by the upper layers, and you
-          want to make your NAND as reliable as possible.
-        $ref: /schemas/types.yaml#/definitions/flag
-
-      nand-is-boot-medium:
-        description:
-          Whether or not the NAND chip is a boot medium. Drivers might
-          use this information to select ECC algorithms supported by
-          the boot ROM or similar restrictions.
-        $ref: /schemas/types.yaml#/definitions/flag
-
-      nand-rb:
-        description:
-          Contains the native Ready/Busy IDs.
-        $ref: /schemas/types.yaml#/definitions/uint32-array
-
-      rb-gpios:
-        description:
-          Contains one or more GPIO descriptor (the numper of descriptor
-          depends on the number of R/B pins exposed by the flash) for the
-          Ready/Busy pins. Active state refers to the NAND ready state and
-          should be set to GPIOD_ACTIVE_HIGH unless the signal is inverted.
-
-      wp-gpios:
-        description:
-          Contains one GPIO descriptor for the Write Protect pin.
-          Active state refers to the NAND Write Protect state and should be
-          set to GPIOD_ACTIVE_LOW unless the signal is inverted.
-        maxItems: 1
-
-    required:
-      - reg
+    type: object
+    $ref: raw-nand-chip.yaml#
 
 required:
   - "#address-cells"
diff --git a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
new file mode 100644
index 000000000000..2caa6a9a73d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raw NAND Chip Common Properties
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+
+allOf:
+  - $ref: nand-chip.yaml#
+
+description: |
+  The ECC strength and ECC step size properties define the user
+  desires in terms of correction capability of a controller. Together,
+  they request the ECC engine to correct {strength} bit errors per
+  {size} bytes for a particular raw NAND chip.
+
+  The interpretation of these parameters is implementation-defined, so
+  not all implementations must support all possible
+  combinations. However, implementations are encouraged to further
+  specify the value(s) they support.
+
+properties:
+  $nodename:
+    pattern: "^nand@[a-f0-9]$"
+
+  reg:
+    description:
+      Contains the chip-select IDs.
+
+  nand-ecc-placement:
+    description:
+      Location of the ECC bytes. This location is unknown by default
+      but can be explicitly set to "oob", if all ECC bytes are
+      known to be stored in the OOB area, or "interleaved" if ECC
+      bytes will be interleaved with regular data in the main area.
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [ oob, interleaved ]
+
+  nand-bus-width:
+    description:
+      Bus width to the NAND chip
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [8, 16]
+    default: 8
+
+  nand-on-flash-bbt:
+    description:
+      With this property, the OS will search the device for a Bad
+      Block Table (BBT). If not found, it will create one, reserve
+      a few blocks at the end of the device to store it and update
+      it as the device ages. Otherwise, the out-of-band area of a
+      few pages of all the blocks will be scanned at boot time to
+      find Bad Block Markers (BBM). These markers will help to
+      build a volatile BBT in RAM.
+    $ref: /schemas/types.yaml#/definitions/flag
+
+  nand-ecc-maximize:
+    description:
+      Whether or not the ECC strength should be maximized. The
+      maximum ECC strength is both controller and chip
+      dependent. The ECC engine has to select the ECC config
+      providing the best strength and taking the OOB area size
+      constraint into account. This is particularly useful when
+      only the in-band area is used by the upper layers, and you
+      want to make your NAND as reliable as possible.
+    $ref: /schemas/types.yaml#/definitions/flag
+
+  nand-is-boot-medium:
+    description:
+      Whether or not the NAND chip is a boot medium. Drivers might
+      use this information to select ECC algorithms supported by
+      the boot ROM or similar restrictions.
+    $ref: /schemas/types.yaml#/definitions/flag
+
+  nand-rb:
+    description:
+      Contains the native Ready/Busy IDs.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  rb-gpios:
+    description:
+      Contains one or more GPIO descriptor (the numper of descriptor
+      depends on the number of R/B pins exposed by the flash) for the
+      Ready/Busy pins. Active state refers to the NAND ready state and
+      should be set to GPIOD_ACTIVE_HIGH unless the signal is inverted.
+
+  wp-gpios:
+    description:
+      Contains one GPIO descriptor for the Write Protect pin.
+      Active state refers to the NAND Write Protect state and should be
+      set to GPIOD_ACTIVE_LOW unless the signal is inverted.
+    maxItems: 1
+
+required:
+  - reg
+
+# This is a generic file other binding inherit from and extend
+additionalProperties: true
-- 
2.34.1

