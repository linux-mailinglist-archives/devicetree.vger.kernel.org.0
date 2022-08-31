Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD12F5A863D
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 20:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232710AbiHaS7q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 14:59:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233165AbiHaS7i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 14:59:38 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5BDDC2291
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:58:41 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id b26so8668385ljk.12
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=VCHByrOYNjoljIXiWmVNhiJmxVzb7hkZVyfcBKahWtw=;
        b=NHXAMcHQpTT3+ql2uxsoUk7Ovh7bxahkJcAIwlEIeQArs20JR6M5K/6NIZiK1YaPqG
         Y/NLeGznrv0p2vXD4EeO6WiEulPA8OgYikGmb9Rvj44hCd53R9jJhS8UNsX8Uazpj1Hs
         u+5Siw8SMRpWfytAirCpUW/k5aRTPy9Bq7VMrD9aPJbpTenmb2o6O09O8P1oTVxGDXXS
         m8Nnz2iEMUYQrCliQkcO1zMMlIKHtHb81HGpLVMjXMke+PZKTlKrk1S+ICjWDvmhNBMK
         F2ouv8TylmBqLyO1y0+IH82FmIf2jWprPYqZvCqnei+sWHOgA3POtp10z8QGtnwQasA6
         62vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=VCHByrOYNjoljIXiWmVNhiJmxVzb7hkZVyfcBKahWtw=;
        b=TQS5WnZyuXCDuiaioj1n/smbZt22yDtPLWDDpMMku52WoUHu4b9o4UdpWags3YdYtM
         QGbDMAspjaMGSwPsdTHJKpzRzhPvu+9H0TbovQL1oxhtyVR0hTxpBBOzYz30aQIIIqGp
         m42U8/HY+2qJY4mV45aQfP9jSFuiPTf7wqZ5Ya+1Scfok3mEx++LWNHUg5n5PdyJWepo
         g1RvOiwwFTdjyQBs58Iv/4at52gQTJofHfIW+Xr5/dUoslMoHZ9MWyvCC74PUr4RhP8M
         Rhhv0p4NeGSrh2keHWbJDilwH5WIUKUABxsbQ5ToR0Ldb8GFmR1DSfDX/eCK1lxBOx0M
         p4MA==
X-Gm-Message-State: ACgBeo183VNEvFTAV1OwEno3lg5/JX+f1cSyG7SufIyAsMEFugLjNHBa
        evn6wukKnGSCq+iTi94s5w24aw==
X-Google-Smtp-Source: AA6agR7f4AHNoZxBjwqbbGgA/+CaY3NIxDk19hl9pj1Zbrc49Q/hp6aCD1ffLY7Nd/sfWEUXeAMi/A==
X-Received: by 2002:a05:651c:1ce:b0:261:bc8f:81e9 with SMTP id d14-20020a05651c01ce00b00261bc8f81e9mr8337097ljn.61.1661972320041;
        Wed, 31 Aug 2022 11:58:40 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g1-20020a0565123b8100b004948f583e6bsm322422lfv.138.2022.08.31.11.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 11:58:39 -0700 (PDT)
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
Subject: [PATCH v5 10/12] dt-bindings: display/msm: split dpu-qcm2290 into DPU and MDSS parts
Date:   Wed, 31 Aug 2022 21:58:28 +0300
Message-Id: <20220831185830.1798676-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831185830.1798676-1-dmitry.baryshkov@linaro.org>
References: <20220831185830.1798676-1-dmitry.baryshkov@linaro.org>
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

In order to make the schema more readable, split dpu-qcm2290 into the DPU
and MDSS parts, each one describing just a single device binding.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dpu-qcm2290.yaml     | 166 ++++++------------
 .../bindings/display/msm/mdss-qcm2290.yaml    |  86 +++++++++
 2 files changed, 137 insertions(+), 115 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-qcm2290.yaml

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
index 1c6dd7969a61..93b4318e8fe3 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
@@ -9,79 +9,41 @@ title: Qualcomm Display DPU dt properties for QCM2290 target
 maintainers:
   - Loic Poulain <loic.poulain@linaro.org>
 
-description: |
-  Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
-  sub-blocks like DPU display controller and DSI. Device tree bindings of MDSS
-  and DPU are mentioned for QCM2290 target.
+description: Device tree bindings for the QCM2290 DPU display controller.
 
 allOf:
-  - $ref: /schemas/display/msm/mdss-common.yaml#
+  - $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
     items:
-      - const: qcom,qcm2290-mdss
+      - const: qcom,qcm2290-dpu
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
-      - description: Display AXI clock
-      - description: Display core clock
+      - description: Display AXI clock from gcc
+      - description: Display AHB clock from dispcc
+      - description: Display core clock from dispcc
+      - description: Display lut clock from dispcc
+      - description: Display vsync clock from dispcc
 
   clock-names:
     items:
-      - const: iface
       - const: bus
+      - const: iface
       - const: core
-
-  iommus:
-    maxItems: 2
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
-          - const: qcom,qcm2290-dpu
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
-          - description: Display AXI clock from gcc
-          - description: Display AHB clock from dispcc
-          - description: Display core clock from dispcc
-          - description: Display lut clock from dispcc
-          - description: Display vsync clock from dispcc
-
-      clock-names:
-        items:
-          - const: bus
-          - const: iface
-          - const: core
-          - const: lut
-          - const: vsync
+      - const: lut
+      - const: vsync
 
 unevaluatedProperties: false
 
@@ -89,63 +51,37 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,dispcc-qcm2290.h>
     #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
-    #include <dt-bindings/interrupt-controller/arm-gic.h>
-    #include <dt-bindings/interconnect/qcom,qcm2290.h>
     #include <dt-bindings/power/qcom-rpmpd.h>
 
-    mdss: mdss@5e00000 {
-        #address-cells = <1>;
-        #size-cells = <1>;
-        compatible = "qcom,qcm2290-mdss";
-        reg = <0x05e00000 0x1000>;
-        reg-names = "mdss";
-        power-domains = <&dispcc MDSS_GDSC>;
-        clocks = <&gcc GCC_DISP_AHB_CLK>,
-                 <&gcc GCC_DISP_HF_AXI_CLK>,
-                 <&dispcc DISP_CC_MDSS_MDP_CLK>;
-        clock-names = "iface", "bus", "core";
-
-        interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
-        interrupt-controller;
-        #interrupt-cells = <1>;
-
-        interconnects = <&mmrt_virt MASTER_MDP0 &bimc SLAVE_EBI1>;
-        interconnect-names = "mdp0-mem";
-
-        iommus = <&apps_smmu 0x420 0x2>,
-                 <&apps_smmu 0x421 0x0>;
-        ranges;
-
-        mdss_mdp: display-controller@5e01000 {
-                compatible = "qcom,qcm2290-dpu";
-                reg = <0x05e01000 0x8f000>,
-                      <0x05eb0000 0x2008>;
-                reg-names = "mdp", "vbif";
-
-                clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
-                         <&dispcc DISP_CC_MDSS_AHB_CLK>,
-                         <&dispcc DISP_CC_MDSS_MDP_CLK>,
-                         <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
-                         <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
-                clock-names = "bus", "iface", "core", "lut", "vsync";
-
-                operating-points-v2 = <&mdp_opp_table>;
-                power-domains = <&rpmpd QCM2290_VDDCX>;
-
-                interrupt-parent = <&mdss>;
-                interrupts = <0>;
-
-                ports {
-                        #address-cells = <1>;
-                        #size-cells = <0>;
-
-                        port@0 {
-                                reg = <0>;
-                                dpu_intf1_out: endpoint {
-                                        remote-endpoint = <&dsi0_in>;
-                                };
-                        };
-                };
-         };
+    display-controller@5e01000 {
+            compatible = "qcom,qcm2290-dpu";
+            reg = <0x05e01000 0x8f000>,
+                  <0x05eb0000 0x2008>;
+            reg-names = "mdp", "vbif";
+
+            clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
+                     <&dispcc DISP_CC_MDSS_AHB_CLK>,
+                     <&dispcc DISP_CC_MDSS_MDP_CLK>,
+                     <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
+                     <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+            clock-names = "bus", "iface", "core", "lut", "vsync";
+
+            operating-points-v2 = <&mdp_opp_table>;
+            power-domains = <&rpmpd QCM2290_VDDCX>;
+
+            interrupt-parent = <&mdss>;
+            interrupts = <0>;
+
+            ports {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    port@0 {
+                            reg = <0>;
+                            dpu_intf1_out: endpoint {
+                                    remote-endpoint = <&dsi0_in>;
+                            };
+                    };
+            };
     };
 ...
diff --git a/Documentation/devicetree/bindings/display/msm/mdss-qcm2290.yaml b/Documentation/devicetree/bindings/display/msm/mdss-qcm2290.yaml
new file mode 100644
index 000000000000..7a6c3178f02c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/mdss-qcm2290.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/mdss-qcm2290.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Display MDSS dt properties for QCM2290 target
+
+maintainers:
+  - Loic Poulain <loic.poulain@linaro.org>
+
+description: |
+  Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
+  sub-blocks like DPU display controller and DSI. Device tree bindings of MDSS
+  are mentioned for QCM2290 target.
+
+allOf:
+  - $ref: /schemas/display/msm/mdss-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: qcom,qcm2290-mdss
+
+  clocks:
+    items:
+      - description: Display AHB clock from gcc
+      - description: Display AXI clock
+      - description: Display core clock
+
+  clock-names:
+    items:
+      - const: iface
+      - const: bus
+      - const: core
+
+  iommus:
+    maxItems: 2
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
+        const: qcom,qcm2290-dpu
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,dispcc-qcm2290.h>
+    #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interconnect/qcom,qcm2290.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    mdss: mdss@5e00000 {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        compatible = "qcom,qcm2290-mdss";
+        reg = <0x05e00000 0x1000>;
+        reg-names = "mdss";
+        power-domains = <&dispcc MDSS_GDSC>;
+        clocks = <&gcc GCC_DISP_AHB_CLK>,
+                 <&gcc GCC_DISP_HF_AXI_CLK>,
+                 <&dispcc DISP_CC_MDSS_MDP_CLK>;
+        clock-names = "iface", "bus", "core";
+
+        interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+
+        interconnects = <&mmrt_virt MASTER_MDP0 &bimc SLAVE_EBI1>;
+        interconnect-names = "mdp0-mem";
+
+        iommus = <&apps_smmu 0x420 0x2>,
+                 <&apps_smmu 0x421 0x0>;
+        ranges;
+    };
+...
-- 
2.35.1

