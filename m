Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FEA45E6C5E
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 21:57:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232615AbiIVT5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 15:57:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232443AbiIVT5G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 15:57:06 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C6D4E62E0
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 12:57:04 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id k10so16460140lfm.4
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 12:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=4fixEBINCr/RAVGnEymYGAGCwVd9M7eYkNEHykT7ecs=;
        b=JhZ6v3vPLwF/OkxHu9Iz0af3ga9sEAkA8Sz2gugjzmsQjUHvwnL/K1e/WXBVQ8V+/2
         wtiLeYb4dCgZcqiWPmFi9pEpZmtYWbELn5h6wsAgSO+MyCT/qnL95ipayofx3OHPj5Zo
         Iqt63kAJQD/KzB2Fr+tY0sMCWWmMwdYOgo3hwGhd5Wc2YS+SQ61ddXebd1WlHHJ0zzp6
         bZC0jXRS4TbbB5gqkkOpyHhdK6Rc8K4YuDCrBFwHnKJErimuHKLI3tCrLCZYJf7NHrEY
         NoG4KLaOpQ6/F/RS2Evtok/B2IUJbgQU+j87ETcJxAHAT//4GxCGB+jAXq0qevxJUoYK
         S7VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=4fixEBINCr/RAVGnEymYGAGCwVd9M7eYkNEHykT7ecs=;
        b=JcgyzPoSPbOHNzUXlzRP3vNy2pUCkYq566AwuVG4MpVFe8+JMWZgWqwLUMp59nKpBA
         TTDE9oIakXARDMVAh2dTUXhuU3fkgQ59hcgO3ANjJkiq7rN9t5+H7fszXpzR8pDJL9Ae
         lNEiFMlHaG4QItV6o2+IbFk3CDwc+6+Vk7R1DYpweM/rCvubt1s/7m22bWZwPRnvEPQW
         h9g7eXOBl1X+QVp+VRtLjrsTi5uyVglVV1pqkGBroQofIK25kj9M/5rvCOVY/VseQbqC
         bIYbMrgJK/0i/33f6MCF27Cmgq6zNvCsee191VwPdHdh92rdnqx7Bx+YgOFG5IssCecJ
         a3Lg==
X-Gm-Message-State: ACrzQf0DKWEE/1tWS4zl8VLziFKHtX+S++ZIx8HePpXcgpQOX7quGfIW
        eqDKyKhUAT5oZxH9WHw7FlrtFg==
X-Google-Smtp-Source: AMsMyM50pZiSsU1aW5cmDkfGV1ge9w/3Xpxg5gOlX6WWF+NCyddN1MsQ9HbUOzIfKpOQdkmP90ZNXw==
X-Received: by 2002:ac2:5ece:0:b0:497:acb3:a6f5 with SMTP id d14-20020ac25ece000000b00497acb3a6f5mr1942699lfq.112.1663876622802;
        Thu, 22 Sep 2022 12:57:02 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x15-20020a19e00f000000b00498fc3d4d15sm1079375lfg.190.2022.09.22.12.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 12:57:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 05/12] dt-bindings: pinctrl: qcom,sm8250-lpass-lpi: fix matching pin config
Date:   Thu, 22 Sep 2022 21:56:44 +0200
Message-Id: <20220922195651.345369-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
References: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
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

The LPASS pin controller follows generic pin-controller bindings, so
just like TLMM, should have subnodes with '-state' and '-pins'.

  qcom/qrb5165-rb5.dtb: pinctrl@33c0000: wsa-swr-active-pins: 'pins' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../qcom,sm8250-lpass-lpi-pinctrl.yaml        | 36 +++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml
index 06efb1382876..9640d1110fdd 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml
@@ -42,9 +42,17 @@ properties:
   gpio-ranges:
     maxItems: 1
 
-#PIN CONFIGURATION NODES
 patternProperties:
-  '-pins$':
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-sm8250-lpass-tlmm-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-sm8250-lpass-tlmm-state"
+        additionalProperties: false
+
+$defs:
+  qcom-sm8250-lpass-tlmm-state:
     type: object
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
@@ -130,4 +138,28 @@ examples:
         gpio-controller;
         #gpio-cells = <2>;
         gpio-ranges = <&lpi_tlmm 0 0 14>;
+
+        wsa-swr-active-state {
+            clk-pins {
+                pins = "gpio10";
+                function = "wsa_swr_clk";
+                drive-strength = <2>;
+                slew-rate = <1>;
+                bias-disable;
+            };
+
+            data-pins {
+                pins = "gpio11";
+                function = "wsa_swr_data";
+                drive-strength = <2>;
+                slew-rate = <1>;
+            };
+        };
+
+        tx-swr-sleep-clk-state {
+            pins = "gpio0";
+            function = "swr_tx_clk";
+            drive-strength = <2>;
+            bias-pull-down;
+        };
     };
-- 
2.34.1

