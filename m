Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 410C35EF18F
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 11:13:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235687AbiI2JM7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 05:12:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235696AbiI2JMd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 05:12:33 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEEB21432BF
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 02:12:20 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id l12so840324ljg.9
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 02:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=If8WOilQ9PzmMBmCqzzeUtE56VOBe3wtjVI48jlzs/U=;
        b=nWVITn6MkSynkIPZNerlsTMujNQYa8/JraQutVhVjiY8LzbTFTSD8NfyrFH75yMqhk
         ThIRmlZTnsUxTUqcdrvsj1VPw9p0bK/82X5zchEr0Mms264hC/326I5d64nuPm/e5Ros
         EDKngR5zzdhtZwPo2kqzvLf+gsoe8AQuVoJkOR6ackTyRD+ONS1qS0uTKzxKqHqRvBtU
         kN2gYH8IVsiFBtgJfWaZpfwY4xBHtFDSScMTDD3RSeBV43rxmMHBfSgODAIkvTVC8evu
         at7noYgsclEqzh6JXqMD5m07swrmI5VkegpACxkmlJe5pLo0FJJoSZyYygTMtf9xfuZb
         udpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=If8WOilQ9PzmMBmCqzzeUtE56VOBe3wtjVI48jlzs/U=;
        b=ZsGdAz2B/29QZZjq0fjbzeaDAJI22MZXjIIVUI1Q9CNF6iiEg3ejxAEF8rsWspm06u
         byj/2DuadwVQ/oorVMCywnVqnLH3vhVLWnU9kGWA8a/TTT/KVQXauVaRNz146tDuODuM
         DmasJ+AW+wzM0Su4wVI/YazDL0Rw2bG5CEohVRGIpdKIKQltGXhmFKYcaqyhPmQhjibk
         U1vZRKmkHKmUmhNRlTGFwhCITs+vMICepvVwQlTM1xGdHJrTujnLOdJWIn3fNVPVyoah
         rr2m5YJdCVYpwZzhCiW/TcCorLMY0JzUBMfDkGwL/aEpKrzO0559mqT+QDpMjSdxmBs6
         qIzw==
X-Gm-Message-State: ACrzQf0ZsgpwibKcxAl0/lvRHxM6A5DfyP/ZeFez1Fpjy4lW6qf+Zoo7
        lJQzRx4+xlreuE+kiX3RkzW6tg==
X-Google-Smtp-Source: AMsMyM5T8mjrHe0bl5/PGa1YKRjs5ZRA7sfUC3ddKYz2Wz1+BysRQoX8eim+Qe9RjdABamkS62DdBg==
X-Received: by 2002:a2e:a601:0:b0:26c:4149:251a with SMTP id v1-20020a2ea601000000b0026c4149251amr749232ljp.348.1664442737761;
        Thu, 29 Sep 2022 02:12:17 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k4-20020a05651239c400b0048b143c09c2sm725091lfu.259.2022.09.29.02.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 02:12:17 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: clock: split qcom,gcc-sdm660 to the separate file
Date:   Thu, 29 Sep 2022 12:12:16 +0300
Message-Id: <20220929091216.471136-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

Move schema for the GCC on SDM630/SDM636/SDM660 to a separate file to be
able to define device-specific clock properties.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes since v1:
- Change license to GPL-2.0 & BSD-2-Clause
- Fix Taniya's email
- Reword the bindings title as suggested by Krzysztof
---
 .../bindings/clock/qcom,gcc-other.yaml        |  3 -
 .../bindings/clock/qcom,gcc-sdm660.yaml       | 61 +++++++++++++++++++
 2 files changed, 61 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sdm660.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml
index 76988e04c7db..35fc22a19000 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml
@@ -24,7 +24,6 @@ description: |
   - dt-bindings/clock/qcom,gcc-mdm9607.h
   - dt-bindings/clock/qcom,gcc-mdm9615.h
   - dt-bindings/reset/qcom,gcc-mdm9615.h
-  - dt-bindings/clock/qcom,gcc-sdm660.h  (qcom,gcc-sdm630 and qcom,gcc-sdm660)
 
 allOf:
   - $ref: "qcom,gcc.yaml#"
@@ -41,8 +40,6 @@ properties:
       - qcom,gcc-msm8974pro
       - qcom,gcc-msm8974pro-ac
       - qcom,gcc-mdm9615
-      - qcom,gcc-sdm630
-      - qcom,gcc-sdm660
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-sdm660.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-sdm660.yaml
new file mode 100644
index 000000000000..68f47174b1b7
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-sdm660.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,gcc-sdm660.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SDM660/SDM630/SDM636 Global Clock & Reset Controller
+
+maintainers:
+  - Stephen Boyd <sboyd@kernel.org>
+  - Taniya Das <quic_tdas@quicinc.com>
+
+description: |
+  Qualcomm global clock control module which supports the clocks, resets and
+  power domains on SDM630, SDM636 and SDM660
+
+  See also:
+  - dt-bindings/clock/qcom,gcc-sdm660.h  (qcom,gcc-sdm630 and qcom,gcc-sdm660)
+
+$ref: qcom,gcc.yaml#
+
+properties:
+  compatible:
+    enum:
+      - qcom,gcc-sdm630
+      - qcom,gcc-sdm660
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
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  # Example for GCC for SDM660:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    clock-controller@100000 {
+        compatible = "qcom,gcc-sdm660";
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
-- 
2.35.1

