Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD4546B70A6
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 08:58:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbjCMH6H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 03:58:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230250AbjCMH4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 03:56:50 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D6EF26BF
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:55:14 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id da10so45015619edb.3
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678694099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xZM2NPsZ49ia+Dqe6wkMeZpgWpRvBEKr1bmuDVGwMmU=;
        b=PuuKK426W4imrwcVdY2+9oec5UOV7dMbuPit+w09Q5znpU3IvnzN31Md9Jt84L3yRS
         qHPHUvh3ZoTJBYGGv6FbQlLSOjRFXfkXVO5SltxbeVBxlIV9Y2+en8X9iLuW7cYkbt/J
         CZY0anSrcerNb0evrSZ5m2L2jdiAm/CwWnJP8GYxPDHtvO5ypw5+xtUyxPx9tJzEg04+
         2p0HKI4GlxvIrgPOlXonZyBsWvcneKOEIuEdIXkzI6EUUNzmfld0SolHsLCLG7gNa/xc
         /o/4fUs4R9PplJSeh2FROUvJMN8N5Xh7jQz+IBD1hfNvK7pFFKabTx1pJzrLs70M31UH
         dY0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678694099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xZM2NPsZ49ia+Dqe6wkMeZpgWpRvBEKr1bmuDVGwMmU=;
        b=p8YKX0ayVquqY2TRzaT3YyJMxzpMMNqaGf9p11Kx4dgCimTozcpNyJ+CyIW0HvVsUm
         Di9EgLKiQcoU5sNPJqCfHNBRiONoaThKg9KdoLf3b6DctCIg8lk9VDjcguz7LI4vYO4G
         arFGB3UeLKQwxJ78kygGOY+yjpTiZZcYE4jY9hWKUi3dH1Fdr0EY9MvJehIBjtNaTk8E
         WpOOQCz3NIZq87S1POewG43uT1o4q7rFHS/p/dS161xmO3DGdLhdOBaFkYEW0eNGhVLu
         HM3fGzaD4y/5gtn1PjnaBx0DD69HjCoBCwVE6VAT3xaUTknEOA5fADH8gYjW6JcsQnEp
         F9pg==
X-Gm-Message-State: AO0yUKXb+NZ3EqDlWxEnj5Rj4tyKkPJJMIicnuOOZzUIM+gjfJVnR7lu
        oBxAJ+zLcd1gGKwrrtgN3WLCCw==
X-Google-Smtp-Source: AK7set/ICSE0O0CNa7vtYNTO3uo0GeeelaS/IRUydnhV6hPEiui9VXdhuM6fAUeREn+KKFTmps6wvg==
X-Received: by 2002:a17:907:1b1b:b0:92a:abe7:a9fe with SMTP id mp27-20020a1709071b1b00b0092aabe7a9femr1671996ejc.74.1678694099110;
        Mon, 13 Mar 2023 00:54:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:f052:f15:3f90:fcb3])
        by smtp.gmail.com with ESMTPSA id g7-20020a1709061c8700b008b980c3e013sm3146943ejh.179.2023.03.13.00.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 00:54:58 -0700 (PDT)
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
Subject: [PATCH v2 8/9] ASoC: dt-bindings: qcom,lpass-wsa-macro: Add SM8550 WSA macro
Date:   Mon, 13 Mar 2023 08:54:44 +0100
Message-Id: <20230313075445.17160-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230313075445.17160-1-krzysztof.kozlowski@linaro.org>
References: <20230313075445.17160-1-krzysztof.kozlowski@linaro.org>
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

Add the WSA macro codec on Qualcomm SM8550, which comes without NPL clock
exposed.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,lpass-wsa-macro.yaml  | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
index 66cbb1f5e31a..eea7609d1b33 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
@@ -15,6 +15,7 @@ properties:
       - qcom,sc7280-lpass-wsa-macro
       - qcom,sm8250-lpass-wsa-macro
       - qcom,sm8450-lpass-wsa-macro
+      - qcom,sm8550-lpass-wsa-macro
       - qcom,sc8280xp-lpass-wsa-macro
 
   reg:
@@ -27,11 +28,11 @@ properties:
     const: 0
 
   clocks:
-    minItems: 5
+    minItems: 4
     maxItems: 6
 
   clock-names:
-    minItems: 5
+    minItems: 4
     maxItems: 6
 
   clock-output-names:
@@ -62,6 +63,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 5
           maxItems: 5
         clock-names:
           items:
@@ -89,6 +91,23 @@ allOf:
             - const: va
             - const: fsgen
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8550-lpass-wsa-macro
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec
+            - const: fsgen
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1

