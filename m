Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E543B6B7091
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 08:57:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230215AbjCMH5T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 03:57:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230045AbjCMH4e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 03:56:34 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE6A712BDA
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:54:55 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id h8so1148738ede.8
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678694091;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BbnW+HQXXMov2YCkKGIA3Ip1jgaMjvv36rVivoZ/sxY=;
        b=PZJTlA13gQWFQFIrQIYA9l4hTDVIPGJzn7hnQUc6ArNl6Jh85UndmLYxMGd06xQnKC
         Dl/vQKHIjeTJc9i3UAV661s6QUgZ2dtyH0KjxxxOEpAbKaK0vlpJpfmxqCFxFUjaO0cl
         tKZoSkW4jcECGIRosDo9sc5bjUqXy4/Ou/vcYd7dRbLOrrf+ljTR42qxbPTWxOrVs3Nx
         +AWqyiWKadxq1taPKevOKDueaps4JoYjLCg46IWa9ZQxN455HqIKgp5eqlOrFunrGA/B
         UuFnS1/jBxO9hzW+uPmxt2d5spffpWoWCLM2wFt7taAdDsT4VzdXeGzriQZLM0malsm9
         566w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678694091;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BbnW+HQXXMov2YCkKGIA3Ip1jgaMjvv36rVivoZ/sxY=;
        b=Ti6DWfMRd+RcRhPuULHo9I+1GTIZqruBbjkUhVFyuUAjbRfsN4UXTmJ2d0LB+5dMma
         Wjef4zAMPtF9MH3h/TskGQh5mVfrZPjwyHPlnLI3Cq7W62F+8OSuJPaZWLFclK5RIZ/n
         vADee0FvJupNL0P7D+3XoOg1uLE0RaoIP9mKsE3MECZfvZpk8M+kpSztMH3vESZ3nD7P
         yo0jEUld1eEB8AJk+rKC1rablfRxmm1lM1SX5hAcK7FIT/GKYpXV5Ns6/a4m4OPSO+lp
         YVr/dD57/rrGKLqJW4Oq7jpLO5sUM4wRY5mvADZDkwpXshk+ATSvXGJL2htK6EcB/MyO
         43MQ==
X-Gm-Message-State: AO0yUKUd58jrIcUkDYWZ3f5b1ib86mdEsFgmEmj/Fz/0+/5UWuyVRgVE
        M53Q72j8YF0p+/O51r3PoCxY8A==
X-Google-Smtp-Source: AK7set+XOjPCtML5HmxF40axQsuv+8HUsC4sRrOwjJpKSU+H/Ylhp1qLJyift7RrPLPstpEjzVTcUg==
X-Received: by 2002:a17:907:1c1f:b0:884:930:b014 with SMTP id nc31-20020a1709071c1f00b008840930b014mr42208755ejc.6.1678694091073;
        Mon, 13 Mar 2023 00:54:51 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:f052:f15:3f90:fcb3])
        by smtp.gmail.com with ESMTPSA id g7-20020a1709061c8700b008b980c3e013sm3146943ejh.179.2023.03.13.00.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 00:54:50 -0700 (PDT)
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
Subject: [PATCH v2 1/9] ASoC: dt-bindings: qcom,lpass-rx-macro: narrow clocks per variants
Date:   Mon, 13 Mar 2023 08:54:37 +0100
Message-Id: <20230313075445.17160-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Currently the Qualcomm RX macro codec binding allows two different clock
setups - with (for ADSP) and without macro/dcodec entries (for ADSP
bypassed).  With more devices coming soon, this will keep growing, thus
rework the clocks/clock-names to be specific for each binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,lpass-rx-macro.yaml   | 58 ++++++++++++++-----
 1 file changed, 44 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index b0b95689d78b..8b3d617a9578 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -9,9 +9,6 @@ title: LPASS(Low Power Audio Subsystem) RX Macro audio codec
 maintainers:
   - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
 
-allOf:
-  - $ref: dai-common.yaml#
-
 properties:
   compatible:
     enum:
@@ -34,17 +31,8 @@ properties:
     maxItems: 5
 
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
@@ -62,6 +50,48 @@ required:
   - reg
   - "#sound-dai-cells"
 
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc7280-lpass-rx-macro
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
+            - qcom,sc8280xp-lpass-rx-macro
+            - qcom,sm8250-lpass-rx-macro
+            - qcom,sm8450-lpass-rx-macro
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

