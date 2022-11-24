Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBB3D636F1A
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 01:48:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiKXAsM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 19:48:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbiKXAsL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 19:48:11 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21C4D5B588
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:10 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id s5so268753wru.1
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/YqFsCNd8V96p96cud6oZMWsfVuJcreEZFfPj0HqVbw=;
        b=xMBXYU38t32UYo4DEytJ7SDlr9isxVTNC/StEbrUqUds8m4VtfdTF7NWRnksseznw3
         2XfA62w25Fmvfx+AjnhVb/cP3U+lJT/eMgsPf3bnBex5luUWI3oHA0v57W0YetlaVpSf
         r/6yM/JtIYKwzfflrIHST96qs24ZehT0IYXHRLdpOLe7g0QyEiZvtJIwjWJwP4K76vsR
         tzaAFvCPSdrPvjuCnBC0FuGxR9P23zNEjYS8GEdZrXOWecJVMpTL9KzDli5PyYn9c8TX
         Ew/ncvR0GognsFXz+sBd/kopQC03CM6u34wQ+o/JhWvuTnhHl0sKs5SUgt5VvrIh+bwa
         5wew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/YqFsCNd8V96p96cud6oZMWsfVuJcreEZFfPj0HqVbw=;
        b=eI2zhWjOWfz6P1NCXGyxM7EuogSkF+Bvp6BzZ/3c7bbJxoGYm9YKR0uePxyhAJ5QXq
         RNDNZjNvbrB8LNX156yvm5zbgKhukzMexlpSU8bHt+kH8F/Wk6Q2l0NPeeNP5Q3h8yHJ
         8PB2ooRY47Kwdh86BrCm7uWGMY+R5GGGxSZsl270xx3uCH0QrPYjhaLOhiyTy8jt3lkT
         glPYJBr/UQO+HukPlW/gbnEE8AlauKmDN7HJPcNSxFwcLqTYuC24TBcy0oXnkRa1I6ap
         3EEZKxxe5Hl4idfvMnqaDqq2vDg6gRphl3wG4dH5zhnJ8MpoEerAIZk/7xZIittOpvy/
         r9JA==
X-Gm-Message-State: ANoB5pkLRLHo6GPj3fQCTmZdczLKboH05HzI5NucGhSB9DD1sKN3rI1C
        7y6zQOIDToYcP+0w+UMcm+i/Tg==
X-Google-Smtp-Source: AA0mqf6WWL2LYDxTty4vRg5odd8bZG3WAEtfDj96WGeH3PlNMMqZCZn8rlo8v6fysiVONNqC5+LqGA==
X-Received: by 2002:adf:f408:0:b0:236:62c9:afa3 with SMTP id g8-20020adff408000000b0023662c9afa3mr18219077wro.467.1669250889721;
        Wed, 23 Nov 2022 16:48:09 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n38-20020a05600c3ba600b003c6bbe910fdsm5245076wms.9.2022.11.23.16.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 16:48:09 -0800 (PST)
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
Subject: [PATCH v3 04/18] dt-bindings: msm: dsi-controller-main: Add compatible strings for every current SoC
Date:   Thu, 24 Nov 2022 00:47:47 +0000
Message-Id: <20221124004801.361232-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
References: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
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

Currently we do not differentiate between the various users of the
qcom,mdss-dsi-ctrl. The driver is flexible enough to operate from one
compatible string but, the hardware does have some significant differences
in the number of clocks.

To facilitate documenting the clocks add the following compatible strings

- qcom,apq8064-dsi-ctrl
- qcom,msm8916-dsi-ctrl
- qcom,msm8974-dsi-ctrl
- qcom,msm8996-dsi-ctrl
- qcom,sc7180-dsi-ctrl
- qcom,sc7280-dsi-ctrl
- qcom,sdm630-dsi-ctrl
- qcom,sdm660-dsi-ctrl
- qcom,sdm845-dsi-ctrl
- qcom,sm8250-dsi-ctrl

Each SoC dtsi should declare "qcom,socname-dsi-ctrl", "qcom,mdss-dsi-ctrl";

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../display/msm/dsi-controller-main.yaml        | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 67d08dc338925..c4da7179999d2 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -14,9 +14,20 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - qcom,mdss-dsi-ctrl
-      - qcom,qcm2290-dsi-ctrl
+    items:
+      - enum:
+          - qcom,apq8064-dsi-ctrl
+          - qcom,msm8916-dsi-ctrl
+          - qcom,msm8974-dsi-ctrl
+          - qcom,msm8996-dsi-ctrl
+          - qcom,qcm2290-dsi-ctrl
+          - qcom,sc7180-dsi-ctrl
+          - qcom,sc7280-dsi-ctrl
+          - qcom,sdm630-dsi-ctrl
+          - qcom,sdm660-dsi-ctrl
+          - qcom,sdm845-dsi-ctrl
+          - qcom,sm8250-dsi-ctrl
+      - const: qcom,mdss-dsi-ctrl
 
   reg:
     maxItems: 1
-- 
2.38.1

