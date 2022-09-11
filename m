Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F0C25B4E05
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 13:14:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231246AbiIKLOZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 07:14:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230426AbiIKLNW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 07:13:22 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92333CBC9
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:42 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id bt10so10405795lfb.1
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Z/95Brm84Hs/a3P501KqW9gtmX0Qfi6hmXE/MDLL0vI=;
        b=AcIh6NSSNJ/VA5Tz1zWjElrJZBfojwpeWF8hLMoTQh9+nsXu8edbrEGZPXd8IUwADp
         CD+zaRzDmFIW05Q1715P3cHv+8s53yPUYaalUc8O6joV3HE/refgbKQwg3rwZ328K5LW
         YM9leS3TfwC/sCNfjbiYko0tYqOa1f2TqOFi/Fn/EOSTdbxLFp25mBL8fSeta99ITaNd
         JZzlHzSi4ahtNKGOARCwOHitYk/oC3F/C4Gch21FD3U0b2o2ixnhKaWYTowdhcecaqpl
         AeZLDoGGXqKF4vcmCsR8XAjVpfslATC5l4hlOS/olziY7lIim9fujf6jlhhXTi6iML1Q
         uBkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Z/95Brm84Hs/a3P501KqW9gtmX0Qfi6hmXE/MDLL0vI=;
        b=ob13+ZsccOkFU6Qn1p9TbaqMnWVLUQ3IXoH7TMiJQr1gdOLhlQBke3fAUyYekgEGeY
         3VWiX7CLTn3396iU/Q2qE+UXWY8uKxzsA0nHRnjnbTa8prDskMD89CmpzBpjfO8eS56r
         ozS4V1o0FQw1xINuYhIUQwrFLZAbUky8Upc3MNCdkxpZvYZ+e97InL79UoX9lpJeSmFo
         cgSrjTyxW3lRfM0E419uoNr7tWnvEKKTwuzJh5u39cB1N7RssRkaFNDXhu6Z9czrus8N
         tWcqe1dzbeG4TeLfdoDV3qXbZHpbIHd0vxyMAcgvt2aV7HDKCFv2A9Ty7y0muYS6TEKP
         HRLA==
X-Gm-Message-State: ACgBeo0/mBYh/+Tydjj+RyJkR3TaSx0sRYyqFsOpd8F0nzqUIdJNFFg/
        Xqtflc5L6/Gxi9aFKmzNpsFmaA==
X-Google-Smtp-Source: AA6agR6IKPVduQUCvJSyGJ0T/BoU98cLLGYwkErlZbKVII4M/wu8OPGzMYdlZzHq5TqNHc1IWPffCA==
X-Received: by 2002:a05:6512:33c8:b0:48a:fe63:e4ea with SMTP id d8-20020a05651233c800b0048afe63e4eamr6915390lfg.415.1662894761803;
        Sun, 11 Sep 2022 04:12:41 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025dfd8c9287sm607365ljc.69.2022.09.11.04.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 04:12:41 -0700 (PDT)
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
Subject: [PATCH 29/40] dt-bindings: pinctrl: qcom,sc8180x-pinctrl: do not require function on non-GPIOs
Date:   Sun, 11 Sep 2022 13:11:49 +0200
Message-Id: <20220911111200.199182-30-krzysztof.kozlowski@linaro.org>
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

Certain pins, like SDcard related, do not have functions and such should
not be required:

  sdc1-clk-pins: 'function' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Another question is whether 'function' should be disallowed for such
pins?
---
 .../bindings/pinctrl/qcom,sc8180x-pinctrl.yaml       | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc8180x-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc8180x-pinctrl.yaml
index 646fabdf81f7..4afe20bac87c 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc8180x-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc8180x-pinctrl.yaml
@@ -61,7 +61,6 @@ patternProperties:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
-    $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
 
     properties:
       pins:
@@ -112,7 +111,16 @@ patternProperties:
 
     required:
       - pins
-      - function
+
+    allOf:
+      - $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
+      - if:
+          properties:
+            pins:
+              pattern: "^gpio([0-9]|[1-9][0-9]|1[0-8][0-9])$"
+        then:
+          required:
+            - function
 
     additionalProperties: false
 
-- 
2.34.1

