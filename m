Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4B366A1AD4
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 12:00:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230110AbjBXLAe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 06:00:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbjBXK75 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:59:57 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BFB63A870
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:59:30 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id ko13so16989870plb.13
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wzdP0f8Dd/LfcCPdQr780PzK2RvZAJKB5vPc2XD3ufA=;
        b=mByJV+JaU1+Ltx80aDVz38O8fe/liFVHft/qdrSEETLmITXc0LZv5kudxwrQJHEM4E
         2RP0gsLabTBSZH79fsU3NEHMCeOW0Iqr1TcZhzUE9B7tGDss784ZxY3AotfpkL6jWX2/
         6HMJBJEt7J+vIZ5LMgqVreWGU2Lcz8u/UgO9U8zBTWamxRmKNBZJP6YfXSnA2eN4iPk/
         X15O/ck2XYbJCcauOyeuXxchQlLYNaOq7J6UOFE9O5V7S0FVHzlkswu9pzD1R5IausqO
         535j2BWGe7lKIRbK/nef5No9zFZ7ku4gO34mFvnolSNCGNgFpU9xfpODylons+mkw7YN
         tlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wzdP0f8Dd/LfcCPdQr780PzK2RvZAJKB5vPc2XD3ufA=;
        b=dEqbcBWkDDj8XIMYtvs25WCtdXwXI5HriIMIjquIK4jghJHZkqhWIJjVcVnyVmOiwv
         V8+A82nNwe8jB8ILOK/v/Hy2WpmaVojiHYF1RmQQaGf5oiuap6bInEGQk9nuJPYMziMW
         rPeo2eec2zkxu+LyKrqL7yDAseNDDGNIzpntcdWwhDL8oB7iVz1+a9O+TopNYYOCTzFd
         XdC+K4Bn8M18H0YLACvIeB4eKHgBd3/1Ns2BivSTj0c51v003qLjXZml0T3keRytnczp
         8P+qLJ+tGt3JL8YT0Wa9XUL6YSQ8WJumZWCE3CefzJcOWq/p+cQqq7g3H4i5DmfAJsuD
         Ixjw==
X-Gm-Message-State: AO0yUKUK+P7BqSZKYJTMqQjDtqWzzV6NPUJpIxT0dIoAzoYkyh3Rfer0
        08k10JgWaRpYivHJZ92JXwLw
X-Google-Smtp-Source: AK7set/00/XkHimswh8A/lTlMaf9uljLO9Xk++JlggP7Y2nYgIaIkn/kcVov3dPdmMzyvCxW50D7Yg==
X-Received: by 2002:a17:90b:4a4d:b0:234:148:4b27 with SMTP id lb13-20020a17090b4a4d00b0023401484b27mr18089652pjb.17.1677236369819;
        Fri, 24 Feb 2023 02:59:29 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:29 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
        kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc:     konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 03/13] dt-bindings: PCI: qcom: Add SDX55 SoC
Date:   Fri, 24 Feb 2023 16:28:56 +0530
Message-Id: <20230224105906.16540-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
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

Add support for the PCIe controller on the Qcom SDX55 SoC to the binding.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index f48d0792aa57..3bba1ef3cff5 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -30,6 +30,7 @@ properties:
       - qcom,pcie-sc8180x
       - qcom,pcie-sc8280xp
       - qcom,pcie-sdm845
+      - qcom,pcie-sdx55
       - qcom,pcie-sm8150
       - qcom,pcie-sm8250
       - qcom,pcie-sm8450-pcie0
@@ -199,6 +200,7 @@ allOf:
               - qcom,pcie-sc7280
               - qcom,pcie-sc8180x
               - qcom,pcie-sc8280xp
+              - qcom,pcie-sdx55
               - qcom,pcie-sm8250
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
@@ -646,6 +648,32 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-sdx55
+    then:
+      properties:
+        clocks:
+          minItems: 7
+          maxItems: 7
+        clock-names:
+          items:
+            - const: pipe # PIPE clock
+            - const: aux # Auxiliary clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
+            - const: slave_q2a # Slave Q2A clock
+            - const: sleep # PCIe Sleep clock
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
   - if:
       properties:
         compatible:
-- 
2.25.1

