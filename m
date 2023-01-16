Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BAD066C3B9
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 16:24:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbjAPPYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 10:24:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230509AbjAPPXo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 10:23:44 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6009C234EE
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 07:21:35 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id k8so13307917wrc.9
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 07:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pmeDpbhWHrjy4et1mvXgnkvbOqusPhVJXfUWrZk3WAA=;
        b=VfJM03zu0OKEH6zOZ7seepVSIyKq6lVhG2LDIuWX2rEhNiwndpyJDOszSSbhCfkJYd
         d0funP90udA9EQRzgIN3LtgBkwQ3I//tHPFYXXNu4Utwwzt+i7Odo5PH2KLVLci8/D/f
         y2K88U7O5wYIdRLlPqR7MfBSTbKbLEXv5a4Zfxi+IyKCH+zqtFT4H+w5fD7krsEX5gFI
         NicF+f8yRak2kz9Iniyo316pqH0o5dZPbiAyWVEzH4dk/xindDSICF3e0aqd7ZF93Vp0
         q+wlqI5dxSZxHIlQZ4ukNY5DPL+BkxWpOBcDxyvkBtMIvgIQT5ebnkf6RHFlrEHwRVs7
         886g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pmeDpbhWHrjy4et1mvXgnkvbOqusPhVJXfUWrZk3WAA=;
        b=KmIn7JSIubR2AMf7RGCPK/yr4k6fczH6KvR5PTal5YKTrvGLOewpMdlh8lKc2CKMBV
         PwO6OK3NpSGGc1f9G4+A4HxPcz5oWmx9+i316zHae2nw3o2ko6SF7rqMPrCrH9nVFsbt
         ldVuEw73GrC9xdTSqv6Zki7KQ6v9sFUw8t1Q2E3pvZBFlo1GDq8a1O3Yr0XVo4ixl4QD
         XhLoiiRMQdGRn787ItHTUg7JzwazougPgFj27Xj0hDTQFetNUlABBz7y58g4SJnw2E9w
         77C/Zp83W+4RxLdyrUL1vmsuOu93rQBkSVi1AwHIVbICJozTd/KSAgI2cy9qgkVjgVvW
         PABQ==
X-Gm-Message-State: AFqh2kqcKYFplpTebqMff9MRB4ErBITGw7/mS+EX3GO3RZ/96Gt/m5UR
        c7skqQo/VSR/JjHceYgdpLct0cGDIiWk7bl1
X-Google-Smtp-Source: AMrXdXvabACscioWX2Z3nYvaozHmOIxGmyxktR3Lgpto6ETFCKsRwJl3rRaC30brISg1VQlOW1DtKg==
X-Received: by 2002:adf:fe12:0:b0:2bd:f5bd:5482 with SMTP id n18-20020adffe12000000b002bdf5bd5482mr6954698wrr.28.1673882493818;
        Mon, 16 Jan 2023 07:21:33 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id u18-20020adff892000000b002bded7da2b8sm6874686wrp.102.2023.01.16.07.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 07:21:33 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 2/4] dt-bindings: msm: dsi-controller-main: Document clocks on a per compatible basis
Date:   Mon, 16 Jan 2023 15:21:26 +0000
Message-Id: <20230116152128.909646-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230116152128.909646-1-bryan.odonoghue@linaro.org>
References: <20230116152128.909646-1-bryan.odonoghue@linaro.org>
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

Each compatible has a different set of clocks which are associated with it.
Add in the list of clocks for each compatible.

Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../display/msm/dsi-controller-main.yaml      | 219 ++++++++++++++++--
 1 file changed, 202 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 35668caa190c4..47faf08a37443 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -9,9 +9,6 @@ title: Qualcomm Display DSI controller
 maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
-allOf:
-  - $ref: "../dsi-controller.yaml#"
-
 properties:
   compatible:
     oneOf:
@@ -50,22 +47,23 @@ properties:
     maxItems: 1
 
   clocks:
-    items:
-      - description: Display byte clock
-      - description: Display byte interface clock
-      - description: Display pixel clock
-      - description: Display core clock
-      - description: Display AHB clock
-      - description: Display AXI clock
+    description: |
+      Several clocks are used, depending on the variant. Typical ones are::
+       - bus:: Display AHB clock.
+       - byte:: Display byte clock.
+       - byte_intf:: Display byte interface clock.
+       - core:: Display core clock.
+       - core_mss:: Core MultiMedia SubSystem clock.
+       - iface:: Display AXI clock.
+       - mdp_core:: MDP Core clock.
+       - mnoc:: MNOC clock
+       - pixel:: Display pixel clock.
+    minItems: 3
+    maxItems: 9
 
   clock-names:
-    items:
-      - const: byte
-      - const: byte_intf
-      - const: pixel
-      - const: core
-      - const: iface
-      - const: bus
+    minItems: 3
+    maxItems: 9
 
   phys:
     maxItems: 1
@@ -161,6 +159,193 @@ required:
   - assigned-clock-parents
   - ports
 
+allOf:
+  - $ref: ../dsi-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,apq8064-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: iface
+            - const: bus
+            - const: core_mmss
+            - const: src
+            - const: byte
+            - const: pixel
+            - const: core
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8916-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 6
+        clock-names:
+          items:
+            - const: mdp_core
+            - const: iface
+            - const: bus
+            - const: byte
+            - const: pixel
+            - const: core
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8953-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 6
+        clock-names:
+          items:
+            - const: mdp_core
+            - const: iface
+            - const: bus
+            - const: byte
+            - const: pixel
+            - const: core
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8974-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: mdp_core
+            - const: iface
+            - const: bus
+            - const: vsync
+            - const: byte
+            - const: pixel
+            - const: core
+            - const: core_mmss
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8996-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: mdp_core
+            - const: byte
+            - const: iface
+            - const: bus
+            - const: core_mmss
+            - const: pixel
+            - const: core
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 6
+        clock-names:
+          items:
+            - const: byte
+            - const: byte_intf
+            - const: pixel
+            - const: core
+            - const: iface
+            - const: bus
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7180-dsi-ctrl
+              - qcom,sc7280-dsi-ctrl
+              - qcom,sm8250-dsi-ctrl
+              - qcom,sm8150-dsi-ctrl
+              - qcom,sm8250-dsi-ctrl
+              - qcom,sm8350-dsi-ctrl
+              - qcom,sm8450-dsi-ctrl
+              - qcom,sm8550-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 6
+        clock-names:
+          items:
+            - const: byte
+            - const: byte_intf
+            - const: pixel
+            - const: core
+            - const: iface
+            - const: bus
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sdm660-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 9
+        clock-names:
+          items:
+            - const: mdp_core
+            - const: byte
+            - const: byte_intf
+            - const: mnoc
+            - const: iface
+            - const: bus
+            - const: core_mmss
+            - const: pixel
+            - const: core
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sdm845-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          maxItems: 6
+        clock-names:
+          items:
+            - const: byte
+            - const: byte_intf
+            - const: pixel
+            - const: core
+            - const: iface
+            - const: bus
+
 additionalProperties: false
 
 examples:
-- 
2.38.1

