Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 077573C8042
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 10:33:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238625AbhGNIgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 04:36:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238635AbhGNIgb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 04:36:31 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66C4CC061768
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 01:33:40 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id s18so1645296pgg.8
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 01:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lk0qsvSPRKx7FEPiRkeriWOXAe8LIwBbv1RNB5nj95E=;
        b=F8+Jx97vQvqFj0aMZEwUGPV4WHBzc5lCcpF6CCzS8UEwamgx+LuhAGC4huBNLo9tMW
         8wnlzLTIl8r8sClfewrr3M+tD8u4lsKe8ll20U06Q9q0xP3qENMIATytwXu06X8LXFeI
         Vp7nLomiZTBorgkjX/MytzOFY9JVa29suV1qh/hDa54nWR7yDSE6vLre7wFhLSoXOmWk
         OBAxwzuVCCaSj2vwvGULK91jf0abkMCnjI9zO5l7a8sqZsEkSFi5wnDGj/r0CbeIJE4P
         ggbo8P3AF1DCTjehyf8GkBDH6RkrHccgTaVe6ymIJgNPSLBwjiiqH/yruhXevJcRguCG
         ELnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lk0qsvSPRKx7FEPiRkeriWOXAe8LIwBbv1RNB5nj95E=;
        b=Em4hiH0alYzG6CY3AQrkXdRyB7neC5OnMHtl/wvwCqS1GjMAz+JH4UU/7AZUEn3svj
         As1TfwrPAasJ1obEbWS/jghgymDDb4wNPVfZld7enPv+98NkpJBaDFOPBKYDczT7AiqL
         a1Ud5tym5aDdPZs2vRjzvzK4dpnwNuYNp+3cPKyt8+5F65bkAUd94KO/t6leqQ0zxmmH
         MtC0RGo653P5Wj4V3T81Gp4CG3d24mk0osXWLcYDPSQYsZbYfiKjgur9bDF1vHvaTvC0
         l89NjO1rbDEUjon2QSsGfN5wOnxnEMItbD4z7CPeFCFn7YQSU2wX6S2o13j1qjKYM/sU
         4qeQ==
X-Gm-Message-State: AOAM531kIHhu7qFc1YL2ZAEh28R5o0oX78vd+qGLNU0sQWxO2CKBu6TV
        /f0RMpBJbmHQq/l5M98nBeCO
X-Google-Smtp-Source: ABdhPJz/JjzC7ZSIKQGicQgmCnSWGxKMksE6UIMLvSmtKi7G7ZZIvCQiv4oiecOih7de+odl2gZGxg==
X-Received: by 2002:a65:4d4c:: with SMTP id j12mr2988403pgt.311.1626251619812;
        Wed, 14 Jul 2021 01:33:39 -0700 (PDT)
Received: from localhost.localdomain ([120.138.13.241])
        by smtp.gmail.com with ESMTPSA id p40sm1774446pfw.79.2021.07.14.01.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 01:33:39 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     kishon@ti.com, lorenzo.pieralisi@arm.com, bhelgaas@google.com,
        robh@kernel.org
Cc:     devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        hemantk@codeaurora.org, smohanad@codeaurora.org,
        bjorn.andersson@linaro.org, sallenki@codeaurora.org,
        skananth@codeaurora.org, vpernami@codeaurora.org,
        vbadigan@codeaurora.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 1/3] dt-bindings: pci: Add devicetree binding for Qualcomm PCIe EP controller
Date:   Wed, 14 Jul 2021 14:03:14 +0530
Message-Id: <20210714083316.7835-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210714083316.7835-1-manivannan.sadhasivam@linaro.org>
References: <20210714083316.7835-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding for Qualcomm PCIe EP controller used in platforms
like SDX55. The EP controller is based on the Designware core with
Qualcomm specific wrappers.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie-ep.yaml | 158 ++++++++++++++++++
 1 file changed, 158 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
new file mode 100644
index 000000000000..a5180824a1b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -0,0 +1,158 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm PCIe Endpoint Controller binding
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+allOf:
+  - $ref: "pci-ep.yaml#"
+
+properties:
+  compatible:
+    const: qcom,sdx55-pcie-ep
+
+  reg:
+    items:
+      - description: Qualcomm specific PARF configuration registers
+      - description: Designware PCIe registers
+      - description: External local bus interface registers
+      - description: Address Translation Unit (ATU) registers
+      - description: Memory region used to map remote RC address space
+      - description: BAR memory region
+
+  reg-names:
+    items:
+      - const: parf
+      - const: dbi
+      - const: elbi
+      - const: atu
+      - const: addr_space
+      - const: mmio
+
+  clocks:
+    items:
+      - description: PCIe Auxiliary clock
+      - description: PCIe CFG AHB clock
+      - description: PCIe Master AXI clock
+      - description: PCIe Slave AXI clock
+      - description: PCIe Slave Q2A AXI clock
+      - description: PCIe Sleep clock
+      - description: PCIe Reference clock
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg
+      - const: bus_master
+      - const: bus_slave
+      - const: slave_q2a
+      - const: sleep
+      - const: ref
+
+  qcom,perst-regs:
+    description: Reference to a syscon representing TCSR followed by the two
+                 offsets within syscon for Perst enable and Perst separation
+                 enable registers
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    items:
+      minItems: 3
+      maxItems: 3
+
+  interrupts:
+    items:
+      - description: PCIe Global interrupt
+      - description: PCIe Doorbell interrupt
+
+  interrupt-names:
+    items:
+      - const: global
+      - const: doorbell
+
+  reset-gpios:
+    description: GPIO that is being used as PERST# input signal
+    maxItems: 1
+
+  wake-gpios:
+    description: GPIO that is being used as WAKE# output signal
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: core
+
+  power-domains:
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: pciephy
+
+  num-lanes:
+    default: 2
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - qcom,perst-regs
+  - interrupts
+  - interrupt-names
+  - reset-gpios
+  - resets
+  - reset-names
+  - power-domains
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sdx55.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    pcie_ep: pcie-ep@40000000 {
+        compatible = "qcom,sdx55-pcie-ep";
+        reg = <0x01c00000 0x3000>,
+              <0x40000000 0xf1d>,
+              <0x40000f20 0xc8>,
+              <0x40001000 0x1000>,
+              <0x40002000 0x1000>,
+              <0x01c03000 0x3000>;
+        reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+                    "mmio";
+
+        clocks = <&gcc GCC_PCIE_AUX_CLK>,
+             <&gcc GCC_PCIE_CFG_AHB_CLK>,
+             <&gcc GCC_PCIE_MSTR_AXI_CLK>,
+             <&gcc GCC_PCIE_SLV_AXI_CLK>,
+             <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
+             <&gcc GCC_PCIE_SLEEP_CLK>,
+             <&gcc GCC_PCIE_0_CLKREF_CLK>;
+        clock-names = "aux", "cfg", "bus_master", "bus_slave",
+                      "slave_q2a", "sleep", "ref";
+
+        qcom,perst-regs = <&tcsr 0xb258 0xb270>;
+
+        interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "global", "doorbell";
+        reset-gpios = <&tlmm 57 GPIO_ACTIVE_HIGH>;
+        wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
+        resets = <&gcc GCC_PCIE_BCR>;
+        reset-names = "core";
+        power-domains = <&gcc PCIE_GDSC>;
+        phys = <&pcie0_lane>;
+        phy-names = "pciephy";
+        max-link-speed = <3>;
+        num-lanes = <2>;
+    };
-- 
2.25.1

