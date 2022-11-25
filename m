Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B7616389F4
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 13:36:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbiKYMgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 07:36:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbiKYMgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 07:36:49 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E484C24E
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 04:36:48 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id cl5so6560205wrb.9
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 04:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Pnrz7CxvZ7ybVJUgqP8hjKP0Ck4G3JBOu5Z9AIGH0A=;
        b=dHM95RVf8Kp4A/apgk/MWwQp6R+YbnOnEAmCvABDPmlzxiqk8/9n7uXYDq+Ar8Ycr9
         w6/F4Bt9OVmLhNBAxc3x1y5VUH5l7gAWYT9gv7RTnXYOrfdVhBkShekyZ0r+lGtFPeqw
         DZoXjj9jR42aSsjs/SO6pOGsihrJ4yjYUHKRWsKmu/fU18bdBPKURrF6eG3BbPFV6k9P
         kg0BJYNe/HK8MJQfx/ArzthPELMAtfwpgilBN0emrXP3TWeiC85RGtp4l7w7tnsGQJvf
         NijQ9yVYAfwlgT8Zm9343zHeBtyQCsmglYBvB41Z+FmJXrbw7Jz56YFvTUkIbvay/D7u
         xCxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Pnrz7CxvZ7ybVJUgqP8hjKP0Ck4G3JBOu5Z9AIGH0A=;
        b=clAlNvP4iEZ73kzcB1LeaA/amMoTlEoYZKWh3YO0k6phTM3ZyZpg+CrOxef5Tb0G8X
         8n3IELOuphOTbXY3IPxQjP2Adn7oTTk/OJUz6Myzyy3hmvfXENF1lxkfZDPp36+1c4Ei
         P350/eXEegHln0cPY1pkmY4MXObcDEvtLIngggH+1MNVH41pQZk3m1M+quQaUtCuycIM
         co3sItoxMlW5N8BptntuaFV5bW0Jeqrg1JsozDvNQrHGvMRmhksf0fqqu7WVJ60P6lm1
         6eDoF/pqMS4Dk/tfLtW/RfR1qvOw8viR1OVMEWSoNzX1PWfy4AtQIm6+fI0w0F2u5lKC
         u8RQ==
X-Gm-Message-State: ANoB5pksYTiYA74fSVldBia5PDCOcV9T0/SPobQOi2AN6leMEzNFZ7Nt
        oI9giP7WXcTXQB3Ai3zmHB3vMg==
X-Google-Smtp-Source: AA0mqf5jEIWQ0kAcydCway3qTPrOv5zzpx1ZK6MFfNmBVZGYF1WZRXqwktgAeq76VoRbVnIoDiUDiQ==
X-Received: by 2002:adf:fb4c:0:b0:236:5270:735e with SMTP id c12-20020adffb4c000000b002365270735emr12330288wrs.659.1669379806496;
        Fri, 25 Nov 2022 04:36:46 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k15-20020a5d6d4f000000b002366dd0e030sm3574111wri.68.2022.11.25.04.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 04:36:46 -0800 (PST)
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
Subject: [PATCH v4 04/18] dt-bindings: msm: dsi-controller-main: Add compatible strings for every current SoC
Date:   Fri, 25 Nov 2022 12:36:24 +0000
Message-Id: <20221125123638.823261-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221125123638.823261-1-bryan.odonoghue@linaro.org>
References: <20221125123638.823261-1-bryan.odonoghue@linaro.org>
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
 .../display/msm/dsi-controller-main.yaml      | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 67d08dc338925..0cd2079137b02 100644
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
@@ -146,7 +157,7 @@ examples:
      #include <dt-bindings/power/qcom-rpmpd.h>
 
      dsi@ae94000 {
-           compatible = "qcom,mdss-dsi-ctrl";
+           compatible = "qcom,sc7180-dsi-ctrl", "qcom,mdss-dsi-ctrl";
            reg = <0x0ae94000 0x400>;
            reg-names = "dsi_ctrl";
 
-- 
2.38.1

