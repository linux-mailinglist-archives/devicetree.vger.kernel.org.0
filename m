Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE05869AA0A
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 12:13:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229820AbjBQLN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 06:13:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229770AbjBQLNx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 06:13:53 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3EF366666
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:13:38 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id i13so1372108lfe.1
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hs8Yxp1MVlT0I86oaYY4unW9sTOxwBrv4kqwbTUdvms=;
        b=CGC563MdG5ZK3KHRue7aFJyu4Qnz5uziqhEbG4CsGGHsvLQEojFDL7WA+mLIDUIYhi
         /bFndr3aVqCYYfFvbp+nWjTxYHkp7/r35T07SX4F/p4FWasT9dOMUFDg4Xda1dglXy9F
         PGC48gU7jQdiXLtBlm/U1tejAbRSQIc1GcusXhTSmWJKO8lKbCu7lygQFsA8EkqWasQi
         kmjY8YfAwEoSxdNE0+et+Pr2zriuPlpXO5w5ps4Kd7jerOZ53+45+96+CffC/ZoAyniQ
         GupQVFTR6ctOzUXuh0LryBWoof8+SpejsVhrH8XshLe3J5gkEaNape3WO0jJwMLagK/q
         fxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hs8Yxp1MVlT0I86oaYY4unW9sTOxwBrv4kqwbTUdvms=;
        b=fp6H6KjYy1VkByO4dA7RptSNfAU8OEjiel3lXJe5qTdUAN5Hxa3PEVYcHVFzsn7wSc
         I6VILD4an7G6XkPAvxLO/OvcfGkRh02Nj2aQ9+e6zv8sqXvYjYtWR7iO7pWddXGxiTgR
         KtNXhdDCNVX0sKJlCV9w1gmszxW+F8iyBzfjstW7htYIv1JCzha707jpz7Z1a72V8Se8
         64RoSjscY4foI7Bd+PJvM67zFmFb8lsBKAivqyyuM1jDFtZtpUFrlKqUG8caP01Teoej
         LnY52uH2UNMEVX6iLnoe5DRCgUklSa9m3SgDFHLmeP1+kcTQD5EHnPpg1ZyOEljCpP4C
         OjBQ==
X-Gm-Message-State: AO0yUKUyc/SCqsR8zLCd5IXoDdwN9lpi9/yCJ01uvYk3LbCnW4YxP6GP
        ynCemn9R60Q/jYjM2BWZ6zdzmg==
X-Google-Smtp-Source: AK7set8ZhdFUqbXhgL08rWxQqCGaftiy0CrErLGx8HogZOY2K9jf5KtkaFsV9HvhIdLZFYbGXK9viA==
X-Received: by 2002:a19:5202:0:b0:4cb:430b:c6b with SMTP id m2-20020a195202000000b004cb430b0c6bmr172623lfb.29.1676632401630;
        Fri, 17 Feb 2023 03:13:21 -0800 (PST)
Received: from localhost.localdomain (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id h11-20020ac250cb000000b004b564e1a4e0sm642683lfm.76.2023.02.17.03.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Feb 2023 03:13:21 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] dt-bindings: display: msm: sm6115-mdss: Fix DSI compatible
Date:   Fri, 17 Feb 2023 12:13:16 +0100
Message-Id: <20230217111316.306241-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230217111316.306241-1-konrad.dybcio@linaro.org>
References: <20230217111316.306241-1-konrad.dybcio@linaro.org>
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

Since the DSI autodetection is bound to work correctly on 6115 now,
switch to using the correct per-SoC + generic fallback compatible
combo.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Depends on (and should have been a part of):

https://lore.kernel.org/linux-arm-msm/20230213121012.1768296-1-konrad.dybcio@linaro.org/

v1 -> v2:
- Deprecate the old compatible instead of removing it (Krzysztof)

 .../devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
index 2491cb100b33..6fd1703e415f 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
@@ -40,7 +40,13 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,dsi-ctrl-6g-qcm2290
+        oneOf:
+          - items:
+              - const: qcom,sm6115-dsi-ctrl
+              - const: qcom,mdss-dsi-ctrl
+          - description: Old binding with separate driver logic, please don't use
+            deprecated: true
+            const: qcom,dsi-ctrl-6g-qcm2290
 
   "^phy@[0-9a-f]+$":
     type: object
-- 
2.39.1

