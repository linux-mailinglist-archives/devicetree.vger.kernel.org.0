Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B22F6920FD
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 15:44:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231585AbjBJOob (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 09:44:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231949AbjBJOoa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 09:44:30 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E341F728A4
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 06:44:29 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso6445371wms.5
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 06:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PBcGm9IzqWfmksEDhkD68OpL5s1KaoBkDeTtWamSELM=;
        b=bXizAmn2gf0l5vIIzA92CHnCI90y5zxHF1fXqgncVuKHCS77Q3D5dX9iGaIFs9nDhu
         C+H3yF83O/IQfEiQedMza0rr5jnHK1qn0KnFTo3lH5RPjef/1MOizRV2t8dLAF5e1EqE
         aFF5XVqeTnJsryypRP5oYQM32y5dtrFDAFzTrUqzEub1nErdKbjVxYL7blrJpoMDEWMR
         A+d+z+vWmLE+Lu6LP0byail3av2zRMQKxRN5SvkOikfHoPvbNydOKTxmdX2BBfmpc7si
         HTt5Jn9DyQEDoPGtMwqXnTmjodrSANgJ6cIl5EUo1d96F9J5HlKaHHq+D7gJl712Q1k6
         QDow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PBcGm9IzqWfmksEDhkD68OpL5s1KaoBkDeTtWamSELM=;
        b=et+T3Eeuxvklc6wlZ+hgTnl7iyQ2TmOmk5Fqt1OmM3Gvjpferu9I8ulaodWozGvhgE
         zdmf2oshpWhTHnBl9S279PUPB2uFE9UQRv4pkmpGSNjAgZoO/+9rAfek7OGkjog8GVpr
         1oCIb7IMEaeJ1/QdLWUuvkjjUegnuFCVhcTUNhtTxMU78GlWPKIzneBUpmCMgvhLW7qj
         jxL3mMAeir/wpH667uUnr0aLooPIxEHPM1GATsOjlyufAVOb942L1hF/9M6D5t7ejIu7
         s8LsgfsGr37/KEUljbVab+xloM14A6vACebTX8+fwxwXwf8R6e6HmpqwsbuKEELoxdU7
         jR8A==
X-Gm-Message-State: AO0yUKXRZTN2fF9zLOhqC1Xc38a1ebipW9VJkH52Xvb+CjrLYdqSnVwC
        j1pGlHnxXhHQHYqBt2d/VObOCA==
X-Google-Smtp-Source: AK7set+dGBFdCroYD2odoMoBeu4+jdR3D8Rinih/XtZOitYmHrSq67Oop1sb+cCj4mAx9+Ydrjt6QA==
X-Received: by 2002:a05:600c:4d97:b0:3de:e8c5:d833 with SMTP id v23-20020a05600c4d9700b003dee8c5d833mr16841360wmp.22.1676040268518;
        Fri, 10 Feb 2023 06:44:28 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id l40-20020a05600c1d2800b003dd1b00bd9asm6103000wms.32.2023.02.10.06.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:44:27 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 10 Feb 2023 15:44:21 +0100
Subject: [PATCH v3 1/5] dt-bindings: display: msm: dp-controller: document
 SM8450 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230206-topic-sm8450-upstream-dp-controller-v3-1-636ef9e99932@linaro.org>
References: <20230206-topic-sm8450-upstream-dp-controller-v3-0-636ef9e99932@linaro.org>
In-Reply-To: <20230206-topic-sm8450-upstream-dp-controller-v3-0-636ef9e99932@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SM8450 & SM350 shares the same DT TX IP version, use the
SM8350 compatible as fallback for SM8450.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/display/msm/dp-controller.yaml        | 25 +++++++++++++---------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 0e8d8df686dc..f0c2237d5f82 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -15,16 +15,21 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,sc7180-dp
-      - qcom,sc7280-dp
-      - qcom,sc7280-edp
-      - qcom,sc8180x-dp
-      - qcom,sc8180x-edp
-      - qcom,sc8280xp-dp
-      - qcom,sc8280xp-edp
-      - qcom,sdm845-dp
-      - qcom,sm8350-dp
+    oneOf:
+      - enum:
+          - qcom,sc7180-dp
+          - qcom,sc7280-dp
+          - qcom,sc7280-edp
+          - qcom,sc8180x-dp
+          - qcom,sc8180x-edp
+          - qcom,sc8280xp-dp
+          - qcom,sc8280xp-edp
+          - qcom,sdm845-dp
+          - qcom,sm8350-dp
+      - items:
+          - enum:
+              - qcom,sm8450-dp
+          - const: qcom,sm8350-dp
 
   reg:
     minItems: 4

-- 
2.34.1

