Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDAB16B709B
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 08:58:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbjCMH6E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 03:58:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbjCMH4n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 03:56:43 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BA931F4AC
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:55:05 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id cn21so14736673edb.0
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678694094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6QzRJBCNcVjpu9L/kbF+2hC2cCPihdtDKgQqCKfLkPA=;
        b=nFUMm3+saovTQ1UzAzL/iA+LOG4XC9kJ47NHuQy1wsJnT7iQm9nR8YilPqWk/zAC6I
         HwVkkwvKR1REMy/iEXr8fyRAsG1DQzAzRA0EmKoFK2M4VTm2YvaTJHt16wHdZFrik0/H
         kp9gqK45tYjfCO4cJbL63NN5S5MQXsGybQGETqd0k124i1Vfb7eFhZ9DXJ90evkns9rv
         u8a8T6vfEC0GzwVQmo2KgaDdbfADZLLUgHaA4u3ViJy9WRrG7Jvi4m7jkJjp1b4BZDDg
         HjRwxT80oGlHsc4/funzhGpB0cnT/4+5gZ+mXh0YLFK5padc5KEyAXAhWhP5ZLWez0GB
         Ny+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678694094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6QzRJBCNcVjpu9L/kbF+2hC2cCPihdtDKgQqCKfLkPA=;
        b=RtGUL5iq+PD5HHp3iMlQDgfYilD6bbfBeEdwHQxPzMUH5wlvbK2xM5stWUesMn/tAD
         APA0wlNB1r6n9OFwH8orRrMkskSZ9UF5sspNna5o2tn4htjLy+EkEqV/HuSr7UD4UP2/
         CEsmX/0eQGR+gsXFxl3CDGqjYCOpnSuyxDhX+8Hj3gmFRjPZHGNtcNdYBsUXV54iOKbE
         9HGu3DRSDeUWHGk1luETSN+Hp4Iy0t/sac2ImFHQf5JTwsIjmauICK/Lyicjg4CzR5BG
         jDQBb8h2ANmLrSzWxeAbpcuoe7+TN86QEabEfayorgLg2JM8Hpt5H/FJfmIdkxkjrN0Q
         ALBA==
X-Gm-Message-State: AO0yUKXo2bIr4V/C+MADPjMwlIMbY5a2kYHIbb+DN349J4bB7n3HM0iu
        X4zF/YgXGS1vCRlXeUWtAI+h8Q==
X-Google-Smtp-Source: AK7set8cRcXMnmvhvHT0XXeQqMzCqteinH3ZxiUisYdDl6d5j6xi/tv2WYv/4s06+3cHGf6i2jCDWg==
X-Received: by 2002:aa7:cd7b:0:b0:49e:4786:a0e2 with SMTP id ca27-20020aa7cd7b000000b0049e4786a0e2mr10938908edb.14.1678694094396;
        Mon, 13 Mar 2023 00:54:54 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:f052:f15:3f90:fcb3])
        by smtp.gmail.com with ESMTPSA id g7-20020a1709061c8700b008b980c3e013sm3146943ejh.179.2023.03.13.00.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 00:54:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 4/9] ASoC: dt-bindings: qcom,lpass-tx-macro: narrow clocks per variants
Date:   Mon, 13 Mar 2023 08:54:40 +0100
Message-Id: <20230313075445.17160-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230313075445.17160-1-krzysztof.kozlowski@linaro.org>
References: <20230313075445.17160-1-krzysztof.kozlowski@linaro.org>
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

Currently the Qualcomm TX macro codec binding allows two different clock
setups - with (for ADSP) and without macro/dcodec entries (for ADSP
bypassed).  With more devices coming soon, this will keep growing, thus
rework the clocks/clock-names to be specific for each binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,lpass-tx-macro.yaml   | 63 ++++++++++++++-----
 1 file changed, 46 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
index da5f70910da5..559da2509d8d 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
@@ -9,9 +9,6 @@ title: LPASS(Low Power Audio Subsystem) TX Macro audio codec
 maintainers:
   - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
 
-allOf:
-  - $ref: dai-common.yaml#
-
 properties:
   compatible:
     enum:
@@ -30,22 +27,12 @@ properties:
     const: 0
 
   clocks:
-    oneOf:
-      - maxItems: 3
-      - maxItems: 5
+    minItems: 3
+    maxItems: 5
 
   clock-names:
-    oneOf:
-      - items:   #for ADSP based platforms
-          - const: mclk
-          - const: npl
-          - const: macro
-          - const: dcodec
-          - const: fsgen
-      - items:   #for ADSP bypass based platforms
-          - const: mclk
-          - const: npl
-          - const: fsgen
+    minItems: 3
+    maxItems: 5
 
   clock-output-names:
     maxItems: 1
@@ -67,6 +54,48 @@ required:
   - reg
   - "#sound-dai-cells"
 
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc7280-lpass-tx-macro
+    then:
+      properties:
+        clock-names:
+          oneOf:
+            - items:   #for ADSP based platforms
+                - const: mclk
+                - const: npl
+                - const: macro
+                - const: dcodec
+                - const: fsgen
+            - items:   #for ADSP bypass based platforms
+                - const: mclk
+                - const: npl
+                - const: fsgen
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc8280xp-lpass-tx-macro
+            - qcom,sm8250-lpass-tx-macro
+            - qcom,sm8450-lpass-tx-macro
+    then:
+      properties:
+        clocks:
+          minItems: 5
+          maxItems: 5
+        clock-names:
+          items:
+            - const: mclk
+            - const: npl
+            - const: macro
+            - const: dcodec
+            - const: fsgen
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1

