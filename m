Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55A6E5A3DB3
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 15:26:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbiH1N0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 09:26:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbiH1N0x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 09:26:53 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A80D223162
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 06:26:52 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id v16so4387800wrm.8
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 06:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=6FoOZUofj+DPKoTc01frTXq9MERyLJu+7sHRBJl/pmY=;
        b=z8eenFYJu0Djjvy/BgO44Ndx/fM7y9cGQjn3vVNoj0FNlilwchiJyBoMFd80eRV1R9
         XNjnZXoz+PUUWDKiM1XmvWDEy2CG2YFXU2x87I7n90HpnXr7+/0b+kOizqDxGZBT33Yf
         DV3+KHbse+BaAITxg2XPziH836xMPSxqrTjToS5tuLITXlTVNWHYaFU0UHaRMjHTM+qH
         Or/l6UDFCD7l5N1y93WAq9aZ+TWt2OXC8WpCjFUoqmEkDbNcUATyPKoa0OD2vWzPFh7x
         t2QaOhpfkitaGB5JxGJkl0cHt55xoONObyuFYWN8OOvzloXavNWZoH6flmmFyluz1i3M
         JQbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=6FoOZUofj+DPKoTc01frTXq9MERyLJu+7sHRBJl/pmY=;
        b=oEftbQgqPqT4FLeD9SRZgJEZocx0J062SV2Q5m86KqKnPCr09N9JN8QWHw2kqku0d3
         Z1koDp7ua981NxtdOaS9MCWzynccnTdoKeYcHiae73uWGYRFciz9vvfvaMfwyK5Qqlbt
         MeKrAUHD+4ODPMOfwHRfjOOZnPTMcMc+uifh0+upOBD0BSxY/UkTVwQWMDmHOl0/1xah
         UTnj2tQmzJHcG7aBylilC8vIXd79DjSz2cbwUl4v+VQPVE/QQ5yH5q1N50A7g8cNNsTg
         NyepzEDrkb4DUHNAWNHvFPzV3dZBE7RBOa+sc5ZhqXO/ZuoiIty8EjK6OE7GgVx0D6V+
         Q7Qw==
X-Gm-Message-State: ACgBeo0KPcI0dSNJumETC/iOkZXKApV8yYj2EDPkmEC1bibp113v2Wf6
        T/dysi13G2YmXE/sZPOahbEe8w==
X-Google-Smtp-Source: AA6agR76UTD4PdeIWm/3rHU2rNZXL2mvUtcRqh1P2PcmqiR8USZFWaDqZzk+NtHS7FZqwgSYI8FAcg==
X-Received: by 2002:a05:6000:1acb:b0:225:6f9d:37ee with SMTP id i11-20020a0560001acb00b002256f9d37eemr4334134wry.170.1661693211269;
        Sun, 28 Aug 2022 06:26:51 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id e15-20020adffc4f000000b0021e51c039c5sm4518874wrs.80.2022.08.28.06.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Aug 2022 06:26:50 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: mfd: qcom,spmi-pmic: Drop PWM reg dependency
Date:   Sun, 28 Aug 2022 14:26:47 +0100
Message-Id: <20220828132648.3624126-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220828132648.3624126-1-bryan.odonoghue@linaro.org>
References: <20220828132648.3624126-1-bryan.odonoghue@linaro.org>
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

The PWM node is not a separate device and is expected to be part of parent
SPMI PMIC node, thus it obtains the address space from the parent. One IO
address in "reg" is also not correct description because LPG block maps to
several regions.

Fixes: 3f5117be9584 ("dt-bindings: mfd: convert to yaml Qualcomm SPMI PMIC")
Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 65cbc6dee545e..2a5bafe0660a0 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -92,6 +92,10 @@ properties:
     type: object
     $ref: /schemas/regulator/regulator.yaml#
 
+  pwm:
+    type: object
+    $ref: /schemas/leds/leds-qcom-lpg.yaml#
+
 patternProperties:
   "^adc@[0-9a-f]+$":
     type: object
@@ -117,10 +121,6 @@ patternProperties:
     type: object
     $ref: /schemas/power/reset/qcom,pon.yaml#
 
-  "pwm@[0-9a-f]+$":
-    type: object
-    $ref: /schemas/leds/leds-qcom-lpg.yaml#
-
   "^rtc@[0-9a-f]+$":
     type: object
     $ref: /schemas/rtc/qcom-pm8xxx-rtc.yaml#
-- 
2.37.1

