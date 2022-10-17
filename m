Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BFDC601D27
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 01:03:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231207AbiJQXDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 19:03:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231205AbiJQXCS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 19:02:18 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BAD382D08
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 16:01:39 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id i9so8351349qvo.0
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 16:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Z8MevnET12xysDUHfstz49lF62ppQ/ayQj59OCid4E=;
        b=emnHAZ9zxqthso987N94y3GtyqvXdGRCemnb+n47D4rUhel53DqBxWv+WZ5wSsPna8
         VWCG+GHBsm9Xas/vopkyaahD0cmzxulz/xaqUtHFlrxB7sWhJDe/Mh0cYrOHjCI5UGXt
         yzoa67wYgE8zP/zgFKImW6dTWiyKtjzAy4ImDbLuko6ZE2HZ2eZa/lbup7ALkc2VfmFh
         aAOxjvQ6TgYEScutffN38MqYRETRXuY/6tGscqiudGi1APMUzQbdcRv7ehKbx76p2C06
         +hsC0rL7SFBmRSxXcYCnr1CCw+jMG4DQRQmetbdvo2VZvyXZM23+xhgV8/JxGX3pRcYE
         w+yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Z8MevnET12xysDUHfstz49lF62ppQ/ayQj59OCid4E=;
        b=PfQM6B3ZM96oCUP2SV5cLEHKca4NsulRL/pWDqDRfAS5+YsuQU2yt1K8W2AenFbRx6
         3MdHE1cIOdsdbzXg2mnlanNRCQUMRoAzKdULVQ5wXoq0B3DcnR2DX35z6eLYt7PCosyG
         8B1IheNB9nbOSOoB0JT4PEW8RP1Mc7m7/zEUPxaJvbb/eDrUGRVSJT5C8MfvhW5o8SdN
         /VCEn9nYH7GFlp7qqhHrEw48bcUIJOp3Kn4Os8ICa34Clyz9YvWKDbudT9j+z65hFHnm
         aAscggcVeoH+qDSTlqrYemVHKU5Q5ElL2kZfOKJGgJp07/06jTtoAJ7ntrjZigIpGdh2
         +9Eg==
X-Gm-Message-State: ACrzQf3u/wZdZ0EQk3mjS0JoxluFWMnAmtITzo/E5QlS9kud1ZlhhCEf
        VnonS102gPqhKr/ZrBWU78/rUQ==
X-Google-Smtp-Source: AMsMyM67VZ0WJ3RN5ugj6bxvczGWcyd3Y5f+eSmd/H6tvsZh5X0mMnilJ4xbH6DvWuUFAROfWvdqCw==
X-Received: by 2002:a05:6214:1cc5:b0:4af:91d5:8d1a with SMTP id g5-20020a0562141cc500b004af91d58d1amr157837qvd.70.1666047669702;
        Mon, 17 Oct 2022 16:01:09 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id fg11-20020a05622a580b00b0039cb9b6c390sm729670qtb.79.2022.10.17.16.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 16:01:09 -0700 (PDT)
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
Subject: [PATCH v3 18/33] dt-bindings: pinctrl: qcom,qcm2290-tlmm: minor style cleanups
Date:   Mon, 17 Oct 2022 18:59:57 -0400
Message-Id: <20221017230012.47878-19-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221017230012.47878-1-krzysztof.kozlowski@linaro.org>
References: <20221017230012.47878-1-krzysztof.kozlowski@linaro.org>
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

Drop "binding" from description (and align it with other Qualcomm
pinctrl bindings), use double quotes consistently, drop redundant
quotes and rename file to match compatible (to match coding convention).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 ...m,qcm2290-pinctrl.yaml => qcom,qcm2290-tlmm.yaml} | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)
 rename Documentation/devicetree/bindings/pinctrl/{qcom,qcm2290-pinctrl.yaml => qcom,qcm2290-tlmm.yaml} (93%)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-tlmm.yaml
similarity index 93%
rename from Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
rename to Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-tlmm.yaml
index ae73e3d45bbe..adf64bfaa4ed 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-tlmm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/pinctrl/qcom,qcm2290-pinctrl.yaml#
+$id: http://devicetree.org/schemas/pinctrl/qcom,qcm2290-tlmm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Technologies, Inc. QCM2290 TLMM block
@@ -10,8 +10,7 @@ maintainers:
   - Shawn Guo <shawn.guo@linaro.org>
 
 description:
-  This binding describes the Top Level Mode Multiplexer block found in the
-  QCM2290 platform.
+  Top Level Mode Multiplexer pin controller in Qualcomm QCM2290 SoC.
 
 properties:
   compatible:
@@ -28,9 +27,8 @@ properties:
   gpio-ranges: true
   wakeup-parent: true
 
-#PIN CONFIGURATION NODES
 patternProperties:
-  '-state$':
+  "-state$":
     oneOf:
       - $ref: "#/$defs/qcom-qcm2290-tlmm-state"
       - patternProperties:
@@ -38,13 +36,13 @@ patternProperties:
             $ref: "#/$defs/qcom-qcm2290-tlmm-state"
         additionalProperties: false
 
-'$defs':
+$defs:
   qcom-qcm2290-tlmm-state:
     type: object
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
-    $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
+    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
 
     properties:
       pins:
-- 
2.34.1

