Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B7EA687AB8
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 11:47:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232941AbjBBKrb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 05:47:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232875AbjBBKrD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 05:47:03 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CED973069
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 02:46:38 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso3412120wms.0
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 02:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tair4mz+a4obQdG879OvEbNq99uoHpxmQ0gKuRSjXG4=;
        b=Dr+CKetpt4HUcs4QOF/hQmWvLyfPqA2UBejS3qxsS4TLo/BdxbW5vJTPOjsZk2qIHM
         bRtl0XhB+5jtbnuRt6GEoV8UTxCWh5x4YyNV/LKXkKlDXQnWkXG3Th4htv7XRbZZNhD9
         9YXacP/vbjwlH8+HceZuXRhET0rhNGLM0iz7eIA6wQjuoVqo5F4qntFiWSb6Oz6Cmuf1
         aVxfvp1YCBQfUIVr138pwnUsijqNngFD5QJaPmRzXNBW/UrD3c3a43vXU86HaollSUMq
         WEc4IWaXfHaxF/TFWhxv10PKxjmNvwnCjI1kVBiQQWZTe+uujBfRbsSAWi2sGhTjrgez
         WPVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tair4mz+a4obQdG879OvEbNq99uoHpxmQ0gKuRSjXG4=;
        b=BovDFp2JEFbJMQFHVxJP4WKEgR+oG47Jm/aBU8Z2VTfUlrSSFI4wVcKjSVpLoBzwfl
         Lx2f/nQctjFeOPwYrlqIaubO24tzY+8T8ZSQ58dxS8rXSJAzLFygvmdwKS+1Mxu1vCK5
         Poz7/cAVc+lO6qEce/ZvmWM19AwVeS56jVHevOVPMo+L23KcWYfHqDLNnaBa8fm5PbWD
         3Q9V9yEAzlrnGEAdXc6L3Rb1DuLAHXj+enZzsNARlG8X3/tNbCd9kOfqEo+deegzxVgN
         4cmr5kIjJkuM1Rafp3tGW6JZBnHaM4b5fI8G14UIMnoyyTaBt7hoSamw/BCNhk/505LV
         rVlg==
X-Gm-Message-State: AO0yUKVZNUCgaGtKc+kIaD4+C+YmulaUaPpifonQwWkCat8YlFUn/L97
        MOsMH2II+6zTs0UfZrY6z79bYg==
X-Google-Smtp-Source: AK7set906vCX/Oi9uqb5/l6eWte9f+kvKGppRQK42eVnBQ+/BsEbMZybYwI4eMLACpGqoFw1rMcp/Q==
X-Received: by 2002:a05:600c:3c90:b0:3d9:e5f9:984c with SMTP id bg16-20020a05600c3c9000b003d9e5f9984cmr5659469wmb.2.1675334761169;
        Thu, 02 Feb 2023 02:46:01 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n24-20020a05600c181800b003dc3f195abesm4307329wmp.39.2023.02.02.02.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 02:46:00 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Vinod Koul <vkoul@kernel.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Luca Weiss <luca@z3ntu.xyz>, Iskren Chernev <me@iskren.info>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 06/10] dt-bindings: pinctrl: qcom,msm8994: correct number of GPIOs
Date:   Thu,  2 Feb 2023 11:44:48 +0100
Message-Id: <20230202104452.299048-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202104452.299048-1-krzysztof.kozlowski@linaro.org>
References: <20230202104452.299048-1-krzysztof.kozlowski@linaro.org>
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

The MSM8994 TLMM pin controller has GPIOs 0-145, so narrow the pattern
and reduce sizes of arrays with pins.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,msm8994-pinctrl.yaml   | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8994-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,msm8994-pinctrl.yaml
index f4a8180f5959..0c4936fc35ef 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8994-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8994-pinctrl.yaml
@@ -34,10 +34,10 @@ properties:
 
   gpio-reserved-ranges:
     minItems: 1
-    maxItems: 75
+    maxItems: 73
 
   gpio-line-names:
-    maxItems: 150
+    maxItems: 146
 
 patternProperties:
   "-state$":
@@ -63,7 +63,7 @@ $defs:
           subnode.
         items:
           oneOf:
-            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-4][0-9])$"
+            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-3][0-9]|14[0-5])$"
             - enum: [ sdc1_clk, sdc1_cmd, sdc1_data, sdc1_rclk, sdc2_clk,
                       sdc2_cmd, sdc2_data, sdc3_clk, sdc3_cmd, sdc3_data ]
         minItems: 1
-- 
2.34.1

