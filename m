Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6877A57BB81
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 18:38:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231223AbiGTQiJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 12:38:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230220AbiGTQiI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 12:38:08 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 481AA4D149
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 09:38:07 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id t1so31087078lft.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 09:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PZtchZ5mwArJ7zeeHFvUbQC1uyemDMV0xBxNIikqx/E=;
        b=oevL/EB8HXN06wKPDJM7eyt/8CsnO6A7xIezNmnUQOXDPu9XnoJJsuQ1xDLqrPmEmo
         U3YWvrg7UIlxeA+kevO8IDWWuZI6P86VHxKrADk23K9Prx1L6ZEsFcStuaNQkiG/7FMI
         aJKVdCoTessTb+yE5lryjcVntQ5HFTBW7BtdMR1yw7LeY6kaL/0luN468o8rAtlbCQvp
         ezVjERmSiqGrq4LV5HHi8sCN4Ro5KQuaUJ1scY4dv+LfcJm213HjX8ePR4OAsF/kbPzQ
         Bo4NB6LN0BUCB3N4hJWkNBND93PhlJ0OZNN9VjwvOPbBcSUIgdQxhO1uztmZx+D/b2j1
         mjnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PZtchZ5mwArJ7zeeHFvUbQC1uyemDMV0xBxNIikqx/E=;
        b=HO1ExIjMoMxh8d78uL7upyRjgwJla1Rdx1lvrhS7pkSKrs/WcQUUNJqhhvr6wGEFZ9
         1d2Q3q0uws3tBCQ+bfoNyKwlVA6H2IsUiPSa/iV9lZj+/LqRlcSBRnG2tKZZSLxJgTXI
         muS2gHlTyrC/xJ/gKXabHN0jiiVEcjt+2+ALF6AMNcu+sjUUUSBOeVseFZojYp6tenTj
         RgwSzadLo8wxyREBAnS/ttllmsbsL5tTdGIPn91AjO0mGpY13cTlXUaI8rAYhd/XNztf
         YDCWZ6YXB7PCyv9mybK1C1ITmceMEOFeRZ2kPsTJ/RpHUifMlH5dKFt3UuBuuKxZEr1/
         SXpQ==
X-Gm-Message-State: AJIora/VQrfgHVzyTNE6hlou8ZJo/E7/tRnXpwfEftMDRZQOV7fnZotZ
        88t2Fx5TH5kzLiaifaultVzLNA==
X-Google-Smtp-Source: AGRyM1uM+NA/dcUpZmcYWYlaUkayE+HmoUHnkYF/CqxDMU/4eO/1C7vOL+qd3fMl4hazWb3OY8HlJg==
X-Received: by 2002:a19:dc06:0:b0:48a:103a:82ee with SMTP id t6-20020a19dc06000000b0048a103a82eemr19276905lfg.87.1658335085128;
        Wed, 20 Jul 2022 09:38:05 -0700 (PDT)
Received: from krzk-bin.. (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id p15-20020a2e740f000000b0025a725af81csm3286532ljc.39.2022.07.20.09.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 09:38:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH RESEND] dt-bindings: nvmem: qfprom: add IPQ8064 and SDM630 compatibles
Date:   Wed, 20 Jul 2022 18:38:02 +0200
Message-Id: <20220720163802.7209-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Document compatibles for QFPROM used on IPQ8064 and SDM630.  They are
compatible with generic QFPROM fallback.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index dede8892ee01..b4163086a5be 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -18,6 +18,7 @@ properties:
       - enum:
           - qcom,apq8064-qfprom
           - qcom,apq8084-qfprom
+          - qcom,ipq8064-qfprom
           - qcom,msm8974-qfprom
           - qcom,msm8916-qfprom
           - qcom,msm8996-qfprom
@@ -25,6 +26,7 @@ properties:
           - qcom,qcs404-qfprom
           - qcom,sc7180-qfprom
           - qcom,sc7280-qfprom
+          - qcom,sdm630-qfprom
           - qcom,sdm845-qfprom
       - const: qcom,qfprom
 
-- 
2.34.1

