Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D83506001D3
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 19:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230159AbiJPRDu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 13:03:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230034AbiJPRDA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 13:03:00 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0771D38462
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:02:23 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id r19so6528173qtx.6
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oehwU97ABv70/uUNvHBwihFGC0abyOEOuiqZj3ZF8Gc=;
        b=wjZozghd2baNKJ1g3I065/vo7PHRk/obE5/8q66FOXMxkZdwVmmCXejkx+yC5qVApu
         2R8UE/Ip+uHMFOTZ7ZJGRA+XNYmROqRo1ctdXwHy10tzCG3fp5cNm7YMZs3pcl9nAAyA
         KrdLpPIflg2RsgodSz0yqVXIKjoS79ZevlPYPJoRWnqe3uyEIhpp7O8c0UX9URPXiM34
         dBfMdgPGa+yASL61yeG5TOfg3Dnv+iNdFoYzKM81qV2S8dsEoYT8efT6mwBojX9BpUlc
         CwzaL1nQmMKLtkAymE5kxJgIc06jXJooHs+UfFwk8nFymdGG6qw/27I+MeXeFgs2wN/u
         b6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oehwU97ABv70/uUNvHBwihFGC0abyOEOuiqZj3ZF8Gc=;
        b=x3+e44vnbT+SOhkqTztqozGXMPXjmcrAHxYt8XxzSJ92YE/nQJi86Jf4jLhGJoi6Gz
         qGMy/dsNCDjwXujLOfvSVrd+u+uHzsXNwpjV3zdemA+xD1b/WmZAVwxFTmKp50mEA3VX
         u+lCxGucwSEu09J47Gg81SjDTmI8s+ncVkJLlqLUBbFqKnvGYqMllHJnmaSnbKM0yr5g
         gNuz5aLyornTqc3cteH/llXPu7BsXVQLkOBlrurNVnOya4ajPSBXmpoJ+LS2qdHW3dJC
         ae8ONZi9MRFmEk0yLvVM1I2fCSdRmd/tTdg34mnwcn0shnFQ5hBjmN7hAfKxnwLOSbs0
         hutQ==
X-Gm-Message-State: ACrzQf0277/JpCD4JsxDprImDX8SPb3W/z8t4rSEfPEAD0m2lCEzRWhu
        CKx2bl+8g/1mBo7+Dw/uXxKroQ==
X-Google-Smtp-Source: AMsMyM6uqWpd+/OH48KaK3Fg/7TzIC34pQkuqA7dGEjUH02wa4zwOY+vT+GdfK8kIBRfUkweqZbB6Q==
X-Received: by 2002:ac8:5849:0:b0:39a:8e35:1bfa with SMTP id h9-20020ac85849000000b0039a8e351bfamr5698423qth.573.1665939743621;
        Sun, 16 Oct 2022 10:02:23 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id q6-20020a05620a0d8600b006ce7bb8518bsm7539967qkl.5.2022.10.16.10.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 10:02:22 -0700 (PDT)
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
Subject: [PATCH v5 23/34] dt-bindings: pinctrl: qcom,msm8953: fix indentation in example
Date:   Sun, 16 Oct 2022 13:00:24 -0400
Message-Id: <20221016170035.35014-24-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org>
References: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org>
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

Bindings example should be indented with 4-spaces.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../pinctrl/qcom,msm8953-pinctrl.yaml         | 34 +++++++++----------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
index 03f1cc783659..cfe4664f6fb3 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
@@ -128,21 +128,21 @@ additionalProperties: false
 
 examples:
   - |
-        #include <dt-bindings/interrupt-controller/arm-gic.h>
-        tlmm: pinctrl@1000000 {
-              compatible = "qcom,msm8953-pinctrl";
-              reg = <0x01000000 0x300000>;
-              interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
-              interrupt-controller;
-              #interrupt-cells = <2>;
-              gpio-controller;
-              #gpio-cells = <2>;
-              gpio-ranges = <&tlmm 0 0 142>;
-
-              serial_default: serial-state {
-                    pins = "gpio4", "gpio5";
-                    function = "blsp_uart2";
-                    drive-strength = <2>;
-                    bias-disable;
-              };
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    tlmm: pinctrl@1000000 {
+        compatible = "qcom,msm8953-pinctrl";
+        reg = <0x01000000 0x300000>;
+        interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&tlmm 0 0 142>;
+
+        serial_default: serial-state {
+            pins = "gpio4", "gpio5";
+            function = "blsp_uart2";
+            drive-strength = <2>;
+            bias-disable;
         };
+    };
-- 
2.34.1

