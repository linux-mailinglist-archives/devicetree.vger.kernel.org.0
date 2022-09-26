Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DC475E9ADC
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 09:46:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234270AbiIZHq1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 03:46:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233195AbiIZHpJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 03:45:09 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 343551AF3E
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 00:44:51 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id a8so9449070lff.13
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 00:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=lMBveZFkgrYcH7gLjkthX6/xgtG5HWpV1ZO7qGMNEaE=;
        b=xx/8kVnepWUDXK3BIPh4oLdP90dN8y9MdIgJZkBkc1K0/zk/Xj1RVRrsTGSCdaQsoH
         k4rJKZXSqgzXpz0AtBch1ScCRfXcjL+KSFhEGNj2ljRlepm6OI7VE+Z7MOxY49EDYvDW
         fH8j9saomGhzuNPsoCbh2gcImz3tuVvsuZ/VSQM6KcoKuSHmcujLQlRQSDsovt2FapVB
         JXAZJSrE06LcaLAKcm5ElMfFBBcY0ho4il04uL2VQPIexY+W4HkFCSJWF/iffcggZjcd
         F10sBO1HC/wd1IUA3dgExQIYZoaRKU4QtKrJAEU8qsT8upaXzj2yb4w3kJ9Z1APmUZWp
         C6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=lMBveZFkgrYcH7gLjkthX6/xgtG5HWpV1ZO7qGMNEaE=;
        b=fjSrG5O1DmA+IOBIWMzn+nNKU/qKNME3qsdenM7D2cpcjatMQIXrt23i8xzDwJIhJt
         xORbe2h6EOE9TMbfea4qRLa173i8IaFeFcGTqtbhRqCepnDN1K28U6/HSp4fIqkafkob
         PEUAeiCVJmJWzS5sxCILmPOguEhSjciMHpNiSzI1L+E9YVrNz8cev/SYjSp8Y65KtwLh
         86BQmLyYZ+k18Gf9V9SXvo05k1by0QYzzKeJBPv+lpcDyl1nrdOX03HPGxQCmojM+05p
         4d9WfRySZOFZJkaO1+CNG7y9FkYHlwImkzBstI8/yWc7QSmfdgIude2lryymr0khsuGV
         ah2Q==
X-Gm-Message-State: ACrzQf2WjDQPzDAmtm1IkwdJ82rZs4OqLIfpMWUxjF/8lpkWgU3iWyS5
        FgutPngh5eKrRI5RwZ1N+boKyA==
X-Google-Smtp-Source: AMsMyM4hSig/ICFy8nRLGrGA2BQKLVDYEWBFQo3tIcNMkLiErdqlMGKBcs0HiQ6QAEjH8X8mjQNQAw==
X-Received: by 2002:a05:6512:311a:b0:498:f5dc:799d with SMTP id n26-20020a056512311a00b00498f5dc799dmr8078813lfb.501.1664178290604;
        Mon, 26 Sep 2022 00:44:50 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g6-20020a19e046000000b004978e51b691sm2453298lfj.266.2022.09.26.00.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 00:44:49 -0700 (PDT)
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
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 14/33] dt-bindings: pinctrl: qcom,msm8226: use common TLMM schema
Date:   Mon, 26 Sep 2022 09:43:56 +0200
Message-Id: <20220926074415.53100-15-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220926074415.53100-1-krzysztof.kozlowski@linaro.org>
References: <20220926074415.53100-1-krzysztof.kozlowski@linaro.org>
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

Reference common Qualcomm TLMM pin controller schema, to bring other
regular schemas and additional checks, like function required only for
GPIOs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,msm8226-pinctrl.yaml    | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8226-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,msm8226-pinctrl.yaml
index ecb90c77f666..4420bb23c9dc 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8226-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8226-pinctrl.yaml
@@ -60,7 +60,7 @@ $defs:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
-    $ref: "/schemas/pinctrl/pincfg-node.yaml"
+    $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
 
     properties:
       pins:
@@ -101,12 +101,11 @@ $defs:
 
     required:
       - pins
-      - function
 
     additionalProperties: false
 
 allOf:
-  - $ref: "pinctrl.yaml#"
+  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 required:
   - compatible
-- 
2.34.1

