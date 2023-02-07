Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C63268E124
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 20:29:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbjBGT3B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 14:29:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjBGT3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 14:29:00 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7908334032
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 11:28:59 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so10818735wms.0
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 11:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U8Ap/R9bBCRwfbHGCfaOdQ/oi2hB1pqW05c0juFinY0=;
        b=vIkCoxnEwrDeI35wrzj+TX7KKyYN4lId+J+knK7tvaXmNVu51KlchE3CIKk8jqJ87j
         m6WF9XxXVGbT4qtTtlA0AMoH9z6CTaDulTx+iyEOznZMsylwv5gx8aNhG7a5ry3mJGc0
         eAms2XPNv/3AzP9UzZlTHdDtJqAHSD0t8tsdqyH1RED455qvRWOd3LWWgGh8nHa10WfT
         ma5E1TnNN9+7C3vB9dg7B/eVLM4HQ2TFV3tl7JHF37T9GYcqs84Hh8rFoT+3EkrMT/Gk
         jGxF4LEc//YbaYLAGCGiB3ZM/8003BAGj/gVBPwOxPhHlW4sksXP44L89Aj6aonntgJ5
         5e5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U8Ap/R9bBCRwfbHGCfaOdQ/oi2hB1pqW05c0juFinY0=;
        b=OVBwQ+v/aQFqEv5rSbCKOEfs7sNSvrKXP8FU/YsQ02BLbG0AC3ygI+cYdpTiQn2gJ3
         YWCgHCOoWaT7nnR8ctvexJzPaB3POfqTOekgO9cUxiROPP3T0GyjTLdUooW6/wRmxn4T
         9rE2WcGHg3WeuhaTYKrTTRWx83RdqF0KlZNYSd+Lg6PlDg8rE8bch1/CQbrFnkd8PISQ
         gRCOojkrXAExBFbjlutybC4uTgXm6T7McI/uQEgUFbO1kgqUYlJEr5oJkm/pSXlO6SCG
         vLYeIbaeOfFzqXvbS1Qs9xa+oADRNvA1YSsuwpDtXLfhlfWagEoI4HOATT262hzQIZwb
         ms7A==
X-Gm-Message-State: AO0yUKV+kp6P6uGNpqOnwxd2uGHN5VotfxnAWKURPTlgL4pCfQZAWp2t
        5z106jVjys5bioeyoWzne1gZmQ==
X-Google-Smtp-Source: AK7set9k6ax9+8EqWLt6+WaYYhjredgB03dqiFMzkGrpCA7+tKGHv3HYgWBH0mSw6TVrdK7kotJ+DQ==
X-Received: by 2002:a05:600c:a292:b0:3df:eb5d:fbf with SMTP id hu18-20020a05600ca29200b003dfeb5d0fbfmr4158930wmb.38.1675798138113;
        Tue, 07 Feb 2023 11:28:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j33-20020a05600c1c2100b003db0ad636d1sm22770818wms.28.2023.02.07.11.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 11:28:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: soc: samsung: exynos-pmu: allow phys as child on Exynos3 and Exynos4
Date:   Tue,  7 Feb 2023 20:28:49 +0100
Message-Id: <20230207192851.549242-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Just like on Exynos5250, Exynos5420 and Exynos5433 the MIPI phy is
actually part of the Power Management Unit system controller thus allow
it as PMU's child.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/samsung/exynos-pmu.yaml      | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index f7c141dd11ec..5d8d9497f18e 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -48,6 +48,9 @@ properties:
           - const: syscon
       - items:
           - enum:
+              - samsung,exynos3250-pmu
+              - samsung,exynos4210-pmu
+              - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5420-pmu
               - samsung,exynos5433-pmu
@@ -138,18 +141,34 @@ allOf:
         compatible:
           contains:
             enum:
+              - samsung,exynos3250-pmu
+              - samsung,exynos4210-pmu
+              - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5420-pmu
               - samsung,exynos5433-pmu
     then:
       properties:
-        dp-phy: true
         mipi-phy: true
     else:
       properties:
-        dp-phy: false
         mipi-phy: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos5250-pmu
+              - samsung,exynos5420-pmu
+              - samsung,exynos5433-pmu
+    then:
+      properties:
+        dp-phy: true
+    else:
+      properties:
+        dp-phy: false
+
 examples:
   - |
     #include <dt-bindings/clock/exynos5250.h>
-- 
2.34.1

