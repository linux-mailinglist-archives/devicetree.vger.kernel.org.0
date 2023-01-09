Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AEC2661E17
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 06:02:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233986AbjAIFCD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 00:02:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234138AbjAIFB6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 00:01:58 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A35FA1BC
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 21:01:57 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id bp15so11219629lfb.13
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 21:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bSLHFGtlV6IdhXFw/KT1ECmlzZ16Rq0TtNZKL66C2M4=;
        b=xu304eW80PXRPkwguL8tScz3jsXndREwKC8psSrXxGZp+cutvmxwetF7DqxsI0UMNh
         moaNEiX0dLhgMypkx0gDSkC90Oygtbqr2Whab/b2t10gQ/l7HDgjweuPdHdBaZeHSZo7
         vCiDKVsPD4IdMKQUG3HWlZOXNDAyeTmwyiZiad08g0737IIXC2LvqYd5d994oKolOSHj
         hB65XHqepjP1WuDIMvnbOSGwYntbS3JpRC3MQW/Z9ehr68/rwZl52v33HeYD1KOdRwif
         qPCirjbLjIpBvV0y9GuXRFhwohxDbmrvyesY+081abV5NCfEgFBRUTqVva1tpes9SNbW
         7H2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bSLHFGtlV6IdhXFw/KT1ECmlzZ16Rq0TtNZKL66C2M4=;
        b=XRsEkNle/G3bpRPO/7pCm4d4mUBn8ugw2jnyvJrd+avKMP+AhYVYyQch5ox329Y7VV
         lPbF6SX6oXFZWmrIXysD+psiPOcXpg8Xr3ka6hHMYmSMqnbCTTvxD0sQEuKT2ip1lKtQ
         ucVY5vgogOx5r5AartpDyJNKBbY5XjE5Zq/5N+sGVuw2xvT/4pwDETj2CWL6uQDL3Qhb
         /MXD3oyI2vZmRCV4vjOik+9/tKTPhknPWt1U0NyzvtGHvGE/SAgCIY5cgAZuOGLl+9Dc
         f9jqXMlTRGzhK3c/six0qaHroW8XYJNY43X9VWx5Jxg1Tk7Ih3Pcrxe3XYTG+zFgS4lH
         09VA==
X-Gm-Message-State: AFqh2krkXegFaGimq1FYmJxJcMJFwQgbVQT9BS+J+pDvM2ZdzhwObfVC
        w+cQWigqtKOrVaBu1qz2sSozlg==
X-Google-Smtp-Source: AMrXdXuhLyLawiMO9nZM6mutd0P/iAqsp5Hx51Bc83l0y0c5bKKO9s50ZUq5+oKjiufUtrpNGN/j3A==
X-Received: by 2002:ac2:4ec4:0:b0:4b5:2c5d:4573 with SMTP id p4-20020ac24ec4000000b004b52c5d4573mr16207946lfr.45.1673240515463;
        Sun, 08 Jan 2023 21:01:55 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id j12-20020a19f50c000000b004b59067142bsm1008257lfb.8.2023.01.08.21.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 21:01:54 -0800 (PST)
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
Subject: [PATCH v5 2/4] dt-bindings: display/msm: add SoC-specific compats to qcom,mdp5.yaml
Date:   Mon,  9 Jan 2023 07:01:50 +0200
Message-Id: <20230109050152.316606-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109050152.316606-1-dmitry.baryshkov@linaro.org>
References: <20230109050152.316606-1-dmitry.baryshkov@linaro.org>
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

Add platform-specific compatible entries to the qcom,mdp5.yaml to allow
distinguishing between various platforms. For msm8998 list
qcom,msm8998-dpu rather than -mdp5 to allow this binding to be handled
by either of the drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/qcom,mdp5.yaml         | 17 ++++++++++++++++-
 .../bindings/display/msm/qcom,mdss.yaml         |  6 +++++-
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
index cbcbe8b47e9b..681d6ac48d33 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
@@ -16,7 +16,22 @@ maintainers:
 
 properties:
   compatible:
-    const: qcom,mdp5
+    oneOf:
+      - const: qcom,mdp5
+        deprecated: true
+      - items:
+          - enum:
+              - qcom,apq8084-mdp5
+              - qcom,msm8916-mdp5
+              - qcom,msm8917-mdp5
+              - qcom,msm8953-mdp5
+              - qcom,msm8974-mdp5
+              - qcom,msm8976-mdp5
+              - qcom,msm8994-mdp5
+              - qcom,msm8996-mdp5
+              - qcom,sdm630-mdp5
+              - qcom,sdm660-mdp5
+          - const: qcom,mdp5
 
   reg:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
index 7479cd96fdec..7a81a10c0a9b 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
@@ -88,7 +88,11 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,mdp5
+        oneOf:
+          - const: qcom,mdp5
+          - items:
+              - {}
+              - const: qcom,mdp5
 
   "^dsi@[1-9a-f][0-9a-f]*$":
     type: object
-- 
2.39.0

