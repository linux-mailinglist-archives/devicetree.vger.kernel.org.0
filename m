Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D29A5E89BF
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 10:08:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233782AbiIXIHt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 04:07:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233692AbiIXIGn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 04:06:43 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24D91127C82
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 01:05:40 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id a3so3501628lfk.9
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 01:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=XFjm6zy5pNuV6EFMWZDa8Aqoeg4BjA/X1Ww7Riz4YHM=;
        b=d88SHg6hQjd6/po0T0mVTUf8gaetCCcJuTdE+f8xyTPEAc5N7nPRWUyiVepvM7h2KR
         kLqUhiOgEQUZ+jWr4tOHZuqRrjDbK4OAw0T5KSNbgbrOAgNka2gozp92IAPbjOye8eeG
         wvG6Yi5JZpVh6n5rgNmuNCbUlmAEDCk26EmXw3nXXfKbP5g4/xLorMY6iGPjOfw8F4mC
         s3LOjbeiU9clUAuNl201I2VsWyLLVFcmFpbaEFrkQ/uE2zlqjfpGOG71XS2sOiOIoxaM
         za+93spcesN1+1sbxoY+IaJoXzhVmwprCOGHDA25v9p8W1BEQ0KkJkmkS1er/sC9O+IZ
         p1fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=XFjm6zy5pNuV6EFMWZDa8Aqoeg4BjA/X1Ww7Riz4YHM=;
        b=jcei3kKDZ3qQn7YvzPHNYI6Iju0Px5yNo59QJ4ef/2a1jO607r2j2qBliRkF0LmAN7
         5RkmVYwnaU9r7FqHFdOCFeJ2mQB5yGa0yajMP5t4Rwi6Ze+veFxMbT5eaDl++TDyjM3V
         ZmqF60T9TyKBSINq+J0P/QEyPBuIs1QZyaTcFNoUal0MZQO9XsVmPQkpf19lnbRY+FMK
         SIdqNE7Dgemg3PloznCyookUl4P49GOdW3CfMQflow1De0i5P/saR7/d+4SOG86PDBI3
         7zTk0jiuhxlc8tzoJRQpg02MP0HkyaA/YCPWCEn9C1i+BryBuIEjS3wjf897qcQEoHhE
         +2EA==
X-Gm-Message-State: ACrzQf1Yv+rnY4IX+cnewL62PRQR1Pomio6OALwH4Hqz+DaGinUpvuw9
        VfEccrYfrbwfx0mymxnXBdVCDA==
X-Google-Smtp-Source: AMsMyM43sU6MM8cUoob4M5l0eYTi46ZkJ/Sn1rji1oXq0MyTlZzSxWdnSJ0i8i7LnsB0rOZ1Ao4DSA==
X-Received: by 2002:a19:5e50:0:b0:497:a331:91d9 with SMTP id z16-20020a195e50000000b00497a33191d9mr4876766lfi.162.1664006740286;
        Sat, 24 Sep 2022 01:05:40 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y2-20020a2e5442000000b0026c41574790sm1696668ljd.30.2022.09.24.01.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 01:05:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sricharan R <sricharan@codeaurora.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 25/32] dt-bindings: pinctrl: qcom,qcm2290: do not require function on non-GPIOs
Date:   Sat, 24 Sep 2022 10:04:52 +0200
Message-Id: <20220924080459.13084-26-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220924080459.13084-1-krzysztof.kozlowski@linaro.org>
References: <20220924080459.13084-1-krzysztof.kozlowski@linaro.org>
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

Certain pins, like SDcard related, do not have functions and such should
not be required.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/qcom,qcm2290-pinctrl.yaml        | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
index 5324b61eb4f7..89453cb60c12 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
@@ -60,7 +60,6 @@ patternProperties:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
-    $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
 
     properties:
       pins:
@@ -116,6 +115,16 @@ patternProperties:
     required:
       - pins
 
+    allOf:
+      - $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
+      - if:
+          properties:
+            pins:
+              pattern: "^gpio([0-9]|[1-9][0-9]|1[0-1][0-9]|12[0-6])$"
+        then:
+          required:
+            - function
+
     additionalProperties: false
 
 allOf:
-- 
2.34.1

