Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC280641CF8
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 13:45:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbiLDMpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 07:45:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbiLDMpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 07:45:14 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51AC415A28
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 04:45:12 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id b13so3633626lfo.3
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 04:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JABRQlLUkWFMx+QePeI8LoiDQMuxHWsrO4hJjeuNMn0=;
        b=zpOgSF+g2d4zfkeHC7k33yXG3oOuGXtREM84EjAxzVrvT8cP9B3oG4oOSI7QI+RASV
         00JnXsNQT9fZu0bGPEue5Pu+92u1GpQrY77wRSu0mTe1HMl2Gkm+uCnW6oQ7rQGAczls
         GKCGKmNi7SQRHz3RZeJ15z1shPUa0nCn5LaBRv09lDBTf7Xwedf0U7DbRFzUaHu9NOSW
         Lj8rS5YuaXxnaekQo87iJv1lAIQiwZzLIg8xpp77jZ2cxE0ptqcUq0j3tq2N2G9w3R5f
         DjFNFGvNw5GkULuPzu7xrzZcMI18vjuZ5QouQFG1QNXfIu2jngOjr0fmfuq87bVAD1XW
         sWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JABRQlLUkWFMx+QePeI8LoiDQMuxHWsrO4hJjeuNMn0=;
        b=cjYmYYYKPm+9Gbl30uCr5ejklOQRj6BeKJlTqdVUZorzBLeN/lKd5Acn8MGZs0Zrfk
         svKeV10VXFM4sC5M1PLVp+sW8xIg2BhilHfIPMQOog+oYlEoze9GGNEyS9fPrEtUXw+h
         BbdKQZ58C9BW9pY4EgMwQsGthrZTrHdI0a2SQ0nGYVdgiDjk2OWNWLZfpWJxqb1MVSxD
         XFE+CacwdsFC4fkzbjDGoYO7xz/8eS6nIoNd2I9F72WRsjarshJuGLXYRjpG85faUqVW
         jU9bJ2uFmcjB/7djDA6VU3AE6XMFYw6mcK3UzAWpjC1dCFmaspYbhLZwVUk2xgxIA7YQ
         SrMg==
X-Gm-Message-State: ANoB5plP5fPsWH5AcmScn1c+VS5FRUu8cSB27zuDGxZmb5IqSTEZDiOB
        2GdJsMnfoB+w5UUdKbnCqcmPXA==
X-Google-Smtp-Source: AA0mqf6sNwmvI0ELCAroUVchNRfpEioS4GPAS0V94oMp/gxCbNRRcoqeqtru3Vqfixbr1D6W0VEjEw==
X-Received: by 2002:ac2:4558:0:b0:494:6bb2:485f with SMTP id j24-20020ac24558000000b004946bb2485fmr22251538lfm.451.1670157910627;
        Sun, 04 Dec 2022 04:45:10 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k18-20020a05651239d200b0049771081b10sm1763006lfu.31.2022.12.04.04.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 04:45:10 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 01/11] dt-bindings: clock: split qcom,gcc-msm8974,-msm8226 to the separate file
Date:   Sun,  4 Dec 2022 14:44:58 +0200
Message-Id: <20221204124508.1415713-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221204124508.1415713-1-dmitry.baryshkov@linaro.org>
References: <20221204124508.1415713-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move schema for the GCC on MSM8974 and MSM8226 platforms to a separate
file to be able to define device-specific clock properties.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/clock/qcom,gcc-msm8974.yaml      | 61 +++++++++++++++++++
 .../bindings/clock/qcom,gcc-other.yaml        |  9 +--
 2 files changed, 62 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml
new file mode 100644
index 000000000000..1927aecc86bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,gcc-msm8974.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Global Clock & Reset Controller on MSM8974 (including Pro) and MSM8226
+  Controller
+
+maintainers:
+  - Stephen Boyd <sboyd@kernel.org>
+  - Taniya Das <quic_tdas@quicinc.com>
+
+description: |
+  Qualcomm global clock control module provides the clocks, resets and power
+  domains on MSM8974 (all variants) and MSM8226.
+
+  See also::
+    include/dt-bindings/clock/qcom,gcc-msm8974.h (qcom,gcc-msm8226 and qcom,gcc-msm8974)
+    include/dt-bindings/reset/qcom,gcc-msm8974.h (qcom,gcc-msm8226 and qcom,gcc-msm8974)
+
+$ref: qcom,gcc.yaml#
+
+properties:
+  compatible:
+    enum:
+      - qcom,gcc-msm8226
+      - qcom,gcc-msm8974
+      - qcom,gcc-msm8974pro
+      - qcom,gcc-msm8974pro-ac
+
+  clocks:
+    items:
+      - description: XO source
+      - description: Sleep clock source
+
+  clock-names:
+    items:
+      - const: xo
+      - const: sleep_clk
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    clock-controller@fc400000 {
+        compatible = "qcom,gcc-msm8974";
+        reg = <0x00100000 0x94000>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        #power-domain-cells = <1>;
+
+        clock-names = "xo", "sleep_clk";
+        clocks = <&xo_board>,
+                 <&sleep_clk>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml
index a76c21a242d8..2e8acca64af1 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml
@@ -19,8 +19,6 @@ description: |
     include/dt-bindings/clock/qcom,gcc-ipq6018.h
     include/dt-bindings/reset/qcom,gcc-ipq6018.h
     include/dt-bindings/clock/qcom,gcc-msm8953.h
-    include/dt-bindings/clock/qcom,gcc-msm8974.h (qcom,gcc-msm8226 and qcom,gcc-msm8974)
-    include/dt-bindings/reset/qcom,gcc-msm8974.h (qcom,gcc-msm8226 and qcom,gcc-msm8974)
     include/dt-bindings/clock/qcom,gcc-mdm9607.h
     include/dt-bindings/clock/qcom,gcc-mdm9615.h
     include/dt-bindings/reset/qcom,gcc-mdm9615.h
@@ -34,11 +32,7 @@ properties:
       - qcom,gcc-ipq4019
       - qcom,gcc-ipq6018
       - qcom,gcc-mdm9607
-      - qcom,gcc-msm8226
       - qcom,gcc-msm8953
-      - qcom,gcc-msm8974
-      - qcom,gcc-msm8974pro
-      - qcom,gcc-msm8974pro-ac
       - qcom,gcc-mdm9615
 
 required:
@@ -47,10 +41,9 @@ required:
 unevaluatedProperties: false
 
 examples:
-  # Example for GCC for MSM8974:
   - |
     clock-controller@900000 {
-      compatible = "qcom,gcc-msm8974";
+      compatible = "qcom,gcc-mdm9607";
       reg = <0x900000 0x4000>;
       #clock-cells = <1>;
       #reset-cells = <1>;
-- 
2.35.1

