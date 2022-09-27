Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0DDB5ED147
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 01:53:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232590AbiI0Xww (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 19:52:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231787AbiI0Xw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 19:52:29 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E741BE5FA3
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 16:51:13 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id e18so7521727wmq.3
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 16:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=i+LNVuSF1Re6e4nCwgEmOGiRH6D3+8n1rNYLab04rvk=;
        b=bHY+rtpH8B93qYeYalrH2HgSibAy4VPaBuu2YSnnWM/9lqATIZmANNBELCoKib1sTj
         aDZSv4Qe7Hu+A6e7/bQvcMITwFG1Cg0iJbiokUSodvkLW9p0cD1siedwNf+M5LdJ+4XZ
         e3B3i8eyTodB8tjHbm3XRk0/LCmz6QI/WJlXDyx3hhmHMOHI1YSfhPOPCrM38QpMWiMD
         9X3TE7gUaU06XUtA0zVzChYiIMHTZubHgo4DXi37uqkSE4rQLaBqhICUVWfijGXVfAj2
         xAuylG2x71VrN8/p0iKXALnLGd1efvGhAca5mIv90ciZvCeLdgvFrxBaXTezGP//JbnI
         8cDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=i+LNVuSF1Re6e4nCwgEmOGiRH6D3+8n1rNYLab04rvk=;
        b=d/fP2QZX7Qbgleiq2kmX4eDQMLeyxQkHIldDGWCkU8ZoPSH2xqkNV8ChypdcCfD1GU
         aGLu/sezETEWnb/gY7NtfMLAXZJTxbkC1ZZlrFno5PRRs4MIxBhN8vhYOk/5NNYgVN+C
         hOVnEOkj08WcEniAj31qC7LjUvD1ECb78MrXLsbXV8n6SkL7MjNOK8kGei1n7rdz1mc8
         2IKj9eJ02/y2cGar44gkWH4dv7CLT4dnYrbSOsnusALuTSKwGhcQdbd8Z3AvU9n/JPEP
         FnVd8afqTmepJC8V7jQPmHMVtiTD3cV0cI2xtQuIY36CboFgIgT2XQjLGKOvQ+oEmasB
         KcMA==
X-Gm-Message-State: ACrzQf1SQYCM+cNl0ZRgaV4MkHN5pJlvX34hCooGQAIKv9n4bsR512Vm
        VvcmSLl/z2/fhiMU+SgunEh7dg==
X-Google-Smtp-Source: AMsMyM5BEXBQ9QZ/h2fgy/AX3sDYUhua7MCgg/3LCtt3fM/XZTHfgnGWmvQ2SvUikidj7skF04QOeA==
X-Received: by 2002:a05:600c:1910:b0:3b4:bb80:c95e with SMTP id j16-20020a05600c191000b003b4bb80c95emr4304857wmq.54.1664322671572;
        Tue, 27 Sep 2022 16:51:11 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n2-20020a05600c4f8200b003b27f644488sm145301wmq.29.2022.09.27.16.51.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 16:51:11 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] dt-bindings: mfd: qcom,spmi-pmic: Drop PWM reg dependency
Date:   Wed, 28 Sep 2022 00:51:07 +0100
Message-Id: <20220927235108.227566-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220927235108.227566-1-bryan.odonoghue@linaro.org>
References: <20220927235108.227566-1-bryan.odonoghue@linaro.org>
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
2.37.3

