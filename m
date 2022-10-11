Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF32F5FB976
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 19:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229923AbiJKR2z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 13:28:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230215AbiJKR12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 13:27:28 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D93342D78
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:51 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id m6so3835590qkm.4
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wZWdexLhgCkz4RKT/YZM2KYQoYIDCIwvJvdXHwfAfFg=;
        b=ozc5QFfvIWKwcIAbSwwXb1rXmMrLl6KYmSifqMBGLsFsvziw45pb8leeJwrI/mkPRw
         pw4xTxy/bRosiArcfgeEOTyQSPN6lWNMOwfeWd7ZBiJ/emJj9JeSyl3gYnzDUZ7PC7CC
         R5t/xUUhbxlZ4MtsF0okcyxBB4q7vfT91pyqziEZ5YXKN+a/+F3SsL1CQy+Twa/6Y9jm
         dmkCtsHmrrhAqux4T0l4q5FeD7hfjxi3m95yL3ZGb5Iqav2dFc4cKZNRaEpdIM9yWwqR
         THwIeTBpKi9uERNfxIfRBSBX+tqNs8/a3P3ps9rtxbQctd07Rj9SihyAeny1Uw1AEZCH
         +b3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wZWdexLhgCkz4RKT/YZM2KYQoYIDCIwvJvdXHwfAfFg=;
        b=WsruZPJ5VhIuAdXDrZKupkLW/jR62VKcIKuGuDOkBRDPVTb2YPATiX1pHq8kE1Q7fk
         iwwj7s5/l4EFOZFzPa+6aHVfPD9ZZTJ+cC41PhGkgv8MOTf3h0hWD+mw8ENBEa2Cz3Uu
         1lIBL0eCfbVOqXk+igVVXVuqK0vgeGNsKUl8ZxRA58JsbExRh/wcF/wZ/1nLoEiKf+nT
         KkasMVZ6Gh87rG+pIHZ5Nnynss3oVf0Z8zfEH1kOy7TStOQLIcDseUj6rWDpHzfSWT1b
         VL6I9QpJziAx5g/g4kmBw64elPTLj3rIgbYWchcHV4xQ3d9iShpoD7OWwsJ1vEgCjDp5
         jJoA==
X-Gm-Message-State: ACrzQf1rLUQa8c4QoGCSfChvsh/5/7/GVq0HKBJYA0BKnRDds6Mmu6Pb
        UTUrIgOgiqfDpulIXNJi9Uh8rQ==
X-Google-Smtp-Source: AMsMyM4RQYfWHZ1pHf/zqJ017VjN6nKtcfoaYQPtwftki1+t600JQQ/ThY+6/7dblRJr/eGrksVmvw==
X-Received: by 2002:a05:620a:2849:b0:6a6:5998:f743 with SMTP id h9-20020a05620a284900b006a65998f743mr17315720qkp.757.1665509211068;
        Tue, 11 Oct 2022 10:26:51 -0700 (PDT)
Received: from krzk-bin.home (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id i14-20020a05620a248e00b006bba46e5eeasm14289087qkn.37.2022.10.11.10.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 10:26:50 -0700 (PDT)
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
Subject: [PATCH v2 29/34] dt-bindings: pinctrl: qcom,sm8450-tlmm: minor style cleanups
Date:   Tue, 11 Oct 2022 13:23:53 -0400
Message-Id: <20221011172358.69043-30-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221011172358.69043-1-krzysztof.kozlowski@linaro.org>
References: <20221011172358.69043-1-krzysztof.kozlowski@linaro.org>
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

Drop "binding" from description (and align it with other Qualcomm
pinctrl bindings), use double quotes consistently, drop redundant
quotes and rename file to match compatible (to match coding convention).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 ...om,sm8450-pinctrl.yaml => qcom,sm8450-tlmm.yaml} | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)
 rename Documentation/devicetree/bindings/pinctrl/{qcom,sm8450-pinctrl.yaml => qcom,sm8450-tlmm.yaml} (94%)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-tlmm.yaml
similarity index 94%
rename from Documentation/devicetree/bindings/pinctrl/qcom,sm8450-pinctrl.yaml
rename to Documentation/devicetree/bindings/pinctrl/qcom,sm8450-tlmm.yaml
index 7ab9a0eec017..4a1d10d6c5e7 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-tlmm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/pinctrl/qcom,sm8450-pinctrl.yaml#
+$id: http://devicetree.org/schemas/pinctrl/qcom,sm8450-tlmm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Technologies, Inc. SM8450 TLMM block
@@ -9,9 +9,8 @@ title: Qualcomm Technologies, Inc. SM8450 TLMM block
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
 
-description: |
-  This binding describes the Top Level Mode Multiplexer (TLMM) block found
-  in the SM8450 platform.
+description:
+  Top Level Mode Multiplexer pin controller in Qualcomm SM8450 SoC.
 
 allOf:
   - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
@@ -25,7 +24,7 @@ properties:
 
   interrupts: true
   interrupt-controller: true
-  '#interrupt-cells': true
+  "#interrupt-cells": true
   gpio-controller: true
 
   gpio-reserved-ranges:
@@ -35,7 +34,7 @@ properties:
   gpio-line-names:
     maxItems: 209
 
-  '#gpio-cells': true
+  "#gpio-cells": true
   gpio-ranges: true
   wakeup-parent: true
 
@@ -46,7 +45,7 @@ required:
 additionalProperties: false
 
 patternProperties:
-  '-state$':
+  "-state$":
     oneOf:
       - $ref: "#/$defs/qcom-sm8450-tlmm-state"
       - patternProperties:
-- 
2.34.1

