Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C18268840D
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 17:19:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232465AbjBBQTz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 11:19:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232766AbjBBQTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 11:19:41 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD86B6AC93
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 08:19:38 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so4113765wmb.2
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 08:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InCMd7d3rDvyvxG0lrJq3ckZX1j24uW1L0pdJpej8Jg=;
        b=SoAnuGhEAB/7UN45UWN4515akWCbP3rRTCBdMD6ZK7mAOK21bG3hVSP+JaM32hbOVZ
         /Qb3RVHfwjvs+8pnVJ5g8naLs3rccfhxnj9HNnt2d3rutXzACMPqtUz3ik6GAdcVYYll
         zboWei6d3zsJ69kRfnVDPAjgDmBUdmxWcfUHWHU8c++z0EDT3KqiRVfLVPKGmYZREF6m
         tRzgYapHVWEd3Fj5NWExs7S2OommVVDxcIlpcuwlFhRqxd2zxn6DeSFZtl8jk8VgFFs6
         7xIDnYMDkEV+jrd/V/DzwFGYp7JlBgH8i7IO1rwdBAFbaOUNfeky+U3619G648tHiYhJ
         zYAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=InCMd7d3rDvyvxG0lrJq3ckZX1j24uW1L0pdJpej8Jg=;
        b=XAwQkdodw8GGuqOGSLEWM4TN4YxBI6TKkNhkg1wry5krX7MOkwDJl+iGudqUHFMZ5a
         XR51YXzILL88MMy8Ho0p26MqFFdt9dB/ZFXn8QAXjl5/tQjLf9qJskjOS99Xd84lvHJF
         Wsj5hi+5/Awwx9JZUVkQSVHRRN5Tn3xKzXmhcAlrwRxYP07JSI9SvdY1UpqfTCw4sHsL
         dk33Ghu+FRsZ9ygiH1VRj4E4tp6FSm1FWW7oFEs3g4ks234fFEoiNY0lgiHWxjho4Mqo
         wJSZkR4j2eGqtRBv/SYHcOv/t/ZsULB/VJC4szhSTr83mO2eygbmCjZ+LSDGvplF9K2P
         4IQg==
X-Gm-Message-State: AO0yUKVCN/qoy7jbH/rxHin5yoIox+ygWk8e27NlnhoiTuFkHqTiW+uL
        aIOdlYuVP/CfKEsQXc/Htn27VQ==
X-Google-Smtp-Source: AK7set8nbITGUHpI8FG7HCp9wyF9hjQcwiYkzyOtFpZi6i7u6V1DOcemHr5rhhF+6zsmiIA13Vyvyw==
X-Received: by 2002:a05:600c:5118:b0:3dc:1dc3:7a05 with SMTP id o24-20020a05600c511800b003dc1dc37a05mr6403019wms.10.1675354777424;
        Thu, 02 Feb 2023 08:19:37 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c351000b003dc521f336esm212416wmq.14.2023.02.02.08.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 08:19:37 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/13] dt-bindings: mailbox: qcom,apcs-kpss-global: use fallbacks
Date:   Thu,  2 Feb 2023 17:18:44 +0100
Message-Id: <20230202161856.385825-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202161856.385825-1-krzysztof.kozlowski@linaro.org>
References: <20230202161856.385825-1-krzysztof.kozlowski@linaro.org>
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

Rework the compatibles and group devices which have similar interface
(same from Linux driver point of view) as compatible.  This allows
smaller of_device_id table in the Linux driver and smaller
allOf:if:then: constraints.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../mailbox/qcom,apcs-kpss-global.yaml        | 66 +++++++++++--------
 1 file changed, 39 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 943f9472ae10..c38bbdd9d7db 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -18,27 +18,44 @@ properties:
     oneOf:
       - items:
           - enum:
-              - qcom,ipq6018-apcs-apps-global
               - qcom,ipq8074-apcs-apps-global
+          - const: qcom,ipq6018-apcs-apps-global
+      - items:
+          - enum:
+              - qcom,msm8939-apcs-kpss-global
+              - qcom,qcs404-apcs-apps-global
+          - const: qcom,msm8916-apcs-kpss-global
+          - const: syscon
+      - items:
+          - enum:
               - qcom,msm8976-apcs-kpss-global
-              - qcom,msm8996-apcs-hmss-global
+              - qcom,msm8994-apcs-kpss-global
+          - const: qcom,msm8953-apcs-kpss-global
+          - const: syscon
+      - items:
+          - enum:
               - qcom,msm8998-apcs-hmss-global
               - qcom,qcm2290-apcs-hmss-global
-              - qcom,sc7180-apss-shared
-              - qcom,sc8180x-apss-shared
               - qcom,sdm660-apcs-hmss-global
-              - qcom,sdm845-apss-shared
               - qcom,sm4250-apcs-hmss-global
-              - qcom,sm6125-apcs-hmss-global
               - qcom,sm6115-apcs-hmss-global
+              - qcom,sm6125-apcs-hmss-global
+          - const: qcom,msm8953-apcs-kpss-global
+      - items:
+          - enum:
+              - qcom,sc7180-apss-shared
+              - qcom,sc8180x-apss-shared
               - qcom,sm8150-apss-shared
+          - const: qcom,sdm845-apss-shared
+      - items:
+          - enum:
+              - qcom,ipq6018-apcs-apps-global
+              - qcom,msm8996-apcs-hmss-global
+              - qcom,sdm845-apss-shared
       - items:
           - enum:
               - qcom,msm8916-apcs-kpss-global
-              - qcom,msm8939-apcs-kpss-global
               - qcom,msm8953-apcs-kpss-global
-              - qcom,msm8994-apcs-kpss-global
-              - qcom,qcs404-apcs-apps-global
           - const: syscon
   reg:
     maxItems: 1
@@ -69,17 +86,11 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,msm8916-apcs-kpss-global
-            - qcom,msm8994-apcs-kpss-global
-            - qcom,msm8996-apcs-hmss-global
-            - qcom,msm8998-apcs-hmss-global
-            - qcom,qcs404-apcs-apps-global
-            - qcom,sc7180-apss-shared
-            - qcom,sdm660-apcs-hmss-global
-            - qcom,sdm845-apss-shared
-            - qcom,sm6125-apcs-hmss-global
-            - qcom,sm8150-apss-shared
+          contains:
+            enum:
+              - qcom,msm8916-apcs-kpss-global
+              - qcom,msm8953-apcs-kpss-global
+              - qcom,sdm845-apss-shared
     then:
       properties:
         clocks:
@@ -110,9 +121,9 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,ipq6018-apcs-apps-global
-            - qcom,ipq8074-apcs-apps-global
+          contains:
+            enum:
+              - qcom,ipq6018-apcs-apps-global
     then:
       properties:
         clocks:
@@ -126,9 +137,9 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,ipq6018-apcs-apps-global
-            - qcom,ipq8074-apcs-apps-global
+          contains:
+            enum:
+              - qcom,ipq6018-apcs-apps-global
     then:
       properties:
         '#clock-cells':
@@ -163,7 +174,8 @@ examples:
     #define GCC_APSS_AHB_CLK_SRC  1
     #define GCC_GPLL0_AO_OUT_MAIN 123
     apcs: mailbox@b011000 {
-        compatible = "qcom,qcs404-apcs-apps-global", "syscon";
+        compatible = "qcom,qcs404-apcs-apps-global",
+                     "qcom,msm8916-apcs-kpss-global", "syscon";
         reg = <0x0b011000 0x1000>;
         #mbox-cells = <1>;
         clocks = <&apcs_hfpll>, <&gcc GCC_GPLL0_AO_OUT_MAIN>;
-- 
2.34.1

