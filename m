Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F3795F6943
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 16:09:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231984AbiJFOJN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 10:09:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231891AbiJFOIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 10:08:34 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03931B0B2F
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 07:07:40 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id j4so2982567lfk.0
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 07:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=h4V0LDT3i/W/TE3k636nNBBz/r2gnVYS8MZv968gs0g=;
        b=t3jldfHDAkd1Ipu9SvllxIjAJ3AYCwj4jMQhls7jS2GXucl5joa2Hd8oYkTDj7LzGU
         qsxs3j97lEsu7nZNvdjQeP3OKu1FB2Osf+jg8jPBNnSafpDLCixdYUVk8ZRrJ7LX/DDf
         82E24O2Wp8wAYxjUs9boSvV/D6gEN3UswklikeXC1Rq9pwOujRRMRSON63ZxvT4T6zz3
         NFtjnbzDLCpnJ+bCbjz5mVdbOMIr8oQ5GliHz0q0mqXVEyxrNynT4NtpZHXDBuxrleHD
         6CjGhjiM0NegY6r81wwBP01rxl5mwucA9he9IrIhC5qC3eZ+Mxr5OPwzpmnFWnDDRIAR
         Gmyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=h4V0LDT3i/W/TE3k636nNBBz/r2gnVYS8MZv968gs0g=;
        b=fx9eq7FPTztXWwUxKAJ29yzZcEt1BxGk9vNKwm1nOGRoFxko58rW51AcOYo1AO/05u
         QQjp8hGa5foUoenwFWYHStPDTovjHtwdAFkrGBxmWt6HcrWex1dIW/k7U/tzJlNltuzk
         5TXk3ipJZL/Y20JeAciYqp2+hmQGNmYeuI1kdRWfdnIdxFLiph3w7PRpmX7oe9CfbkE6
         /iRjXYIMLF3L/nxr1ylAC24XVm9iL1PNLKsoxrOPFeitimhGKF1pDEt0lPkdKJoiFYqc
         5NETsaTDpoaGuHeFwLMa5cDGCk1gxGABgW3DR+B3qDLBIFt9Uvw+lCH+VlKsBMV7w+Wl
         rSrA==
X-Gm-Message-State: ACrzQf3uT615hxvUqRwn8seBzxwMBDzyaREqQym1udl5PgZ6CMqjjiBp
        qW8HvklOuuAXPzVYfkdYtwiSKw==
X-Google-Smtp-Source: AMsMyM4fN/9CJBglM4Ea1/RppepdcWqKBhs0il1Wk7CVaL90lFvFMziv2DW/zPf6xUok0qecGsenpg==
X-Received: by 2002:a05:6512:1092:b0:4a2:6a45:1f0d with SMTP id j18-20020a056512109200b004a26a451f0dmr43104lfg.483.1665065237881;
        Thu, 06 Oct 2022 07:07:17 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z3-20020a056512370300b004a2386b8ce8sm1833929lfr.211.2022.10.06.07.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 07:07:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 27/34] dt-bindings: pinctrl: qcom,sm8250: minor style cleanups
Date:   Thu,  6 Oct 2022 16:06:30 +0200
Message-Id: <20221006140637.246665-28-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006140637.246665-1-krzysztof.kozlowski@linaro.org>
References: <20221006140637.246665-1-krzysztof.kozlowski@linaro.org>
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

Drop "binding" from description (and align it with other Qualcomm
pinctrl bindings), drop redundant minItems, use double quotes
consistently and drop redundant quotes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/qcom,sm8250-pinctrl.yaml | 36 +++++++++----------
 1 file changed, 17 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
index 824a4dce1202..1e42a4c60da9 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
@@ -9,23 +9,21 @@ title: Qualcomm Technologies, Inc. SM8250 TLMM block
 maintainers:
   - Bjorn Andersson <bjorn.andersson@linaro.org>
 
-description: |
-  This binding describes the Top Level Mode Multiplexer block found in the
-  SM8250 platform.
+description:
+  Top Level Mode Multiplexer pin controller in the Qualcomm SM8250 SoC.
 
 properties:
   compatible:
     const: qcom,sm8250-pinctrl
 
   reg:
-    minItems: 3
     maxItems: 3
 
   reg-names:
     items:
-      - const: "west"
-      - const: "south"
-      - const: "north"
+      - const: west
+      - const: south
+      - const: north
 
   interrupts: true
   interrupt-controller: true
@@ -126,16 +124,16 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     pinctrl@1f00000 {
-            compatible = "qcom,sm8250-pinctrl";
-            reg = <0x0f100000 0x300000>,
-                  <0x0f500000 0x300000>,
-                  <0x0f900000 0x300000>;
-            reg-names = "west", "south", "north";
-            interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
-            gpio-controller;
-            #gpio-cells = <2>;
-            interrupt-controller;
-            #interrupt-cells = <2>;
-            gpio-ranges = <&tlmm 0 0 180>;
-            wakeup-parent = <&pdc>;
+        compatible = "qcom,sm8250-pinctrl";
+        reg = <0x0f100000 0x300000>,
+              <0x0f500000 0x300000>,
+              <0x0f900000 0x300000>;
+        reg-names = "west", "south", "north";
+        interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        gpio-ranges = <&tlmm 0 0 180>;
+        wakeup-parent = <&pdc>;
     };
-- 
2.34.1

