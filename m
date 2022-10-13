Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A82305FD6CA
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 11:14:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbiJMJOQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 05:14:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230003AbiJMJNo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 05:13:44 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65339141121
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 02:13:37 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id m16so1724345edc.4
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 02:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+dzrAn+aBg/5KVcVy/4aX4joCWNIa7ky5mt/LVd7Cts=;
        b=EpOkGGCsgHYv53DtFoFfROkk3L70Tad3Fr98hzdLPuGpB67l/RLNzEBfk6W4b2EshY
         heegHPUgBEw1hcrGaYOATLKXTKvem4g5S6Lb3RMMoJufXUlAxAamcbyAY13lmYodkLeX
         u6SHw0M8I7LxbQAztnvDt2hOo8zLTOKUeT3zGoM3n/MiiwU1TLm72iCfKo3Btj9qeuSr
         SBtQffQhJawJuoSnXkJ1hYdSEIdN4zYqlp7AE4TyZ6Uby+P2Wr9cbdnQTBDBexZGQ/AZ
         Jd7XJ53v38BYyjY0H+QHMPGtwcluNUpf4di0GT/wReLKc0mWX74+PHtfMGqv0efLG7Bo
         t5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+dzrAn+aBg/5KVcVy/4aX4joCWNIa7ky5mt/LVd7Cts=;
        b=0mIlrYrngoYFxLjo1ZwWifyH/mucZa5h8B5k0Fa7+hP3sHk2fHhuBAkk18jyzY6fEP
         vUUOXCMCxXK3uEsAHA285x3hVV2qund+SITxhBoc7DV+uheffDUVr+fE86NfR0cJmyEC
         LLavK80nZeYAzirS1VFueA5OlMAcks19xnAQWu+K5FSd4y//6F6mDWHMb1Zloqi/RaBd
         4/H/VUC12YoP+XAJ9S9aKKHJUmsXI3bLuDF2IqHnLRe1owTqkH/adPk7ct5s8Yhw4EBV
         t4PxazC3cHSMvsxTOTA7OS9RJvpbHtBcascyk6jC2od/gWZfTc6YsO7+PVpPldfQss/n
         uJnw==
X-Gm-Message-State: ACrzQf200mNuO1Mr3GvSV+ewvDfhL9+JUkbWREbVxkVqp+VaPV/Gc//G
        mUbuC1lp5B5phiL1muP7pIrvBA==
X-Google-Smtp-Source: AMsMyM5p8hsyMuf8fEG6NDPh7dYuTrJBp5jGeer89w4o0UR99iwkf54abNti1vvH5DL5t0oMqY+4Dw==
X-Received: by 2002:a05:6402:5510:b0:459:5ea:9bc0 with SMTP id fi16-20020a056402551000b0045905ea9bc0mr30068091edb.152.1665652416151;
        Thu, 13 Oct 2022 02:13:36 -0700 (PDT)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ti5-20020a170907c20500b0073dd1ac2fc8sm2582725ejc.195.2022.10.13.02.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 02:13:35 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: qcom,pdc: Add missing compatibles
Date:   Thu, 13 Oct 2022 11:12:08 +0200
Message-Id: <20221013091208.356739-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.38.0
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

Document the compatibles that are already in use in the upstream Linux
kernel to resolve dtbs_check warnings.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/interrupt-controller/qcom,pdc.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index b6f56cf5fbe3..94791e261c42 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -28,11 +28,15 @@ properties:
       - enum:
           - qcom,sc7180-pdc
           - qcom,sc7280-pdc
+          - qcom,sc8280xp-pdc
           - qcom,sdm845-pdc
+          - qcom,sdx55-pdc
+          - qcom,sdx65-pdc
           - qcom,sm6350-pdc
           - qcom,sm8150-pdc
           - qcom,sm8250-pdc
           - qcom,sm8350-pdc
+          - qcom,sm8450-pdc
       - const: qcom,pdc
 
   reg:
-- 
2.38.0

