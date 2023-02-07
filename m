Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D816068D37B
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 11:04:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230470AbjBGKEl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 05:04:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230334AbjBGKEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 05:04:40 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A7D3A4
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 02:04:39 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso12739388wmp.3
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 02:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gpHlh5Hc8HFV1dKj42GmS34FxgEk0w80gWXPPnxKJac=;
        b=vOLbC+sDtxDzaimA/wUBYKCPICLToLbGet/ShAWYj7TgtzxvGr+pyvCelqUrPWcR8B
         Z8wH2rIeBw4IzZ36XWtP1ABuZ9XsKxqQQIoDosl/qup490k1MnCRYS/lpIbEZXYzPoGI
         vLK4EWkDXzVtRs7go3WxFy5/8HLLUVwMKeD+F9lsQNSmPWKkyIHNu7vfUtQociyAlYYk
         2MD/Pz/67/NND2FV0LPDBVpBdM7jtuaHn0Zk21Apj4ZuYb6MQN8usOLQ+ip6+ECGp635
         OguGGzu1zVkwCAfaiYL7poMf/1/TR8LAwSIEoSFOkLPfrwthm2yEYws+XXSkCt3ucD/o
         48vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gpHlh5Hc8HFV1dKj42GmS34FxgEk0w80gWXPPnxKJac=;
        b=rbDoQWfmUSqr1uZE/Siiv60s1TRldUeSEnt0s2SsBWP+WmwqhCWtWNbZe7rxtBeC3H
         F48mZy5XBJsHTROW8zsH0lTQ8XIBmOMyObIwktOKcp93qAfBm89DR1bTvJQcFZWKInRp
         oJiluLcqxwavQr40Nu3e+U+kTDpAH5XNcencvajvij46qKtfGKo3qzqR7XOwRoqs0diI
         Z3F5Zfe+iJTn6cMArpLcayO7v45GqhJ5CYe7J3eSZDm2+pAjMTbEpXy1RbYVDYogv/wS
         lZyl3ndtro33/+FyfjHUw+m4udgl2O3sAlFZlKRMR4ssDSO8IWd6MKdBR7TRgP5NLTgN
         9+yQ==
X-Gm-Message-State: AO0yUKWwHK7fKoSCvfKiBoaE0Ky1xOUCMZjqrNdGn8jgYHALGxY3n8JZ
        o0Ca+Ey8zRVEzoaD5XaCB+2XIQ==
X-Google-Smtp-Source: AK7set/L1laTbedtN4/uqHvZ2/IB1phC/BeFIz8BwsrvzeFtjL1osHXIIyd8CrDs3dDEiF+UlW4RvQ==
X-Received: by 2002:a05:600c:44d4:b0:3df:e69a:2175 with SMTP id f20-20020a05600c44d400b003dfe69a2175mr1495969wmo.35.1675764278045;
        Tue, 07 Feb 2023 02:04:38 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t6-20020a05600c450600b003dc433bb5e1sm14334052wmo.9.2023.02.07.02.04.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 02:04:37 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 07 Feb 2023 11:04:36 +0100
Subject: [PATCH] dt-bindings: display: panel: visionox,vtdr6130: add
 missing reg property
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-topic-sm8550-upstream-vtdr6130-bindings-fix-v1-1-0ba2323420c5@linaro.org>
X-B4-Tracking: v=1; b=H4sIADMi4mMC/x2OywqDMBBFf0Wy7sAkwbT0V0oXeYw6oFEyUQTx3
 xu6PIfL4V5KqDCJeneXKnSw8Job6Een4uTzSMCpsTJoLBp8Ql03jiDLq+8R9k1qIb/AUVNx2iI
 EzonzKDDwCV4n4yzSENGpVgxeCELxOU6tmfd5bnIr1Lb/C5/vff8A53XTL5IAAAA=
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing reg property and update example to add dsi top node.

Fixes: ef85db911134 ("dt-bindings: display: panel: document the Visionox VTDR6130 AMOLED DSI Panel")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/display/panel/visionox,vtdr6130.yaml  | 34 ++++++++++++++--------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml b/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml
index 49e2fd4b4e99..84562a5b710a 100644
--- a/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml
+++ b/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml
@@ -16,6 +16,10 @@ properties:
   compatible:
     const: visionox,vtdr6130
 
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
   vddio-supply: true
   vci-supply: true
   vdd-supply: true
@@ -26,6 +30,7 @@ additionalProperties: false
 
 required:
   - compatible
+  - reg
   - vddio-supply
   - vci-supply
   - vdd-supply
@@ -35,18 +40,23 @@ required:
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
-    panel {
-        compatible = "visionox,vtdr6130";
-
-        vddio-supply = <&vreg_l12b_1p8>;
-        vci-supply = <&vreg_l13b_3p0>;
-        vdd-supply = <&vreg_l11b_1p2>;
-
-        reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
-
-        port {
-            panel0_in: endpoint {
-                remote-endpoint = <&dsi0_out>;
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "visionox,vtdr6130";
+            reg = <0>;
+
+            vddio-supply = <&vreg_l12b_1p8>;
+            vci-supply = <&vreg_l13b_3p0>;
+            vdd-supply = <&vreg_l11b_1p2>;
+
+            reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
+
+            port {
+                panel0_in: endpoint {
+                    remote-endpoint = <&dsi0_out>;
+                };
             };
         };
     };

---
base-commit: 49a8133221c71b935f36a7c340c0271c2a9ee2db
change-id: 20230207-topic-sm8550-upstream-vtdr6130-bindings-fix-a1d2630efc06

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

