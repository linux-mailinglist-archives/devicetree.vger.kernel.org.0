Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8951563F937
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 21:37:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbiLAUhK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 15:37:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230310AbiLAUhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 15:37:07 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21A48C0556
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 12:37:05 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id l127so3285709oia.8
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 12:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O9DWfkSi/N1IMySUHdlxHV43RaSOxsmartbv0wgiizw=;
        b=W/1EJx6UGea0iXmce0+SKrB4wiLm79ah4qyz629fypLwx3BEH8Ihu1Goc6r9CslHeT
         xi/26q5OEDO28jpODKTjEZtUu8TiWrqiB7o21u7LSg4tTSwSboVIysp6VoansFz8Dl4V
         zO0EbcYfhzqv/NsETPomS2KsQi7IO6hEzXmBX98f84WRoXTvEQG8sDJyvqMqGJYJm2UX
         e7kZrnsYyLQrNglGNdUkawe7VtJiIw2Pv7MPNGjYj52V8J9pcdfYd+NMhIyaXqrE4ERZ
         6my14xVLyqjSVYkbqkA6nH2OHfEGlqY62QVQWrdbvYSsxwpOJO+qWnLtYz5PcNXft2CZ
         TaPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O9DWfkSi/N1IMySUHdlxHV43RaSOxsmartbv0wgiizw=;
        b=OImN2dvKk9NMmKb+ebC7S4r9BUyC8h6RdVFERg4TTQDJfCrW3WwryYISsXIG+EsT0o
         zf+YDR++rFRMUS8vSWVpSejR1pj61/wIg5LBqSfhx3I132zzIxiVnnqhdp0oEgGa4hRD
         bYwsEzGhuG0ZtqhadS8T1XLOR9jxYk/oTJytyDluB19FEtOJ4oOMqMpCytjD3o9ukFKc
         CNZ57k+PXvO6CFeiVXKFYgZlTSa2GRPi3ESfTkNCly41iqxtVLZtHqxlYp+fVBr4Ojp4
         8FtiptbtJfbEpMBaNXCLsqOwamwa6Je6Ix7rH76Zv2o6U/XvDrB0XKRHiiorEA0BeFX9
         kB5A==
X-Gm-Message-State: ANoB5pnvHMFR5TFPnfiTlvo4HCONXlE+sskp48WePM02qY3F+e4BpB8I
        CfvJmULtBqm+Ra2a+B83SGA=
X-Google-Smtp-Source: AA0mqf7WpouCg2PO2wK0kyOSGdZ0Z5PBu5YT2P8YxXt8TBxZ9MHxyySfq2AARIXSCneqTJFgTb23cg==
X-Received: by 2002:a05:6808:b26:b0:35b:9b00:b4fc with SMTP id t6-20020a0568080b2600b0035b9b00b4fcmr14938401oij.91.1669927024469;
        Thu, 01 Dec 2022 12:37:04 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:37:03 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Update leds for Odroid Go Advance
Date:   Thu,  1 Dec 2022 14:36:55 -0600
Message-Id: <20221201203655.1245-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Update the blue LED to be controlled via pwm to enable control of LED
brightness. Add red LED as a GPIO controlled LED. The documentation
stated "label" was depreciated so function and color was used instead.
The LED names (led-2 and led-3) are given because that is what they
are numbered on the board itself; LED 1 is wired directly into an
always on regulator and is not controllable. LED 2 is labelled "alive"
on the board and documentation recommends we set the function as
status over other miscellaneous functions. LED 3 is labelled "chg" on
the board.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go.dtsi   | 33 +++++++++++++++----
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
index 802be64626d6..8ea2af72a7bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
@@ -8,6 +8,7 @@
 /dts-v1/;
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3326.dtsi"
 
@@ -113,15 +114,29 @@ button-sw16 {
 		};
 	};
 
-	leds: gpio-leds {
+/* led-1 is wired directly to output of always-on regulator */
+
+	gpio_led: gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&blue_led_pin>;
+		pinctrl-0 = <&red_led_pin>;
+
+		red_led: led-3 {
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_CHARGING;
+		};
+	};
 
-		blue_led: led-0 {
-			label = "blue:heartbeat";
-			gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
+	pwm_led: led-controller {
+		compatible = "pwm-leds";
+
+		blue_led: led-2 {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
 			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm3 0 25000 0>;
 		};
 	};
 
@@ -465,6 +480,10 @@ &pwm1 {
 	status = "okay";
 };
 
+&pwm3 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc_1v8>;
 	status = "okay";
@@ -569,8 +588,8 @@ hp_det: hp-det {
 	};
 
 	leds {
-		blue_led_pin: blue-led-pin {
-			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		red_led_pin: red-led-pin {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.25.1

