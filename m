Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 518DB3518D2
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 19:49:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236868AbhDARrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 13:47:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234240AbhDARnA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 13:43:00 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB0D5C02258D
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 08:20:10 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id l123so187583pfl.8
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 08:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M2CEXbNlNorHIt0/KQNWcmF9T/2OkYKo0K/LHRqivCU=;
        b=Ems4ZkfVPp5Xi7z4s2ljdSr8S0Rs1x9yPKDxiBf9FSw4NKEStg2shCUzkgFCY8Trad
         0F62Ni5cekfCmJGr7mw/eIYvNSdK3FVE0z2rDULcns4IWV/0rih3oHX/oCB3axL0IytW
         PA+CKIybjyeAGSW1VBS2sqoyNAWSMPV2QsEszS6DifS5kLMCexiTLsjcw3U4ICGf4e8v
         O6xdyDy6XwZ5hcY/yZ9859pJMPnEVSoZjOuThSlq/i8/GetDizaHYadyP9Y68BpxjvlQ
         kt9JWDoMo455F5m0TCW3Sn3DmiHaX/5I8I0IB7qDNAqjYF8VbOnn8ioQBL7NV1hZfhYV
         YoLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M2CEXbNlNorHIt0/KQNWcmF9T/2OkYKo0K/LHRqivCU=;
        b=rfKB6f9g0zwhjZFbxXs3oqWaJfVkNjuJ2d62cAYemZnk8QeUwLb89f+65qABoddPgY
         8SsJnT+CO4hWFaDhPXyzRqeiUAxAUIrjKfWUWVfqymTBUua9yqGFNz+7olrLB2vPN9iO
         qhfc7wxsQxk9UT9vVCXxjDBFX/kr1BmznzTTvNsNzJxilH0SusPhB32M+noKyRApvvM6
         v9/ebpvkxtSsKD0KWcK2VOCWDKqYEJT8A+65p4fJ8028Pum+A7iRE0aX8MRdscvnL87/
         bkxU6XlEqPl57AnzLPM9A3V9nI6VrKfZcCm9Kw8Dl4M1boNXHiXiBR0InqY22w/OLsOa
         C+ZQ==
X-Gm-Message-State: AOAM533+QM7T6K0rPM2YaRVgxRgs7lek3YylLbpHTaF9z1sykpfz04s+
        Ps9cbdnrgN1989fRj5zFWa0W
X-Google-Smtp-Source: ABdhPJw6PhPoQwsHC9Zc4WTgp1SQzNK0Lsjy/YntDywGfChyLdeUzOdgq1c4+hDvR72SFgQNSJzLwQ==
X-Received: by 2002:a65:640f:: with SMTP id a15mr7649475pgv.121.1617290410315;
        Thu, 01 Apr 2021 08:20:10 -0700 (PDT)
Received: from localhost.localdomain ([103.77.37.138])
        by smtp.gmail.com with ESMTPSA id l22sm6500919pjl.14.2021.04.01.08.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:20:09 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com, Daniele.Palmas@telit.com,
        bjorn.andersson@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v10 1/4] dt-bindings: mtd: Convert Qcom NANDc binding to YAML
Date:   Thu,  1 Apr 2021 20:49:52 +0530
Message-Id: <20210401151955.143817-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401151955.143817-1-manivannan.sadhasivam@linaro.org>
References: <20210401151955.143817-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Qcom NANDc devicetree binding to YAML.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mtd/qcom,nandc.yaml   | 196 ++++++++++++++++++
 .../devicetree/bindings/mtd/qcom_nandc.txt    | 142 -------------
 2 files changed, 196 insertions(+), 142 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mtd/qcom_nandc.txt

diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
new file mode 100644
index 000000000000..84ad7ff30121
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
@@ -0,0 +1,196 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/qcom,nandc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm NAND controller
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq806x-nand
+      - qcom,ipq4019-nand
+      - qcom,ipq6018-nand
+      - qcom,ipq8074-nand
+      - qcom,sdx55-nand
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Core Clock
+      - description: Always ON Clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: aon
+
+  "#address-cells": true
+  "#size-cells": true
+
+patternProperties:
+  "^nand@[a-f0-9]$":
+    type: object
+    properties:
+      nand-bus-width:
+        const: 8
+
+      nand-ecc-strength:
+        enum: [1, 4, 8]
+
+      nand-ecc-step-size:
+        enum:
+          - 512
+
+allOf:
+  - $ref: "nand-controller.yaml#"
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,ipq806x-nand
+    then:
+      properties:
+        dmas:
+          items:
+            - description: rxtx DMA channel
+
+        dma-names:
+          items:
+            - const: rxtx
+
+        qcom,cmd-crci:
+          $ref: /schemas/types.yaml#/definitions/uint32
+          description:
+            Must contain the ADM command type CRCI block instance number
+            specified for the NAND controller on the given platform
+
+        qcom,data-crci:
+          $ref: /schemas/types.yaml#/definitions/uint32
+          description:
+            Must contain the ADM data type CRCI block instance number
+            specified for the NAND controller on the given platform
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq4019-nand
+              - qcom,ipq6018-nand
+              - qcom,ipq8074-nand
+              - qcom,sdx55-nand
+
+    then:
+      properties:
+        dmas:
+          items:
+            - description: tx DMA channel
+            - description: rx DMA channel
+            - description: cmd DMA channel
+
+        dma-names:
+          items:
+            - const: tx
+            - const: rx
+            - const: cmd
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-ipq806x.h>
+    nand-controller@1ac00000 {
+      compatible = "qcom,ipq806x-nand";
+      reg = <0x1ac00000 0x800>;
+
+      clocks = <&gcc EBI2_CLK>,
+               <&gcc EBI2_AON_CLK>;
+      clock-names = "core", "aon";
+
+      dmas = <&adm_dma 3>;
+      dma-names = "rxtx";
+      qcom,cmd-crci = <15>;
+      qcom,data-crci = <3>;
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      nand@0 {
+        reg = <0>;
+
+        nand-ecc-strength = <4>;
+        nand-bus-width = <8>;
+
+        partitions {
+          compatible = "fixed-partitions";
+          #address-cells = <1>;
+          #size-cells = <1>;
+
+          partition@0 {
+            label = "boot-nand";
+            reg = <0 0x58a0000>;
+          };
+
+          partition@58a0000 {
+            label = "fs-nand";
+            reg = <0x58a0000 0x4000000>;
+          };
+        };
+      };
+    };
+
+    #include <dt-bindings/clock/qcom,gcc-ipq4019.h>
+    nand-controller@79b0000 {
+      compatible = "qcom,ipq4019-nand";
+      reg = <0x79b0000 0x1000>;
+
+      clocks = <&gcc GCC_QPIC_CLK>,
+               <&gcc GCC_QPIC_AHB_CLK>;
+      clock-names = "core", "aon";
+
+      dmas = <&qpicbam 0>,
+             <&qpicbam 1>,
+             <&qpicbam 2>;
+      dma-names = "tx", "rx", "cmd";
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      nand@0 {
+        reg = <0>;
+        nand-ecc-strength = <4>;
+        nand-bus-width = <8>;
+
+        partitions {
+          compatible = "fixed-partitions";
+          #address-cells = <1>;
+          #size-cells = <1>;
+
+          partition@0 {
+            label = "boot-nand";
+            reg = <0 0x58a0000>;
+          };
+
+          partition@58a0000 {
+            label = "fs-nand";
+            reg = <0x58a0000 0x4000000>;
+          };
+        };
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/mtd/qcom_nandc.txt b/Documentation/devicetree/bindings/mtd/qcom_nandc.txt
deleted file mode 100644
index 5647913d8837..000000000000
--- a/Documentation/devicetree/bindings/mtd/qcom_nandc.txt
+++ /dev/null
@@ -1,142 +0,0 @@
-* Qualcomm NAND controller
-
-Required properties:
-- compatible:		must be one of the following:
-    * "qcom,ipq806x-nand" - for EBI2 NAND controller being used in IPQ806x
-			    SoC and it uses ADM DMA
-    * "qcom,ipq4019-nand" - for QPIC NAND controller v1.4.0 being used in
-                            IPQ4019 SoC and it uses BAM DMA
-    * "qcom,ipq6018-nand" - for QPIC NAND controller v1.5.0 being used in
-                            IPQ6018 SoC and it uses BAM DMA
-    * "qcom,ipq8074-nand" - for QPIC NAND controller v1.5.0 being used in
-                            IPQ8074 SoC and it uses BAM DMA
-    * "qcom,sdx55-nand"   - for QPIC NAND controller v2.0.0 being used in
-                            SDX55 SoC and it uses BAM DMA
-
-- reg:			MMIO address range
-- clocks:		must contain core clock and always on clock
-- clock-names:		must contain "core" for the core clock and "aon" for the
-			always on clock
-
-EBI2 specific properties:
-- dmas:			DMA specifier, consisting of a phandle to the ADM DMA
-			controller node and the channel number to be used for
-			NAND. Refer to dma.txt and qcom_adm.txt for more details
-- dma-names:		must be "rxtx"
-- qcom,cmd-crci:	must contain the ADM command type CRCI block instance
-			number specified for the NAND controller on the given
-			platform
-- qcom,data-crci:	must contain the ADM data type CRCI block instance
-			number specified for the NAND controller on the given
-			platform
-
-QPIC specific properties:
-- dmas:			DMA specifier, consisting of a phandle to the BAM DMA
-			and the channel number to be used for NAND. Refer to
-			dma.txt, qcom_bam_dma.txt for more details
-- dma-names:		must contain all 3 channel names : "tx", "rx", "cmd"
-- #address-cells:	<1> - subnodes give the chip-select number
-- #size-cells:		<0>
-
-* NAND chip-select
-
-Each controller may contain one or more subnodes to represent enabled
-chip-selects which (may) contain NAND flash chips. Their properties are as
-follows.
-
-Required properties:
-- reg:			a single integer representing the chip-select
-			number (e.g., 0, 1, 2, etc.)
-- #address-cells:	see partition.txt
-- #size-cells:		see partition.txt
-
-Optional properties:
-- nand-bus-width:	see nand-controller.yaml
-- nand-ecc-strength:	see nand-controller.yaml. If not specified, then ECC strength will
-			be used according to chip requirement and available
-			OOB size.
-
-Each nandcs device node may optionally contain a 'partitions' sub-node, which
-further contains sub-nodes describing the flash partition mapping. See
-partition.txt for more detail.
-
-Example:
-
-nand-controller@1ac00000 {
-	compatible = "qcom,ipq806x-nand";
-	reg = <0x1ac00000 0x800>;
-
-	clocks = <&gcc EBI2_CLK>,
-		 <&gcc EBI2_AON_CLK>;
-	clock-names = "core", "aon";
-
-	dmas = <&adm_dma 3>;
-	dma-names = "rxtx";
-	qcom,cmd-crci = <15>;
-	qcom,data-crci = <3>;
-
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	nand@0 {
-		reg = <0>;
-
-		nand-ecc-strength = <4>;
-		nand-bus-width = <8>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "boot-nand";
-				reg = <0 0x58a0000>;
-			};
-
-			partition@58a0000 {
-				label = "fs-nand";
-				reg = <0x58a0000 0x4000000>;
-			};
-		};
-	};
-};
-
-nand-controller@79b0000 {
-	compatible = "qcom,ipq4019-nand";
-	reg = <0x79b0000 0x1000>;
-
-	clocks = <&gcc GCC_QPIC_CLK>,
-		<&gcc GCC_QPIC_AHB_CLK>;
-	clock-names = "core", "aon";
-
-	dmas = <&qpicbam 0>,
-		<&qpicbam 1>,
-		<&qpicbam 2>;
-	dma-names = "tx", "rx", "cmd";
-
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	nand@0 {
-		reg = <0>;
-		nand-ecc-strength = <4>;
-		nand-bus-width = <8>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "boot-nand";
-				reg = <0 0x58a0000>;
-			};
-
-			partition@58a0000 {
-				label = "fs-nand";
-				reg = <0x58a0000 0x4000000>;
-			};
-		};
-	};
-};
-- 
2.25.1

