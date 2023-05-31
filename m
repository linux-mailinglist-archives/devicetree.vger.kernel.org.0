Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89AAE717342
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 03:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233661AbjEaBm4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 21:42:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233509AbjEaBmy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 21:42:54 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0BFA113
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:42:52 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f4b80bf93aso5876572e87.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685497371; x=1688089371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXyNmP0KkrD7wf9D/UQ1p5UcmLHwwCnJ3NjK3osNVHQ=;
        b=mK2HIgxjS3bf92C00ctipk7hErkU+JnQDsX+hITDvG81CWYoc5P5wD3TEQOdldIBr0
         OZBIwH3AZNNLsg5b91TEo9IvUgo0nPYg/5L1hC7vHFhQKdG9kDvBRqaWKvCoF/nQJouS
         y1G8hLX4ooPFWYB9bRv64VPFTErBOtS+hGqDUPjV/4/Ifbb9Ls0ZJuj2ZEfFd9Sa1LLi
         EQM2LcbH2e2f1nw87Cbn+wymcVolZf0XNn2VHuebcKT9Q5cpZkKmZn9vPXxtD1E4EuLv
         bcV1/JcX3mvGSs5zhVAZW6N6UhYquuesNkB8pVkduk/0sQU8gjn4s5NKZGkbSjFzGuOI
         8IIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685497371; x=1688089371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cXyNmP0KkrD7wf9D/UQ1p5UcmLHwwCnJ3NjK3osNVHQ=;
        b=hr9yPLpVIzT4r8z90svxq1OiMZFmAogxpqtWgKtJ0righG7tF8Gbwdm2j2rwKFu+A7
         M2dzyNGo8cSc/+bToF5A+ugdWqoB6okm662x2fj/oyrtgNZdOxJS5fV3JEyhPehHtl56
         29Mj3uIbjvQVhd9kCUaoAfphYTCJ8VfwIq0raKU7UFEAfm5HIGfp1N+oe6s+iOX814C5
         7d7+jy1+prCrNUge0JaTDyoaf0kI2XNpID0ilIunDc4iWKYoIImoOKjw4HS1ALJHqAnW
         bExdk3FJkZWf/Z9jsBOxyA2VuKf8hWN3KhGJGq/g412txXB5TlPKiyx0DMQ0TFMGaa/V
         Fftw==
X-Gm-Message-State: AC+VfDyPhBTXtEIw+9dTn1r/qewi9ZWvjb4IjX5r5cdGAl5a8LM8yG9w
        g6Xus5zxutA8PO/JjWTxffA7hA==
X-Google-Smtp-Source: ACHHUZ6MS1kSFKwUjniTyaAkT2Nd+rRedjQYfRCTPELHn9/ABuKRlPnOo1J7hbBcFH4XL9ayjye3AA==
X-Received: by 2002:ac2:5456:0:b0:4f3:a891:45c0 with SMTP id d22-20020ac25456000000b004f3a89145c0mr1983104lfn.61.1685497370935;
        Tue, 30 May 2023 18:42:50 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id q20-20020ac25294000000b004f3945751b2sm515994lfm.43.2023.05.30.18.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 18:42:50 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: power: reset: qcom-pon: define pm8941-pon
Date:   Wed, 31 May 2023 04:42:45 +0300
Message-Id: <20230531014248.3824043-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531014248.3824043-1-dmitry.baryshkov@linaro.org>
References: <20230531014248.3824043-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On PM8941 pon doesn't store the reset reason. However we still need the
wrapping node for pwrkey and resin nodes. Add bindings for pm8941-pon
device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/power/reset/qcom,pon.yaml    | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
index d96170eecbd2..eb3c88e501ef 100644
--- a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
+++ b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
@@ -19,6 +19,7 @@ properties:
   compatible:
     enum:
       - qcom,pm8916-pon
+      - qcom,pm8941-pon
       - qcom,pms405-pon
       - qcom,pm8998-pon
       - qcom,pmk8350-pon
@@ -56,13 +57,22 @@ required:
 unevaluatedProperties: false
 
 allOf:
-  - $ref: reboot-mode.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: qcom,pm8941-pon
+    then:
+      $ref: reboot-mode.yaml#
+
   - if:
       properties:
         compatible:
           contains:
             enum:
               - qcom,pm8916-pon
+              - qcom,pm8941-pon
               - qcom,pms405-pon
               - qcom,pm8998-pon
     then:
-- 
2.39.2

