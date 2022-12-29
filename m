Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 700B5658C76
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 12:59:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233204AbiL2L7i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 06:59:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231229AbiL2L7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 06:59:37 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27E8D13F05
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 03:59:36 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id 1so27218161lfz.4
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 03:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnM8DBj1VvOTIEH0B8jqgDUoXyYAgVlsZfzjH2GBtsI=;
        b=gL52k+gkeeW8qEE8vG+gSjWbiuZGuv0Rv/En2ENuwN6OLLLG09vz5oPcj8RWxvpP+i
         k2+xiRkcPj6hZp39gr1n5TMEbMW3KFHqkDmNMPM0zNW2xsrrNbOnOGQLEYBS7mnT3bB+
         Ejfle0Osb8Ajb7KiBVDVNBMugfqnonAxSjNJ740HFC6fN8gPyowtwWIYbMdqq8Dzee1M
         J/13aPRu2uSxogOG9VXKJQ8qcatAZBmZUncpIOkLNI4QUma7dNkDRCmnv4Dv5qbkA7zU
         DeIzpHtNLkoKE+A06MPnV9KLwdy0QHdPtjg3lT4g2kgMk3RX96qSnqTaug89AvO4BoS2
         +ZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rnM8DBj1VvOTIEH0B8jqgDUoXyYAgVlsZfzjH2GBtsI=;
        b=lprxbMaMQFE2haahagLMIoSbSJyJPrlq6l5yeadQz/dJ5lkl9WZfiAobQbEJdth1Kh
         bKAYf9OOvDo8Gf5x4fQtK4caJYL+cgIc2E04JaqEjF20NCk68GGWmRgAKTvsA63tNKQc
         LU5F35RR7z/vs2qT5w9lNSm4XY6rkRbs1+NhN0OojE2+ZLHmnBS9yyyIea9lyWNSogzU
         GEuWql4++sQX8uz2+shuX83xEHs+XQaVZkoj2A5/wLT9jFRWflREkLP8HMV48eBl26VM
         wvCtVJzKYGaIuuAcSBRqEPFNad82k6jPMfiHnqMGD6sWAhM21LNtfU0MS7lv/kSTWkD9
         qV2g==
X-Gm-Message-State: AFqh2kq6VheQ06lK8vxuCMNPISKSXMImFmbPUJIZQ7LLVWUGS/OPWkSi
        1aaDpsK4GZPUcgDDwzCU4F+wLQ==
X-Google-Smtp-Source: AMrXdXuvsxEdRIqIZPvn/GA1l1OSajW7K8UuToLjRDZnd80lXo3rVk/aJPqvYbkBo1cPs69nWDAMmw==
X-Received: by 2002:a05:6512:3d9e:b0:4c0:2b07:e6e7 with SMTP id k30-20020a0565123d9e00b004c02b07e6e7mr10288765lfv.58.1672315174460;
        Thu, 29 Dec 2022 03:59:34 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n7-20020a05651203e700b0049464d89e40sm3006313lfq.72.2022.12.29.03.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 03:59:34 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
Date:   Thu, 29 Dec 2022 13:59:31 +0200
Message-Id: <20221229115932.3312318-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
from the text description.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,pcie2-phy.yaml          | 86 +++++++++++++++++++
 .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
 2 files changed, 86 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
new file mode 100644
index 000000000000..dbc4a4c71f05
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,pcie2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm PCIe2 PHY controller
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  The Qualcomm PCIe2 PHY is a Synopsys based phy found in a number of Qualcomm
+  platforms.
+
+properties:
+  compatible:
+    items:
+      - const: qcom,qcs404-pcie2-phy
+      - const: qcom,pcie2-phy
+
+  reg:
+    items:
+      - description: PHY register set
+
+  clocks:
+    items:
+      - description: a clock-specifier pair for the "pipe" clock
+
+  clock-output-names:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  "#phy-cells":
+    const: 0
+
+  vdda-vp-supply:
+    description: low voltage regulator
+
+  vdda-vph-supply:
+    description: high voltage regulator
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: pipe
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+  - "#clock-cells"
+  - "#phy-cells"
+  - vdda-vp-supply
+  - vdda-vph-supply
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-qcs404.h>
+    phy@7786000 {
+      compatible = "qcom,qcs404-pcie2-phy", "qcom,pcie2-phy";
+      reg = <0x07786000 0xb8>;
+
+      clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
+      resets = <&gcc GCC_PCIEPHY_0_PHY_BCR>,
+               <&gcc GCC_PCIE_0_PIPE_ARES>;
+      reset-names = "phy", "pipe";
+
+      vdda-vp-supply = <&vreg_l3_1p05>;
+      vdda-vph-supply = <&vreg_l5_1p8>;
+
+      clock-output-names = "pcie_0_pipe_clk";
+      #clock-cells = <0>;
+      #phy-cells = <0>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt b/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
deleted file mode 100644
index 30064253f290..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Qualcomm PCIe2 PHY controller
-=============================
-
-The Qualcomm PCIe2 PHY is a Synopsys based phy found in a number of Qualcomm
-platforms.
-
-Required properties:
- - compatible: compatible list, should be:
-	       "qcom,qcs404-pcie2-phy", "qcom,pcie2-phy"
-
- - reg: offset and length of the PHY register set.
- - #phy-cells: must be 0.
-
- - clocks: a clock-specifier pair for the "pipe" clock
-
- - vdda-vp-supply: phandle to low voltage regulator
- - vdda-vph-supply: phandle to high voltage regulator
-
- - resets: reset-specifier pairs for the "phy" and "pipe" resets
- - reset-names: list of resets, should contain:
-		"phy" and "pipe"
-
- - clock-output-names: name of the outgoing clock signal from the PHY PLL
- - #clock-cells: must be 0
-
-Example:
- phy@7786000 {
-	compatible = "qcom,qcs404-pcie2-phy", "qcom,pcie2-phy";
-	reg = <0x07786000 0xb8>;
-
-	clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-	resets = <&gcc GCC_PCIEPHY_0_PHY_BCR>,
-	         <&gcc GCC_PCIE_0_PIPE_ARES>;
-	reset-names = "phy", "pipe";
-
-	vdda-vp-supply = <&vreg_l3_1p05>;
-	vdda-vph-supply = <&vreg_l5_1p8>;
-
-	clock-output-names = "pcie_0_pipe_clk";
-	#clock-cells = <0>;
-	#phy-cells = <0>;
- };
-- 
2.39.0

