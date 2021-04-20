Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1014366175
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 23:20:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233769AbhDTVU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 17:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233724AbhDTVUy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 17:20:54 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AC57C06174A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 14:20:22 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id b38so4129713ljf.5
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 14:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rNhM5rVpQmM08hL3KzQ4h+HMm8nosKlrrn7HRRPNe54=;
        b=ttJwLYw+Ce3G6+RdVCfb107ji8sIVTuHUWw/B88xtnotzYCoVbaFmZAdCGbpZF37bL
         mqpbXLJ/eSOI08Uu9wUCidtAGxROAGWGhDGGWnT9F4QRcbF2J+C5QCFV0vXX+eh4HGsN
         Tn0xKXKsLgPHEbZkUQRwbijs767hy6b16S2JRMCV5tT6s/6RUs84YyhhpYm+JLwQ3mfA
         EqZxK69qMMR0gdpDamEQmowWL5iRgiwZqDswRoHDnILBwcG+nmr2CmzKMG9+5NR09+CT
         Swo5hy8Vyk9wTI/8gwJ7aBLEgOgFxgFC+JzMSZ9LbqnafsUtY7/8ABYChRDlSH1JFjjA
         QfGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rNhM5rVpQmM08hL3KzQ4h+HMm8nosKlrrn7HRRPNe54=;
        b=HtS9S3o+adaDIYFu0E8+hZPoSW7/Pg7e65uRrj9P8DPjDgHGCMFs2ZtmrL7SUinPqw
         e0sulaO5wuzQ59oOcM1dN54PjERytgiI12pn6IDMoNDytZJBcf6j0mh2Z6Pe+mp62+7l
         Ufxn6TREwz9EGngLvLUK5e/n3nfGY34WhYS6bkf8c3JT9zcRjC5ttqUAlo/wyc1EIebi
         oyX8mbn/npBPmr27YgQ9zmStRCWtZazgHnR0oJ1Z2cAYffrCNmRK8Hqj0OsSWzAmaSkY
         2+PcjUfXgKjenvTt3UWI/G2wrhGvuURc3+geLrFq6AifGnujsIBN8/+Z9UQc3kTYccEp
         oASQ==
X-Gm-Message-State: AOAM530vt5jPk3X5isfZSCNdtaYoFDvyWpMJxnT2ZGf8Qmzsn2oENkmV
        BhdNe1dTbRoRzP8xDebYtupQug/zIFk=
X-Google-Smtp-Source: ABdhPJyAc7+/fx1IxO3ez5n2JcAG6N+P6fsbEiovFa0XEs+tbg2e3AuOF6tJrnSvZ5mX7mlaAtuoLQ==
X-Received: by 2002:a2e:300d:: with SMTP id w13mr16931845ljw.199.1618953620360;
        Tue, 20 Apr 2021 14:20:20 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id a26sm3137ljk.55.2021.04.20.14.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 14:20:19 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V3] dt-bindings: mtd: brcm,brcmnand: convert to the json-schema
Date:   Tue, 20 Apr 2021 23:20:08 +0200
Message-Id: <20210420212008.13174-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210416195432.24595-1-zajec5@gmail.com>
References: <20210416195432.24595-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This helps validating DTS files.

Changes that require mentioning:
1. Property "clock" was renamed to "clocks"
2. Duplicated properties (defined in nand-controller.yaml) were dropped
3. Compatible "brcm,nand-bcm63168" was added
4. SoC specific "compatible" cases got limited controller versions

Examples changes:
1. Nodes "nand" were renamed to "nand-controller"
2. Nodes "nandcs" were renamed to "nand"
3. Dropped partitions as they were using old syntax and are well
   documented elsewhere anyway

This rewritten binding validates cleanly using the "dt_binding_check".
Some Linux stored DTS files will require updating to make "dtbs_check"
happy.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Drop example partitions that were using deprecated syntax-thanks Rob
V3: "SoC specific "compatible" cases got limited controller versions"
    Thanks Rob for teaching me the items: enum [] trick (no "-")
---
 .../devicetree/bindings/mtd/brcm,brcmnand.txt | 186 --------------
 .../bindings/mtd/brcm,brcmnand.yaml           | 242 ++++++++++++++++++
 2 files changed, 242 insertions(+), 186 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
deleted file mode 100644
index 44335a4f8bfb..000000000000
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
+++ /dev/null
@@ -1,186 +0,0 @@
-* Broadcom STB NAND Controller
-
-The Broadcom Set-Top Box NAND controller supports low-level access to raw NAND
-flash chips. It has a memory-mapped register interface for both control
-registers and for its data input/output buffer. On some SoCs, this controller is
-paired with a custom DMA engine (inventively named "Flash DMA") which supports
-basic PROGRAM and READ functions, among other features.
-
-This controller was originally designed for STB SoCs (BCM7xxx) but is now
-available on a variety of Broadcom SoCs, including some BCM3xxx, BCM63xx, and
-iProc/Cygnus. Its history includes several similar (but not fully register
-compatible) versions.
-
-Required properties:
-- compatible       : May contain an SoC-specific compatibility string (see below)
-                     to account for any SoC-specific hardware bits that may be
-                     added on top of the base core controller.
-                     In addition, must contain compatibility information about
-                     the core NAND controller, of the following form:
-                     "brcm,brcmnand" and an appropriate version compatibility
-                     string, like "brcm,brcmnand-v7.0"
-                     Possible values:
-                         brcm,brcmnand-v2.1
-                         brcm,brcmnand-v2.2
-                         brcm,brcmnand-v4.0
-                         brcm,brcmnand-v5.0
-                         brcm,brcmnand-v6.0
-                         brcm,brcmnand-v6.1
-                         brcm,brcmnand-v6.2
-                         brcm,brcmnand-v7.0
-                         brcm,brcmnand-v7.1
-                         brcm,brcmnand-v7.2
-                         brcm,brcmnand-v7.3
-                         brcm,brcmnand
-- reg              : the register start and length for NAND register region.
-                     (optional) Flash DMA register range (if present)
-                     (optional) NAND flash cache range (if at non-standard offset)
-- reg-names        : a list of the names corresponding to the previous register
-                     ranges. Should contain "nand" and (optionally)
-                     "flash-dma" or "flash-edu" and/or "nand-cache".
-- interrupts       : The NAND CTLRDY interrupt, (if Flash DMA is available)
-                     FLASH_DMA_DONE and if EDU is avaialble and used FLASH_EDU_DONE
-- interrupt-names  : May be "nand_ctlrdy" or "flash_dma_done" or "flash_edu_done",
-                     if broken out as individual interrupts.
-                     May be "nand", if the SoC has the individual NAND
-                     interrupts multiplexed behind another custom piece of
-                     hardware
-- #address-cells   : <1> - subnodes give the chip-select number
-- #size-cells      : <0>
-
-Optional properties:
-- clock                     : reference to the clock for the NAND controller
-- clock-names               : "nand" (required for the above clock)
-- brcm,nand-has-wp          : Some versions of this IP include a write-protect
-                              (WP) control bit. It is always available on >=
-                              v7.0. Use this property to describe the rare
-                              earlier versions of this core that include WP
-
- -- Additional SoC-specific NAND controller properties --
-
-The NAND controller is integrated differently on the variety of SoCs on which it
-is found. Part of this integration involves providing status and enable bits
-with which to control the 8 exposed NAND interrupts, as well as hardware for
-configuring the endianness of the data bus. On some SoCs, these features are
-handled via standard, modular components (e.g., their interrupts look like a
-normal IRQ chip), but on others, they are controlled in unique and interesting
-ways, sometimes with registers that lump multiple NAND-related functions
-together. The former case can be described simply by the standard interrupts
-properties in the main controller node. But for the latter exceptional cases,
-we define additional 'compatible' properties and associated register resources within the NAND controller node above.
-
- - compatible: Can be one of several SoC-specific strings. Each SoC may have
-   different requirements for its additional properties, as described below each
-   bullet point below.
-
-   * "brcm,nand-bcm63138"
-     - reg: (required) the 'NAND_INT_BASE' register range, with separate status
-       and enable registers
-     - reg-names: (required) "nand-int-base"
-
-   * "brcm,nand-bcm6368"
-     - compatible: should contain "brcm,nand-bcm<soc>", "brcm,nand-bcm6368"
-     - reg: (required) the 'NAND_INTR_BASE' register range, with combined status
-       and enable registers, and boot address registers
-     - reg-names: (required) "nand-int-base"
-
-   * "brcm,nand-iproc"
-     - reg: (required) the "IDM" register range, for interrupt enable and APB
-       bus access endianness configuration, and the "EXT" register range,
-       for interrupt status/ack.
-     - reg-names: (required) a list of the names corresponding to the previous
-       register ranges. Should contain "iproc-idm" and "iproc-ext".
-
-
-* NAND chip-select
-
-Each controller (compatible: "brcm,brcmnand") may contain one or more subnodes
-to represent enabled chip-selects which (may) contain NAND flash chips. Their
-properties are as follows.
-
-Required properties:
-- compatible                : should contain "brcm,nandcs"
-- reg                       : a single integer representing the chip-select
-                              number (e.g., 0, 1, 2, etc.)
-- #address-cells            : see partition.txt
-- #size-cells               : see partition.txt
-
-Optional properties:
-- nand-ecc-strength         : see nand-controller.yaml
-- nand-ecc-step-size        : must be 512 or 1024. See nand-controller.yaml
-- nand-on-flash-bbt         : boolean, to enable the on-flash BBT for this
-                              chip-select. See nand-controller.yaml
-- brcm,nand-oob-sector-size : integer, to denote the spare area sector size
-                              expected for the ECC layout in use. This size, in
-                              addition to the strength and step-size,
-                              determines how the hardware BCH engine will lay
-                              out the parity bytes it stores on the flash.
-                              This property can be automatically determined by
-                              the flash geometry (particularly the NAND page
-                              and OOB size) in many cases, but when booting
-                              from NAND, the boot controller has only a limited
-                              number of available options for its default ECC
-                              layout.
-
-Each nandcs device node may optionally contain sub-nodes describing the flash
-partition mapping. See partition.txt for more detail.
-
-
-Example:
-
-nand@f0442800 {
-	compatible = "brcm,brcmnand-v7.0", "brcm,brcmnand";
-	reg = <0xF0442800 0x600>,
-	      <0xF0443000 0x100>;
-	reg-names = "nand", "flash-dma";
-	interrupt-parent = <&hif_intr2_intc>;
-	interrupts = <24>, <4>;
-
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	nandcs@1 {
-		compatible = "brcm,nandcs";
-		reg = <1>; // Chip select 1
-		nand-on-flash-bbt;
-		nand-ecc-strength = <12>;
-		nand-ecc-step-size = <512>;
-
-		// Partitions
-		#address-cells = <1>;  // <2>, for 64-bit offset
-		#size-cells = <1>;     // <2>, for 64-bit length
-		flash0.rootfs@0 {
-			reg = <0 0x10000000>;
-		};
-		flash0@0 {
-			reg = <0 0>; // MTDPART_SIZ_FULL
-		};
-		flash0.kernel@10000000 {
-			reg = <0x10000000 0x400000>;
-		};
-	};
-};
-
-nand@10000200 {
-	compatible = "brcm,nand-bcm63168", "brcm,nand-bcm6368",
-		"brcm,brcmnand-v4.0", "brcm,brcmnand";
-	reg = <0x10000200 0x180>,
-	      <0x10000600 0x200>,
-	      <0x100000b0 0x10>;
-	reg-names = "nand", "nand-cache", "nand-int-base";
-	interrupt-parent = <&periph_intc>;
-	interrupts = <50>;
-	clocks = <&periph_clk 20>;
-	clock-names = "nand";
-
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	nand0: nandcs@0 {
-		compatible = "brcm,nandcs";
-		reg = <0>;
-		nand-on-flash-bbt;
-		nand-ecc-strength = <1>;
-		nand-ecc-step-size = <512>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
new file mode 100644
index 000000000000..c972f172c4aa
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
@@ -0,0 +1,242 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/brcm,brcmnand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom STB NAND Controller
+
+maintainers:
+  - Brian Norris <computersforpeace@gmail.com>
+  - Kamal Dasu <kdasu.kdev@gmail.com>
+
+description: |
+  The Broadcom Set-Top Box NAND controller supports low-level access to raw NAND
+  flash chips. It has a memory-mapped register interface for both control
+  registers and for its data input/output buffer. On some SoCs, this controller
+  is paired with a custom DMA engine (inventively named "Flash DMA") which
+  supports basic PROGRAM and READ functions, among other features.
+
+  This controller was originally designed for STB SoCs (BCM7xxx) but is now
+  available on a variety of Broadcom SoCs, including some BCM3xxx, BCM63xx, and
+  iProc/Cygnus. Its history includes several similar (but not fully register
+  compatible) versions.
+
+  -- Additional SoC-specific NAND controller properties --
+
+  The NAND controller is integrated differently on the variety of SoCs on which
+  it is found. Part of this integration involves providing status and enable
+  bits with which to control the 8 exposed NAND interrupts, as well as hardware
+  for configuring the endianness of the data bus. On some SoCs, these features
+  are handled via standard, modular components (e.g., their interrupts look like
+  a normal IRQ chip), but on others, they are controlled in unique and
+  interesting ways, sometimes with registers that lump multiple NAND-related
+  functions together. The former case can be described simply by the standard
+  interrupts properties in the main controller node. But for the latter
+  exceptional cases, we define additional 'compatible' properties and associated
+  register resources within the NAND controller node above.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - brcm,brcmnand-v2.1
+              - brcm,brcmnand-v2.2
+              - brcm,brcmnand-v4.0
+              - brcm,brcmnand-v5.0
+              - brcm,brcmnand-v6.0
+              - brcm,brcmnand-v6.1
+              - brcm,brcmnand-v6.2
+              - brcm,brcmnand-v7.0
+              - brcm,brcmnand-v7.1
+              - brcm,brcmnand-v7.2
+              - brcm,brcmnand-v7.3
+          - const: brcm,brcmnand
+      - description: BCM63138 SoC-specific NAND controller
+        items:
+          - const: brcm,nand-bcm63138
+          - enum:
+              - brcm,brcmnand-v7.0
+              - brcm,brcmnand-v7.1
+          - const: brcm,brcmnand
+      - description: iProc SoC-specific NAND controller
+        items:
+          - const: brcm,nand-iproc
+          - const: brcm,brcmnand-v6.1
+          - const: brcm,brcmnand
+      - description: BCM63168 SoC-specific NAND controller
+        items:
+          - const: brcm,nand-bcm63168
+          - const: brcm,nand-bcm6368
+          - const: brcm,brcmnand-v4.0
+          - const: brcm,brcmnand
+
+  reg:
+    minItems: 1
+    maxItems: 6
+
+  reg-names:
+    minItems: 1
+    maxItems: 6
+    items:
+      enum: [ nand, flash-dma, flash-edu, nand-cache, nand-int-base, iproc-idm, iproc-ext ]
+
+  interrupts:
+    minItems: 1
+    maxItems: 3
+    items:
+      - description: NAND CTLRDY interrupt
+      - description: FLASH_DMA_DONE if flash DMA is available
+      - description: FLASH_EDU_DONE if EDU is available
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 3
+    items:
+      - const: nand_ctlrdy
+      - const: flash_dma_done
+      - const: flash_edu_done
+
+  clocks:
+    maxItems: 1
+    description: reference to the clock for the NAND controller
+
+  clock-names:
+    const: nand
+
+  brcm,nand-has-wp:
+    description: >
+      Some versions of this IP include a write-protect
+      (WP) control bit. It is always available on >=
+      v7.0. Use this property to describe the rare
+      earlier versions of this core that include WP
+    type: boolean
+
+patternProperties:
+  "^nand@[a-f0-9]$":
+    type: object
+    properties:
+      compatible:
+        const: brcm,nandcs
+
+      nand-ecc-step-size:
+        enum: [ 512, 1024 ]
+
+      brcm,nand-oob-sector-size:
+        description: |
+          integer, to denote the spare area sector size
+          expected for the ECC layout in use. This size, in
+          addition to the strength and step-size,
+          determines how the hardware BCH engine will lay
+          out the parity bytes it stores on the flash.
+          This property can be automatically determined by
+          the flash geometry (particularly the NAND page
+          and OOB size) in many cases, but when booting
+          from NAND, the boot controller has only a limited
+          number of available options for its default ECC
+          layout.
+        $ref: /schemas/types.yaml#/definitions/uint32
+
+allOf:
+  - $ref: nand-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,nand-bcm63138
+    then:
+      properties:
+        reg-names:
+          minItems: 2
+          maxItems: 2
+          items:
+            - const: nand
+            - const: nand-int-base
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,nand-bcm6368
+    then:
+      properties:
+        reg-names:
+          minItems: 2
+          maxItems: 3
+          items:
+            - const: nand
+            - const: nand-int-base
+            - const: nand-cache
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,nand-iproc
+    then:
+      properties:
+        reg-names:
+          minItems: 2
+          maxItems: 3
+          items:
+            - const: nand
+            - const: iproc-idm
+            - const: iproc-ext
+
+unevaluatedProperties: false
+
+required:
+  - reg
+  - reg-names
+  - interrupts
+
+examples:
+  - |
+    nand-controller@f0442800 {
+            compatible = "brcm,brcmnand-v7.0", "brcm,brcmnand";
+            reg = <0xf0442800 0x600>,
+                  <0xf0443000 0x100>;
+            reg-names = "nand", "flash-dma";
+            interrupt-parent = <&hif_intr2_intc>;
+            interrupts = <24>, <4>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            nand@1 {
+                    compatible = "brcm,nandcs";
+                    reg = <1>; // Chip select 1
+                    nand-on-flash-bbt;
+                    nand-ecc-strength = <12>;
+                    nand-ecc-step-size = <512>;
+
+                    #address-cells = <1>;
+                    #size-cells = <1>;
+            };
+    };
+  - |
+    nand-controller@10000200 {
+            compatible = "brcm,nand-bcm63168", "brcm,nand-bcm6368",
+                         "brcm,brcmnand-v4.0", "brcm,brcmnand";
+            reg = <0x10000200 0x180>,
+                  <0x100000b0 0x10>,
+                  <0x10000600 0x200>;
+            reg-names = "nand", "nand-int-base", "nand-cache";
+            interrupt-parent = <&periph_intc>;
+            interrupts = <50>;
+            clocks = <&periph_clk 20>;
+            clock-names = "nand";
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            nand@0 {
+                    compatible = "brcm,nandcs";
+                    reg = <0>;
+                    nand-on-flash-bbt;
+                    nand-ecc-strength = <1>;
+                    nand-ecc-step-size = <512>;
+
+                    #address-cells = <1>;
+                    #size-cells = <1>;
+            };
+    };
-- 
2.26.2

