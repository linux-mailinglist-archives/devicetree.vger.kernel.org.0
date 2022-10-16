Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E236C600207
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 19:05:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbiJPRFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 13:05:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbiJPRE2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 13:04:28 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18DBA4055C
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:02:59 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id b25so5435205qkk.7
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2HOj/CjHbYYy0y0aasbBup8uSjrbrF/rOo8HSGMBXl8=;
        b=xxlf0h6Wk5OgUbZjg6m4CkPDWlu/jQY0YiSm6iCX3O4OCjENQITXgY08xOyDh+PpPM
         Fqjw5eTaQw/4UpMNSoSTjId90kpylK40oBbE0Hzr6QG/FvlpfeSixazCi1ZTqg6kTsLn
         O5sdfO6DxzroaoZErGizdiXN3ndba+nwyWUkZpl+PvlSF3EcSfh+Q5A0F0pIndLrzoWx
         eXspKJHKhzovPm+dJweh2jo1/fo0OvsjfdePJ6DWEeSRfwKpMWEz27BmxcfuDp/FHRuC
         q8aNegveITrZnXJck1kxlqkgzQNhXYllNMGdYsUJqV0Al9/9PKOpqBL43YXjtwI1on/S
         RY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2HOj/CjHbYYy0y0aasbBup8uSjrbrF/rOo8HSGMBXl8=;
        b=OYdX/tiHhR4x5jkFseJX47iu4yrIJR3uW0G2ILPPuVckYhpQ1DKNQsjmqeSBKRjyDX
         EKDZCTInKroaJtYnhy9qafnzGYCRA7H5qgn9/StVdrAhWu968p0EBn8S4VRg6FDjgUmz
         g8B3XNIdkWTcAOpKA3laVn6gP3XqO5FGYSIx+c9S2dbCmF9BmDwRLJxVklmbWTzPL6qm
         6YpQt2M0eSEOdVx+axuPPhoAr7rC3WiHYFOhbVKi/aTmpfsPibaLLJgqohd5Aa35P7Ks
         MvjpJe5NZLOBKZ5Q1TbiJXhy/CrzkwFMhltwOKxZZv6iOA5UG4pD4qhu9wHJNi3LWOTh
         kXkw==
X-Gm-Message-State: ACrzQf3ihAWCjpBOZI6HJSjISlF8zj5ORY09T8d08zoYepE7pggkzJyT
        X1khAfAJnJpFuATl+jpPhMrgIw==
X-Google-Smtp-Source: AMsMyM4vVj1IjdY0D6GwQjIf3Xi+uefF5KSBD7cjJUJAxg3rYQz+ItCwtGTLsmm3iE3feLT4lmBjcg==
X-Received: by 2002:a05:620a:2a12:b0:6ce:718d:2475 with SMTP id o18-20020a05620a2a1200b006ce718d2475mr5116760qkp.785.1665939761522;
        Sun, 16 Oct 2022 10:02:41 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id q6-20020a05620a0d8600b006ce7bb8518bsm7539967qkl.5.2022.10.16.10.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 10:02:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 30/34] dt-bindings: pinctrl: qcom,sdx55: fix indentation in example
Date:   Sun, 16 Oct 2022 13:00:31 -0400
Message-Id: <20221016170035.35014-31-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org>
References: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org>
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

Bindings example should be indented with 4-spaces.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pinctrl/qcom,sdx55-pinctrl.yaml  | 34 +++++++++----------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sdx55-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sdx55-pinctrl.yaml
index 8ef3dce33db2..30f4b3147768 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sdx55-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sdx55-pinctrl.yaml
@@ -113,23 +113,23 @@ additionalProperties: false
 
 examples:
   - |
-        #include <dt-bindings/interrupt-controller/arm-gic.h>
-        tlmm: pinctrl@1f00000 {
-                compatible = "qcom,sdx55-pinctrl";
-                reg = <0x0f100000 0x300000>;
-                gpio-controller;
-                #gpio-cells = <2>;
-                gpio-ranges = <&tlmm 0 0 108>;
-                interrupt-controller;
-                #interrupt-cells = <2>;
-                interrupts = <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH>;
-
-                serial-state {
-                        pins = "gpio8", "gpio9";
-                        function = "blsp_uart3";
-                        drive-strength = <8>;
-                        bias-disable;
-                };
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    tlmm: pinctrl@1f00000 {
+        compatible = "qcom,sdx55-pinctrl";
+        reg = <0x0f100000 0x300000>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&tlmm 0 0 108>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        interrupts = <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH>;
+
+        serial-state {
+            pins = "gpio8", "gpio9";
+            function = "blsp_uart3";
+            drive-strength = <8>;
+            bias-disable;
         };
+    };
 
 ...
-- 
2.34.1

