Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6252652086
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 13:37:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233702AbiLTMhF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 07:37:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233594AbiLTMgu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 07:36:50 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DB2C13D29
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:49 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id m14so11582614wrh.7
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j7U4CGtf/Ju09Jbzb4QB+ZvkuzO+a1Kfzp82haXBgZc=;
        b=hlBWHxGW3kYwrRrztRl9g25tkWVLHBYLmcG87nCSCI1spGlnexbL7jyKA+6WFeclMZ
         YQZ+lXHITTUBgVALtCHEtkcjOYPZWa2OLvHUWAfrJjM4wmEl8rjrSIrZSbHOddKnXyEk
         PMfifyPmtrSS28zFX8b5wdVw2H/DOUs6aZ8T2ADqf9WmzmFuBKc/9qe7eq1dKRu/ncVR
         S9F+oEY2wUFiEgeH89t3zY8CGn4KZEAcB/L2xs/2XLWHIoVaBVYJPygH5eo3Ilwhze/H
         bBr9b7uHYR93Vhh9K9wrF2zJlncawicAKCkvYMHBUtljR1t36PSAjwHu1Czblk9C6lnu
         0Knw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7U4CGtf/Ju09Jbzb4QB+ZvkuzO+a1Kfzp82haXBgZc=;
        b=XUoyq3YC0Lcy+NK5T21bnYkwwy4/VHXSI8gfi+AxB8j8H75oOxPFIxLhbt2hpVXZ55
         +gT9koB2LEDKoQ0Uo1ilBmA6P/P8E64oNNtgV1/On+SdKbHIetTJEuMBedY1dpCllUjM
         uhZMDTs8UarTEJ/6jDak0lZ+Ouz0lW/ofm+OpUpclZ45RyLbypLljgY1iu/+E2pttuJR
         ClRSUZyByJ7+Uj9nL8Rf4wKFvRLPN+IHjgwvUyPAoOE4UAW+QPVqI2gYg0hC43S0s439
         IXRnBWWlEY5P9Y/w0WKXnCuhDhAHUW81sav0Lq6ZZT8dUfu9A8cR4LRahdpFysh5bm0X
         xv7Q==
X-Gm-Message-State: ANoB5pkqAWkSeUnAsXRplE4PPKRaisQ4iZ2igSbP9YSj3toaSV8JjFjU
        GNsjAH3tFtmcJ4YslqyvYMMRxQ==
X-Google-Smtp-Source: AA0mqf4/rduBkEMjCAmyHkOs90ejtZKYKZt/P61s/Qfs66FMjyrUGzd93dJ0vFMqGca2ksOiSp/xzw==
X-Received: by 2002:adf:fb48:0:b0:236:57de:1462 with SMTP id c8-20020adffb48000000b0023657de1462mr27175174wrs.29.1671539807669;
        Tue, 20 Dec 2022 04:36:47 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id da13-20020a056000408d00b00242257f2672sm12641208wrb.77.2022.12.20.04.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 04:36:47 -0800 (PST)
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
Subject: [PATCH v5 09/21] dt-bindings: display/msm: Add list of mdss-dsi-ctrl compats
Date:   Tue, 20 Dec 2022 12:36:22 +0000
Message-Id: <20221220123634.382970-10-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
References: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
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

Add the list of current compats absent the deprecated qcm2290 to the list
of dsi compats listed here.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/display/msm/qcom,mdss.yaml          | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
index ba0460268731b..86bb43489bf4a 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
@@ -94,7 +94,21 @@ patternProperties:
     type: object
     properties:
       compatible:
-        const: qcom,mdss-dsi-ctrl
+        items:
+          - enum:
+              - qcom,apq8064-dsi-ctrl
+              - qcom,msm8916-dsi-ctrl
+              - qcom,msm8953-dsi-ctrl
+              - qcom,msm8974-dsi-ctrl
+              - qcom,msm8996-dsi-ctrl
+              - qcom,msm8998-dsi-ctrl
+              - qcom,qcm2290-dsi-ctrl
+              - qcom,sc7180-dsi-ctrl
+              - qcom,sc7280-dsi-ctrl
+              - qcom,sdm660-dsi-ctrl
+              - qcom,sdm845-dsi-ctrl
+              - qcom,sm8250-dsi-ctrl
+          - const: qcom,mdss-dsi-ctrl
 
   "^phy@[1-9a-f][0-9a-f]*$":
     type: object
-- 
2.38.1

