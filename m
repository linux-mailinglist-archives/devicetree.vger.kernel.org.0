Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 443A6700F38
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 21:16:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbjELTQs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 15:16:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230006AbjELTQr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 15:16:47 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB5C0E1
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 12:16:45 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-38ea3f8e413so5208920b6e.2
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 12:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683919005; x=1686511005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kEpGRsh5mvkK0y8EGva7fncjVhmgrH88oIK8Gwzmri8=;
        b=DhSBeb6gMVdQm1NeJbixY29FZS1GB+G322uijhbF+sbxl0TrncV2HTB6Q7Y0SEjYsR
         wcNs0DTBl3jDIT9Ltt3HYp9UV63Vp/3mK85EK4QhlsbKT7mbh3ft4belq+vRQqzCbLUL
         F1oYgBTXAUT2LVh/9d35vh8+dq4sFJKlqNaRe2phsNvRgC8KRAVnSOl51FNBXvWgIr2d
         AslSJdsfF/X3RuJWoLNsAZqvRSGcXkkNd19oy69sMTxwleMJnrTCutiTk0bx4l+A6zTz
         NM7e109WDXpjU/qQaKnZK2X7pLQNQO7TyyCRKBdaelrBOc0msbOO63NqFNIY/bL39bWb
         GAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683919005; x=1686511005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kEpGRsh5mvkK0y8EGva7fncjVhmgrH88oIK8Gwzmri8=;
        b=KKyqnkH6S5rkgMZaR/2knMfLNil4iQQv1ZZsvOoG2e+zATZvq1KfwzDXOIyS1AdTAL
         I5KR7BybEeqCq38fhqI+PZkqsvgtji4ks71nH+qhr8hFnvMjaIpOr8XrEaXGGgA4C+1o
         UxeqgFYahCi8GeIIgbflci0tElZE9f+Yo3ulAWU9R1I//SgCLQjFHK/H8N+4Ig3AsMOq
         yAnFVPDotn6nLRTlxspoDRNqTtkFuC9TslDZKmToPYrk1uXDdr8hCee+8JfARXTNjP00
         eiUGpCG7vLgitdCoHIZNOCzmfGGLinadCZLWgi7K1P7/i+PrXXPI7K5+33B1Agkv0UY5
         J2FQ==
X-Gm-Message-State: AC+VfDz1YsIEGNgjdrus5XnwO0TbosalDUZQi7FiFF8irg8QYVdk+vOs
        dVdDIgNMYBCS6WV7hAmB1d8=
X-Google-Smtp-Source: ACHHUZ4oMunQEvTJk/SBgnzsntxzn/r+5g2AbFnXi5QkFxt0HdroBrhMUwalk6CEvbvyUDOxFs+Z7g==
X-Received: by 2002:aca:220e:0:b0:384:3f55:ab96 with SMTP id b14-20020aca220e000000b003843f55ab96mr6225377oic.25.1683919004915;
        Fri, 12 May 2023 12:16:44 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020acaf354000000b0038ee0c3b38esm4817681oih.44.2023.05.12.12.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 12:16:44 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Update leds for Anbernic RGxx3 Series
Date:   Fri, 12 May 2023 14:16:33 -0500
Message-Id: <20230512191633.33416-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Each of the LEDs on the RGxx3 which is currently controlled via GPIO
can also be controlled via a PWM. Change each of the LEDs to PWM so
that users have the ability to adjust the brightness of the LEDs
according to their preference.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 39 +++++++++++--------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 8fadd8afb190..69f332738d24 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -191,30 +191,30 @@ hdmi_con_in: endpoint {
 		};
 	};
 
-	leds: gpio-leds {
-		compatible = "gpio-leds";
-		pinctrl-0 = <&led_pins>;
-		pinctrl-names = "default";
+	leds: pwm-leds {
+		compatible = "pwm-leds";
 
 		green_led: led-0 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "on";
 			function = LED_FUNCTION_POWER;
-			gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+			max-brightness = <255>;
+			pwms = <&pwm6 0 25000 0>;
 		};
 
 		amber_led: led-1 {
 			color = <LED_COLOR_ID_AMBER>;
 			function = LED_FUNCTION_CHARGING;
-			gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
-			retain-state-suspended;
+			max-brightness = <255>;
+			pwms = <&pwm7 0 25000 0>;
 		};
 
 		red_led: led-2 {
 			color = <LED_COLOR_ID_RED>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
-			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+			max-brightness = <255>;
+			pwms = <&pwm0 0 25000 0>;
 		};
 	};
 
@@ -597,15 +597,6 @@ btn_pins_vol: btn-pins-vol {
 		};
 	};
 
-	gpio-led {
-		led_pins: led-pins {
-			rockchip,pins =
-				<0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>,
-				<0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>,
-				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	joy-mux {
 		joy_mux_en: joy-mux-en {
 			rockchip,pins =
@@ -654,10 +645,24 @@ &pmu_io_domains {
 	vccio7-supply = <&vcc_3v3>;
 };
 
+&pwm0 {
+	pinctrl-0 = <&pwm0m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pwm5 {
 	status = "okay";
 };
 
+&pwm6 {
+	status = "okay";
+};
+
+&pwm7 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc_1v8>;
 	status = "okay";
-- 
2.34.1

