Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FEE7687AA7
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 11:47:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232695AbjBBKrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 05:47:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232753AbjBBKqq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 05:46:46 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E033773047
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 02:46:12 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso3381677wms.5
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 02:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0BFZdJAFzmaSb6924byqc+JrhUYMm2STueF/gtihQYY=;
        b=XOM3Sq7QT7VmJDGPc10KBQWq2W8MLane6C430TttEecD1rpuEa3sGwGoz+fsNPVcu+
         K06p7l8qkSt9E+7LH7A1W+lyg68m9+Nbeafoe10TFQRRIciYtV29HpTATjUvHrz21E8N
         U3ZgRPco1DgZgKk/yVQ5KB0DvQxbQZAuDK+Mx8rfa0y90ONJfyG7I6c2CmaClZ3D6kk1
         WHtoOPCjjXuBQfrRh/i6oKFO7sAt2LwEZLBJL0eKPgTrEOCkt1ELh1LT0KRJtZY4xw6l
         BrNa0lJxpwDz89vS3z6xlIAXQjPb8PP+KQFAkG1YwjS5/tJDIebCVwGniCdUJBFC70RH
         F1Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0BFZdJAFzmaSb6924byqc+JrhUYMm2STueF/gtihQYY=;
        b=JorbJ7ZlO76D/cHYw4l+R2ApeTJ/jsaJ1r7vs34Qo8Ro1WSn1pr2nu5vO+toTehe7Z
         gkRXrmlSeaT7d9tAoXkXo6y2mEH4HsBiclnYgFtxOmwn6kN23NpxMUmEaJdKAIszCz7k
         UIrCpE0WOl8QFWyrRSG76VmdC+fNjwswkdjM1AX71buyCEkim0uDE+6e2JVJsL8ghTg2
         y8OBwrFaWiQOpRE+LfvzbzokLgHMg3tWihtNdRb7j7I3yABzJXO78bz7Ydba6r0FtHB9
         buIkBOHoPdv4vDtlz56ZP8LJW4NNVNg3OVhLnjEZq1siACrYJz981j0WC+na7brfurP8
         KWkQ==
X-Gm-Message-State: AO0yUKULDDAG9Y1AUm0fm32tNrbeSqdaQgrBYDECCroKPy1aZjSqOa2T
        zna1351hlNK/KBw/bq4lZzuATQ==
X-Google-Smtp-Source: AK7set/AdblJMf2ZtH0Ld7YuiDfy6yhEsVB0acGbMslczzMEaSKiGlL4qkmWvfbkU20IJplzeuoubA==
X-Received: by 2002:a05:600c:5404:b0:3dc:4355:25f6 with SMTP id he4-20020a05600c540400b003dc435525f6mr1468122wmb.26.1675334753990;
        Thu, 02 Feb 2023 02:45:53 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n24-20020a05600c181800b003dc3f195abesm4307329wmp.39.2023.02.02.02.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 02:45:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Vinod Koul <vkoul@kernel.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Luca Weiss <luca@z3ntu.xyz>, Iskren Chernev <me@iskren.info>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 02/10] dt-bindings: pinctrl: qcom,msm8909: correct GPIO name pattern and example
Date:   Thu,  2 Feb 2023 11:44:44 +0100
Message-Id: <20230202104452.299048-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202104452.299048-1-krzysztof.kozlowski@linaro.org>
References: <20230202104452.299048-1-krzysztof.kozlowski@linaro.org>
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

The MSM8909 TLMM pin controller has GPIOs 0-112, so narrow the pattern
and gpio-ranges in the example.

Fixes: c249ec7ba1b1 ("dt-bindings: pinctrl: Add DT schema for qcom,msm8909-tlmm")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../devicetree/bindings/pinctrl/qcom,msm8909-tlmm.yaml        | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8909-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,msm8909-tlmm.yaml
index 449e6e34be61..85082adc1811 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8909-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8909-tlmm.yaml
@@ -63,7 +63,7 @@ $defs:
           subnode.
         items:
           oneOf:
-            - pattern: "^gpio([0-9]|[1-9][0-9]|10[0-9]|11[0-7])$"
+            - pattern: "^gpio([0-9]|[1-9][0-9]|10[0-9]|11[0-2])$"
             - enum: [ sdc1_clk, sdc1_cmd, sdc1_data, sdc2_clk, sdc2_cmd,
                       sdc2_data, qdsd_clk, qdsd_cmd, qdsd_data0, qdsd_data1,
                       qdsd_data2, qdsd_data3 ]
@@ -127,7 +127,7 @@ examples:
         interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
         gpio-controller;
         #gpio-cells = <2>;
-        gpio-ranges = <&tlmm 0 0 117>;
+        gpio-ranges = <&tlmm 0 0 113>;
         interrupt-controller;
         #interrupt-cells = <2>;
 
-- 
2.34.1

