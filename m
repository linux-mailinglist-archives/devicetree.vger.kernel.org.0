Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68A715EC7F4
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 17:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231875AbiI0Pfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 11:35:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232462AbiI0PfW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 11:35:22 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C90DF9580
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 08:35:03 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id q17so11318319lji.11
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 08:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=7sJl4vE6bSD7GZqCJlHjtVSgYLna8lnN5EzCJBmeopA=;
        b=nRDvZwPBrTayD+fBxzdQRAc0HV8Azre+t740Fq4iLVZ0n0g5ROIWKQt3ERsppYQOAG
         mnQpS6PQG8UKqNLV2xlQoSu5mbEsSOZBZCZOh1X0Jgn5PCjSYQfi3wvJN3Ive3Wr7b0M
         AOjVmRMRPBJnTFwnq2Xwi7iSRNQZIyuyI4QXi/CocKgIZzlTz+wodo5x548c++dVtlx3
         nrjoFAKjKe3fkQYgRXMtPzh7iwqzHy1qoVHSdix4cUtnZcpFyntCa/3kOmT3OPmPQOaW
         5nGgybhzap4bcvUdCsuUXUteI79ZbEc+hOldapyFRYpRo8G/7vAjm90d2ZC6347bvGNd
         hBzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7sJl4vE6bSD7GZqCJlHjtVSgYLna8lnN5EzCJBmeopA=;
        b=JhcIsKmk3CTZGkPdpUf97YC6DXHiSd3Rgn71d+KKk8Tkt9naA0cyTFXyIhtxsSgvp0
         fH0BQxiqrnIEL+DafeUmqX4LOI8JcpMtJC65WYKQkqk4a4dmEDWs+90ZAMm5RvEg+MT5
         zQlkoivZmWqCpsvNW/SP7diZ9/OF12tuS/nm8sjoz9sFtF399lI1+WnRteHBKZvz/waH
         x3wKvXqs1Vt8Rm6ct4VQhxy0XcEaamHLuQwRKQ9PB1lSjxC2SMxivoDfsA8hpXc2NSzh
         yTb/JkYuecFzjfyZwFgc6Q4xof2cqKiIZvA1Lbe2Z55sahwJsTLVlmJo35SEyWuvnlT4
         IdtA==
X-Gm-Message-State: ACrzQf1hTFuaALBavyK69Ao8VkOEbaaW2XIlGVCWfc15uQdyRkK4M8dL
        PqNmcD7NOyb47aqhl011Q5Y5gQ==
X-Google-Smtp-Source: AMsMyM7enD0wwe3qFFVAo1ipolYZLlhG0hrKNSJ4mspYSlmdtozSrsK1DmHigcHASyNbDIBhHKCt7Q==
X-Received: by 2002:a2e:ba15:0:b0:26c:1798:b178 with SMTP id p21-20020a2eba15000000b0026c1798b178mr9297272lja.19.1664292901145;
        Tue, 27 Sep 2022 08:35:01 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o18-20020a2e7312000000b00268bc2c1ed0sm191592ljc.22.2022.09.27.08.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 08:35:00 -0700 (PDT)
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
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 07/12] dt-bindings: pinctrl: qcom,sc7280-lpass-lpi: fix matching pin config
Date:   Tue, 27 Sep 2022 17:34:24 +0200
Message-Id: <20220927153429.55365-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927153429.55365-1-krzysztof.kozlowski@linaro.org>
References: <20220927153429.55365-1-krzysztof.kozlowski@linaro.org>
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

The LPASS pin controller follows generic pin-controller bindings, so
just like TLMM, should have subnodes with '-state' and '-pins'.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../qcom,sc7280-lpass-lpi-pinctrl.yaml        | 29 +++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
index 624e14f00790..a8a48b684692 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
@@ -37,9 +37,17 @@ properties:
   gpio-ranges:
     maxItems: 1
 
-#PIN CONFIGURATION NODES
 patternProperties:
-  '-pins$':
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-sc7280-lpass-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-sc7280-lpass-state"
+        additionalProperties: false
+
+$defs:
+  qcom-sc7280-lpass-state:
     type: object
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
@@ -116,4 +124,21 @@ examples:
         gpio-controller;
         #gpio-cells = <2>;
         gpio-ranges = <&lpass_tlmm 0 0 15>;
+
+        dmic01-state {
+            dmic01-clk-pins {
+                pins = "gpio6";
+                function = "dmic1_clk";
+            };
+
+            dmic01-clk-sleep-pins {
+                pins = "gpio6";
+                function = "dmic1_clk";
+            };
+        };
+
+        tx-swr-data-sleep-state {
+            pins = "gpio1", "gpio2", "gpio14";
+            function = "swr_tx_data";
+        };
     };
-- 
2.34.1

