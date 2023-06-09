Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FD5A729C63
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:09:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240367AbjFIOIj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:08:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230061AbjFIOIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:08:34 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7742B35BB
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:08:07 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f62cf9755eso2312144e87.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 07:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319662; x=1688911662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kagj3Fv7uCbcPVQDTQnxHAL6yItxcWa8tAttLJxLNCA=;
        b=xmdq4yNYtiNHnvYVPs103U9vx95G+CQFG1QyIszf+voMt6H/a1285/Xbq0BaGtNGI9
         W/QJs1YvkJJYv8y+tYdX0DQGNNvhSiRYLeMbiqG928pHws6qrkmFD7A3JsyJN+1KlBnT
         zuymFbAyUjnYuKyB6QptWEe+HAR7IfpVzGFPKYIuquWrb/mU/InBDwum+ltxDG1VRWpE
         4cYg1GhqhT7oP2PHeUKBBccPQY7gZ/qRSePYJ//Vs+g1L5qfOC9PXVugrM9mpEHIo9eF
         0DPel9JXl/+Z0wDxZS96O1eCxmtT8CwzIVoHqdSKg9SP1TUveFFOMYD8NRRErHSKJsOS
         VmXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319662; x=1688911662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kagj3Fv7uCbcPVQDTQnxHAL6yItxcWa8tAttLJxLNCA=;
        b=eWLtv5AWkDXQoVcDq5et9ycNyBhSedWMduFzeyFNQyWdsJyrDpscAr9tC9bwIYRv+H
         qPR4KRQxWrqfDclWmHEDFCbA24o7OOo70myz5DarW3+9lTwGEMWM0flpxl5HfYwXfnaJ
         ZkcB3z6Zq4EWSmNwbk6O4maQlco0JomJ3KWJ/tlvuHbmcDWLXLL0MH0e4BJ3c4itZy0c
         gLlBMft62SlV7aCfem2rgUaVUtOnwvh+MH4Y0byUOYbrHgOYHjLAhXMbYayk+YhNF+CI
         4AODpnC2S12O0X2GHBl8+7MlqcS+cjooDr3ruck8mu2qt4Texxh81b+x98ZZe3xvMB/A
         8KbQ==
X-Gm-Message-State: AC+VfDxLUtfEyM49XLWA3CVGsD7vKnDGIWZhd/HsDx/ZdJvZM0lvtjkE
        g2/eTy0j6Uh/N81Plc5tOhaPOg==
X-Google-Smtp-Source: ACHHUZ4yeTvLaO1+xQ84Ma19+7lxuF39pxePn93LMIFZDB+Gga6djgcDENPUT4yNyDlFY4GMqct9cw==
X-Received: by 2002:a19:5050:0:b0:4eb:1361:895c with SMTP id z16-20020a195050000000b004eb1361895cmr996879lfj.55.1686319662490;
        Fri, 09 Jun 2023 07:07:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s13-20020aa7cb0d000000b005163a6c9f18sm1782192edt.53.2023.06.09.07.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:07:42 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        - <patches@opensource.cirrus.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: extcon: wlf,arizona: drop unneeded quotes
Date:   Fri,  9 Jun 2023 16:07:40 +0200
Message-Id: <20230609140740.64990-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/extcon/wlf,arizona.yaml    | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/extcon/wlf,arizona.yaml b/Documentation/devicetree/bindings/extcon/wlf,arizona.yaml
index efdf59abb2e1..351b202d0e10 100644
--- a/Documentation/devicetree/bindings/extcon/wlf,arizona.yaml
+++ b/Documentation/devicetree/bindings/extcon/wlf,arizona.yaml
@@ -23,7 +23,7 @@ properties:
       headphone detect mode to HPDETL, ARIZONA_ACCDET_MODE_HPR/2 sets it
       to HPDETR.  If this node is not included or if the value is unknown,
       then headphone detection mode is set to HPDETL.
-    $ref: "/schemas/types.yaml#/definitions/uint32"
+    $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 1
     maximum: 2
 
@@ -51,7 +51,7 @@ properties:
     description:
       Additional software microphone detection debounce specified in
       milliseconds.
-    $ref: "/schemas/types.yaml#/definitions/uint32"
+    $ref: /schemas/types.yaml#/definitions/uint32
 
   wlf,micd-pol-gpio:
     description:
@@ -63,7 +63,7 @@ properties:
     description:
       Time allowed for MICBIAS to startup prior to performing microphone
       detection, specified as per the ARIZONA_MICD_TIME_XXX defines.
-    $ref: "/schemas/types.yaml#/definitions/uint32"
+    $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
     maximum: 12
 
@@ -71,7 +71,7 @@ properties:
     description:
       Delay between successive microphone detection measurements, specified
       as per the ARIZONA_MICD_TIME_XXX defines.
-    $ref: "/schemas/types.yaml#/definitions/uint32"
+    $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
     maximum: 12
 
@@ -79,7 +79,7 @@ properties:
     description:
       Microphone detection hardware debounces specified as the number of
       measurements to take.
-    $ref: "/schemas/types.yaml#/definitions/uint32"
+    $ref: /schemas/types.yaml#/definitions/uint32
     enum: [2, 4]
 
   wlf,micd-timeout-ms:
@@ -97,7 +97,7 @@ properties:
       CTIA / OMTP headsets), the field can be of variable length but
       should always be a multiple of 3 cells long, each three cell group
       represents one polarity configuration.
-    $ref: "/schemas/types.yaml#/definitions/uint32-matrix"
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
     items:
       items:
         - description:
@@ -119,7 +119,7 @@ properties:
     description:
       Settings for the general purpose switch, set as one of the
       ARIZONA_GPSW_XXX defines.
-    $ref: "/schemas/types.yaml#/definitions/uint32"
+    $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
     maximum: 3
 
-- 
2.34.1

