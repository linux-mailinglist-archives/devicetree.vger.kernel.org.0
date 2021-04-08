Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDEE53579D4
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 03:47:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231326AbhDHBr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 21:47:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231300AbhDHBr6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 21:47:58 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A1F1C061765
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 18:47:48 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 184so296782ljf.9
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 18:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D2i8W4m1OuOLC0EiDShXmmsb5dRC8axuc+jtBhnBrsY=;
        b=ShhChz8ms6+gHCOH3GLZ6juANUcb6i/XXlP0tGLYHCawUdYhRzhhdy0JJWVJttKnv2
         MsXJLK4JN++ZfEsODd+8nWxswsfVXj7kw4lKcfp2wHbLc7mihgR+IYF5Zjd2PgrQzGvA
         808eTjFvF9rTIQiHaWX+c0tpgCkA19o5e+9BfUrMzg/XQKg21p7aT2rPRs0Hb0ocVh1f
         ke5VSZOHGpFeIH9P7OI9RQkXRo+snnqezXC9TwT7Xx9PDpsHar7Dy06He8Adb0ewA06k
         u4BukmVbD+4UmYIQCmArD8s6lQLepfV2lWkHw4lvakhxlslyKK351gwATbE2ZZIR6dSi
         gBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D2i8W4m1OuOLC0EiDShXmmsb5dRC8axuc+jtBhnBrsY=;
        b=LSQZeXuylaEskFMROKXxNJhVqMnwwwgmHeNXr6QIvyLtIsWwsmMOovpCbeAl+vblUy
         ugmO2qvDB6vIyR9wefxnCnvqjr8YJP12oJq0Gs8lN41Kz2PdB5AEvPLHoMqsmmdz8SoX
         7xsFJ7LUQ+ZCIGOBcFMSozetKfk40zcSr+Klu6q2/Z9krOaPdu56hJQsQWKkTBe59Vkw
         Ii5ySalEGynIi1Z0hHGIuTTM5OBCZjqJT+EQsDdAfvytAm0hJmpvCIr+pRk6AFbUYfjQ
         Ox6TNgKcfTm9nY2BJpMuXNK/lsCCKzfftCrSGHjoCLlYkWXRZwEbwlUk3yGHm5wQUH9h
         TGNQ==
X-Gm-Message-State: AOAM530sXknJinHrMiAmaGgLCE8lKIxI0k3pwvWBs0ikAUA8vOD07xLY
        pOF58uwyTzPg3CNCEfuHsi3xHA==
X-Google-Smtp-Source: ABdhPJx3ooRDJBGSWQ5HKRasO8VCn0PXN8Kx0Y1K80wMCrOhk91wiaNmArhLU+nQ0hetstbp4A80Iw==
X-Received: by 2002:a2e:b555:: with SMTP id a21mr4027275ljn.69.1617846466751;
        Wed, 07 Apr 2021 18:47:46 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w24sm2686705ljh.19.2021.04.07.18.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 18:47:46 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: clock: separate SDM845 GCC clock bindings
Date:   Thu,  8 Apr 2021 04:47:35 +0300
Message-Id: <20210408014737.955979-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210408014737.955979-1-dmitry.baryshkov@linaro.org>
References: <20210408014737.955979-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Separate qcom,gcc-sdm845 clock bindings from the clock-less
qcom,gcc.yaml, so that we can add required clocks and clock-names
properties.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/clock/qcom,gcc-sdm845.yaml       | 82 +++++++++++++++++++
 .../devicetree/bindings/clock/qcom,gcc.yaml   |  2 -
 2 files changed, 82 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml
new file mode 100644
index 000000000000..4099b09ee9dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,gcc-sdm845.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Global Clock & Reset Controller Binding
+
+maintainers:
+  - Stephen Boyd <sboyd@kernel.org>
+  - Taniya Das <tdas@codeaurora.org>
+
+description: |
+  Qualcomm global clock control module which supports the clocks, resets and
+  power domains on SDM845
+
+  See also:
+  - dt-bindings/clock/qcom,gcc-sdm845.h
+
+properties:
+  compatible:
+    const: qcom,gcc-sdm845
+
+  clocks:
+    items:
+      - description: Board XO source
+      - description: Board active XO source
+      - description: Sleep clock source
+      - description: PCIE 0 Pipe clock source
+      - description: PCIE 1 Pipe clock source
+
+  clock-names:
+    items:
+      - const: bi_tcxo
+      - const: bi_tcxo_ao
+      - const: sleep_clk
+      - const: pcie_0_pipe_clk
+      - const: pcie_1_pipe_clk
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    const: 1
+
+  '#power-domain-cells':
+    const: 1
+
+  reg:
+    maxItems: 1
+
+  protected-clocks:
+    description:
+      Protected clock specifier list as per common clock binding.
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+  - '#reset-cells'
+  - '#power-domain-cells'
+
+additionalProperties: false
+
+examples:
+  # Example for GCC for MSM8960:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    clock-controller@100000 {
+      compatible = "qcom,gcc-sdm845";
+      reg = <0x100000 0x1f0000>;
+      clocks = <&rpmhcc RPMH_CXO_CLK>,
+               <&rpmhcc RPMH_CXO_CLK_A>,
+               <&sleep_clk>,
+               <&pcie0_lane>,
+               <&pcie1_lane>;
+      clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk", "pcie_0_pipe_clk", "pcie_1_pipe_clk";
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+      #power-domain-cells = <1>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
index ee0467fb5e31..490edad25830 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
@@ -32,7 +32,6 @@ description: |
   - dt-bindings/clock/qcom,gcc-mdm9615.h
   - dt-bindings/reset/qcom,gcc-mdm9615.h
   - dt-bindings/clock/qcom,gcc-sdm660.h  (qcom,gcc-sdm630 and qcom,gcc-sdm660)
-  - dt-bindings/clock/qcom,gcc-sdm845.h
 
 properties:
   compatible:
@@ -52,7 +51,6 @@ properties:
       - qcom,gcc-mdm9615
       - qcom,gcc-sdm630
       - qcom,gcc-sdm660
-      - qcom,gcc-sdm845
 
   '#clock-cells':
     const: 1
-- 
2.30.2

