Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC555A0D50
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 11:54:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238015AbiHYJxy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 05:53:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236708AbiHYJx3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 05:53:29 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02EF9ABD40
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 02:51:20 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id u24so13312925lji.0
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 02:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=s95KyTVgJCkOF9d3OhQcrMijE3hMZBRKUCbN8bvHKPE=;
        b=cxdw2Ixqm6n/M51A08Dh/JHWjmbNn60i8vxbO2dKR8S7r9I77mgOE4H5SLVkquaVMF
         kxjGRjibfCGOd9hQ/SIuSXS+aHXOHQbdIjN8GkvoNApccexBABmjiZz443eDglNqeFql
         dSRL+7oPBA0qpMWAE3zzgio03AvKpfygedwuNnuO3FI14xKw9YizeR10O4aTA7ivmErD
         MuHW9euAkhAz3akJ+AhP6h6mpNt7ze6OXUze9vbWwAr2sYg8WAtqep/CR2o3vaHnKELu
         45g9aJaM1m4kcSYLCeL+Ghq49X7AtwFk/HAX+LKt6+TJj49EY1W/Mjg1H+V9CPZSZZDF
         mI3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=s95KyTVgJCkOF9d3OhQcrMijE3hMZBRKUCbN8bvHKPE=;
        b=g7UCyqu6b7wO0kSVVZRomEdK2SjX0BEQmbS7cMRLI/8S3bLvCI1podyL5gu1Dt770e
         NNjGU02wCY3DGsX3D2GEza/MahSE9M08ZbtyB0KbB0XBMc+BHW8jko88UJxtCC9mHFTF
         eFqFZ6tkvztPJxuvq6PqBvbe/mhIJ6rVwMYTuG9JLRoqZY4QExm4QgicsgQUgPSqcKlc
         DXXtoq9PdqZwm/aoSBi3c7fr7xP1N3MIiJEFzXIGgN6EOMBnQ3MJofCWMwblJOCaNXPJ
         MDSTySOXo3M7yaoBgCRkXpMjS1MdELggfqocyPO6dbGt84PesdeiYMsRh8oTvNcD3nzi
         /WvA==
X-Gm-Message-State: ACgBeo2/2CrCFIPPw2fbzl5olxlKpBerZE7MctLDVJgiQYiZFscTOMH4
        vOVyKXQlNXt1PsSowzH2T58GLw==
X-Google-Smtp-Source: AA6agR4gDhA2tCvvMlXWRUjyIPkSy0CnUD0JDYDwpwqcG+Sq+3aqnmkxVGHD157Nt7Bq++oqbQRuZw==
X-Received: by 2002:a2e:aa21:0:b0:261:e3b7:3e8d with SMTP id bf33-20020a2eaa21000000b00261e3b73e8dmr850858ljb.530.1661421068661;
        Thu, 25 Aug 2022 02:51:08 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h10-20020a056512220a00b00492cfecf1c0sm398502lfu.245.2022.08.25.02.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 02:51:08 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v4 04/10] dt-bindings: display/msm: move qcom,sc7280-mdss schema to mdss.yaml
Date:   Thu, 25 Aug 2022 12:50:57 +0300
Message-Id: <20220825095103.624891-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220825095103.624891-1-dmitry.baryshkov@linaro.org>
References: <20220825095103.624891-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move schema for qcom,sc7280-mdss from dpu-sc7280.yaml to mdss.yaml so
that the dpu file describes only the DPU schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dpu-sc7280.yaml      | 148 +++++-------------
 .../devicetree/bindings/display/msm/mdss.yaml |  54 +++++++
 2 files changed, 92 insertions(+), 110 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
index f427eec3d3a4..349a454099ad 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
@@ -10,149 +10,77 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 description: |
-  Device tree bindings for MSM Mobile Display Subsystem (MDSS) that encapsulates
-  sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
-  bindings of MDSS and DPU are mentioned for SC7280.
+  Device tree bindings for the DPU display controller for SC7280 target.
 
 properties:
   compatible:
-    const: qcom,sc7280-mdss
+    const: qcom,sc7280-dpu
 
   reg:
-    maxItems: 1
+    items:
+      - description: Address offset and size for mdp register set
+      - description: Address offset and size for vbif register set
 
   reg-names:
-    const: mdss
-
-  power-domains:
-    maxItems: 1
+    items:
+      - const: mdp
+      - const: vbif
 
   clocks:
     items:
-      - description: Display AHB clock from gcc
-      - description: Display AHB clock from dispcc
+      - description: Display hf axi clock
+      - description: Display sf axi clock
+      - description: Display ahb clock
+      - description: Display lut clock
       - description: Display core clock
+      - description: Display vsync clock
 
   clock-names:
     items:
+      - const: bus
+      - const: nrt_bus
       - const: iface
-      - const: ahb
+      - const: lut
       - const: core
+      - const: vsync
 
   interrupts:
     maxItems: 1
 
-  interrupt-controller: true
-
-  "#address-cells": true
-
-  "#size-cells": true
-
-  "#interrupt-cells":
-    const: 1
-
-  iommus:
-    items:
-      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port0
-
-  ranges: true
-
-  interconnects:
-    items:
-      - description: Interconnect path specifying the port ids for data bus
-
-  interconnect-names:
-    const: mdp0-mem
+  power-domains:
+    maxItems: 1
 
-  resets:
-    items:
-      - description: MDSS_CORE reset
+  operating-points-v2: true
 
-patternProperties:
-  "^display-controller@[0-9a-f]+$":
-    type: object
-    description: Node containing the properties of DPU.
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description: |
+      Contains the list of output ports from DPU device. These ports
+      connect to interfaces that are external to the DPU hardware,
+      such as DSI, DP etc. Each output port contains an endpoint that
+      describes how it is connected to an external interface.
 
     properties:
-      compatible:
-        const: qcom,sc7280-dpu
-
-      reg:
-        items:
-          - description: Address offset and size for mdp register set
-          - description: Address offset and size for vbif register set
-
-      reg-names:
-        items:
-          - const: mdp
-          - const: vbif
-
-      clocks:
-        items:
-          - description: Display hf axi clock
-          - description: Display sf axi clock
-          - description: Display ahb clock
-          - description: Display lut clock
-          - description: Display core clock
-          - description: Display vsync clock
-
-      clock-names:
-        items:
-          - const: bus
-          - const: nrt_bus
-          - const: iface
-          - const: lut
-          - const: core
-          - const: vsync
-
-      interrupts:
-        maxItems: 1
-
-      power-domains:
-        maxItems: 1
-
-      operating-points-v2: true
-
-      ports:
-        $ref: /schemas/graph.yaml#/properties/ports
-        description: |
-          Contains the list of output ports from DPU device. These ports
-          connect to interfaces that are external to the DPU hardware,
-          such as DSI, DP etc. Each output port contains an endpoint that
-          describes how it is connected to an external interface.
-
-        properties:
-          port@0:
-            $ref: /schemas/graph.yaml#/properties/port
-            description: DPU_INTF1 (DSI)
-
-          port@1:
-            $ref: /schemas/graph.yaml#/properties/port
-            description: DPU_INTF5 (EDP)
-
-        required:
-          - port@0
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: DPU_INTF1 (DSI)
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: DPU_INTF5 (EDP)
 
     required:
-      - compatible
-      - reg
-      - reg-names
-      - clocks
-      - interrupts
-      - power-domains
-      - operating-points-v2
-      - ports
+      - port@0
 
 required:
   - compatible
   - reg
   - reg-names
-  - power-domains
   - clocks
   - interrupts
-  - interrupt-controller
-  - iommus
-  - ranges
+  - power-domains
+  - operating-points-v2
+  - ports
 
 additionalProperties: false
 
diff --git a/Documentation/devicetree/bindings/display/msm/mdss.yaml b/Documentation/devicetree/bindings/display/msm/mdss.yaml
index f86177bb2e8c..8d748fc5359c 100644
--- a/Documentation/devicetree/bindings/display/msm/mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/mdss.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,mdss
       - qcom,sc7180-mdss
+      - qcom,sc7280-mdss
       - qcom,sdm845-mdss
 
   reg:
@@ -147,6 +148,7 @@ allOf:
           contains:
             enum:
               - qcom,sc7180-mdss
+              - qcom,sc7280-mdss
     then:
       properties:
         clocks:
@@ -269,6 +271,52 @@ allOf:
               enum:
                 - qcom,dsi-phy-10nm
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,sc7280-mdss
+    then:
+      patternProperties:
+        "^display-controller@[1-9a-f][0-9a-f]*$":
+          type: object
+          properties:
+            compatible:
+              const: qcom,sc7280-dpu
+
+        "^displayport-controller@[1-9a-f][0-9a-f]*$":
+          type: object
+          properties:
+            compatible:
+              const: qcom,sc7280-dp
+
+        "^dsi@[1-9a-f][0-9a-f]*$":
+          type: object
+          properties:
+            compatible:
+              const: qcom,mdss-dsi-ctrl
+
+        "^dsi-phy@[1-9a-f][0-9a-f]*$":
+          type: object
+          properties:
+            compatible:
+              enum:
+                - qcom,dsi-phy-10nm
+
+        "^edp@[1-9a-f][0-9a-f]*$":
+          type: object
+          properties:
+            compatible:
+              const: qcom,sc7280-edp
+
+        "^phy@[1-9a-f][0-9a-f]*$":
+          type: object
+          properties:
+            compatible:
+              enum:
+                - qcom,sc7280-dsi-phy-7nm
+                - qcom,sc7280-edp-phy
+
   - if:
       properties:
         compatible:
@@ -325,12 +373,18 @@ patternProperties:
   "^dsi-phy@[1-9a-f][0-9a-f]*$":
     type: object
 
+  "^edp@[1-9a-f][0-9a-f]*$":
+    type: object
+
   "^hdmi-phy@[1-9a-f][0-9a-f]*$":
     type: object
 
   "^hdmi-tx@[1-9a-f][0-9a-f]*$":
     type: object
 
+  "^phy@[1-9a-f][0-9a-f]*$":
+    type: object
+
 additionalProperties: false
 
 examples:
-- 
2.35.1

