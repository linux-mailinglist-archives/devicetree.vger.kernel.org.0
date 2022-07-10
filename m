Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF33656CDEE
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 10:41:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbiGJIlr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 04:41:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbiGJIlq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 04:41:46 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60F9D18E1E
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 01:41:45 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id e12so4237349lfr.6
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 01:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N4gY91CPZ/PGGuxbinA0CxZ2MaeVa3+8PjzZmiOKRO8=;
        b=jYr6pCfUPS/qJhudBzz24iWmIWajwKLSIUSXcwgZoSAgfH3r89LPoQ3BwV4cMMyBYj
         3rh2nBvU7quqA+uvde8cqW54OV9G3ZjbXeVkwGoPCsAN80wX7DwZcE5XCb5oR08KJhxx
         wEI6TLGhZr+VghQ4UzcTizoOH4JIdRLq69gJm52Mqbxlz36nwklgM32iDeWHsElcYEqR
         17ceEjhAPVcwlMMyvluN6OqWx8ga7An6zrYNsgQb6SrX5LyMpwjWJTu5dtpXKprRwZi0
         Ne0iYsKkitKHCaMf7nyjC8h8/iyDLCE1hYKLfmOPoZyLnffxrinIzPB8X147915GZ5dE
         93HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N4gY91CPZ/PGGuxbinA0CxZ2MaeVa3+8PjzZmiOKRO8=;
        b=Iwhwi+qWOE3z18hceKiZyQk3ZxrVJNbqeN9Buaqoyia/nHUCviVhtu9f0ESRnkUbkH
         N1aCyKZPqOlbLSLAFvU1jsmlYsIX7ez1X7dXieleulprSnXAwnVdcV55ZLvuuGTx4DZr
         NAH/GaSUDPDjXRwgC1tmjfnXD/26BTr9AtvHNqJM9zwvQBWgoj4c+qaJspnrCDbmUrVt
         qzj3l9dOyL1kNBtfpJ7GxYbzE/lcj2i5xq5kUJbrwWZGVpIVHg2JJO638IFaL4o/qmn+
         lYqyOQJ1ZGwltNmI7pMk3b2WeNd9KqxgXibPGu4ZEA5VXwHSzaqgo48HzzY6xiX3Z7Fp
         qsOw==
X-Gm-Message-State: AJIora9Dti/8sX9GjNYss26OabxdAmjVdcQ6G/Ku2rN9hvSYHskAivlM
        uCHpGDZcyeLL3WwkACJ6gp/IGA==
X-Google-Smtp-Source: AGRyM1vKaySEQME7bXBJfZqWkklO83eim1cErMgSEEh2MVcu134scwwIFDyR7zNIYHpefhUh8tmmnQ==
X-Received: by 2002:a05:6512:398b:b0:489:d94b:f56 with SMTP id j11-20020a056512398b00b00489d94b0f56mr1468043lfu.199.1657442504882;
        Sun, 10 Jul 2022 01:41:44 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i21-20020a2ea235000000b0025d4addbad4sm912536ljm.91.2022.07.10.01.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 01:41:44 -0700 (PDT)
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
        freedreno@lists.freedesktop.org,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Subject: [PATCH v2 9/9] dt-bindings: msm/dp: handle DP vs eDP difference
Date:   Sun, 10 Jul 2022 11:41:33 +0300
Message-Id: <20220710084133.30976-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
References: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
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

The #sound-dai-cells property should be used only for DP controllers. It
doesn't make sense for eDP, there is no support for audio output. The
aux-bus should not be used for DP controllers. Also p1 MMIO region
should be used only for DP controllers.

Take care of these differences.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dp-controller.yaml   | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 52cbf00df0ba..f2515af8256f 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -24,6 +24,7 @@ properties:
       - qcom,sm8350-dp
 
   reg:
+    minItems: 4
     items:
       - description: ahb register block
       - description: aux register block
@@ -112,10 +113,33 @@ required:
   - clock-names
   - phys
   - phy-names
-  - "#sound-dai-cells"
   - power-domains
   - ports
 
+allOf:
+  # AUX BUS does not exist on DP controllers
+  # Audio output also is present only on DP output
+  # p1 regions is present on DP, but not on eDP
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7280-edp
+              - qcom,sc8180x-edp
+    then:
+      properties:
+        "#sound-dai-cells": false
+        reg:
+          maxItems: 4
+    else:
+      properties:
+        aux-bus: false
+        reg:
+          minItems: 5
+      required:
+        - "#sound-dai-cells"
+
 additionalProperties: false
 
 examples:
-- 
2.35.1

