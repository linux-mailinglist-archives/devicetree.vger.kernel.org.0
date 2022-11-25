Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2B06638C95
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:43:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230244AbiKYOnT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:43:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230127AbiKYOm6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:42:58 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3597B42180
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:42:15 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id b3so7226318lfv.2
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3o4Ak/tooirHnNJn7lhjm6d8X2fgF8UcvDymE+bkTxc=;
        b=x7IEN5UsmY1JDkSkMKt6SFtlKQILzjEDG8mZ/yAk0l5GJidYSbQ3YuTSLW+ei7GOCI
         IdCOMhu69TQ4IIztr30Af5lg7Nz8GKb8GDbcSssop8+5/ucwZlzAZsaj2B3Pjab/rROP
         +0ccyTq3k8Y7VoGi1iNYe0dii3Ty7O55ks3zIoNJ7B0N23L/XRKYmsDGa60qV98jdAx9
         q5YVSpUIXp5kES/+ldTU/ASurG8bRRtXjPZMSUqtDLgxN86IEgP0/xkdoKXbM4pgR2AH
         4VHDHvfU6WMrHAJTyXDiWRfwteUlhlcUykLRfmyiMUW6DAZZ3FCRGm5fIpA8Mi+hJsHa
         Imdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3o4Ak/tooirHnNJn7lhjm6d8X2fgF8UcvDymE+bkTxc=;
        b=x8d/RAvZFTTTswQTyaeNI8bCkGhkt3yJSdaC4KfmEjyOFjta6nhdaSuSjNuJCd8AqY
         Bpj5v/UeqiM7U8WUK72Q9jFUpA5OlLvOwr1a7gnIw4/BaQ6jPqRXra6Q2dq5dd6/CSCa
         6pCmGfvzk2LrieKNWfhqWAFbGLHUGH5afFYWx3aMDLLk0hPMjXOrsxeIWimVlRsG/n02
         bpYFjL9QfptF8qMM7ATxFYxKVJEBVTDF6XTyJcjOM52uFwax0F7Tkshv0nY9wciHpUac
         YNBsj9jOaFXipodtlrftvjE6sa0mAeG+z3q0B4OvY918Fm81tuqmceFB2mAUC3IeRHBL
         dFHg==
X-Gm-Message-State: ANoB5plbdxVWWPw2RvjKfVqCrumTy2KjLZ9Q4R7Qx6wq2J2h8aZS4lTk
        wrmbtqkhItiBdd+nJLjmb6IvgA==
X-Google-Smtp-Source: AA0mqf4tTyIvlnJxKmbAjhQ8HsOG9Vjbi/ohPlYPlxliaqFSzhlaUTAKGt9GkP1Q+NWCBbWEAbMKQw==
X-Received: by 2002:ac2:456a:0:b0:4ad:23ac:94f5 with SMTP id k10-20020ac2456a000000b004ad23ac94f5mr12834073lfm.490.1669387333499;
        Fri, 25 Nov 2022 06:42:13 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c13-20020a056512238d00b0049ebc44994fsm553711lfv.128.2022.11.25.06.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:42:13 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: qcom: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:42:08 +0100
Message-Id: <20221125144209.477328-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern:

  qcom/msm8998-oneplus-cheeseburger.dtb: leds: 'button-backlight' does not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
  qcom/sc7180-trogdor-coachz-r1.dtb: pwmleds: 'keyboard-backlight' does not match any of the regexes: '^led(-[0-9a-f]+)?$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts | 2 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi              | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi            | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts b/arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts
index b951f98d1b7b..9fb1fb9b8529 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts
@@ -22,7 +22,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&button_backlight_default>;
 
-		button-backlight {
+		led-keypad-backlight {
 			gpios = <&pmi8998_gpio 5 GPIO_ACTIVE_HIGH>;
 			color = <LED_COLOR_ID_WHITE>;
 			function = LED_FUNCTION_KBD_BACKLIGHT;
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 65601bea0797..74a90948db6b 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -354,7 +354,7 @@ max98360a: audio-codec-0 {
 
 	pwmleds {
 		compatible = "pwm-leds";
-		keyboard_backlight: keyboard-backlight {
+		keyboard_backlight: led-0 {
 			status = "disabled";
 			label = "cros_ec::kbd_backlight";
 			function = LED_FUNCTION_KBD_BACKLIGHT;
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 448da9794722..27f479ff9d80 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -307,7 +307,7 @@ max98360a: audio-codec-0 {
 	pwmleds: pwmleds {
 		compatible = "pwm-leds";
 		status = "disabled";
-		keyboard_backlight: keyboard-backlight {
+		keyboard_backlight: led-0 {
 			label = "cros_ec::kbd_backlight";
 			function = LED_FUNCTION_KBD_BACKLIGHT;
 			pwms = <&cros_ec_pwm 0>;
-- 
2.34.1

