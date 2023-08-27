Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13277789E76
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 15:27:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230011AbjH0N0U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Aug 2023 09:26:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230028AbjH0NZp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Aug 2023 09:25:45 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 943FACE1
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 06:25:38 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4ffa01fc987so3987616e87.1
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 06:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693142736; x=1693747536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rane7N6FN2YRdaXIzHgZgt12GcT5Hjyz+pSJkMzIXcI=;
        b=Y3HukQ1524afJO0XhSSfDHPNMBGBY5iOQwIlxLl2lw3CdwvpBCcJAv1XydIPsmKUkC
         nwbL7xubrsC8S+Lg6EPdkfUzf9VavhCEV/J9r95QnIDdzmoRZz2P4SfctsbfvHIiJUaz
         oZ4QPonJrMRfmKK7Ikt95gIggjlO5p5o6dan5IoDEvALWj3r/nnj5t5bDBniRunMr+QD
         tu2G9ivJbwCmTOn7NJ9L7QdL9YKu+QeiGvLvnf/BmuNlJYV1NMYkLwpKyHQmJ9XVFn+H
         iLiB3N60mx/w8QxA2IrJ5CiQNZjo4hrJQoDlTUmOMwmi267aVgT8cM5Wpljrj37iTfgJ
         QT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693142736; x=1693747536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rane7N6FN2YRdaXIzHgZgt12GcT5Hjyz+pSJkMzIXcI=;
        b=N17K5ZzcAnX/w2wYBWs+Q1HGsvuQgTx5MBjQK4jd0RRdSQb/G2si7mXOcCSdIQ+M1J
         dQcAZF0O2GDBwo4M8eUjjkYcGNKFarQ3CzJsDzk2Elhe7ovnwEfJoCk8N7LGy3vx/oA6
         Yphe+ohJ4fpcJSg26Ws74CgVknOjHqEdBse33yEAIfXwvZNGPftWvOJmbfBRPnUU9oxH
         doYyrjrZKYFBqiPd8vbLLTJoutibUrpFijQ+rJWNcGzUs/Wt9xPd5NpMK4JA1oD+HPsO
         CIA7HDV5OAn1QHbbGY/IJbTPnCs6A5Up2hsVBKa82v5act+L1/XF13HPfn37q87dMXcN
         Drmg==
X-Gm-Message-State: AOJu0YxC9Kle35qwWYOBE3RZzXyExiPp20Wq3HUg/kFsf2n3acnc0xyI
        /u650X3TmBVRR3aDiO8g/GKlrS4obXA2mrg134g=
X-Google-Smtp-Source: AGHT+IFuWdPG0eRK1d11nMh+swfs+dJGnfdNH8gC+6fO0VeIeEVWpfVqL0Bb7JWY/cyXOWQH51PHMA==
X-Received: by 2002:a05:6512:ea4:b0:4fd:b7d4:70ec with SMTP id bi36-20020a0565120ea400b004fdb7d470ecmr9297354lfb.10.1693142736742;
        Sun, 27 Aug 2023 06:25:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t9-20020ac243a9000000b004faa2de9877sm1142040lfl.286.2023.08.27.06.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Aug 2023 06:25:36 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
        linux-leds@vger.kernel.org
Subject: [PATCH v5 12/37] ARM: dts: qcom: msm8960: fix PMIC node labels
Date:   Sun, 27 Aug 2023 16:25:00 +0300
Message-Id: <20230827132525.951475-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230827132525.951475-1-dmitry.baryshkov@linaro.org>
References: <20230827132525.951475-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change PM8921 node labels to start with pm8921_ prefix, following other
Qualcomm PMIC device nodes.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index a34fda93d6a4..ea2d961b266b 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -264,7 +264,7 @@ ssbi@500000 {
 			reg = <0x500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
 
-			pmicintc: pmic {
+			pm8921: pmic {
 				compatible = "qcom,pm8921";
 				interrupt-parent = <&msmgpio>;
 				interrupts = <104 IRQ_TYPE_LEVEL_LOW>;
@@ -276,7 +276,7 @@ pmicintc: pmic {
 				pwrkey@1c {
 					compatible = "qcom,pm8921-pwrkey";
 					reg = <0x1c>;
-					interrupt-parent = <&pmicintc>;
+					interrupt-parent = <&pm8921>;
 					interrupts = <50 IRQ_TYPE_EDGE_RISING>,
 						     <51 IRQ_TYPE_EDGE_RISING>;
 					debounce = <15625>;
@@ -286,7 +286,7 @@ pwrkey@1c {
 				pm8921_keypad: keypad@148 {
 					compatible = "qcom,pm8921-keypad";
 					reg = <0x148>;
-					interrupt-parent = <&pmicintc>;
+					interrupt-parent = <&pm8921>;
 					interrupts = <74 IRQ_TYPE_EDGE_RISING>,
 						     <75 IRQ_TYPE_EDGE_RISING>;
 					debounce = <15>;
@@ -296,7 +296,7 @@ pm8921_keypad: keypad@148 {
 
 				rtc@11d {
 					compatible = "qcom,pm8921-rtc";
-					interrupt-parent = <&pmicintc>;
+					interrupt-parent = <&pm8921>;
 					interrupts = <39 IRQ_TYPE_EDGE_RISING>;
 					reg = <0x11d>;
 					allow-set-time;
-- 
2.39.2

