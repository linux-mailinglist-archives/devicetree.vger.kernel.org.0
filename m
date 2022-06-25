Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AB0455AD7A
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 01:27:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233657AbiFYXZW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 19:25:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233630AbiFYXZT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 19:25:19 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3887F12608
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:18 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id w20so10473386lfa.11
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=We8zETCg3s+wlW3UWKU0rVY6ytryKW3aFPktzPMnEnU=;
        b=yE/SGklntMwHucgz4nZ2LdmogceUYZfGPEZizsKT5eEuehbtlumuOUhc3qzp+nUhsF
         UtwtVz1ptJnYBN8ypsn2InH8xzQ+M/dijR/vL4sZprjAKElyQh/DEobSz6UMEIl7iyAz
         l4tuWSBuxhYk7DHb8gAAVLyG6LTjiEpr6IapS8I7rTtpyz44h6k2QlrQDRfFjJvDh3i8
         eTWGarLO2BTEC33VAKl8NUnyqzmEHPSTzMQV3WyPeGC+uH40taEorsUb40eMiFpB8oru
         nkRXMI+fFLiEnl+rS47WWMBbFYdxtJ+10YalbKrpaDWjk1hmj/ph1/yyGFEnXn045cge
         Ai3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=We8zETCg3s+wlW3UWKU0rVY6ytryKW3aFPktzPMnEnU=;
        b=2xYOGeH6Y1QmDsbqMpvC4lnzPtgByC2Q3o9aT5eJvtqcu0Ad8aIV0l29S6YlpXk535
         AsUHEbuYxiMbC7xoMq7hsOoRy5nOchtwlO1y4sMmNYjPF2cKL+6PedcEtmJivfzpCfSG
         ytrvoNx4f7jsN3FA5Z+98AzpUsS2eugqWrAZYF9cSy8rgNoJX7aCSRGkH7FQX+K7Jgyt
         RAtMOc6wu34NtCr2mueDoCnp5O1qkq+ulYQXd1I1b1e4ysFqXloXkKtFXVCteAChe3lh
         FOZPrG80z/kPEcLO/oLRzNjTA14fzv4UTX6YDqGhcKRIQEaXChPJoqTcKCi2F74ZUdPF
         K/+w==
X-Gm-Message-State: AJIora+QkZQ8B4eUmsM3ymyG6UgfvhOevfjEZACXNjRPhIXm7QCWGYU+
        IWjbS1OuIpkRjHPXUWstSA8FHA==
X-Google-Smtp-Source: AGRyM1tLra7TyfJhvoCVF8F53ffqHZzAxS9vwq9d6puS4k2/N2odYAgJVWceZe9HR4B4tpG9m9iZ/g==
X-Received: by 2002:a05:6512:6d4:b0:47f:7940:f70 with SMTP id u20-20020a05651206d400b0047f79400f70mr3559564lff.47.1656199516526;
        Sat, 25 Jun 2022 16:25:16 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b0047f750ecd8csm1093694lfs.67.2022.06.25.16.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jun 2022 16:25:16 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Subject: [PATCH 01/11] dt-bindings: display/msm: split qcom, mdss bindings
Date:   Sun, 26 Jun 2022 02:25:03 +0300
Message-Id: <20220625232513.522599-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
References: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
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

Split Mobile Display SubSystem (MDSS) root node bindings to the separate
yaml file. Changes to the existing (txt) schema:
 - Add optional "vbif_nrt_phys" region used by msm8996
 - Make "bus" and "vsync" clocks optional (they are not used by some
   platforms)
 - Add (optional) "core" clock added recently to the mdss driver
 - Add optional resets property referencing MDSS reset
 - Define child nodes together with compatibles

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/mdp5.txt  |  30 +--
 .../devicetree/bindings/display/msm/mdss.yaml | 173 ++++++++++++++++++
 2 files changed, 174 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss.yaml

diff --git a/Documentation/devicetree/bindings/display/msm/mdp5.txt b/Documentation/devicetree/bindings/display/msm/mdp5.txt
index 43d11279c925..65d03c58dee6 100644
--- a/Documentation/devicetree/bindings/display/msm/mdp5.txt
+++ b/Documentation/devicetree/bindings/display/msm/mdp5.txt
@@ -2,37 +2,9 @@ Qualcomm adreno/snapdragon MDP5 display controller
 
 Description:
 
-This is the bindings documentation for the Mobile Display Subsytem(MDSS) that
-encapsulates sub-blocks like MDP5, DSI, HDMI, eDP etc, and the MDP5 display
+This is the bindings documentation for the MDP5 display
 controller found in SoCs like MSM8974, APQ8084, MSM8916, MSM8994 and MSM8996.
 
-MDSS:
-Required properties:
-- compatible:
-  * "qcom,mdss" - MDSS
-- reg: Physical base address and length of the controller's registers.
-- reg-names: The names of register regions. The following regions are required:
-  * "mdss_phys"
-  * "vbif_phys"
-- interrupts: The interrupt signal from MDSS.
-- interrupt-controller: identifies the node as an interrupt controller.
-- #interrupt-cells: specifies the number of cells needed to encode an interrupt
-  source, should be 1.
-- power-domains: a power domain consumer specifier according to
-  Documentation/devicetree/bindings/power/power_domain.txt
-- clocks: device clocks. See ../clocks/clock-bindings.txt for details.
-- clock-names: the following clocks are required.
-  * "iface"
-  * "bus"
-  * "vsync"
-- #address-cells: number of address cells for the MDSS children. Should be 1.
-- #size-cells: Should be 1.
-- ranges: parent bus address space is the same as the child bus address space.
-
-Optional properties:
-- clock-names: the following clocks are optional:
-  * "lut"
-
 MDP5:
 Required properties:
 - compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/mdss.yaml b/Documentation/devicetree/bindings/display/msm/mdss.yaml
new file mode 100644
index 000000000000..55c70922361d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/mdss.yaml
@@ -0,0 +1,173 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/mdss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Mobile Display SubSystem (MDSS) dt properties
+
+maintainers:
+  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+  - Rob Clark <robdclark@gmail.com>
+
+description: |
+  This is the bindings documentation for the Mobile Display Subsytem(MDSS) that
+  encapsulates sub-blocks like MDP5, DSI, HDMI, eDP, etc.
+
+properties:
+  compatible:
+    enum:
+      - qcom,mdss
+
+  reg:
+    minItems: 2
+    maxItems: 3
+
+  reg-names:
+    minItems: 2
+    items:
+      - const: mdss_phys
+      - const: vbif_phys
+      - const: vbif_nrt_phys
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller:
+    true
+
+  "#interrupt-cells":
+    const: 1
+
+  power-domains:
+    maxItems: 1
+    description: |
+      The MDSS power domain provided by GCC
+
+  clocks:
+    minItems: 1
+    maxItems: 4
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: iface
+      - const: bus
+      - const: vsync
+      - const: core
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges:
+    true
+
+  resets:
+    items:
+      - description: MDSS_CORE reset
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-controller
+  - "#interrupt-cells"
+  - power-domains
+  - clocks
+  - clock-names
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+patternProperties:
+  "^mdp@(0|[1-9a-f][0-9a-f]*)$":
+    type: object
+    properties:
+      compatible:
+        enum:
+          - qcom,mdp5
+
+  "^dsi@(0|[1-9a-f][0-9a-f]*)$":
+    type: object
+    properties:
+      compatible:
+        enum:
+          - qcom,mdss-dsi-ctrl
+
+  "^dsi-phy@(0|[1-9a-f][0-9a-f]*)$":
+    type: object
+    properties:
+      compatible:
+        enum:
+          - qcom,dsi-phy-7nm
+          - qcom,dsi-phy-7nm-8150
+          - qcom,dsi-phy-10nm
+          - qcom,dsi-phy-10nm-8998
+          - qcom,dsi-phy-14nm
+          - qcom,dsi-phy-14nm-660
+          - qcom,dsi-phy-14nm-8953
+          - qcom,dsi-phy-20nm
+          - qcom,dsi-phy-28nm-8960
+          - qcom,dsi-phy-28nm-hpm
+          - qcom,dsi-phy-28nm-lp
+          - qcom,sc7280-dsi-phy-7nm
+
+  "^hdmi-phy@(0|[1-9a-f][0-9a-f]*)$":
+    type: object
+    properties:
+      compatible:
+        enum:
+          - qcom,hdmi-phy-8660
+          - qcom,hdmi-phy-8960
+          - qcom,hdmi-phy-8974
+          - qcom,hdmi-phy-8084
+          - qcom,hdmi-phy-8996
+
+  "^hdmi-tx@(0|[1-9a-f][0-9a-f]*)$":
+    type: object
+    properties:
+      compatible:
+        enum:
+          - qcom,hdmi-tx-8084
+          - qcom,hdmi-tx-8660
+          - qcom,hdmi-tx-8960
+          - qcom,hdmi-tx-8974
+          - qcom,hdmi-tx-8994
+          - qcom,hdmi-tx-8996
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-msm8916.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    mdss@1a00000 {
+      compatible = "qcom,mdss";
+      reg = <0x1a00000 0x1000>,
+            <0x1ac8000 0x3000>;
+      reg-names = "mdss_phys", "vbif_phys";
+
+      power-domains = <&gcc MDSS_GDSC>;
+
+      clocks = <&gcc GCC_MDSS_AHB_CLK>,
+               <&gcc GCC_MDSS_AXI_CLK>,
+               <&gcc GCC_MDSS_VSYNC_CLK>;
+      clock-names = "iface",
+                    "bus",
+                    "vsync";
+
+      interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+
+      interrupt-controller;
+      #interrupt-cells = <1>;
+
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+
+    };
+...
-- 
2.35.1

