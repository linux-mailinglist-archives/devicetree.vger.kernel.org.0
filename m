Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5224F62BB3E
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:17:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239154AbiKPLRs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:17:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239128AbiKPLRW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:17:22 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E27B5B87D
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:05:32 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id cl5so29304053wrb.9
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R6pBVLEPuQkd5MVeWYY/BZ/XDTm+MO9uycVFSchS9vk=;
        b=VLLxs1DElAT2RG0Hh4R/mWs6r0mIvTZ2Qoqhln8hJ/f4KrmRY55KfvW/cDnp7Rxs1c
         Zzf79NGgi+8a7EZZYOdcxKJmNeqsU/GdRBTwd3gBktvHmzR2PXQm0vJU6Nh8bOAbV1/z
         z0bhEewN937czaLIPt8rVa12S932dymGyTZ3WWPb0ueetqJ42618uWVo75LUitHbTZQh
         uwhQOmgAJ+pUkngGh6jOLIolVYKh/JHihiQLYBBtAazcjQbMd1hQtKeojHfU7UVwqgkl
         mN/LcZ6YCANuNLWNzJbguHh2VvKU+HuKlmKmTblQ4JtWAqORl+Gzx8/n+K9dhOSwE7aJ
         JPEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R6pBVLEPuQkd5MVeWYY/BZ/XDTm+MO9uycVFSchS9vk=;
        b=zfEBpDlsEkEIcrCHgqAZXAgh1Iviu/vHIPmiPCSo6o6RGL4OMqMzpr2jMCEnSqO+oo
         jHvzVBIm98uTA5nKz+2lcQreit9ikgmcKSmPI8g+RxpuWl8TVl9rII0GlD61DPoZUSoq
         E4EF69yDVJpk5VTe02p4Z3tSmqlYygC2Y6ol4poLcqBWBg6hCupx0juQn8SrvxYcmHJF
         U0/YvhH6WNiNTSBLeoIjAjsoanorOVPt9abO8HempfZMy3FCH2vIUFD6zna9svzuCAXY
         aDOHlH+aryGeujYM7BbmsXGdcVvigUvFVZnDHEX/bYevfo2Xv1idqvJt/KkEEnWHx3aS
         HNgw==
X-Gm-Message-State: ANoB5pkJED2PWHjhZSB6Om3iLR89gMkrhbORUza+j3a/DZWxC+nYV7zx
        73v3emo+jNUW3B+R/HKdi+mAIA==
X-Google-Smtp-Source: AA0mqf4r6fXNZ5wT13c6GW1Beh0DgH601E2sq6dBaq+QCbjsqhZBXs/Gsk9m/j2qqVZ7M3K7vQeyFA==
X-Received: by 2002:a5d:668d:0:b0:236:587a:61b2 with SMTP id l13-20020a5d668d000000b00236587a61b2mr13459487wru.703.1668596730800;
        Wed, 16 Nov 2022 03:05:30 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id i6-20020a05600c354600b003cf894c05e4sm1806231wmq.22.2022.11.16.03.05.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 03:05:30 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 1/2] regulator: qcom,rpmh: Add compatible for PM8550
Date:   Wed, 16 Nov 2022 13:05:14 +0200
Message-Id: <20221116110515.2612515-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116110515.2612515-1-abel.vesa@linaro.org>
References: <20221116110515.2612515-1-abel.vesa@linaro.org>
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

Add compatible string for PM8550 used in SM8550 boards.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../regulator/qcom,rpmh-regulator.yaml        | 29 +++++++++++++++++--
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 90c3bda31c23..66e6bda923cf 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -47,6 +47,7 @@ description: |
       For PM8350, smps1 - smps12, ldo1 - ldo10
       For PM8350C, smps1 - smps10, ldo1 - ldo13, bob
       For PM8450, smps1 - smps6, ldo1 - ldo4
+      For PM8550, smps1 - smps6, ldo1 - ldo17, bob1 - bob2
       For PM8998, smps1 - smps13, ldo1 - ldo28, lvs1 - lvs2
       For PMI8998, bob
       For PMR735A, smps1 - smps3, ldo1 - ldo7
@@ -70,6 +71,9 @@ properties:
       - qcom,pm8350-rpmh-regulators
       - qcom,pm8350c-rpmh-regulators
       - qcom,pm8450-rpmh-regulators
+      - qcom,pm8550-rpmh-regulators
+      - qcom,pm8550ve-rpmh-regulators
+      - qcom,pm8550vs-rpmh-regulators
       - qcom,pm8998-rpmh-regulators
       - qcom,pmg1110-rpmh-regulators
       - qcom,pmi8998-rpmh-regulators
@@ -83,7 +87,7 @@ properties:
         RPMh resource name suffix used for the regulators found
         on this PMIC.
     $ref: /schemas/types.yaml#/definitions/string
-    enum: [a, b, c, d, e, f, h, k]
+    enum: [a, b, c, d, e, f, g, h, k]
 
   qcom,always-wait-for-ack:
     description: |
@@ -107,7 +111,7 @@ properties:
       regulator-allow-set-load: ["regulator-allowed-modes"]
 
 patternProperties:
-  "^(smps|ldo|lvs)[0-9]+$":
+  "^(smps|ldo|lvs|bob)[0-9]+$":
     type: object
     $ref: "regulator.yaml#"
     description: smps/ldo regulator nodes(s).
@@ -296,8 +300,27 @@ allOf:
             - qcom,pm8450-rpmh-regulators
     then:
       patternProperties:
-        "^vdd-l[1-4]-supply$": true
+        "^vdd-l[1-9]-supply$": true
         "^vdd-s[1-6]-supply$": true
+        "^vdd-bob[1-2]-supply$": true
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,pm8550-rpmh-regulators
+            - qcom,pm8550ve-rpmh-regulators
+            - qcom,pm8550vs-rpmh-regulators
+    then:
+      properties:
+        vdd-l2-l13-l14-supply: true
+        vdd-l5-l16-supply: true
+        vdd-l6-l7-supply: true
+        vdd-l8-l9-supply: true
+      patternProperties:
+        "^vdd-l([1-4]|1[0-7])-supply$": true
+        "^vdd-s[1-6]-supply$": true
+        "^vdd-bob[1-2]-supply$": true
 
   - if:
       properties:
-- 
2.34.1

