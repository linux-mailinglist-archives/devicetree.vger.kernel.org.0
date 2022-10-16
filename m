Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBAB260025D
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 19:24:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230148AbiJPRYD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 13:24:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230223AbiJPRXg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 13:23:36 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B033844D
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:22:58 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id i9so6300312qvo.0
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PWSKu7iskvYCRHNzfjjJULSfJxrJyK6VO5AdJbIhDuc=;
        b=YANfOS18yDjkBv8LX04Ri8LiKcAhZi4/VMCsQXt6LnTXavtuN1oiplbBpWzZxDPEwW
         zsG3o9TSArP3ryftHI+ZLRLQhr3xtdvVpJEaPKuXKwN6Fea/nSdMpvw1aI6ZaziJqJ1j
         k2dEzcabkumPpplCJMbceNjLqXNh8usZLM70ALhcp2/S+DCVpM9fJwPQRcBVyhQoU+oG
         11GXlINrfvxFT6iQ86Fi5PLjS5p3RfE8e3+VP1Y4BpyppjKo36Iuls92m9oq7xaWJFeC
         enSrxW1zA5b5PCBCAUVzgExOQximSIGAO3+0F+kCIwgHB5PWOcqLfQtmmRgy0HhczpY2
         FAYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PWSKu7iskvYCRHNzfjjJULSfJxrJyK6VO5AdJbIhDuc=;
        b=RyhmLxvMmOGh67ex+lJVv11MpRfwZ2/SPbklcgSROren3OtIFMzW4IeSjWIFZ7Yg0S
         iQSpAEvpj1Bvq6NxWk2Eeq+4v00JxOH2S4XXIS2npkHVu9bxVm8dCB5vzomJEAoDq/E0
         VvPW/j57+dpiWzz7kiiXyD0ObCpOPl0aaHhSHXmwQ9PB1VRBrQfU5RYpRyQDycZEcaPZ
         qm/nAjDTJ8MUhyWDR3BXIB/6jwirdl92q+2aNFyvGWOMAHQ5GG5yBROIe01DIPH8tyx7
         DbM8t3eW89dnefl8qPDLtqmA15VxhHmEPKF+AQ5PLF5Nm3IkAgofY8ln+mJECi+l32d7
         kiWA==
X-Gm-Message-State: ACrzQf0qxVFemXZhUK9h2gq6S2VuEGFSHm5bMSeEX/KJb0+LAqvxQBA7
        1xNK5ezITRCpduuF31Dhm/A17g==
X-Google-Smtp-Source: AMsMyM5ePjPHsGJMJ77e9k8RUAbAcov3iu/nAS9GlREFP00ztwuEwWDYGbjubKTEfpc1Vdsnk26B+A==
X-Received: by 2002:a05:6214:21e5:b0:4b3:f3e0:5432 with SMTP id p5-20020a05621421e500b004b3f3e05432mr5607497qvj.19.1665940976508;
        Sun, 16 Oct 2022 10:22:56 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id r5-20020ac87945000000b003431446588fsm6051008qtt.5.2022.10.16.10.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 10:22:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 17/17] dt-bindings: pinctrl: qcom,sc7280: use common TLMM pin schema
Date:   Sun, 16 Oct 2022 13:22:12 -0400
Message-Id: <20221016172212.49105-18-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016172212.49105-1-krzysztof.kozlowski@linaro.org>
References: <20221016172212.49105-1-krzysztof.kozlowski@linaro.org>
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

The common Qualcomm TLMM pin controller schema for pin mux and config
already brings requirement of function for gpio pins and the definition
of drive-strength.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes since v2:
1. Drop drive-strength, reword commit msg.
2. Add tags.
3. This was previously part of:
   https://lore.kernel.org/linux-arm-msm/20221011172358.69043-1-krzysztof.kozlowski@linaro.org/T/#m277d25a5f3e9d10ca8221a7fba62ca468a67a60b
---
 .../bindings/pinctrl/qcom,sc7280-pinctrl.yaml  | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
index 2a6b5a719d18..d70ab12f227d 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
@@ -62,6 +62,7 @@ $defs:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
+    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
 
     properties:
       pins:
@@ -110,16 +111,11 @@ $defs:
                 uim1_clk, uim1_data, uim1_present, uim1_reset, usb2phy_ac,
                 usb_phy, vfr_0, vfr_1, vsense_trigger ]
 
-      drive-strength:
-        enum: [2, 4, 6, 8, 10, 12, 14, 16]
-        default: 2
-        description:
-          Selects the drive strength for the specified pins, in mA.
-
       bias-pull-down: true
       bias-pull-up: true
       bias-bus-hold: true
       bias-disable: true
+      drive-strength: true
       input-enable: true
       output-high: true
       output-low: true
@@ -127,16 +123,6 @@ $defs:
     required:
       - pins
 
-    allOf:
-      - $ref: /schemas/pinctrl/pincfg-node.yaml
-      - if:
-          properties:
-            pins:
-              pattern: "^gpio([0-9]|[1-9][0-9]|1[0-6][0-9]|17[0-4])$"
-        then:
-          required:
-            - function
-
     additionalProperties: false
 
 allOf:
-- 
2.34.1

