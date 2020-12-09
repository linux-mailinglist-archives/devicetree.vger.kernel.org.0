Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57ABE2D42A4
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 14:05:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728490AbgLINDf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 08:03:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727559AbgLINDf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 08:03:35 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EBB7C0613CF
        for <devicetree@vger.kernel.org>; Wed,  9 Dec 2020 05:02:55 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id a9so3000048lfh.2
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 05:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nmLlQvpsGWPeBpBNha/otXmgFWU92H8v7HPumIzsDxM=;
        b=VfYwoIY3aRFpnHcHAFUMuA8rTLOfOVEBVBqKOVsIp64Jj9+oaw+yxReC0sCI+BxTOF
         BoIYMXT4cwFHA8Yd4JWBCqqdTZo9qxyjFIxF2cExUdZrgfwL5s7eaR80tbQVe2WFL+IT
         a+olXpGPQGhuhUbe7RI/OZSlk3+We9gh4tSZdhv2uyuvdJ+sj8JuOQWPLBJRqfdAxhHq
         E7t107vglJJyIekKO823YsFbOjIXo9c/bIfqmgfbtz9JssirJAruESOh60qJTKKf6/G4
         T2gr4vww99bybpMrkhyB+5OF0sqeI9MhuiM8G8P6q1OhKDgF8Da0trsNQzETwtYLrsE6
         a3EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nmLlQvpsGWPeBpBNha/otXmgFWU92H8v7HPumIzsDxM=;
        b=UUmjHTH1+UoItIN2Z6TvkO/6b4h3EXauny8WYC6oUxb0ETflo5Yc2ey67d/WleD9bH
         8mmjukYSMII35Q26dbO8PiYjbdC3s0dZPa/YU9J9qdih7AmD0nztoufxrTGPH7XRAhAD
         +iz/1AGcApHlTJ7ELpnTOLSdHgNFdEFfBBgSjM8372zxzBheI6qwFlaQDyqJC/WpQMD5
         9MXRekMOizDDWhT0yFZfNtiLWrD9XTEkWdL8ojvS5vBP+scjhrnu5YgTU4rWeBHwLOAH
         xzET9WijgaGfEwE5vhLthj+SDrgr0VlBQnoOy4ybbrLi3eG4As3V9K0HnxHYm/E1b80a
         5Szw==
X-Gm-Message-State: AOAM532IPSgD2nsinUUQqQy2Y5Sfv6iKYo2nRvwJ6PBvbiawpP9tSLT0
        8I9cJ5ctSldBpPYMSJLDSmA=
X-Google-Smtp-Source: ABdhPJxWeDHY9evvPGXvVKHZgPt6pOGLmc3zDljUfVp3gykuTyrYUi+E78yJJ+Oti8BK6op1yaUXhg==
X-Received: by 2002:a19:86c1:: with SMTP id i184mr963347lfd.563.1607518973505;
        Wed, 09 Dec 2020 05:02:53 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x2sm164803lff.207.2020.12.09.05.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 05:02:52 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: mtd: convert "fixed-partitions" to the json-schema
Date:   Wed,  9 Dec 2020 14:02:35 +0100
Message-Id: <20201209130235.7505-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This standardizes its documentation, allows validating with Makefile
checks and helps writing DTS files.

Noticeable changes:
1. Dropped "Partitions can be represented by sub-nodes of a flash
   device." as we also support subpartitions (don't have to be part of
   flash device node)
2. Dropped "to Linux" as bindings are meant to be os agnostic.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/mtd/partition.txt     | 131 +---------------
 .../mtd/partitions/fixed-partitions.yaml      | 146 ++++++++++++++++++
 2 files changed, 148 insertions(+), 129 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
index 4a39698221a2..ead90e8274d6 100644
--- a/Documentation/devicetree/bindings/mtd/partition.txt
+++ b/Documentation/devicetree/bindings/mtd/partition.txt
@@ -24,137 +24,10 @@ another partitioning method.
 Available bindings are listed in the "partitions" subdirectory.
 
 
-Fixed Partitions
-================
-
-Partitions can be represented by sub-nodes of a flash device. This can be used
-on platforms which have strong conventions about which portions of a flash are
-used for what purposes, but which don't use an on-flash partition table such
-as RedBoot.
-
-The partition table should be a subnode of the flash node and should be named
-'partitions'. This node should have the following property:
-- compatible : (required) must be "fixed-partitions"
-Partitions are then defined in subnodes of the partitions node.
+Deprecated: partitions defined in flash node
+============================================
 
 For backwards compatibility partitions as direct subnodes of the flash device are
 supported. This use is discouraged.
 NOTE: also for backwards compatibility, direct subnodes that have a compatible
 string are not considered partitions, as they may be used for other bindings.
-
-#address-cells & #size-cells must both be present in the partitions subnode of the
-flash device. There are two valid values for both:
-<1>: for partitions that require a single 32-bit cell to represent their
-     size/address (aka the value is below 4 GiB)
-<2>: for partitions that require two 32-bit cells to represent their
-     size/address (aka the value is 4 GiB or greater).
-
-Required properties:
-- reg : The partition's offset and size within the flash
-
-Optional properties:
-- label : The label / name for this partition.  If omitted, the label is taken
-  from the node name (excluding the unit address).
-- read-only : This parameter, if present, is a hint to Linux that this
-  partition should only be mounted read-only. This is usually used for flash
-  partitions containing early-boot firmware images or data which should not be
-  clobbered.
-- lock : Do not unlock the partition at initialization time (not supported on
-  all devices)
-- slc-mode: This parameter, if present, allows one to emulate SLC mode on a
-  partition attached to an MLC NAND thus making this partition immune to
-  paired-pages corruptions
-
-Examples:
-
-
-flash@0 {
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "u-boot";
-			reg = <0x0000000 0x100000>;
-			read-only;
-		};
-
-		uimage@100000 {
-			reg = <0x0100000 0x200000>;
-		};
-	};
-};
-
-flash@1 {
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <2>;
-
-		/* a 4 GiB partition */
-		partition@0 {
-			label = "filesystem";
-			reg = <0x00000000 0x1 0x00000000>;
-		};
-	};
-};
-
-flash@2 {
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <2>;
-		#size-cells = <2>;
-
-		/* an 8 GiB partition */
-		partition@0 {
-			label = "filesystem #1";
-			reg = <0x0 0x00000000 0x2 0x00000000>;
-		};
-
-		/* a 4 GiB partition */
-		partition@200000000 {
-			label = "filesystem #2";
-			reg = <0x2 0x00000000 0x1 0x00000000>;
-		};
-	};
-};
-
-flash@3 {
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "bootloader";
-			reg = <0x000000 0x100000>;
-			read-only;
-		};
-
-		firmware@100000 {
-			label = "firmware";
-			reg = <0x100000 0xe00000>;
-			compatible = "brcm,trx";
-		};
-
-		calibration@f00000 {
-			label = "calibration";
-			reg = <0xf00000 0x100000>;
-			compatible = "fixed-partitions";
-			ranges = <0 0xf00000 0x100000>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "wifi0";
-				reg = <0x000000 0x080000>;
-			};
-
-			partition@80000 {
-				label = "wifi1";
-				reg = <0x080000 0x080000>;
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
new file mode 100644
index 000000000000..c5e509e08f31
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/fixed-partitions.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Fixed partitions
+
+description: |
+  This binding can be used on platforms which have strong conventions about
+  which portions of a flash are used for what purposes, but which don't use an
+  on-flash partition table such as RedBoot.
+
+  The partition table should be a node named "partitions". Partitions are then
+  defined as subnodes.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    const: fixed-partitions
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    description: node describing a single flash partition
+    type: object
+
+    properties:
+      reg:
+        description: partition's offset and size within the flash
+
+      label:
+        description: The label / name for this partition. If omitted, the label
+          is taken from the node name (excluding the unit address).
+
+      read-only:
+        description: This parameter, if present, is a hint that this partition
+          should only be mounted read-only. This is usually used for flash
+          partitions containing early-boot firmware images or data which should
+          not be clobbered.
+        type: boolean
+
+      lock:
+        description: Do not unlock the partition at initialization time (not
+          supported on all devices)
+        type: boolean
+
+      slc-mode:
+        description: This parameter, if present, allows one to emulate SLC mode
+          on a partition attached to an MLC NAND thus making this partition
+          immune to paired-pages corruptions
+        type: boolean
+
+    required:
+      - reg
+
+required:
+  - compatible
+
+additionalProperties: true
+
+examples:
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@0 {
+            label = "u-boot";
+            reg = <0x0000000 0x100000>;
+            read-only;
+        };
+
+        uimage@100000 {
+            reg = <0x0100000 0x200000>;
+        };
+    };
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <2>;
+
+        /* a 4 GiB partition */
+        partition@0 {
+            label = "filesystem";
+            reg = <0x00000000 0x1 0x00000000>;
+        };
+    };
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        /* an 8 GiB partition */
+        partition@0 {
+            label = "filesystem #1";
+            reg = <0x0 0x00000000 0x2 0x00000000>;
+        };
+
+        /* a 4 GiB partition */
+        partition@200000000 {
+            label = "filesystem #2";
+            reg = <0x2 0x00000000 0x1 0x00000000>;
+        };
+    };
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@0 {
+            label = "bootloader";
+            reg = <0x000000 0x100000>;
+            read-only;
+        };
+
+        firmware@100000 {
+            label = "firmware";
+            reg = <0x100000 0xe00000>;
+            compatible = "brcm,trx";
+        };
+
+        calibration@f00000 {
+            label = "calibration";
+            reg = <0xf00000 0x100000>;
+            compatible = "fixed-partitions";
+            ranges = <0 0xf00000 0x100000>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+
+            partition@0 {
+                label = "wifi0";
+                reg = <0x000000 0x080000>;
+            };
+
+            partition@80000 {
+                label = "wifi1";
+                reg = <0x080000 0x080000>;
+            };
+        };
+    };
-- 
2.26.2

