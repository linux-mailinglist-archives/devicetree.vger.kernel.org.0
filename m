Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7938856ADA2
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 23:32:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236681AbiGGVcU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 17:32:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236418AbiGGVcR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 17:32:17 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EC234D157
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 14:32:12 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id bx13so23827856ljb.1
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 14:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=deR1nxfWNzf3dpwLPDYkcufOtw07ZRiv7QMZfcD7n5Q=;
        b=aCvAysEOZv/lB2z2SXSndq3Rm/9OxE9vikZvWZXDkgaVHdKCRluxhSy/OrPtjbibpc
         gAETvrlfJtC+eM3bFRzoOZcxo9CP96APqbcPOHsLXe8VGWmOmMwxaqp24dCYthWZYRie
         RvSb3ak/GBBOEW6JTFEYqQXWF9/kfkg8yiH5MmJU5JXq+yZrOCz4L9K882Od2aewaAo/
         yRhbSbESWtTkkObDlbVapdi8EjKTqx0GY+ors3TxuhMo8X/ocsp+EQ7zIzJg4vPdpANI
         A2Mrp8FdxxEvrE78B3hEhmmBD+EKIXxxa6JNtXUDtVEwXE6XTWPhPzwWJVWlosA4qrIo
         FDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=deR1nxfWNzf3dpwLPDYkcufOtw07ZRiv7QMZfcD7n5Q=;
        b=kSiIMs1KhCj7jRLI9iZfzsulq1SLqIRObJLfIvwPKV3W83+0XyUFH/2OfJrOacSXrZ
         8wCea9KQ0iVN0Bwj4ccKb2C2rHZ4etMJwNtKgvX+0MV/rPfgJeUhms+7YML9x9lCEtSs
         0qQoLhLZp1WdE7rOvwfowLSbeJs8GBmcLx3jG5ksnUvYQERuxUSwFLWZs+9bIEJVvAnd
         7/iq0xZv9T7C1y4Mp+qe56XE+0BS5hv4DycqP4M9K+HAEg++Ai7kiHhwGaYjPCp355cE
         QOZJL7KTHvjyei15wWkZ41LHA+w3zOJTz+Pj7QSbWBLnJyKRhuo9KT0Lik6cY6oRV00p
         e8og==
X-Gm-Message-State: AJIora8UMx8dA3SdMNzGh6vM9iAvIRPn1uyOtyHGfeFf+8LydZKKL7WU
        tNVcD6UJfDKNhPT8jcgl3FRCdA==
X-Google-Smtp-Source: AGRyM1syma+AzNNuFCY/QL5hX+OuBGxgZPtBeQejNm2Im/56/APYMORKQOJbo+AE8PAWbCqVxfie8A==
X-Received: by 2002:a05:651c:545:b0:25b:c791:816c with SMTP id q5-20020a05651c054500b0025bc791816cmr12841ljp.161.1657229530435;
        Thu, 07 Jul 2022 14:32:10 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o19-20020ac24e93000000b0047f8cb94004sm7046709lfr.35.2022.07.07.14.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 14:32:09 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 5/9] dt-bindings: msm/dp: account for clocks specific for qcom,sc7280-edp
Date:   Fri,  8 Jul 2022 00:32:00 +0300
Message-Id: <20220707213204.2605816-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org>
References: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On SC7280 platform the eDP controller uses an extended amount of clocks.
Since it is the only known platform using such configuration, use
if-then-else rather than listing each and every compatible string in the
if conditions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dp-controller.yaml   | 60 +++++++++++++++----
 1 file changed, 48 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index f00eae66196f..1ef845005b14 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -38,20 +38,12 @@ properties:
     maxItems: 1
 
   clocks:
-    items:
-      - description: AHB clock to enable register access
-      - description: Display Port AUX clock
-      - description: Display Port Link clock
-      - description: Link interface clock between DP and PHY
-      - description: Display Port Pixel clock
+    minItems: 5
+    maxItems: 7
 
   clock-names:
-    items:
-      - const: core_iface
-      - const: core_aux
-      - const: ctrl_link
-      - const: ctrl_link_iface
-      - const: stream_pixel
+    minItems: 5
+    maxItems: 7
 
   assigned-clocks:
     items:
@@ -119,6 +111,50 @@ required:
   - power-domains
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7280-edp
+    then:
+      properties:
+        clocks:
+          items:
+            - description: XO clock
+            - description: eDP reference clock
+            - description: AHB clock to enable register access
+            - description: Display Port AUX clock
+            - description: Display Port Link clock
+            - description: Link interface clock between DP and PHY
+            - description: Display Port Pixel clock
+        clock-names:
+          items:
+            - const: core_xo
+            - const: core_ref
+            - const: core_iface
+            - const: core_aux
+            - const: ctrl_link
+            - const: ctrl_link_iface
+            - const: stream_pixel
+    else:
+      properties:
+        clocks:
+          items:
+            - description: AHB clock to enable register access
+            - description: Display Port AUX clock
+            - description: Display Port Link clock
+            - description: Link interface clock between DP and PHY
+            - description: Display Port Pixel clock
+        clock-names:
+          items:
+            - const: core_iface
+            - const: core_aux
+            - const: ctrl_link
+            - const: ctrl_link_iface
+            - const: stream_pixel
+
 additionalProperties: false
 
 examples:
-- 
2.35.1

