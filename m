Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 247785FB93E
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 19:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229973AbiJKR0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 13:26:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230073AbiJKR0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 13:26:21 -0400
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 988AD11146
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:16 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id j21so6723861qkk.9
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eexU8QFju8foCFKK6LIrBeBMIjjHKwOcOdgfsoR5Zts=;
        b=qJg502JCCzGtCOXo1iydsBXwROQpoVQBUq5jr6c5qP88Z5RfRS86WWJ5MYg6B8z1id
         ZtZ4/8LsdlJMh8CGaQ/U2hCzVgqf74v7gYpel5UiEx/jDhoSYXBECHE5UybTeC9IPH8H
         E3A+ToB/LZPkscQkjS6z4R4kQn3rN61FUABun4Kw91OTHt0g2TCN14IP2oEmA4QSZywL
         3wy/1dEIm3SzpfxaBp1cOPovPZvOUjo4IW4eYhx5v5dghb0B9jxUuDlBfejGcMetMul2
         t+a8LhVR6CwNuNZjRKb4TsskBtH6nZAKj1Jz5rhu6k1F3njJBIYvL97U4bP5IYIRdhG7
         4nCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eexU8QFju8foCFKK6LIrBeBMIjjHKwOcOdgfsoR5Zts=;
        b=gHDi9nB/Nf3ptdgX8J8ULqb6OGmhyZbJjwUdcAYHJfO3PiUTK86Dmz7Amj77J//Pbq
         2wooCdu9yzWzm6TZjMwk6EtsqPYj0w6lZZchJR9QmBLWmcZOApn9h/b3K35hCnWLc/R0
         DCMoKP2MYlHlW0YCD1c+yF+l6kKiCZFF3wz7FY6himT7cLOk0kXk/Sc+KImfpUhyF44P
         +0Lc1HLPOMZlkZaOqgJeWzaHYmNU0XApa2cnfdfwGL2qlFxamTofdeNrAD4/iFBL4JlO
         8iHNrAlzy1jh3h/YaMlKFL0g6EZGhM3HbWlnw3DBFa2B299kFXDP4W328dc18PI2Hpo1
         C3LA==
X-Gm-Message-State: ACrzQf1iBqZTBKK1DHUcpCmjOaqBOsZXmD3wbJzYLf0QTbn/RDvUVrjE
        s7kolQT57+K9IJwt3+KwJqwMNw==
X-Google-Smtp-Source: AMsMyM72U5wvbPcaUfrXy0dlzb7UYbYJh0yCiirbtEPI/iHMlwBiuRihmXIPGxcqutA4/OjvlKrT3g==
X-Received: by 2002:a05:620a:2893:b0:6bc:6ecd:2c44 with SMTP id j19-20020a05620a289300b006bc6ecd2c44mr16917020qkp.593.1665509175865;
        Tue, 11 Oct 2022 10:26:15 -0700 (PDT)
Received: from krzk-bin.home (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id i14-20020a05620a248e00b006bba46e5eeasm14289087qkn.37.2022.10.11.10.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 10:26:15 -0700 (PDT)
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
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 07/34] dt-bindings: pinctrl: qcom,sm6125: drop checks used in common TLMM
Date:   Tue, 11 Oct 2022 13:23:31 -0400
Message-Id: <20221011172358.69043-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221011172358.69043-1-krzysztof.kozlowski@linaro.org>
References: <20221011172358.69043-1-krzysztof.kozlowski@linaro.org>
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

The common Qualcomm TLMM pin controller schema already brings
requirement of function for GPIO pins.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pinctrl/qcom,sm6125-pinctrl.yaml         | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6125-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6125-pinctrl.yaml
index 5cb8b272cb7d..843d110df240 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6125-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6125-pinctrl.yaml
@@ -61,6 +61,7 @@ $defs:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
+    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
 
     properties:
       pins:
@@ -112,16 +113,6 @@ $defs:
     required:
       - pins
 
-    allOf:
-      - $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
-      - if:
-          properties:
-            pins:
-              pattern: "^gpio[0-9]|[1-9][0-9]|1[0-2][0-9]|13[0-2]$"
-        then:
-          required:
-            - function
-
     additionalProperties: false
 
 examples:
-- 
2.34.1

