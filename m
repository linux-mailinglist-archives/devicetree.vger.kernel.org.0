Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E46F71821C1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2020 20:14:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731107AbgCKTOY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Mar 2020 15:14:24 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37953 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731103AbgCKTOG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Mar 2020 15:14:06 -0400
Received: by mail-wm1-f65.google.com with SMTP id n2so3395308wmc.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2020 12:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NgvMc7i25yDAHnugh3Vxjp3oZOiea1Kicbytox9AQ0c=;
        b=bf/b4c/pYEdagBgPhBlX/fhHSXCpWCn68LojLia5mmXizN3l7/19/+tF2OEfJ888aV
         MLUSA7EMx+Wirap5FwJn7XuFxSCW5zqP0Z4Q2cmdvNw4QUrDSF13p3vNDVAXp/dmJFr2
         MlFW98fXSz0N8w1Cx+CFb2UtQCVBo10URP7+oQemG+AE9ibwuh0IATN/PEzxHz7QfXPF
         Yc2HSEK59Y/JzzIN/D8L7uZB5XlQC2Z8Bj6pnvMMECngGrF7x6yZveHJ4lhHdII1AKxB
         7c5GOag3w0v8rbWC5nwRnqYIIRbyO57DsZlCTTIOeE75lurJjacFVjqBJoi/PPGz/sM8
         m7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NgvMc7i25yDAHnugh3Vxjp3oZOiea1Kicbytox9AQ0c=;
        b=Tgz/nEBlZfMXoxlb+sFtZd3T7A9irnZ5pRNILn68I9+iuoyfN2Oep2/YJHPxXIagD9
         BU2VDOgzw+RrwQxtg/1f0jRNaR66ZNrVPcXwxPNhL0cAZidR9qle90M1fXk25QMh9jLv
         121tVGi21I/yxoo9/R1AbXeIZTf+PDkr5m1souuUc+TPHPADbA57UkDq+DD6WKzr4k98
         izVtsMg/iFT25spfitkxxnP2+ieh2ByiCJvoQ3DX7Biv0mGr8uB2j5BRvqBiVAGZ8Ehk
         OI5ZgDUw/B/agHgiJOEXTqKE6nLKVBHXuwn+UBVGQfRtlwQbZQyxFhoFJMdzEPSFG/OB
         /glA==
X-Gm-Message-State: ANhLgQ2M9ztdz4wI1uDc/zplenaS4KOPkBJATACOH8MEMzYFqqmAiDF5
        ozgREVqnAi1/mngOmXxKp7RBMw==
X-Google-Smtp-Source: ADFU+vsbBVZ+i6l13QL4BdNKAJtE5pTBHjVgd1EoiHx5QBBgWrVWrpNbc439wZfO0NvZdfWrYHi2Rg==
X-Received: by 2002:a1c:9a88:: with SMTP id c130mr222919wme.73.1583954044313;
        Wed, 11 Mar 2020 12:14:04 -0700 (PDT)
Received: from localhost.localdomain ([176.61.57.127])
        by smtp.gmail.com with ESMTPSA id v8sm69443919wrw.2.2020.03.11.12.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 12:14:03 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     kishon@ti.com
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jackp@codeaurora.org,
        robh@kernel.org, bjorn.andersson@linaro.org,
        p.zabel@pengutronix.de,
        Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>,
        Jorge Ramirez-Ortiz <jorge.ramirez.ortiz@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 4/5] dt-bindings: Add Qualcomm USB SuperSpeed PHY bindings
Date:   Wed, 11 Mar 2020 19:13:57 +0000
Message-Id: <20200311191358.8102-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311191358.8102-1-bryan.odonoghue@linaro.org>
References: <20200311191358.8102-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

Binding description for Qualcomm's Synopsys 1.0.0 SuperSpeed PHY. This PHY
appears in a number of SoCs on various flavors of 20nm and 28nm nodes.

This commit adds information related to the 28nm node only.

Based on Sriharsha Allenki's <sallenki@codeaurora.org> original
definitions.

[bod: converted to yaml format]

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez.ortiz@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez.ortiz@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/phy/qcom,usb-ss.yaml  | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-ss.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-ss.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-ss.yaml
new file mode 100644
index 000000000000..bd1388d62ce0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-ss.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/qcom,usb-ss.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Synopsys 1.0.0 SuperSpeed USB PHY
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  Qualcomm Synopsys 1.0.0 SuperSpeed USB PHY
+
+properties:
+  compatible:
+    enum:
+      - qcom,usb-ss-28nm-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: rpmcc clock
+      - description: PHY AHB clock
+      - description: SuperSpeed pipe clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: ahb
+      - const: pipe
+
+  vdd-supply:
+    description: phandle to the regulator VDD supply node.
+
+  vdda1p8-supply:
+    description: phandle to the regulator 1.8V supply node.
+
+  resets:
+    items:
+      - description: COM reset
+      - description: PHY reset line
+
+  reset-names:
+    items:
+      - const: com
+      - const: phy
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - vdd-supply
+  - vdda1p8-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-qcs404.h>
+    #include <dt-bindings/clock/qcom,rpmcc.h>
+    usb3_phy: usb3-phy@78000 {
+        compatible = "qcom,usb-ss-28nm-phy";
+        reg = <0x78000 0x400>;
+        #phy-cells = <0>;
+        clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
+                 <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
+                 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+        clock-names = "ref", "ahb", "pipe";
+        resets = <&gcc GCC_USB3_PHY_BCR>,
+                 <&gcc GCC_USB3PHY_PHY_BCR>;
+        reset-names = "com", "phy";
+        vdd-supply = <&vreg_l3_1p05>;
+        vdda1p8-supply = <&vreg_l5_1p8>;
+    };
+...
-- 
2.25.1

