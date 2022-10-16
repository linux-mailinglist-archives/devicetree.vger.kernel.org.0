Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BF5B6001E4
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 19:04:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbiJPREL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 13:04:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229939AbiJPRDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 13:03:32 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56B2743AF6
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:02:31 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id a24so6508298qto.10
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PySsXOlxYZXqs88rbgNi3WZ4J6CZncS4jq9lWbm8d9k=;
        b=pLuwweWN0sjuoF8FZjJ4J8HdsVoQz8TMKK4PrAL9dkvDJ6uExFgOyOS7LGR/7fNh2N
         oB2b9wteP51bK9qhswzwikoNMnIj6ImmAssO/SBZk2DFnPsSLeX7/19F/JOFaAJFOCBj
         QrngmHISudxZrWgaFbX4qcVY+QbYTLkdl49mQoB3um+vS6A4nF93nkQR8n0YKNxi/raT
         YApqZLKVePcilASU4P+urO64WfgkIG5tXj0AgqAInrlG5YFCWzWROUIQ3BxkUjULtGB+
         bU8iigNh363RjW5MhxQqMACjKQfPba7lYpjNtHxXF+nnaxjXi43D3SMjJBoAtZNrGrAo
         n30Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PySsXOlxYZXqs88rbgNi3WZ4J6CZncS4jq9lWbm8d9k=;
        b=esDFYm4g/caKkTGBrcpkebkEn/dzovM5h5jNCUCLaTm9KWbgLYPjnNlEz0CzoB/jk5
         oUsZK8vU0dMsAVNDmvG5MI+6SNIxgxlUK9gs6YcizUKqx629xJyypLJHU0xWP8EQhNpf
         5VP2iZyiKb6zASicZVmWi0+99omER9MhwLBRT7aGKpEyI2K3+seoMCGRAMHImlHHF5lY
         49mD5gV/Oaesk8TvPf/83BOxhpCQLDHtRbX5dMC25PIX8FLcfoA+FRggyApoaNXk2Ku5
         G7Gi+xOn0VLODWW7s9kSG2qENIRnjJFOZyckjPqmKMD9NRAxiJgZe/aeeOqPWY6k/8Cz
         p7bA==
X-Gm-Message-State: ACrzQf2Wxh+LwWGyI8OAqoaEhmggduCUND0dtG6gq2sm3iJ0heq2uI4O
        Yd6DU+3XiMypc1/tVggSXclHEQ==
X-Google-Smtp-Source: AMsMyM5wEU5zBuVC3rSk+6vpEkvcqpCJf+FslFu2mBIKU0MQqvfKKGKcsBRWR+cRWaF8UH/iDrx3QQ==
X-Received: by 2002:ac8:7d90:0:b0:35b:afd3:20aa with SMTP id c16-20020ac87d90000000b0035bafd320aamr5675383qtd.252.1665939740528;
        Sun, 16 Oct 2022 10:02:20 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id q6-20020a05620a0d8600b006ce7bb8518bsm7539967qkl.5.2022.10.16.10.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 10:02:18 -0700 (PDT)
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
Subject: [PATCH v5 22/34] dt-bindings: pinctrl: qcom,msm8953: use common TLMM schema
Date:   Sun, 16 Oct 2022 13:00:23 -0400
Message-Id: <20221016170035.35014-23-krzysztof.kozlowski@linaro.org>
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

Reference common Qualcomm TLMM pin controller schema, to bring common
properties, other pinctrl schemas and additional checks, like function
required only for GPIOs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v4:
1. Drop drive-strength (included by common TLMM node).

Changes since v3:
1. Drop properties and required items which are already provided by
   common TLMM schema.
---
 .../pinctrl/qcom,msm8953-pinctrl.yaml         | 46 +++----------------
 1 file changed, 7 insertions(+), 39 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
index c162796ab604..03f1cc783659 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
@@ -20,29 +20,13 @@ properties:
   reg:
     maxItems: 1
 
-  interrupts:
-    description: Specifies the TLMM summary IRQ
-    maxItems: 1
-
+  interrupts: true
   interrupt-controller: true
-
-  '#interrupt-cells':
-    description:
-      Specifies the PIN numbers and Flags, as defined in defined in
-      include/dt-bindings/interrupt-controller/irq.h
-    const: 2
-
+  "#interrupt-cells": true
   gpio-controller: true
-
   gpio-reserved-ranges: true
-
-  '#gpio-cells':
-    description: Specifying the pin number and flags, as defined in
-      include/dt-bindings/gpio/gpio.h
-    const: 2
-
-  gpio-ranges:
-    maxItems: 1
+  "#gpio-cells": true
+  gpio-ranges: true
 
 patternProperties:
   "-state$":
@@ -59,7 +43,7 @@ $defs:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
-    $ref: "/schemas/pinctrl/pincfg-node.yaml"
+    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
 
     properties:
       pins:
@@ -121,40 +105,24 @@ $defs:
                 uim_batt, us_emitter, us_euro, wcss_bt, wcss_fm, wcss_wlan,
                 wcss_wlan0, wcss_wlan1, wcss_wlan2, wsa_en, wsa_io, wsa_irq ]
 
-      drive-strength:
-        enum: [2, 4, 6, 8, 10, 12, 14, 16]
-        default: 2
-        description:
-          Selects the drive strength for the specified pins, in mA.
-
       bias-pull-down: true
-
       bias-pull-up: true
-
       bias-disable: true
-
+      drive-strength: true
       output-high: true
-
       output-low: true
 
     required:
       - pins
-      - function
 
     additionalProperties: false
 
 allOf:
-  - $ref: "pinctrl.yaml#"
+  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 required:
   - compatible
   - reg
-  - interrupts
-  - interrupt-controller
-  - '#interrupt-cells'
-  - gpio-controller
-  - '#gpio-cells'
-  - gpio-ranges
 
 additionalProperties: false
 
-- 
2.34.1

