Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3C452B2E53
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:05:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726356AbgKNQEZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:04:25 -0500
Received: from mail.kernel.org ([198.145.29.99]:52818 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727168AbgKNQEY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:04:24 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7235422265;
        Sat, 14 Nov 2020 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605369863;
        bh=8wgXxI4Gb1/+M4UadHAAJk31bktd6abYdbxAeAC+6r4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=AWnpevD+gNQPpNunNoiIQnqTM2ZvUUWYsgmUwjkKMzdKPLPLWAlc3IqePgQvf9PrT
         c2u8/OujircreH5n2PGKpHF0FFIISRvoor20fv210qmp9hRH5pa0jVakTzEqWkZgtz
         b7n0/kKTjEeaDL1jDOthFnqdcrtU4ff/rNr5vzXw=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt 5/6] ARM: dts: turris-omnia: add LED controller node
Date:   Sat, 14 Nov 2020 17:04:08 +0100
Message-Id: <20201114160409.19670-6-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114160409.19670-1-kabel@kernel.org>
References: <20201114160409.19670-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Linux now has incomplete support for the LED controller on Turris Omnia:
it can set brightness and colors for each LED.

The controller can also put these LEDs into HW controlled mode, in which
the LEDs are controlled by HW: for example the WAN LED is connected via
MCU to the WAN PHY LED pin.

The driver does not support these HW controlled modes yet, and on probe
puts the LEDs into SW controlled mode.

Add node describing the LED controller, but disable it for now.

Signed-off-by: Marek Behún <kabel@kernel.org>
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 107 ++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 67048a88e327..771df9bbe271 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -12,6 +12,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include "armada-385.dtsi"
 
 / {
@@ -172,6 +173,112 @@ i2c@0 {
 			/* STM32F0 command interface at address 0x2a */
 			/* leds device (in STM32F0) at address 0x2b */
 
+			led-controller@2b {
+				compatible = "cznic,turris-omnia-leds";
+				reg = <0x2b>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				/*
+				 * The driver does not support HW control mode
+				 * for the LEDs yet. Disable the LEDs for now.
+				 *
+				 * Also LED functions are not stable yet:
+				 * - there are 3 LEDs connected via MCU to PCIe
+				 *   ports. One of these ports supports mSATA.
+				 *   There is no mSATA nor PCIe function.
+				 *   For now we use LED_FUNCITION_WLAN, since
+				 *   in most cases users have wifi cards in
+				 *   these slots
+				 * - there are 2 LEDs dedicated for user: A and
+				 *   B. Again there is no such function defined.
+				 *   For now we use LED_FUNCTION_DEBUG
+				 */
+				status = "disabled";
+
+				multi-led@0 {
+					reg = <0x0>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_DEBUG;
+					function-enumerator = <2>;
+				};
+
+				multi-led@1 {
+					reg = <0x1>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_DEBUG;
+					function-enumerator = <1>;
+				};
+
+				multi-led@2 {
+					reg = <0x2>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_WLAN;
+					function-enumerator = <3>;
+				};
+
+				multi-led@3 {
+					reg = <0x3>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_WLAN;
+					function-enumerator = <2>;
+				};
+
+				multi-led@4 {
+					reg = <0x4>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_WLAN;
+					function-enumerator = <1>;
+				};
+
+				multi-led@5 {
+					reg = <0x5>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_WAN;
+				};
+
+				multi-led@6 {
+					reg = <0x6>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_LAN;
+					function-enumerator = <4>;
+				};
+
+				multi-led@7 {
+					reg = <0x7>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_LAN;
+					function-enumerator = <3>;
+				};
+
+				multi-led@8 {
+					reg = <0x8>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_LAN;
+					function-enumerator = <2>;
+				};
+
+				multi-led@9 {
+					reg = <0x9>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_LAN;
+					function-enumerator = <1>;
+				};
+
+				multi-led@a {
+					reg = <0xa>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_LAN;
+					function-enumerator = <0>;
+				};
+
+				multi-led@b {
+					reg = <0xb>;
+					color = <LED_COLOR_ID_RGB>;
+					function = LED_FUNCTION_POWER;
+				};
+			};
+
 			eeprom@54 {
 				compatible = "atmel,24c64";
 				reg = <0x54>;
-- 
2.26.2

