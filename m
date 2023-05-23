Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DFA070DEB3
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 16:09:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237247AbjEWOJY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 10:09:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236974AbjEWOJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 10:09:11 -0400
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BF9A1A1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:07:26 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2af2e908163so41461781fa.2
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850784; x=1687442784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Slr3GnICx5gXezzI7sSV6PN44KGk90bj6tbLcS3JUYM=;
        b=PCbu+n1cZYW8nV8c/lJMqVhOeLl+C5G2qVReJmKckpmoURv2ou9b96rLKRzzaaE6wC
         5Jb7Z/U0CBUr3u2KHZ/6aLkJyTr4y6Oe3YQFF6Cy4C6mkejAi5yMl10U+uhbUh7/gST3
         Pwuht7JqaVIIzuBEiLbZFAc6vkYitHEM1tCcWxdqiQAIEYAo8HbR9S3NsfwzkOS590Pv
         B2JeOdkaNsg4KS1W88cEKlbdgzIOFEhh5pHYDjcoETDK5TBelj1PAH20SVm4M0C0uEzU
         8JZeJfh5AZ4GcBWw2vTafIcfjU1fXMATFrUb6b5BAtZ4OIqI5KjcEfQfLaMw//enZn1l
         tADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850784; x=1687442784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Slr3GnICx5gXezzI7sSV6PN44KGk90bj6tbLcS3JUYM=;
        b=lE+j/q0Zo6vynEInD2z6cYUmKUjVcsMgJxvZC0U6cCK9KdZ6zF/7c6xEThlDYKJOD0
         oiSybTeZl0z1g7v9RP0N3OnF2ng2nY52wZ6wltsZWBrbkZVbe/NjHvNnxyRr69YHoErZ
         bcg31nU2mcnxBuvJfQmtlmwKwI+hS4fnYREffwSFzG8uvyGpYLEtITBcsWtB3L74X6Ae
         B7vNoPNuYcInSK5tGAcHgzoYLzdBu9YyJSKQ6rTcKgoyB0OeMWO49d6DvoWQ2EVKvK7a
         w7yMSuy2HX8fferVaXZ4bmy/qIaylVjHhxCx5HZDxOoBiMY/6domerfRpj3QtnQR4EPN
         Td1w==
X-Gm-Message-State: AC+VfDx+ScWP37yx8dCQVEXE27a4Hyd75TeFlIyBl46KrfbhoJ+3VoWF
        GAt0bY0PXByYrPS4nyO0Afg2PQ==
X-Google-Smtp-Source: ACHHUZ72hF8TJZyHvxZ7w6qjFBdYfZvlSH6EyfahwaHMpegGWXLzX3XoC8VkNL9LnHmUbFxYOg8mwQ==
X-Received: by 2002:a2e:8197:0:b0:2af:1adb:1726 with SMTP id e23-20020a2e8197000000b002af1adb1726mr5247415ljg.38.1684850784417;
        Tue, 23 May 2023 07:06:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:24 -0700 (PDT)
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
Subject: [PATCH v3 01/11] dt-bindings: phy: migrate QMP UFS PHY bindings to qcom,sc8280xp-qmp-ufs-phy.yaml
Date:   Tue, 23 May 2023 17:06:12 +0300
Message-Id: <20230523140622.265692-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Migrate legacy bindings (described in qcom,msm8996-qmp-ufs-phy.yaml)
to qcom,sc8280xp-qmp-ufs-phy.yaml. This removes a need to declare
the child PHY node or split resource regions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 244 ------------------
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  48 +++-
 2 files changed, 45 insertions(+), 247 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
deleted file mode 100644
index 80a5348dbfde..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
+++ /dev/null
@@ -1,244 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/phy/qcom,msm8996-qmp-ufs-phy.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm QMP PHY controller (UFS, MSM8996)
-
-maintainers:
-  - Vinod Koul <vkoul@kernel.org>
-
-description:
-  QMP PHY controller supports physical layer functionality for a number of
-  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
-
-  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
-  qcom,sc8280xp-qmp-ufs-phy.yaml.
-
-properties:
-  compatible:
-    enum:
-      - qcom,msm8996-qmp-ufs-phy
-      - qcom,msm8998-qmp-ufs-phy
-      - qcom,sc8180x-qmp-ufs-phy
-      - qcom,sdm845-qmp-ufs-phy
-      - qcom,sm6115-qmp-ufs-phy
-      - qcom,sm6350-qmp-ufs-phy
-      - qcom,sm8150-qmp-ufs-phy
-      - qcom,sm8250-qmp-ufs-phy
-      - qcom,sm8350-qmp-ufs-phy
-      - qcom,sm8450-qmp-ufs-phy
-
-  reg:
-    items:
-      - description: serdes
-
-  "#address-cells":
-    enum: [ 1, 2 ]
-
-  "#size-cells":
-    enum: [ 1, 2 ]
-
-  ranges: true
-
-  clocks:
-    minItems: 1
-    maxItems: 3
-
-  clock-names:
-    minItems: 1
-    maxItems: 3
-
-  power-domains:
-    maxItems: 1
-
-  resets:
-    maxItems: 1
-
-  reset-names:
-    items:
-      - const: ufsphy
-
-  vdda-phy-supply: true
-
-  vdda-pll-supply: true
-
-  vddp-ref-clk-supply: true
-
-patternProperties:
-  "^phy@[0-9a-f]+$":
-    type: object
-    description: single PHY-provider child node
-    properties:
-      reg:
-        minItems: 3
-        maxItems: 6
-
-      "#clock-cells":
-        const: 1
-
-      "#phy-cells":
-        const: 0
-
-    required:
-      - reg
-      - "#phy-cells"
-
-    additionalProperties: false
-
-required:
-  - compatible
-  - reg
-  - "#address-cells"
-  - "#size-cells"
-  - ranges
-  - clocks
-  - clock-names
-  - resets
-  - reset-names
-  - vdda-phy-supply
-  - vdda-pll-supply
-
-additionalProperties: false
-
-allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8996-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 1
-        clock-names:
-          items:
-            - const: ref
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-ufs-phy
-              - qcom,sc8180x-qmp-ufs-phy
-              - qcom,sdm845-qmp-ufs-phy
-              - qcom,sm6115-qmp-ufs-phy
-              - qcom,sm6350-qmp-ufs-phy
-              - qcom,sm8150-qmp-ufs-phy
-              - qcom,sm8250-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 2
-        clock-names:
-          items:
-            - const: ref
-            - const: ref_aux
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sm8450-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: ref
-            - const: ref_aux
-            - const: qref
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-ufs-phy
-              - qcom,sdm845-qmp-ufs-phy
-              - qcom,sm6350-qmp-ufs-phy
-              - qcom,sm8150-qmp-ufs-phy
-              - qcom,sm8250-qmp-ufs-phy
-              - qcom,sm8350-qmp-ufs-phy
-              - qcom,sm8450-qmp-ufs-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX lane 1
-                - description: RX lane 1
-                - description: PCS
-                - description: TX lane 2
-                - description: RX lane 2
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sc8180x-qmp-ufs-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX
-                - description: RX
-                - description: PCS
-                - description: PCS_MISC
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8996-qmp-ufs-phy
-              - qcom,sm6115-qmp-ufs-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX
-                - description: RX
-                - description: PCS
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,gcc-sm8250.h>
-    #include <dt-bindings/clock/qcom,rpmh.h>
-
-    phy-wrapper@1d87000 {
-        compatible = "qcom,sm8250-qmp-ufs-phy";
-        reg = <0x01d87000 0x1c0>;
-        #address-cells = <1>;
-        #size-cells = <1>;
-        ranges = <0x0 0x01d87000 0x1000>;
-
-        clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-        clock-names = "ref", "ref_aux";
-
-        resets = <&ufs_mem_hc 0>;
-        reset-names = "ufsphy";
-
-        vdda-phy-supply = <&vreg_l6b>;
-        vdda-pll-supply = <&vreg_l3b>;
-
-        phy@400 {
-            reg = <0x400 0x108>,
-                  <0x600 0x1e0>,
-                  <0xc00 0x1dc>,
-                  <0x800 0x108>,
-                  <0xa00 0x1e0>;
-            #phy-cells = <0>;
-        };
-    };
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a1897a7606df..d981d77e82e4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,21 +16,31 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,msm8996-qmp-ufs-phy
+      - qcom,msm8998-qmp-ufs-phy
       - qcom,sa8775p-qmp-ufs-phy
+      - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sdm845-qmp-ufs-phy
+      - qcom,sm6115-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
+      - qcom,sm6350-qmp-ufs-phy
       - qcom,sm7150-qmp-ufs-phy
+      - qcom,sm8150-qmp-ufs-phy
+      - qcom,sm8250-qmp-ufs-phy
+      - qcom,sm8350-qmp-ufs-phy
+      - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    minItems: 2
+    minItems: 1
     maxItems: 3
 
   clock-names:
-    minItems: 2
+    minItems: 1
     items:
       - const: ref
       - const: ref_aux
@@ -75,19 +85,51 @@ allOf:
           contains:
             enum:
               - qcom,sa8775p-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
     then:
       properties:
         clocks:
           minItems: 3
         clock-names:
           minItems: 3
-    else:
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8180x-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
+              - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6115-qmp-ufs-phy
+              - qcom,sm6125-qmp-ufs-phy
+              - qcom,sm6350-qmp-ufs-phy
+              - qcom,sm7150-qmp-ufs-phy
+              - qcom,sm8150-qmp-ufs-phy
+              - qcom,sm8250-qmp-ufs-phy
+              - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8550-qmp-ufs-phy
+    then:
       properties:
         clocks:
           maxItems: 2
         clock-names:
           maxItems: 2
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8996-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
 additionalProperties: false
 
 examples:
-- 
2.39.2

