Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFC1D671251
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 05:12:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbjAREMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 23:12:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbjAREMu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 23:12:50 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 814B653E62
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:12:49 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id tz11so15866834ejc.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GIyuJnQD498muXVqSb8DedJYfl5A4JrvBcZkaYGB5JM=;
        b=YFkqeAcAiFVwaUiZH+QhFxq6iOrOnKPJoAaer4DjvNMBst6aMt3dhhhHxsq7wQlv67
         1c7z1wk+/VNMj2rIzHihNz0AYVleQbn3+l6UR7t+YhFe3uO/Qq/FCTRXmAeFIp2tRIeJ
         /J/Y7vYjdi6dHlzFd8/Vd1FWPSkVBYeq8/RoNj1BVYBiC8JCfO1y5eI87VDfe4va4xcT
         1n/O3e4SIvJY65eHCJDJ+RXIfYP71DsQ+R1QA2l9obBXJEyqGfCRxncP6m4hlRU4Fe9L
         sqhDEN4+EGfaR6Q/e+gOpiez8CfZHkirFglp2e0/tnpcUDcANEIQgaVhQaaj9tCKig+m
         2+Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GIyuJnQD498muXVqSb8DedJYfl5A4JrvBcZkaYGB5JM=;
        b=YyszxOUhH9m5aRjKlkfssefJ1E739IFFvYBDVQW9GbPAp0828SmRt9rbf6GYo0EoVu
         B0AsMmI/640uTyw62CKXtq4+UP8obOKk1ZXDXvUJXtmvAQSQMVFIpHlMXLAWURkVgJBr
         yqd3iu/1bzwKAA+gUuIts6JrjuIaA/D4jZSpTo177Zi4T7+5HitifVZCZ3o2Zpr6/IGR
         bk1JxVX+H+yuBZLF0WS+4JYJh1drf1276cEUSkGJuCtKX/M7htxSRr7sBj+eA8/kQSB6
         5lLPLDNnY2FwHMYbYeE0acKyzxcSH7L+Ctj6f5NgvvCQb9ty8gnCs/Jv+hza85OBPZVt
         6Mmg==
X-Gm-Message-State: AFqh2krtq2LwnHrf1KO2xvzOH1RHkFE9++PyLLkoc/1aJTUAaoz4ZY1U
        2lG0bf7q+to2xLCQ3L7WwB68aLrjRy01Mr+2
X-Google-Smtp-Source: AMrXdXvOt533A3OI/xj5g7SBPehNuG3/BkHWvbsgSYiSiB203N2XrDqddr3Bqy8RqxrML0sx94UNaw==
X-Received: by 2002:a17:906:3e0f:b0:7c0:dac7:36ea with SMTP id k15-20020a1709063e0f00b007c0dac736eamr1335969eji.66.1674015168098;
        Tue, 17 Jan 2023 20:12:48 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id hp24-20020a1709073e1800b008720c458bd4sm2314100ejc.3.2023.01.17.20.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 20:12:47 -0800 (PST)
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
        freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v7 02/11] dt-bindings: display/msm: add SoC-specific compats to qcom,mdp5.yaml
Date:   Wed, 18 Jan 2023 06:12:34 +0200
Message-Id: <20230118041243.1720520-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118041243.1720520-1-dmitry.baryshkov@linaro.org>
References: <20230118041243.1720520-1-dmitry.baryshkov@linaro.org>
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

Add platform-specific compatible entries to the qcom,mdp5.yaml to allow
distinguishing between various platforms.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/qcom,mdp5.yaml         | 17 ++++++++++++++++-
 .../bindings/display/msm/qcom,mdss.yaml         |  3 ++-
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
index 5e3cd7abf046..cb7bf48c3a58 100644
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
index 7479cd96fdec..d09842db3825 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
@@ -88,7 +88,8 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,mdp5
+        contains:
+          const: qcom,mdp5
 
   "^dsi@[1-9a-f][0-9a-f]*$":
     type: object
-- 
2.39.0

