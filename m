Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C04BA53A54E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:44:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353056AbiFAMoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:44:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352976AbiFAMoT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:44:19 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0CA25003E
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:44:17 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id w27so2006869edl.7
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 05:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=NmrsNTC7U91tg8YsVhHhgXCDiOGXL6aN8PsJdwtecxo=;
        b=EO+94TNUS90lHTob+AzkHTeeAsGZcsN5zZMorptL8RgqLoUVkAARnBcEgpU5FXMfCI
         /3ZqUv7sxt5TCdOAkUmEuwqK4LiKNCTx0W47t8qnkvKD/iDfxxKtUZYdOpszMOKE87x9
         2HgO8anSDPEOODFfDzyzuxjcqPeUvJ5JwVd/OtHBNPMYbI4YkrIzU4LIGfZpBxhu8U0P
         MjWUoKsj0wYGy84XUZu/yhqeIPMzYOO60FIqRfcBoJ1Vjm/dpDOtxDsalqWJE+E1IXJ5
         w8cLtNKTUbekC1VrPDmaRfCu41kXEwVR7SBhcF+7spT9zpUwH5j1STrp1kHNnxWcyDIS
         ZQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NmrsNTC7U91tg8YsVhHhgXCDiOGXL6aN8PsJdwtecxo=;
        b=COOu8RN0zxBZWf/ycmRFhq6V/qSzoP0b/k8cNFp7nLyqr8JKc+/1Ds8uq5+Mz4dy9n
         QyPRRwkR4tmxBTSLXG8t7XtiFVQowCZSpKrcY0vMZTP1CopFTSv3MnJ2TBhg+XQMuaO6
         nBpEPOuZzHYJZYyNw91nON5nr7/EtFoZcF9xHWR/4fkigbr3ciqLVK8G6u/uX6y4hHnY
         guyM8IMiALThfZtHryLFkTh7ZnKtpKoQTcyZbOHqTJ/8kJZdQjlNrbtwsm92hFwdKcvo
         sY2V0IKugBtgq0E8SE85ASansHaE4yaceKzfQ7xnsy0vL09LNqR+qaIissm8UzJ2+Lch
         RFkA==
X-Gm-Message-State: AOAM5311AsTbSiU9LqKEuJrgFh6+eO4Lao9DjH8e6711ccKaNtBNJ8jU
        sE24Oh9+NSGphY3cVxC/Hb9zeA==
X-Google-Smtp-Source: ABdhPJwaCweUu5jrm6eOCYIhs9upUUwSOtGI5bUWI4ShD8mRi06VAfR10j1ntSKF5a1Tv4fdJr5mqg==
X-Received: by 2002:a05:6402:3812:b0:42a:a0dc:562c with SMTP id es18-20020a056402381200b0042aa0dc562cmr70062602edb.205.1654087456525;
        Wed, 01 Jun 2022 05:44:16 -0700 (PDT)
Received: from prec5560.. ([176.74.57.19])
        by smtp.gmail.com with ESMTPSA id j10-20020a170906830a00b006f3ef214dc0sm682055ejx.38.2022.06.01.05.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 05:44:16 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, robert.foss@linaro.org, jonathan@marek.ca,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH v4 5/6] dt-bindings: clock: Add Qcom SM8350 DISPCC bindings
Date:   Wed,  1 Jun 2022 14:42:49 +0200
Message-Id: <20220601124250.60968-6-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220601124250.60968-1-robert.foss@linaro.org>
References: <20220601124250.60968-1-robert.foss@linaro.org>
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

Add sm8350 DISPCC bindings, while these bindings are similar
to the sm8x50 bindings, the way clocks are represented has changed
in ABI incompatible ways.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---

hanges since v2
 - Add my SoB - Bjorn

Changes since v3
 - Separate from qcom,dispcc-sm8x50
 - Remove clock-names
 - Make example sm8350 based
 - Changed author to me due to size of changes


 .../bindings/clock/qcom,dispcc-sm8350.yaml    | 104 ++++++++++++++++++
 .../bindings/clock/qcom,dispcc-sm8x50.yaml    |   4 +-
 .../dt-bindings/clock/qcom,dispcc-sm8350.h    |   1 +
 3 files changed, 107 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,dispcc-sm8350.yaml
 create mode 120000 include/dt-bindings/clock/qcom,dispcc-sm8350.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8350.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8350.yaml
new file mode 100644
index 000000000000..d7e8739cab32
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8350.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,dispcc-sm8350.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Display Clock & Reset Controller Binding for SM8350
+
+maintainers:
+  - Robert Foss <robert.foss@linaro.org>
+
+description: |
+  Qualcomm display clock control module which supports the clocks, resets and
+  power domains on SM8350.
+
+  See also:
+    dt-bindings/clock/qcom,dispcc-sm8350.h
+
+properties:
+  compatible:
+    enum:
+      - qcom,sm8350-dispcc
+
+  clocks:
+    items:
+      - description: Board XO source
+      - description: Link clock from DP PHY
+      - description: VCO DIV clock from DP PHY
+      - description: Link clock from DPTX1 PHY
+      - description: VCO DIV clock from DPTX1 PHY
+      - description: Link clock from DPTX2 PHY
+      - description: VCO DIV clock from DPTX2 PHY
+      - description: Byte clock from DSI PHY0
+      - description: Pixel clock from DSI PHY0
+      - description: Byte clock from DSI PHY1
+      - description: Pixel clock from DSI PHY1
+      - description: Link clock from EDP PHY
+      - description: VCO DIV clock from EDP PHY
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
+  power-domains:
+    description:
+      A phandle and PM domain specifier for the MMCX power domain.
+    maxItems: 1
+
+  required-opps:
+    description:
+      A phandle to an OPP node describing required MMCX performance point.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#clock-cells'
+  - '#reset-cells'
+  - '#power-domain-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      clock-controller@af00000 {
+          compatible = "qcom,sm8350-dispcc";
+          reg = <0 0x0af00000 0 0x10000>;
+          clocks = <&rpmhcc RPMH_CXO_CLK>,
+                   <&dp_phy 0>,
+                   <&dp_phy 1>,
+                   <&dptx1_phy 0>,
+                   <&dptx1_phy 1>,
+                   <&dptx2_phy 0>,
+                   <&dptx2_phy 1>,
+                   <&dsi0_phy 0>,
+                   <&dsi0_phy 1>,
+                   <&dsi1_phy 0>,
+                   <&dsi1_phy 1>,
+                   <&edp_phy 0>,
+                   <&edp_phy 1>;
+
+          #clock-cells = <1>;
+          #reset-cells = <1>;
+          #power-domain-cells = <1>;
+          power-domains = <&rpmhpd SM8350_MMCX>;
+          required-opps = <&rpmhpd_opp_low_svs>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
index 31497677e8de..951fe2ecb7a6 100644
--- a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
@@ -4,14 +4,14 @@
 $id: http://devicetree.org/schemas/clock/qcom,dispcc-sm8x50.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm Display Clock & Reset Controller Binding for SM8150/SM8250
+title: Qualcomm Display Clock & Reset Controller Binding for SM8150/SM8250/SM8350
 
 maintainers:
   - Jonathan Marek <jonathan@marek.ca>
 
 description: |
   Qualcomm display clock control module which supports the clocks, resets and
-  power domains on SM8150 and SM8250.
+  power domains on SM8150/SM8250.
 
   See also:
     dt-bindings/clock/qcom,dispcc-sm8150.h
diff --git a/include/dt-bindings/clock/qcom,dispcc-sm8350.h b/include/dt-bindings/clock/qcom,dispcc-sm8350.h
new file mode 120000
index 000000000000..0312b4544acb
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,dispcc-sm8350.h
@@ -0,0 +1 @@
+qcom,dispcc-sm8250.h
\ No newline at end of file
-- 
2.34.1

