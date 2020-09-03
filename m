Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A75DF25CD8D
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 00:28:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729212AbgICW2T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 18:28:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729148AbgICW1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 18:27:19 -0400
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09018C061247
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 15:27:17 -0700 (PDT)
Received: by mail-qt1-x843.google.com with SMTP id 19so1742828qtp.1
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 15:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9ZybHM4ueHEJokLBLXd4nM7F2mJ3bc1BRSPJWeFhISA=;
        b=lB0dRU2iaxY3urhTJ7xyjW+EZyJ/qNsFc4WIEHk94PMn79hFIjlsQc6Wzuah18/72f
         KsO8xvyM38fN2uH0mKolD9G8nF1ruGsDYTFKLymTzIF8FxAejrljkqCg58vlwot6YbmF
         0ZFTf9666y694sxHuQpjVTyW9YBWVS1QRcXyV2/o+4XUVhhZsPTuPqb2/lzZOTqf9/Nf
         JlaxEnp9cET+LM70YYOQlVXwlCgk3V6QaLKn3rZD56hD2avy2kd/rs/kveTMg97auuQ+
         Hh2G9RpHyMT6S7ZrVefTInCuhtUj728jiSKwsvvRlljHF+PDQ1/1NpsCVxaIxkYyZkW6
         Z19g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9ZybHM4ueHEJokLBLXd4nM7F2mJ3bc1BRSPJWeFhISA=;
        b=Ziuo7lrZElljP6tT0ULLenH4mFJgrZCtOrpmXYAvql0H+fF9/vKRpnToirX2J3Mvd9
         jlHFek3oaqlz1QjaxSjKUUcLr1z38vHXr2ToLpYylQkXYCuP1BQ2M2teGh4oqFmT/BeN
         Ig/RedM22H3zAEHXcFzq7+oF6WQtroba6Ip0QMHOY7CN9KPzdZKLqwkH5wUpCXV2XuzT
         k0Q3m+hiYuoho56tVjXNZwdTOmVfHyk4NichYctnh29MVh2X4bWG5Ol01E0U0Bv92/MD
         z11ctvSzrKbp7/77XUUeebkNW/yANaSobbdEwqYwc5ZCJDrz2mz7Jw+8mxO2ZYWMbqg0
         Hrnw==
X-Gm-Message-State: AOAM5300lzbtcuPpuQNcRWAaye/vePzFJwGX98F0bpDxdafYRL0i9VzO
        jO9IbMG6fCNn0OqMnfSLbb31QQ==
X-Google-Smtp-Source: ABdhPJwD45K4BVCk5mhpz6khyE4PFI08kECAQkiV/GBhTGALBRwppyF42LPdO2sZly9xX2y2wL84mQ==
X-Received: by 2002:ac8:1301:: with SMTP id e1mr5928155qtj.136.1599172036184;
        Thu, 03 Sep 2020 15:27:16 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id y30sm3217157qth.7.2020.09.03.15.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:27:15 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 3/7] dt-bindings: clock: combine qcom,sdm845-dispcc and qcom,sc7180-dispcc
Date:   Thu,  3 Sep 2020 18:26:11 -0400
Message-Id: <20200903222620.27448-4-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200903222620.27448-1-jonathan@marek.ca>
References: <20200903222620.27448-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These two bindings are almost identical, so combine them into one. This
will make it easier to add the sm8150 and sm8250 dispcc bindings.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 ...om,sdm845-dispcc.yaml => qcom,dispcc.yaml} | 18 ++--
 .../bindings/clock/qcom,sc7180-dispcc.yaml    | 86 -------------------
 2 files changed, 11 insertions(+), 93 deletions(-)
 rename Documentation/devicetree/bindings/clock/{qcom,sdm845-dispcc.yaml => qcom,dispcc.yaml} (85%)
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,sc7180-dispcc.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc.yaml
similarity index 85%
rename from Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml
rename to Documentation/devicetree/bindings/clock/qcom,dispcc.yaml
index ead44705333b..ef0321ace786 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,dispcc.yaml
@@ -1,23 +1,27 @@
 # SPDX-License-Identifier: GPL-2.0-only
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/clock/qcom,sdm845-dispcc.yaml#
+$id: http://devicetree.org/schemas/clock/qcom,dispcc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm Display Clock & Reset Controller Binding for SDM845
+title: Qualcomm Display Clock & Reset Controller Binding
 
 maintainers:
   - Taniya Das <tdas@codeaurora.org>
 
 description: |
   Qualcomm display clock control module which supports the clocks, resets and
-  power domains on SDM845.
+  power domains on SDM845/SC7180.
 
-  See also dt-bindings/clock/qcom,dispcc-sdm845.h.
+  See also:
+    dt-bindings/clock/qcom,dispcc-sdm845.h
+    dt-bindings/clock/qcom,dispcc-sc7180.h
 
 properties:
   compatible:
-    const: qcom,sdm845-dispcc
+    enum:
+      - qcom,sdm845-dispcc
+      - qcom,sc7180-dispcc
 
   # NOTE: sdm845.dtsi existed for quite some time and specified no clocks.
   # The code had to use hardcoded mechanisms to find the input clocks.
@@ -25,8 +29,8 @@ properties:
   clocks:
     items:
       - description: Board XO source
-      - description: GPLL0 source from GCC
-      - description: GPLL0 div source from GCC
+      - description: GPLL0 source from GCC (sdm845 only)
+      - description: GPLL0 div source from GCC (sdm845 only)
       - description: Byte clock from DSI PHY0
       - description: Pixel clock from DSI PHY0
       - description: Byte clock from DSI PHY1
diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7180-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7180-dispcc.yaml
deleted file mode 100644
index e94847f92770..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,sc7180-dispcc.yaml
+++ /dev/null
@@ -1,86 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,sc7180-dispcc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Display Clock & Reset Controller Binding for SC7180
-
-maintainers:
-  - Taniya Das <tdas@codeaurora.org>
-
-description: |
-  Qualcomm display clock control module which supports the clocks, resets and
-  power domains on SC7180.
-
-  See also dt-bindings/clock/qcom,dispcc-sc7180.h.
-
-properties:
-  compatible:
-    const: qcom,sc7180-dispcc
-
-  clocks:
-    items:
-      - description: Board XO source
-      - description: GPLL0 source from GCC
-      - description: Byte clock from DSI PHY
-      - description: Pixel clock from DSI PHY
-      - description: Link clock from DP PHY
-      - description: VCO DIV clock from DP PHY
-
-  clock-names:
-    items:
-      - const: bi_tcxo
-      - const: gcc_disp_gpll0_clk_src
-      - const: dsi0_phy_pll_out_byteclk
-      - const: dsi0_phy_pll_out_dsiclk
-      - const: dp_phy_pll_link_clk
-      - const: dp_phy_pll_vco_div_clk
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-  - clocks
-  - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,gcc-sc7180.h>
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    clock-controller@af00000 {
-      compatible = "qcom,sc7180-dispcc";
-      reg = <0x0af00000 0x200000>;
-      clocks = <&rpmhcc RPMH_CXO_CLK>,
-               <&gcc GCC_DISP_GPLL0_CLK_SRC>,
-               <&dsi_phy 0>,
-               <&dsi_phy 1>,
-               <&dp_phy 0>,
-               <&dp_phy 1>;
-      clock-names = "bi_tcxo",
-                    "gcc_disp_gpll0_clk_src",
-                    "dsi0_phy_pll_out_byteclk",
-                    "dsi0_phy_pll_out_dsiclk",
-                    "dp_phy_pll_link_clk",
-                    "dp_phy_pll_vco_div_clk";
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-    };
-...
-- 
2.26.1

