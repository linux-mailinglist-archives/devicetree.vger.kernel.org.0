Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F9EA42FDE8
	for <lists+devicetree@lfdr.de>; Sat, 16 Oct 2021 00:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243294AbhJOWNc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 18:13:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243289AbhJOWNb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 18:13:31 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02750C061570
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 15:11:24 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id l24-20020a9d1c98000000b00552a5c6b23cso14680713ota.9
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 15:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bjNfLq1QB8fLMEsBwBn7uXas0Vm/2KjKssKVAEdSfj8=;
        b=KvsCdlqRbTQxItKSMZiHq3p6Va9Qh3RKVjLBfVJ4SOznSPmvxDzk2kt99hpvY73VYt
         +zVIRzhpTR4g6JMbDOXMdjCFB0vmupv2QOjHMJNhblbhaTy2WG9MSkfncfOmL0h4Lpl9
         g3vresA3V5A0p+v7OaO7R5sLYMhcvbysuFXBk1k/JN09Vsq9vj3AqK4+UnnnX6t1h147
         UDPPpWQQloLjakwbY4hq84Fzch5En+LAHAP1IbI35RnmIruI9uJcg2IQsh42yX+qtY5L
         GP1eJIVO8IouIkTvBldYf8UkUS5qRrfliGNu6DOpGHcfTPc1zwSPTLdVyC7mWZXLMDhl
         24RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bjNfLq1QB8fLMEsBwBn7uXas0Vm/2KjKssKVAEdSfj8=;
        b=YLHkrw4n0v8N6e0WkN13ykXCOz2DnnKs8kW2dF5Yn88meXXnPZV9VNTGfxtUH60qQz
         moOKLkOhDS9/y42w8vpUu0KLjaLege4aqGXmTOl0MBc009GC+smwO4HtdtR4fDKjdaFu
         5o4l+jvVxfsP9p7DENdIt2tEAqXnGMbQhTSjcbnlSAsHb2es6o26JAbO2fwxu6FfKG7o
         gEKo7N+249151Miqf39cs/4BCVTKuHiQC9fJ5C7dqD7rwp5XdYNvjbQHcF50sg/ebFYJ
         74JF9nd3Qr+vSQ/oH7DSudjzEvshJt43u80F58yp6hj4vYfHR/l0p8HHKZ/HqQy2JShB
         Qetg==
X-Gm-Message-State: AOAM531vVGMqXq6d4y5ZElZ64xTbmeVFdjLCmcLGOBSVS3w1INnfEcp1
        1ofgNi4gDRoam6IBJExCeHRfMw==
X-Google-Smtp-Source: ABdhPJzXC14+f95z1L9QMi3O+ePps8LkjmJida0VipaUCsJGioxCOn1qwVYVKGBFEFjwPVeB8Xlzsg==
X-Received: by 2002:a05:6830:30a4:: with SMTP id g4mr10125929ots.312.1634335883234;
        Fri, 15 Oct 2021 15:11:23 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id f10sm1599635otc.26.2021.10.15.15.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 15:11:22 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        abhinavk@codeaurora.org, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: phy: Introduce Qualcomm eDP/DP PHY binding
Date:   Fri, 15 Oct 2021 15:13:11 -0700
Message-Id: <20211015221312.1699043-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce a binding for the eDP/DP PHY hardware block found in several
different Qualcomm platforms.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- None

 .../devicetree/bindings/phy/qcom,edp-phy.yaml | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
new file mode 100644
index 000000000000..c258e4f7e332
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm DP/eDP PHY
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description:
+  The Qualcomm DP/eDP PHY is found in a number of Qualcomm platform and
+  provides the physical interface for DisplayPort and Embedded Display Port.
+
+properties:
+  compatible:
+    enum:
+      - qcom,sc8180x-dp-phy
+      - qcom,sc8180x-edp-phy
+
+  reg:
+    items:
+      - description: PHY base register block
+      - description: tx0 register block
+      - description: tx1 register block
+      - description: PLL register block
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg_ahb
+
+  "#clock-cells":
+    const: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#clock-cells"
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@aec2a00 {
+      compatible = "qcom,sc8180x-edp-phy";
+      reg = <0x0aec2a00 0x1c0>,
+            <0x0aec2200 0xa0>,
+            <0x0aec2600 0xa0>,
+            <0x0aec2000 0x19c>;
+
+      clocks = <&dispcc 0>, <&dispcc 1>;
+      clock-names = "aux", "cfg_ahb";
+
+      #clock-cells = <1>;
+      #phy-cells = <0>;
+    };
+...
-- 
2.29.2

