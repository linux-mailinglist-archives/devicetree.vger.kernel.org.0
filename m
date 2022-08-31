Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 080145A8630
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 20:59:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233146AbiHaS7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 14:59:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233149AbiHaS7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 14:59:36 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33612BBA4C
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:58:37 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id s15so10449567ljp.5
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ZfqFyT7S0ZfiEJmx9fjpRZIwg/bPMIzLWs0Tq9ZEHog=;
        b=sUlB6Cb+Zbrica8lWGsVi8ywrPOr7bcu8AOnlnm/BCXKrEorGPQA5R6icBui9Yt8XN
         CNpgeBWB3/w8WHLCJQdZSxKtNmweTe5+WR6LRdrowvIS1F0tsu7PzmeH3DQT0JMVrEEZ
         gui+6yWzdDxS8VOcr7PKaDmeY4uIDzL5dbRUmh4KYu67hJV8BotbIFrOIx+0bFs4O1yl
         43tmqvYkP11+e19obuXfX+6GITnlNmTMpyJ0H4Od7p5vN7LlhCM/f4x1O0WZfo6E6xpv
         oJwFJnxzFdxYkKTrFApEVayxr6kKoK5OuhZ59Cl2KKZ0AN77qqB1X3mT8KVxeeHsrpRB
         WQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ZfqFyT7S0ZfiEJmx9fjpRZIwg/bPMIzLWs0Tq9ZEHog=;
        b=7Ulv3BriRaERTt9lfoSUYDpSYx+YutrgAGnQ812A9MVCTguHceozFsAnoFwYNLajkt
         a8ruKewQ5kEZqbe9MR/BCOLyw5kru2c0wgYu5oE7lfPEItQ8LB6DcPs2optIgodM4k0H
         uxR+007oL0yQZiaRi1YGISfygECjppsyJIyqCJEiz3qVHkrKl+uotU15E6Cn4snlADyL
         DJ18XeULy5b+m49x6J/wJdmwZAsv5Izj+2bXPQxVm9tX3EsyEMpMiXUio/XFiOp9RAA5
         Q2JcOw1uYw/4z4AdEdhVJLBPV9B+sL4gC4bUeZEle0IdvREymMah3adrStHwvXIuNeY9
         r4pQ==
X-Gm-Message-State: ACgBeo0k3KUX4Efwn5IcUfZ2GAO+dns40CspL7H9Gg6tA1VQgj5hWi4p
        VHQU31xkCFnI5jwAvw0HMNLCuQ==
X-Google-Smtp-Source: AA6agR6pHzkUc+CJIWVgxccONtWV5jI7g/Z343XWSLx/Pro56+rf58q0//2AVZ22uM2ZWiy8UCrg7Q==
X-Received: by 2002:a2e:7a12:0:b0:266:e93d:880e with SMTP id v18-20020a2e7a12000000b00266e93d880emr2946398ljc.102.1661972316503;
        Wed, 31 Aug 2022 11:58:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g1-20020a0565123b8100b004948f583e6bsm322422lfv.138.2022.08.31.11.58.35
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
Subject: [PATCH v5 06/12] dt-bindings: display/msm: split dpu-sc7180 into DPU and MDSS parts
Date:   Wed, 31 Aug 2022 21:58:24 +0300
Message-Id: <20220831185830.1798676-7-dmitry.baryshkov@linaro.org>
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

In order to make the schema more readable, split dpu-sc7180 into the DPU
and MDSS parts, each one describing just a single device binding.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dpu-sc7180.yaml      | 185 ++++++------------
 .../bindings/display/msm/mdss-sc7180.yaml     |  85 ++++++++
 2 files changed, 146 insertions(+), 124 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-sc7180.yaml

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
index 47e74f78e939..0ed64fe065c2 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
@@ -9,81 +9,43 @@ title: Qualcomm Display DPU dt properties for SC7180 target
 maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
-description: |
-  Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
-  sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
-  bindings of MDSS and DPU are mentioned for SC7180 target.
+description: Device tree bindings for the SC7180 DPU display controller.
 
 allOf:
-  - $ref: /schemas/display/msm/mdss-common.yaml#
+  - $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
     items:
-      - const: qcom,sc7180-mdss
+      - const: qcom,sc7180-dpu
+
+  reg:
+    items:
+      - description: Address offset and size for mdp register set
+      - description: Address offset and size for vbif register set
+
+  reg-names:
+    items:
+      - const: mdp
+      - const: vbif
 
   clocks:
     items:
-      - description: Display AHB clock from gcc
-      - description: Display AHB clock from dispcc
+      - description: Display hf axi clock
+      - description: Display ahb clock
+      - description: Display rotator clock
+      - description: Display lut clock
       - description: Display core clock
+      - description: Display vsync clock
 
   clock-names:
     items:
+      - const: bus
       - const: iface
-      - const: ahb
+      - const: rot
+      - const: lut
       - const: core
-
-  iommus:
-    maxItems: 1
-
-  interconnects:
-    maxItems: 1
-
-  interconnect-names:
-    maxItems: 1
-
-patternProperties:
-  "^display-controller@[0-9a-f]+$":
-    type: object
-    description: Node containing the properties of DPU.
-    unevaluatedProperties: false
-
-    allOf:
-      - $ref: /schemas/display/msm/dpu-common.yaml#
-
-    properties:
-      compatible:
-        items:
-          - const: qcom,sc7180-dpu
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
-          - description: Display ahb clock
-          - description: Display rotator clock
-          - description: Display lut clock
-          - description: Display core clock
-          - description: Display vsync clock
-
-      clock-names:
-        items:
-          - const: bus
-          - const: iface
-          - const: rot
-          - const: lut
-          - const: core
-          - const: vsync
+      - const: vsync
 
 unevaluatedProperties: false
 
@@ -91,71 +53,46 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,dispcc-sc7180.h>
     #include <dt-bindings/clock/qcom,gcc-sc7180.h>
-    #include <dt-bindings/interrupt-controller/arm-gic.h>
-    #include <dt-bindings/interconnect/qcom,sdm845.h>
     #include <dt-bindings/power/qcom-rpmpd.h>
 
-    display-subsystem@ae00000 {
-         #address-cells = <1>;
-         #size-cells = <1>;
-         compatible = "qcom,sc7180-mdss";
-         reg = <0xae00000 0x1000>;
-         reg-names = "mdss";
-         power-domains = <&dispcc MDSS_GDSC>;
-         clocks = <&gcc GCC_DISP_AHB_CLK>,
-                  <&dispcc DISP_CC_MDSS_AHB_CLK>,
-                  <&dispcc DISP_CC_MDSS_MDP_CLK>;
-         clock-names = "iface", "ahb", "core";
-
-         interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
-         interrupt-controller;
-         #interrupt-cells = <1>;
-
-         interconnects = <&mmss_noc MASTER_MDP0 &mc_virt SLAVE_EBI1>;
-         interconnect-names = "mdp0-mem";
-
-         iommus = <&apps_smmu 0x800 0x2>;
-         ranges;
-
-         display-controller@ae01000 {
-                   compatible = "qcom,sc7180-dpu";
-                   reg = <0x0ae01000 0x8f000>,
-                         <0x0aeb0000 0x2008>;
-
-                   reg-names = "mdp", "vbif";
-
-                   clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
-                            <&dispcc DISP_CC_MDSS_AHB_CLK>,
-                            <&dispcc DISP_CC_MDSS_ROT_CLK>,
-                            <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
-                            <&dispcc DISP_CC_MDSS_MDP_CLK>,
-                            <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
-                   clock-names = "bus", "iface", "rot", "lut", "core",
-                                 "vsync";
-
-                   interrupt-parent = <&mdss>;
-                   interrupts = <0>;
-                   power-domains = <&rpmhpd SC7180_CX>;
-                   operating-points-v2 = <&mdp_opp_table>;
-
-                   ports {
-                           #address-cells = <1>;
-                           #size-cells = <0>;
-
-                           port@0 {
-                                   reg = <0>;
-                                   dpu_intf1_out: endpoint {
-                                                  remote-endpoint = <&dsi0_in>;
-                                   };
-                           };
-
-                            port@2 {
-                                    reg = <2>;
-                                    dpu_intf0_out: endpoint {
-                                                   remote-endpoint = <&dp_in>;
-                                    };
-                            };
-                   };
-         };
+    display-controller@ae01000 {
+               compatible = "qcom,sc7180-dpu";
+               reg = <0x0ae01000 0x8f000>,
+                     <0x0aeb0000 0x2008>;
+
+               reg-names = "mdp", "vbif";
+
+               clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
+                        <&dispcc DISP_CC_MDSS_AHB_CLK>,
+                        <&dispcc DISP_CC_MDSS_ROT_CLK>,
+                        <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
+                        <&dispcc DISP_CC_MDSS_MDP_CLK>,
+                        <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+               clock-names = "bus", "iface", "rot", "lut", "core",
+                             "vsync";
+
+               interrupt-parent = <&mdss>;
+               interrupts = <0>;
+               power-domains = <&rpmhpd SC7180_CX>;
+               operating-points-v2 = <&mdp_opp_table>;
+
+               ports {
+                       #address-cells = <1>;
+                       #size-cells = <0>;
+
+                       port@0 {
+                               reg = <0>;
+                               dpu_intf1_out: endpoint {
+                                              remote-endpoint = <&dsi0_in>;
+                               };
+                       };
+
+                        port@2 {
+                                reg = <2>;
+                                dpu_intf0_out: endpoint {
+                                               remote-endpoint = <&dp_in>;
+                                };
+                        };
+               };
     };
 ...
diff --git a/Documentation/devicetree/bindings/display/msm/mdss-sc7180.yaml b/Documentation/devicetree/bindings/display/msm/mdss-sc7180.yaml
new file mode 100644
index 000000000000..27d944f0e471
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/mdss-sc7180.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/mdss-sc7180.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Display MDSS dt properties for SC7180 target
+
+maintainers:
+  - Krishna Manikandan <quic_mkrishn@quicinc.com>
+
+description: |
+  Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
+  sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
+  bindings of MDSS are mentioned for SC7180 target.
+
+allOf:
+  - $ref: /schemas/display/msm/mdss-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: qcom,sc7180-mdss
+
+  clocks:
+    items:
+      - description: Display AHB clock from gcc
+      - description: Display AHB clock from dispcc
+      - description: Display core clock
+
+  clock-names:
+    items:
+      - const: iface
+      - const: ahb
+      - const: core
+
+  iommus:
+    maxItems: 1
+
+  interconnects:
+    maxItems: 1
+
+  interconnect-names:
+    maxItems: 1
+
+patternProperties:
+  "^display-controller@[0-9a-f]+$":
+    type: object
+    properties:
+      compatible:
+        const: qcom,sc7180-dpu
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,dispcc-sc7180.h>
+    #include <dt-bindings/clock/qcom,gcc-sc7180.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interconnect/qcom,sdm845.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    display-subsystem@ae00000 {
+         #address-cells = <1>;
+         #size-cells = <1>;
+         compatible = "qcom,sc7180-mdss";
+         reg = <0xae00000 0x1000>;
+         reg-names = "mdss";
+         power-domains = <&dispcc MDSS_GDSC>;
+         clocks = <&gcc GCC_DISP_AHB_CLK>,
+                  <&dispcc DISP_CC_MDSS_AHB_CLK>,
+                  <&dispcc DISP_CC_MDSS_MDP_CLK>;
+         clock-names = "iface", "ahb", "core";
+
+         interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+         interrupt-controller;
+         #interrupt-cells = <1>;
+
+         interconnects = <&mmss_noc MASTER_MDP0 &mc_virt SLAVE_EBI1>;
+         interconnect-names = "mdp0-mem";
+
+         iommus = <&apps_smmu 0x800 0x2>;
+         ranges;
+    };
+...
-- 
2.35.1

