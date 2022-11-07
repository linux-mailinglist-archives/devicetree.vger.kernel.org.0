Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D09D961F9FD
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 17:35:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231667AbiKGQf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 11:35:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231946AbiKGQf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 11:35:57 -0500
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 52DE6CDA
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 08:35:56 -0800 (PST)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 4345080A8;
        Mon,  7 Nov 2022 16:26:11 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Keerthy <j-keerthy@ti.com>, Georgi Vlaev <g-vlaev@ti.com>
Subject: [PATCH v2 4/4] arm64: dts: ti: k3-am625-sk: Use pwm-led instead of gpio-led
Date:   Mon,  7 Nov 2022 18:35:33 +0200
Message-Id: <20221107163533.48777-5-tony@atomide.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221107163533.48777-1-tony@atomide.com>
References: <20221107163533.48777-1-tony@atomide.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On am625, pad c17 can be used either in gpio mode or pwm mode to control
the connected led. Let's change to use pwm-led for additional brighness
control.

The pwm controller is dmtimer7 for pad C17. We configure it for 128 Hz
rate (1000000000 / 7812500) similar to what has been done elsewhere for
pwm-leds.

Cc: Keerthy <j-keerthy@ti.com>
Cc: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Tested-by: Georgi Vlaev <g-vlaev@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/ti/k3-am625-sk.dts | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
--- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
@@ -131,18 +131,25 @@ vdd_sd_dv: regulator-4 {
 	};
 
 	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&usr_led_pins_default>;
+		compatible = "pwm-leds";
 
 		led-0 {
 			label = "am62-sk:green:heartbeat";
-			gpios = <&main_gpio1 49 GPIO_ACTIVE_HIGH>;
+			pwms = <&main_pwm7 0 7812500 0>;
+			max-brightness = <255>;
 			linux,default-trigger = "heartbeat";
 			function = LED_FUNCTION_HEARTBEAT;
 			default-state = "off";
 		};
 	};
+
+	main_pwm7: dmtimer-main-pwm-7 {
+		pinctrl-0 = <&usr_led_pins_default>;
+		pinctrl-names = "default";
+		compatible = "ti,omap-dmtimer-pwm";
+		#pwm-cells = <3>;
+		ti,timers = <&main_timer7>;
+	};
 };
 
 &main_pmx0 {
@@ -203,7 +210,7 @@ AM62X_IOPAD(0x240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
 
 	usr_led_pins_default: usr-led-pins-default {
 		pinctrl-single,pins = <
-			AM62X_IOPAD(0x244, PIN_OUTPUT, 7) /* (C17) MMC1_SDWP.GPIO1_49 */
+			AM62X_IOPAD(0x244, PIN_OUTPUT, 2) /* (C17) MMC1_SDWP.TIMER_IO7 */
 		>;
 	};
 
-- 
2.38.1
