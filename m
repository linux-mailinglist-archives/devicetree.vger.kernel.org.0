Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC79B5A8632
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 20:59:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232674AbiHaS7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 14:59:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232502AbiHaS7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 14:59:36 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52E08BD170
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:58:37 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id p18so12256015ljc.9
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=WQg7blSGne2/YmKGXSUdX/PkxQiySd7D40Q+frbabYM=;
        b=AsO0AdxmoBVbdXdtwrUgQTDRuruty4QoMO4z/L4tD04B0fo5gfzg/sKUSRULgKnz8P
         IfBeYkicjC+FMl8rXkyLUY3FpKyg+ZLlZU1M4otna+D0yx86LrMq54N3Ofbxp9GMVgi3
         TeNRaRje6NdBGTWhnWzIgFA1dOEE5eaB46hGkqNzZz6DRBXqQok5hTWZqHER2xuB/hlv
         1DaBnnhq6aRakyhFwqy8aQMhB6F9+06AbMjQpIb6UiMALf3bRpekBBJJCPje2PHS6OTy
         n1kRuY3pUO0+nucKibhSj5uaHPbrXFdy0V5sG2f6RGeo6nyjYxmbPdP4t5qdvF70LoVa
         7Epg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=WQg7blSGne2/YmKGXSUdX/PkxQiySd7D40Q+frbabYM=;
        b=PKhDSAZ5jdkrVg9WtFRg6mIpmAm8sXt5jsbsbr59HLlSTKR1LRqc3Nto50WNFXSzrM
         HxvtEl4IaJxTcLahLPGdJbK+8J99jATuttfu9dgY8OQxnOyUVDHqSYSzhVGay7dr100b
         ymaT5pGIRHB+rf+nFWEtwrK9oh13Cl2rQcJl1ginAf9iZdO2xQrdx04YQq8+upNOKja8
         8YQZwFq/IYLUNabBWZ7TSYCjOFv6gygxTlKVfpYB6rbkpxQO5ITqtJ5lGdsN96h2EBeC
         el1PdQrfcSHHATiz66lK1E72dN13qjAbkWPJ2ycYMIvbGNCH0Ob6O8u706yX7Eg3ESKK
         yEQQ==
X-Gm-Message-State: ACgBeo0dpdbsTd4zi+1jVkoWW02WA9H+rdtrvq5dg16TZiZx5kITfRH5
        zc/NVYrMKJXvjJSTFvqp6MJnAA==
X-Google-Smtp-Source: AA6agR4BPwTnYvWLcSvyogov3vEWYpBlUq47kQkLejcjh+02MMGXLMANJJs82qpTi2lRmQot5Mm8rQ==
X-Received: by 2002:a2e:bd8b:0:b0:264:8256:c23f with SMTP id o11-20020a2ebd8b000000b002648256c23fmr4945603ljq.508.1661972315607;
        Wed, 31 Aug 2022 11:58:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g1-20020a0565123b8100b004948f583e6bsm322422lfv.138.2022.08.31.11.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 11:58:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH v5 05/12] dt-bindings: display/msm: move common MDSS properties to mdss-common.yaml
Date:   Wed, 31 Aug 2022 21:58:23 +0300
Message-Id: <20220831185830.1798676-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831185830.1798676-1-dmitry.baryshkov@linaro.org>
References: <20220831185830.1798676-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move properties common to all MDSS DT nodes to the mdss-common.yaml.

This extends qcom,msm8998-mdss schema to allow interconnect nodes, which
will be added later, once msm8998 gains interconnect support.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dpu-msm8998.yaml     | 42 ++--------
 .../bindings/display/msm/dpu-qcm2290.yaml     | 52 ++----------
 .../bindings/display/msm/dpu-sc7180.yaml      | 51 ++----------
 .../bindings/display/msm/dpu-sc7280.yaml      | 51 ++----------
 .../bindings/display/msm/dpu-sdm845.yaml      | 55 ++----------
 .../bindings/display/msm/mdss-common.yaml     | 83 +++++++++++++++++++
 6 files changed, 116 insertions(+), 218 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-common.yaml

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml b/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
index 0d6743eabd27..1e6b7e15f1c5 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
@@ -14,20 +14,14 @@ description: |
   sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
   bindings of MDSS and DPU are mentioned for MSM8998 target.
 
+allOf:
+  - $ref: /schemas/display/msm/mdss-common.yaml#
+
 properties:
   compatible:
     items:
       - const: qcom,msm8998-mdss
 
-  reg:
-    maxItems: 1
-
-  reg-names:
-    const: mdss
-
-  power-domains:
-    maxItems: 1
-
   clocks:
     items:
       - description: Display AHB clock
@@ -40,23 +34,8 @@ properties:
       - const: bus
       - const: core
 
-  interrupts:
-    maxItems: 1
-
-  interrupt-controller: true
-
-  "#address-cells": true
-
-  "#size-cells": true
-
-  "#interrupt-cells":
-    const: 1
-
   iommus:
-    items:
-      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port0
-
-  ranges: true
+    maxItems: 1
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -102,18 +81,7 @@ patternProperties:
           - const: core
           - const: vsync
 
-required:
-  - compatible
-  - reg
-  - reg-names
-  - power-domains
-  - clocks
-  - interrupts
-  - interrupt-controller
-  - iommus
-  - ranges
-
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
index bec3c131c0dc..1c6dd7969a61 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
@@ -14,20 +14,14 @@ description: |
   sub-blocks like DPU display controller and DSI. Device tree bindings of MDSS
   and DPU are mentioned for QCM2290 target.
 
+allOf:
+  - $ref: /schemas/display/msm/mdss-common.yaml#
+
 properties:
   compatible:
     items:
       - const: qcom,qcm2290-mdss
 
-  reg:
-    maxItems: 1
-
-  reg-names:
-    const: mdss
-
-  power-domains:
-    maxItems: 1
-
   clocks:
     items:
       - description: Display AHB clock from gcc
@@ -40,35 +34,14 @@ properties:
       - const: bus
       - const: core
 
-  interrupts:
-    maxItems: 1
-
-  interrupt-controller: true
-
-  "#address-cells": true
-
-  "#size-cells": true
-
-  "#interrupt-cells":
-    const: 1
-
   iommus:
-    items:
-      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port0
-      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port1
-
-  ranges: true
+    maxItems: 2
 
   interconnects:
-    items:
-      - description: Interconnect path specifying the port ids for data bus
+    maxItems: 1
 
   interconnect-names:
-    const: mdp0-mem
-
-  resets:
-    items:
-      - description: MDSS_CORE reset
+    maxItems: 1
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -110,18 +83,7 @@ patternProperties:
           - const: lut
           - const: vsync
 
-required:
-  - compatible
-  - reg
-  - reg-names
-  - power-domains
-  - clocks
-  - interrupts
-  - interrupt-controller
-  - iommus
-  - ranges
-
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
index 732b9d8f968a..47e74f78e939 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
@@ -14,20 +14,14 @@ description: |
   sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
   bindings of MDSS and DPU are mentioned for SC7180 target.
 
+allOf:
+  - $ref: /schemas/display/msm/mdss-common.yaml#
+
 properties:
   compatible:
     items:
       - const: qcom,sc7180-mdss
 
-  reg:
-    maxItems: 1
-
-  reg-names:
-    const: mdss
-
-  power-domains:
-    maxItems: 1
-
   clocks:
     items:
       - description: Display AHB clock from gcc
@@ -40,34 +34,14 @@ properties:
       - const: ahb
       - const: core
 
-  interrupts:
-    maxItems: 1
-
-  interrupt-controller: true
-
-  "#address-cells": true
-
-  "#size-cells": true
-
-  "#interrupt-cells":
-    const: 1
-
   iommus:
-    items:
-      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port0
-
-  ranges: true
+    maxItems: 1
 
   interconnects:
-    items:
-      - description: Interconnect path specifying the port ids for data bus
+    maxItems: 1
 
   interconnect-names:
-    const: mdp0-mem
-
-  resets:
-    items:
-      - description: MDSS_CORE reset
+    maxItems: 1
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -111,18 +85,7 @@ patternProperties:
           - const: core
           - const: vsync
 
-required:
-  - compatible
-  - reg
-  - reg-names
-  - power-domains
-  - clocks
-  - interrupts
-  - interrupt-controller
-  - iommus
-  - ranges
-
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
index 4889129660c6..7dc624a26e2e 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
@@ -14,19 +14,13 @@ description: |
   sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
   bindings of MDSS and DPU are mentioned for SC7280.
 
+allOf:
+  - $ref: /schemas/display/msm/mdss-common.yaml#
+
 properties:
   compatible:
     const: qcom,sc7280-mdss
 
-  reg:
-    maxItems: 1
-
-  reg-names:
-    const: mdss
-
-  power-domains:
-    maxItems: 1
-
   clocks:
     items:
       - description: Display AHB clock from gcc
@@ -39,34 +33,14 @@ properties:
       - const: ahb
       - const: core
 
-  interrupts:
-    maxItems: 1
-
-  interrupt-controller: true
-
-  "#address-cells": true
-
-  "#size-cells": true
-
-  "#interrupt-cells":
-    const: 1
-
   iommus:
-    items:
-      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port0
-
-  ranges: true
+    maxItems: 1
 
   interconnects:
-    items:
-      - description: Interconnect path specifying the port ids for data bus
+    maxItems: 1
 
   interconnect-names:
-    const: mdp0-mem
-
-  resets:
-    items:
-      - description: MDSS_CORE reset
+    maxItems: 1
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -109,18 +83,7 @@ patternProperties:
           - const: core
           - const: vsync
 
-required:
-  - compatible
-  - reg
-  - reg-names
-  - power-domains
-  - clocks
-  - interrupts
-  - interrupt-controller
-  - iommus
-  - ranges
-
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index b275f928a921..7e9d7c7f3538 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -14,20 +14,14 @@ description: |
   sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
   bindings of MDSS and DPU are mentioned for SDM845 target.
 
+allOf:
+  - $ref: /schemas/display/msm/mdss-common.yaml#
+
 properties:
   compatible:
     items:
       - const: qcom,sdm845-mdss
 
-  reg:
-    maxItems: 1
-
-  reg-names:
-    const: mdss
-
-  power-domains:
-    maxItems: 1
-
   clocks:
     items:
       - description: Display AHB clock from gcc
@@ -38,38 +32,14 @@ properties:
       - const: iface
       - const: core
 
-  interrupts:
-    maxItems: 1
-
-  interrupt-controller: true
-
-  "#address-cells": true
-
-  "#size-cells": true
-
-  "#interrupt-cells":
-    const: 1
-
   iommus:
-    items:
-      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port0
-      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port1
-
-  ranges: true
+    maxItems: 2
 
   interconnects:
-    items:
-      - description: Interconnect path specifying the port ids for data bus
-      - description: Interconnect path specifying the port ids for data bus
+    maxItems: 2
 
   interconnect-names:
-    items:
-      - const: mdp0-mem
-      - const: mdp1-mem
-
-  resets:
-    items:
-      - description: MDSS_CORE reset
+    maxItems: 2
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -111,18 +81,7 @@ patternProperties:
           - const: core
           - const: vsync
 
-required:
-  - compatible
-  - reg
-  - reg-names
-  - power-domains
-  - clocks
-  - interrupts
-  - interrupt-controller
-  - iommus
-  - ranges
-
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
new file mode 100644
index 000000000000..053c1e889552
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/mdss-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Display MDSS dt properties (common properties)
+
+maintainers:
+  - Krishna Manikandan <quic_mkrishn@quicinc.com>
+  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+  - Rob Clark <robdclark@gmail.com>
+
+description: |
+  Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
+  sub-blocks like DPU display controller, DSI and DP interfaces etc.
+
+properties:
+  reg:
+    maxItems: 1
+
+  reg-names:
+    const: mdss
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 3
+
+  clock-names:
+    minItems: 2
+    maxItems: 3
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#address-cells": true
+
+  "#size-cells": true
+
+  "#interrupt-cells":
+    const: 1
+
+  iommus:
+    minItems: 1
+    items:
+      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port0
+      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port1
+
+  ranges: true
+
+  interconnects:
+    minItems: 1
+    items:
+      - description: Interconnect path specifying the port ids for data bus
+      - description: Interconnect path specifying the port ids for data bus
+
+  interconnect-names:
+    minItems: 1
+    items:
+      - const: mdp0-mem
+      - const: mdp1-mem
+
+  resets:
+    items:
+      - description: MDSS_CORE reset
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - power-domains
+  - clocks
+  - interrupts
+  - interrupt-controller
+  - iommus
+  - ranges
+
+additionalProperties: true
-- 
2.35.1

