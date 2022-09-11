Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 081235B4DFE
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 13:14:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230303AbiIKLOO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 07:14:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230401AbiIKLNQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 07:13:16 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36AD332D90
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:40 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id z23so7427556ljk.1
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=fSGDJbvwyUNRzf7TxRi3X4pjWeIi4tImKHqgX99wRZg=;
        b=SJuJT4hOKlR7HkL5zvZBRHZP8tWF16TPXkik1KzTvZKM7k0OV6vnOGvwwpEwhKBAVf
         SdquDefRsUIUCnXgTsXjcwXtV5qkn2VvZYLv/vf8cmL6qeSu1neSmg9XScchjI976ef3
         qRHdNIjscj+dSTFRaQqGsLHB/1ROMzxPIK3WF5oroJBr9tbkZKv2vIpmjXnALId+/iqa
         7BS2qFPHwsANKHYa1numidkzho9zzplKKZwLXmkPFUUsNGwtqpZ8GV9ELLEtyWSUk5oE
         p5aFJyUDS4U435LALlxrP7XvsSZG8BQF+q8mctMjHcoW43a1UG9zv3NCbkVojJKiI61n
         QJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=fSGDJbvwyUNRzf7TxRi3X4pjWeIi4tImKHqgX99wRZg=;
        b=qQagAMzE8wBRtwVJ7m4sFK1qS/E/THEe+2h0GkmqNg6MtpWQVgcss71Z+bqDvzQvVe
         nGBbI6m4+RxX9puNbHtoAJqpkmDBKjbm15y99XtF7p3Pj1+0doSI/dL+r+USmC0aPOEU
         xY2EQQI5waptVjsX03q7CkwqSVaFwsE4L4BqqvK2qvWDaSxRg0t5uW4m2pAg10kds0dG
         OYmNRDmlfFbCIC2akiUGSL7h7hWzijGiEppGJQitMEF6XLRPCAwG4Ke4rMg6pPFu0Qa8
         Fqhf35K0jVD6Q/89PMHRiN9/S+gTQ7B/9US9Mco53dsxdwBby9kN/sBUIigLqAx0aKsb
         RNzg==
X-Gm-Message-State: ACgBeo0agiRfRfyOJJiyi7vEjRx+UilSIXzEvUa5xjtD3GTBBCWXvoMx
        R/SuI5oL6GF3Y8BOmdmelMMnOg==
X-Google-Smtp-Source: AA6agR7PJ5OEvlARW6u9NTBlWeXwmRIK33GdiFkFXp5EnT0Mj13LONe2oVSj5SPn1toJleAObn9LLQ==
X-Received: by 2002:a2e:9a90:0:b0:26b:efd1:18fc with SMTP id p16-20020a2e9a90000000b0026befd118fcmr1929275lji.499.1662894759628;
        Sun, 11 Sep 2022 04:12:39 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025dfd8c9287sm607365ljc.69.2022.09.11.04.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 04:12:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 27/40] dt-bindings: pinctrl: qcom,sc7280-pinctrl: fix indentation in example
Date:   Sun, 11 Sep 2022 13:11:47 +0200
Message-Id: <20220911111200.199182-28-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
References: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings example should be indented with 4-spaces.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/qcom,sc7280-pinctrl.yaml | 36 +++++++++----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
index b29fac302e6e..30e682579391 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
@@ -150,22 +150,22 @@ additionalProperties: false
 
 examples:
   - |
-        #include <dt-bindings/interrupt-controller/arm-gic.h>
-        tlmm: pinctrl@f000000 {
-                compatible = "qcom,sc7280-pinctrl";
-                reg = <0xf000000 0x1000000>;
-                interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
-                gpio-controller;
-                #gpio-cells = <2>;
-                interrupt-controller;
-                #interrupt-cells = <2>;
-                gpio-ranges = <&tlmm 0 0 175>;
-                wakeup-parent = <&pdc>;
-
-                qup_uart5_default: qup-uart5-pins {
-                        pins = "gpio46", "gpio47";
-                        function = "qup13";
-                        drive-strength = <2>;
-                        bias-disable;
-                };
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    tlmm: pinctrl@f000000 {
+        compatible = "qcom,sc7280-pinctrl";
+        reg = <0xf000000 0x1000000>;
+        interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        gpio-ranges = <&tlmm 0 0 175>;
+        wakeup-parent = <&pdc>;
+
+        qup_uart5_default: qup-uart5-pins {
+            pins = "gpio46", "gpio47";
+            function = "qup13";
+            drive-strength = <2>;
+            bias-disable;
         };
+    };
-- 
2.34.1

