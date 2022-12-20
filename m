Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C25E1652089
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 13:37:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233721AbiLTMhH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 07:37:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233491AbiLTMgu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 07:36:50 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A80815FEE
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:49 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id co23so11606679wrb.4
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m8GQi1W1u/Rrt85ZgPmDbHqcK2FxBMvZCfLJ0fBnwDc=;
        b=jOM8Wzi4o9p7Rx5dL+5vh9VwUwbBhEDB/BvXs5kUGWM63yj+ZcJCBf2EmArjM8z8k7
         0HHqvw0dh4nsDTwnLpotdLB4nUJJ3NVUUizGL8U58ATda6FEXF63ek/ymtd/ezYYRNv3
         cm4pee8sgOXcC96F6sLCHGKAKNnNXw+YUf9ci/pLVXQNJNMUyPxWk9mzKukXnD+bNYwf
         hDIjsrsl7u26qF20DAxniyvgVl9MDwCLETa96/F55/RXau2u+DxdHblrSFCmd52RLrqJ
         Zv1niHnqNqTXGLj8l/qThAyDcOFhG/Cjn025buGMCTCxDUF/9o/CrYOtOhx/OxFjThYm
         dhxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m8GQi1W1u/Rrt85ZgPmDbHqcK2FxBMvZCfLJ0fBnwDc=;
        b=x5MB7mouC1hMuidN+5JysJUQVKBdz9oGh+QXH3Zz5msYmUmVvE6oAWlFw3pwgROlW6
         zfFSfQO6eYRi0EjXsqKFNXkq4fXdY8iiB8xhwsvXc+DkQTZnloU3ktlsktPmR7cqNKg9
         IupLRv4B4g9EyX0Og89mUmMa6jXdXrEWPOLCgvIm03qbY0xb/U9VPfybda3yAm6aDqPz
         588yFHaG51U3TBrajTSPMI4p7P909E1bFIhMum4kkkuODsYxh7RuYO1bXwjSZJuvXKYY
         VedR5EjxorkLxzn1LhCxt8dsQaMtzNRwK0YQejUIuL47qO/xpekYmwGXj7C070FJu2v/
         VJWQ==
X-Gm-Message-State: AFqh2kq3nTfWotAaK8jB8WLDHP0AfOfg84RxY+OVX5Jx6QkTawIDJfal
        A/z9ectnNwF4EZCsgsjU6IvhvpkY89UTzgAnPCA=
X-Google-Smtp-Source: AMrXdXsWlD+lYwrz4SiSC7uGc2j035PvM94sMCd7PdZLPcGhNSlPD1BI5GJwffxSKTVK6ndBMPCgzQ==
X-Received: by 2002:a05:6000:909:b0:268:cb75:53ee with SMTP id bz9-20020a056000090900b00268cb7553eemr398606wrb.37.1671539808837;
        Tue, 20 Dec 2022 04:36:48 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id da13-20020a056000408d00b00242257f2672sm12641208wrb.77.2022.12.20.04.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 04:36:48 -0800 (PST)
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
        bryan.odonoghue@linaro.org
Subject: [PATCH v5 10/21] dt-bindings: display/msm: Update MDSS dsi compat strings
Date:   Tue, 20 Dec 2022 12:36:23 +0000
Message-Id: <20221220123634.382970-11-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
References: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
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

Several MDSS yaml files exist which document the dsi sub-node.
For each existing SoC MDSS yaml, provide the right dsi compat string.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/display/msm/qcom,msm8998-mdss.yaml           | 8 +++++---
 .../devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml | 6 ++++--
 .../devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml | 6 ++++--
 .../devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml | 8 +++++---
 .../devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml | 8 +++++---
 5 files changed, 23 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,msm8998-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,msm8998-mdss.yaml
index cf52ff77a41aa..692b60af946f0 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,msm8998-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,msm8998-mdss.yaml
@@ -47,7 +47,9 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,mdss-dsi-ctrl
+        items:
+          - const: qcom,msm8998-dsi-ctrl
+          - const: qcom,mdss-dsi-ctrl
 
   "^phy@[0-9a-f]+$":
     type: object
@@ -126,7 +128,7 @@ examples:
         };
 
         dsi@c994000 {
-            compatible = "qcom,mdss-dsi-ctrl";
+            compatible = "qcom,msm8998-dsi-ctrl", "qcom,mdss-dsi-ctrl";
             reg = <0x0c994000 0x400>;
             reg-names = "dsi_ctrl";
 
@@ -196,7 +198,7 @@ examples:
         };
 
         dsi@c996000 {
-            compatible = "qcom,mdss-dsi-ctrl";
+            compatible = "qcom,msm8998-dsi-ctrl", "qcom,mdss-dsi-ctrl";
             reg = <0x0c996000 0x400>;
             reg-names = "dsi_ctrl";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
index 13e396d61a512..e72190040ca05 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
@@ -59,7 +59,9 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,mdss-dsi-ctrl
+        items:
+          - const: qcom,sc7180-dsi-ctrl
+          - const: qcom,mdss-dsi-ctrl
 
   "^phy@[0-9a-f]+$":
     type: object
@@ -142,7 +144,7 @@ examples:
         };
 
         dsi@ae94000 {
-            compatible = "qcom,mdss-dsi-ctrl";
+            compatible = "qcom,sc7180-dsi-ctrl", "qcom,mdss-dsi-ctrl";
             reg = <0x0ae94000 0x400>;
             reg-names = "dsi_ctrl";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
index a3de1744ba119..8997e24f804eb 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
@@ -58,7 +58,9 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,mdss-dsi-ctrl
+        items:
+          - const: qcom,sc7280-dsi-ctrl
+          - const: qcom,mdss-dsi-ctrl
 
   "^edp@[0-9a-f]+$":
     type: object
@@ -162,7 +164,7 @@ examples:
         };
 
         dsi@ae94000 {
-            compatible = "qcom,mdss-dsi-ctrl";
+            compatible = "qcom,sc7280-dsi-ctrl", "qcom,mdss-dsi-ctrl";
             reg = <0x0ae94000 0x400>;
             reg-names = "dsi_ctrl";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
index 31ca6f99fc223..b5446671f3adf 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sdm845-mdss.yaml
@@ -51,7 +51,9 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,mdss-dsi-ctrl
+        items:
+          - const: qcom,sdm845-dsi-ctrl
+          - const: qcom,mdss-dsi-ctrl
 
   "^phy@[0-9a-f]+$":
     type: object
@@ -128,7 +130,7 @@ examples:
         };
 
         dsi@ae94000 {
-            compatible = "qcom,mdss-dsi-ctrl";
+            compatible = "qcom,sdm845-dsi-ctrl", "qcom,mdss-dsi-ctrl";
             reg = <0x0ae94000 0x400>;
             reg-names = "dsi_ctrl";
 
@@ -198,7 +200,7 @@ examples:
         };
 
         dsi@ae96000 {
-            compatible = "qcom,mdss-dsi-ctrl";
+            compatible = "qcom,sdm845-dsi-ctrl", "qcom,mdss-dsi-ctrl";
             reg = <0x0ae96000 0x400>;
             reg-names = "dsi_ctrl";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml
index 0d3be5386b3f4..d093f73e02dc3 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml
@@ -55,7 +55,9 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,mdss-dsi-ctrl
+        items:
+          - const: qcom,sm8250-dsi-ctrl
+          - const: qcom,mdss-dsi-ctrl
 
   "^phy@[0-9a-f]+$":
     type: object
@@ -167,7 +169,7 @@ examples:
         };
 
         dsi@ae94000 {
-            compatible = "qcom,mdss-dsi-ctrl";
+            compatible = "qcom,sm8250-dsi-ctrl", "qcom,mdss-dsi-ctrl";
             reg = <0x0ae94000 0x400>;
             reg-names = "dsi_ctrl";
 
@@ -257,7 +259,7 @@ examples:
         };
 
         dsi@ae96000 {
-            compatible = "qcom,mdss-dsi-ctrl";
+            compatible = "qcom,sm8250-dsi-ctrl", "qcom,mdss-dsi-ctrl";
             reg = <0x0ae96000 0x400>;
             reg-names = "dsi_ctrl";
 
-- 
2.38.1

