Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3D1F661E3E
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 06:14:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234243AbjAIFOM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 00:14:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234261AbjAIFOI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 00:14:08 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19BD7BF46
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 21:14:06 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id bu8so11280342lfb.4
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 21:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6j3S7ZfZt79laxcOO2PFYBLa/Z6A+qmxeC1KDED7sL8=;
        b=oSyQG4xjghAFe5BeNAxkXrPHviyt2PqKW+Ydrulyja+wQRiM4a2yljXPu1wpgeZNI2
         JNbmB7OxB6v9P1zX4ugqS249veH4ZksCgaWuaUX8O3vlyceDaziXumO3QZCPeUGukCqh
         LYjCQSZ8exPZaLvWl0KThLL38DK9mOEZSp0BHYiV/ksdUcPX1Xb59anr+34U82kNMOSj
         37wfYHpHeLcmyQH0w7uq3zx3UU4XHbNefRv4BwV7meqaXP2sqwYJjIbR9Ar9GTSWCQ+F
         XYm7DWgr427XkQEC/DoSZiPYfiA3JYqrQneZgAlnXyHuvDSYZADt9onIq5m/duYMggzu
         RahA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6j3S7ZfZt79laxcOO2PFYBLa/Z6A+qmxeC1KDED7sL8=;
        b=PwUd3L/EwazKH/Xe+PEfXUhuqe+skkAiinXp5nI15E13/bgpxpPHAhtY0JgyZ0+vSA
         TDJ+WyP5tXhKUIqy4eSay4CNXkpURI74M+z00qaOyWA7SqMJs5YeD37dwbGQCjysw3Xa
         Sv73UrofETqt6zlWWEzoyq3gS88Y07UPJpYmbWMupo6DDCVJuzKeLnua/9K/AxfsVPlH
         lWxcTI9RkgATW9TEaGj4nqUYzI/cEG44LWTmNX7sc/Vg1uH4OcGMSEd8w+H4sp13hz76
         3v+IvKFgBdqhjJl2nMyVc8vAxf4g64PFdpcNE7NNdukgEpUMck76YLLSq5M+2gOrvtjL
         9E6A==
X-Gm-Message-State: AFqh2kpGHA6osACPOJRPFnXUFM2aZRH7YiLtGEaal6KbyahjJDoUesNS
        citMTln1+6V7n9v/FnRowJRsfg==
X-Google-Smtp-Source: AMrXdXu0isL5foK19ys8/rnpFm9CLtEupl4pSAdxmmS6kYIT5Rkrj89T3++VRmHu4Q/xP9vkzzEVCQ==
X-Received: by 2002:ac2:5088:0:b0:4b5:688e:ee10 with SMTP id f8-20020ac25088000000b004b5688eee10mr18850976lfm.16.1673241244314;
        Sun, 08 Jan 2023 21:14:04 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w4-20020a19c504000000b004b5812207dbsm1426880lfe.201.2023.01.08.21.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 21:14:03 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 2/6] dt-bindings: display/msm: rename mdp nodes to display-controller
Date:   Mon,  9 Jan 2023 07:13:58 +0200
Message-Id: <20230109051402.317577-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
References: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
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

Follow the 'generic names' rule and rename mdp nodes to
display-controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dpu-common.yaml       | 8 ++++++++
 .../devicetree/bindings/display/msm/qcom,mdp5.yaml        | 3 +++
 .../devicetree/bindings/display/msm/qcom,mdss.yaml        | 6 +++---
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-common.yaml b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
index 870158bb2aa0..3f953aa5e694 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
@@ -13,7 +13,15 @@ maintainers:
 description: |
   Common properties for QCom DPU display controller.
 
+# Do not select this by default, otherwise it is also selected for all
+# display-controller@ nodes
+select:
+  false
+
 properties:
+  $nodename:
+    pattern: '^display-controller@[0-9a-f]+$'
+
   interrupts:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
index 681d6ac48d33..cbe4d3597f26 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
@@ -33,6 +33,9 @@ properties:
               - qcom,sdm660-mdp5
           - const: qcom,mdp5
 
+  $nodename:
+    pattern: '^display-controller@[0-9a-f]+$'
+
   reg:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
index 47fde9b6779f..1a2f639f8a9a 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
@@ -105,7 +105,7 @@ required:
   - ranges
 
 patternProperties:
-  "^mdp@[1-9a-f][0-9a-f]*$":
+  "^display-controller@[1-9a-f][0-9a-f]*$":
     type: object
     properties:
       compatible:
@@ -180,8 +180,8 @@ examples:
         #size-cells = <1>;
         ranges;
 
-        mdp@1a01000 {
-            compatible = "qcom,mdp5";
+        display-controller@1a01000 {
+            compatible = "qcom,msm8916-mdp5", "qcom,mdp5";
             reg = <0x01a01000 0x89000>;
             reg-names = "mdp_phys";
 
-- 
2.39.0

