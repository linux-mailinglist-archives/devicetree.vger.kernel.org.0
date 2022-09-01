Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 886EB5A944E
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 12:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233914AbiIAKX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 06:23:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233923AbiIAKXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 06:23:25 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C006013609A
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 03:23:23 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id m7so14815625lfq.8
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 03:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=cjadDMsahk1nQtSBnbE1AkGGTfemSP4KJ3MywIDJPzA=;
        b=vGGbI77PkYNP5Z+pBoy0K6Y5HoQcVWMaHOALkIDK97DrvW+CvhmZHkvmhsRD2AYhrp
         +gN0dU4gDvZF2B0j9zcx80EgvT5vpetqBbdvMjgKl3bQ8EpuaHKlQU51aC/YTGJyUsJ6
         3qV7Sx6EBr+kaJIthrHnipUFbWMqgyxFQxcbPv7Yn4ZldQMgpTfhQYwjam4NYBvFBxun
         fPiJMoN2etuy2nJjr1a2srOuC+J4QDDlDXYz3+VKZA8CosEApBIULklKxC/ULrAozH17
         n3yYx69SSiIBSFXc1CBWUGirAThXgONjYSBIrUhy7gIcmJ0uMidXkVxumwyOga7G0Ev8
         JPpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=cjadDMsahk1nQtSBnbE1AkGGTfemSP4KJ3MywIDJPzA=;
        b=JzRsChe0Kl7eNbDHl2IeIbjfgD/CBHFLxqYMlQsVy0ghnYZCSANcO4iDZxSngRC3XX
         sDSzkFJbx/OaOCqD8ojgwDpE5JraFAmkNiudJIuNtdPtKGEmDWXvmHecaajzFZtNGfrL
         wfXdql4+gdVMB6ahO6e/w3GVTB/9wBylW3cZeAlHuCsIvwsQG7do+OMLLF1YKlSrSEQy
         HeKch2W6Pz3w0ljIWAj/bA9mGQ9JwUvJNMCL3tGrgIEskeFv7h7/XMoDrR64f/+K0kgQ
         oeVOZ8tC7Uytm+kcPf9Pk9arLwaM9qTtbPeMD76g1mznlI4Q68sgzUWB9i0jdVWLr0Dl
         X1EQ==
X-Gm-Message-State: ACgBeo0oWGd4MBnXhWTSLcw1aeIK7YjdjZ+AaaN2+4U0LOmPh8Jm0oig
        tiXaHAo3QGD9YDWeexCX9E1VmQ==
X-Google-Smtp-Source: AA6agR5A0doJtePQMQT3PBVWGVXQZD8ZpsAKxk3YRfHmJ6bBBtLAkrZY1sTRHb4g39P96PhedQJw/g==
X-Received: by 2002:ac2:418a:0:b0:48b:aa2:1d9f with SMTP id z10-20020ac2418a000000b0048b0aa21d9fmr11610568lfh.195.1662027802112;
        Thu, 01 Sep 2022 03:23:22 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z19-20020a056512371300b004949ea5480fsm123453lfr.97.2022.09.01.03.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 03:23:21 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH v6 08/12] dt-bindings: display/msm: split dpu-sdm845 into DPU and MDSS parts
Date:   Thu,  1 Sep 2022 13:23:08 +0300
Message-Id: <20220901102312.2005553-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220901102312.2005553-1-dmitry.baryshkov@linaro.org>
References: <20220901102312.2005553-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to make the schema more readable, split dpu-sdm845 into the DPU
and MDSS parts, each one describing just a single device binding.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dpu-sdm845.yaml      | 170 ++++++------------
 .../bindings/display/msm/mdss-sdm845.yaml     |  80 +++++++++
 2 files changed, 136 insertions(+), 114 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-sdm845.yaml

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 7e9d7c7f3538..4440f1987ddd 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -9,77 +9,41 @@ title: Qualcomm Display DPU dt properties for SDM845 target
 maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
-description: |
-  Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
-  sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
-  bindings of MDSS and DPU are mentioned for SDM845 target.
+description: Device tree bindings for the SDM845 DPU display controller.
 
 allOf:
-  - $ref: /schemas/display/msm/mdss-common.yaml#
+  - $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
     items:
-      - const: qcom,sdm845-mdss
+      - const: qcom,sdm845-dpu
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
+      - description: Display GCC bus clock
+      - description: Display ahb clock
+      - description: Display axi clock
       - description: Display core clock
+      - description: Display vsync clock
 
   clock-names:
     items:
+      - const: gcc-bus
       - const: iface
+      - const: bus
       - const: core
-
-  iommus:
-    maxItems: 2
-
-  interconnects:
-    maxItems: 2
-
-  interconnect-names:
-    maxItems: 2
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
-          - const: qcom,sdm845-dpu
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
-          - description: Display GCC bus clock
-          - description: Display ahb clock
-          - description: Display axi clock
-          - description: Display core clock
-          - description: Display vsync clock
-
-      clock-names:
-        items:
-          - const: gcc-bus
-          - const: iface
-          - const: bus
-          - const: core
-          - const: vsync
+      - const: vsync
 
 unevaluatedProperties: false
 
@@ -87,65 +51,43 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
     #include <dt-bindings/clock/qcom,gcc-sdm845.h>
-    #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/power/qcom-rpmpd.h>
 
-    display-subsystem@ae00000 {
-          #address-cells = <1>;
-          #size-cells = <1>;
-          compatible = "qcom,sdm845-mdss";
-          reg = <0x0ae00000 0x1000>;
-          reg-names = "mdss";
-          power-domains = <&dispcc MDSS_GDSC>;
-
-          clocks = <&gcc GCC_DISP_AHB_CLK>,
-                   <&dispcc DISP_CC_MDSS_MDP_CLK>;
-          clock-names = "iface", "core";
-
-          interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
-          interrupt-controller;
-          #interrupt-cells = <1>;
-
-          iommus = <&apps_smmu 0x880 0x8>,
-                   <&apps_smmu 0xc80 0x8>;
-          ranges;
-
-          display-controller@ae01000 {
-                    compatible = "qcom,sdm845-dpu";
-                    reg = <0x0ae01000 0x8f000>,
-                          <0x0aeb0000 0x2008>;
-                    reg-names = "mdp", "vbif";
-
-                    clocks = <&gcc GCC_DISP_AXI_CLK>,
-                             <&dispcc DISP_CC_MDSS_AHB_CLK>,
-                             <&dispcc DISP_CC_MDSS_AXI_CLK>,
-                             <&dispcc DISP_CC_MDSS_MDP_CLK>,
-                             <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
-                    clock-names = "gcc-bus", "iface", "bus", "core", "vsync";
-
-                    interrupt-parent = <&mdss>;
-                    interrupts = <0>;
-                    power-domains = <&rpmhpd SDM845_CX>;
-                    operating-points-v2 = <&mdp_opp_table>;
-
-                    ports {
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
-                           port@1 {
-                                   reg = <1>;
-                                   dpu_intf2_out: endpoint {
-                                                  remote-endpoint = <&dsi1_in>;
-                                   };
-                           };
-                    };
-          };
+    display-controller@ae01000 {
+                compatible = "qcom,sdm845-dpu";
+                reg = <0x0ae01000 0x8f000>,
+                      <0x0aeb0000 0x2008>;
+                reg-names = "mdp", "vbif";
+
+                clocks = <&gcc GCC_DISP_AXI_CLK>,
+                         <&dispcc DISP_CC_MDSS_AHB_CLK>,
+                         <&dispcc DISP_CC_MDSS_AXI_CLK>,
+                         <&dispcc DISP_CC_MDSS_MDP_CLK>,
+                         <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+                clock-names = "gcc-bus", "iface", "bus", "core", "vsync";
+
+                interrupt-parent = <&mdss>;
+                interrupts = <0>;
+                power-domains = <&rpmhpd SDM845_CX>;
+                operating-points-v2 = <&mdp_opp_table>;
+
+                ports {
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
+                       port@1 {
+                               reg = <1>;
+                               dpu_intf2_out: endpoint {
+                                              remote-endpoint = <&dsi1_in>;
+                               };
+                       };
+                };
     };
 ...
diff --git a/Documentation/devicetree/bindings/display/msm/mdss-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/mdss-sdm845.yaml
new file mode 100644
index 000000000000..0bc148f7fbd9
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/mdss-sdm845.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/mdss-sdm845.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Display MDSS dt properties for SDM845 target
+
+maintainers:
+  - Krishna Manikandan <quic_mkrishn@quicinc.com>
+
+description: |
+  Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
+  sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
+  bindings of MDSS are mentioned for SDM845 target.
+
+allOf:
+  - $ref: /schemas/display/msm/mdss-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: qcom,sdm845-mdss
+
+  clocks:
+    items:
+      - description: Display AHB clock from gcc
+      - description: Display core clock
+
+  clock-names:
+    items:
+      - const: iface
+      - const: core
+
+  iommus:
+    maxItems: 2
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    maxItems: 2
+
+patternProperties:
+  "^display-controller@[0-9a-f]+$":
+    type: object
+    properties:
+      compatible:
+        const: qcom,sdm845-dpu
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
+    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    display-subsystem@ae00000 {
+          #address-cells = <1>;
+          #size-cells = <1>;
+          compatible = "qcom,sdm845-mdss";
+          reg = <0x0ae00000 0x1000>;
+          reg-names = "mdss";
+          power-domains = <&dispcc MDSS_GDSC>;
+
+          clocks = <&gcc GCC_DISP_AHB_CLK>,
+                   <&dispcc DISP_CC_MDSS_MDP_CLK>;
+          clock-names = "iface", "core";
+
+          interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+          interrupt-controller;
+          #interrupt-cells = <1>;
+
+          iommus = <&apps_smmu 0x880 0x8>,
+                   <&apps_smmu 0xc80 0x8>;
+          ranges;
+    };
+...
-- 
2.35.1

