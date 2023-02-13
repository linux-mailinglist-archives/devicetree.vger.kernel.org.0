Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E842695232
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 21:50:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbjBMUuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 15:50:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjBMUuB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 15:50:01 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7F6B1F5C7
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 12:50:00 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id sb24so11032315ejb.8
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 12:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B9e4S6OWedBx8L422WXZzIY6pxRaBgRtincFc9juEdA=;
        b=opyp3Yca3V7VCj/PJsd8/v+xJ7fQYRGUIgB96ZT5voZjCrxnt411MeugF8TLCZZz4S
         mLJaB6DAvTgT5Gr9LDkpSm3BYEJkrYDikisYI/RzqoICaT3zwHm6gEmDRSsRGLxSm13O
         4rblPoMOMge+q5h5ykKNSkljrdwVjeMxMNuapURXMnvLp3jJtAf5xK63fPlB2KhVhSK5
         2CefGEsGzv08CcijvGkZ/aFJ4WP5LthlWkU2ik9+xAE/bqj40ISp8czbNNkf8FBNaWms
         yw/uJg50dH5lmmrJhAqwVOWLsFfS1JXPN7Jv815nZbLwrABnLcQGOyuyfQHMifLSDUsA
         +V+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B9e4S6OWedBx8L422WXZzIY6pxRaBgRtincFc9juEdA=;
        b=cbW3XYNz6wIEaBh/2iJYKmoDMZB68IPg0+Z1T9e/npm/LTArNDpC2vO6fGVwhfXQY0
         gxDuFMzXaEBWI6Po/d+oSaTmjSaqaJjIgFyI+T88IJuiSKxsxb0GMjkVWW9/wI5lZuvN
         9cWw2j/+dsWgnpFJDQhFA+I+QeTAHMx6bFkkDgBJ57yq0sa5iktTi1RgbPfx2kMQtd8R
         JYC27COsp5PUOAUwfwK40pgiRuOKsVObWIO7hUOKSA6IGUtLII3MwKkQY8HtNftjAnQU
         yXyvlZsyXjPGaiX3wlymZ1skRaef0NIEOQ3qVzUFQyMKbnfBohGPDdUVa9MLGE8TovNH
         aEIA==
X-Gm-Message-State: AO0yUKW1U/u8hPb72Ud7euHUiWMP60ooNVrlTNUrL2FZCnlKJ213+OiK
        unbLuQeDsUaOAPS0kpp5FXBkYQ==
X-Google-Smtp-Source: AK7set8I9mPWZqAW6PO/bSEyNhmEpy6iSrh4BJ9XjINXWT6EWKK8dFk64FglXqsNwtUa0cPbDzT8qA==
X-Received: by 2002:a17:906:cb85:b0:8aa:11dc:ac6 with SMTP id mf5-20020a170906cb8500b008aa11dc0ac6mr195931ejb.57.1676321399462;
        Mon, 13 Feb 2023 12:49:59 -0800 (PST)
Received: from localhost.localdomain (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id f21-20020a170906739500b008a94f69a1e7sm7303123ejl.163.2023.02.13.12.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 12:49:59 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: power: supply: pm8941-coincell: Add PM8998 compatible
Date:   Mon, 13 Feb 2023 21:49:48 +0100
Message-Id: <20230213204950.2100538-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
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

Add a specific compatible for the coincell charger present on PM8998.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/power/supply/qcom,pm8941-coincell.yaml       | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/supply/qcom,pm8941-coincell.yaml b/Documentation/devicetree/bindings/power/supply/qcom,pm8941-coincell.yaml
index 0450f4dd4e51..b7b58aed3f3c 100644
--- a/Documentation/devicetree/bindings/power/supply/qcom,pm8941-coincell.yaml
+++ b/Documentation/devicetree/bindings/power/supply/qcom,pm8941-coincell.yaml
@@ -16,7 +16,13 @@ maintainers:
 
 properties:
   compatible:
-    const: qcom,pm8941-coincell
+    oneOf:
+      - items:
+          - enum:
+              - qcom,pm8998-coincell
+          - const: qcom,pm8941-coincell
+
+      - const: qcom,pm8941-coincell
 
   reg:
     maxItems: 1
-- 
2.39.1

