Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89D86455BD0
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 13:49:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344880AbhKRMwM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 07:52:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344836AbhKRMvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 07:51:35 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09D2FC06120C
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 04:48:27 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id r8so11311410wra.7
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 04:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IdJJhrRpftq1m7Kk3EVMrUIrSaR2a6rKnBgshEFLV04=;
        b=z5m6uA03cNGQW2msDM61TPa4HNGsgKCe/IGworjgFDjkyikan4WivxJy/8Kyzsj33R
         gThj7mJFM5zA7KUa5CgA2F7s2EC0L3sHbBUi9EWUxA3Xw+4f081UGE1OZjpZLfzhbfCY
         btjSo0gIA2VE/4Xb2BDkVZuob9cIZryLOTBJwlhQpRSLWbuN+weFkEc6fc2bKuyZY5pF
         kDggsSbJfYDfCoxE997S/NDBoM2iqVC8lQ3/IqQhAJICOB0Oyot+ujHfc+Qn56y2Ce+4
         Y3Y99WU5aeFaDLu2x9h/gPpGeCsKfRRQDEbhnw0XUIDPcuxl9t4ZRnCQwv+vIuWwGF+d
         U30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IdJJhrRpftq1m7Kk3EVMrUIrSaR2a6rKnBgshEFLV04=;
        b=hy8vM0r5mjNJq4Ac9SwKXK7FVqUcMfCtrUtH0F8jWRE0L2yO7W4TiyU/HHQeKtcvaN
         fzYVfNQx45f1EmWAd8UnhjXffhhm2QqfpT6hGGh/AqIW3rz9hyC3C7fI2IBprK36eE8z
         oh9ZF7O6UwwOyXsA6ePdtp4NgstyS+aJM+8/92hlLT951nXqcMKxIXn9hZgAE1PlVF19
         1ylRNFHTteLuDnTf1+VHm85zlxCFnLLX5TL1cg7EmBvWsIOUhjkat2EyXvkugXbddqwy
         s5dYuF62+gQ0+qli3vXU0ZIXwTlCfBlhvdzasqns4djIyVnbBevthpzdB8eiGLxXO6zG
         U/9A==
X-Gm-Message-State: AOAM531gEHmkukQcRTXgeywNnyw9iTW/Dmf1qiWqfksv/Y7OJORN8/0V
        KnB6n2of1O02butw8IOm21cRoA==
X-Google-Smtp-Source: ABdhPJxuHQBl5svDT34j751LWMJqy8Vgr4w6aPk8zBkra5UKlTq6u3ZPcnlyV+xoj0l/Jtkcq2bfxQ==
X-Received: by 2002:adf:a194:: with SMTP id u20mr30165396wru.153.1637239705530;
        Thu, 18 Nov 2021 04:48:25 -0800 (PST)
Received: from xps7590.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id h2sm2955635wrz.23.2021.11.18.04.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 04:48:25 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v3 2/4] media: dt-bindings: media: camss: Remove clock-lane property
Date:   Thu, 18 Nov 2021 13:48:17 +0100
Message-Id: <20211118124819.1902427-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211118124819.1902427-1-robert.foss@linaro.org>
References: <20211118124819.1902427-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The clock-lanes property is not programmable by the hardware,
and as such it should not be exposed in the dt-binding.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 .../bindings/media/qcom,msm8916-camss.yaml    | 10 ----------
 .../bindings/media/qcom,msm8996-camss.yaml    | 20 -------------------
 .../bindings/media/qcom,sdm660-camss.yaml     | 20 -------------------
 .../bindings/media/qcom,sdm845-camss.yaml     | 17 ----------------
 4 files changed, 67 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
index 304908072d72..12ec3e1ea869 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
@@ -83,10 +83,6 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 1
-
               data-lanes:
                 description:
                   An array of physical data lanes indexes.
@@ -99,7 +95,6 @@ properties:
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@1:
@@ -114,16 +109,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 1
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
   reg:
diff --git a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
index 38be41e932f0..6aeb3d6d02d5 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
@@ -105,10 +105,6 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 description:
                   An array of physical data lanes indexes.
@@ -121,7 +117,6 @@ properties:
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@1:
@@ -136,16 +131,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@2:
@@ -160,16 +150,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@3:
@@ -184,16 +169,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
   reg:
diff --git a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
index 841a1aafdd13..338ab28d5f3b 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
@@ -111,16 +111,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@1:
@@ -135,16 +130,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@2:
@@ -159,16 +149,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@3:
@@ -183,16 +168,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
   reg:
diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
index 9ca5dfa7f226..9404d6b9db54 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
@@ -105,15 +105,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                maxItems: 1
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@1:
@@ -128,16 +124,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                items:
-                  - const: 7
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@2:
@@ -152,15 +143,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                maxItems: 1
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@3:
@@ -175,15 +162,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                maxItems: 1
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
   reg:
-- 
2.32.0

