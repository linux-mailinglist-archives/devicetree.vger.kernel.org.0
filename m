Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41F6C7D06A
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 00:00:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730027AbfGaWAw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 18:00:52 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:50278 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726231AbfGaWAw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 18:00:52 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id A4201747A37; Thu,  1 Aug 2019 00:00:50 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] at91/dt: ariettag25: style cleanup
Date:   Thu,  1 Aug 2019 00:00:45 +0200
Message-Id: <20190731220045.3992-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

- newline between properties and sub-nodes
- use tags from included dtsi instead of duplicating the hierarchy
- status should be the last property
- drop duplicated alias

There are no differences in the generated .dtb

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
Hello,

these are the style rules I was teached when modifying imx dts files.
Do they apply to at91, too?

Best regards
Uwe

 arch/arm/boot/dts/at91-ariettag25.dts | 87 +++++++++++++--------------
 1 file changed, 43 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boot/dts/at91-ariettag25.dts b/arch/arm/boot/dts/at91-ariettag25.dts
index 7a34c4dc05d2..8f9f5a22cbf6 100644
--- a/arch/arm/boot/dts/at91-ariettag25.dts
+++ b/arch/arm/boot/dts/at91-ariettag25.dts
@@ -6,14 +6,11 @@
  */
 /dts-v1/;
 #include "at91sam9g25.dtsi"
+
 / {
 	model = "Acme Systems Arietta G25";
 	compatible = "acme,ariettag25", "atmel,at91sam9x5", "atmel,at91sam9";
 
-	aliases {
-		serial0 = &dbgu;
-	};
-
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -34,55 +31,16 @@
 
 	ahb {
 		apb {
-			mmc0: mmc@f0008000 {
-				pinctrl-0 = <
-				  &pinctrl_mmc0_slot0_clk_cmd_dat0
-				  &pinctrl_mmc0_slot0_dat1_3>;
-				status = "okay";
-
-				slot@0 {
-					reg = <0>;
-					bus-width = <4>;
-				};
-			};
-
-			tcb0: timer@f8008000 {
-				timer@0 {
-					compatible = "atmel,tcb-timer";
-					reg = <0>;
-				};
-
-				timer@1 {
-					compatible = "atmel,tcb-timer";
-					reg = <1>;
-				};
-			};
-
-			usb2: gadget@f803c000 {
-				status = "okay";
-			};
-
-			dbgu: serial@fffff200 {
-				status = "okay";
-			};
-
 			rtc@fffffeb0 {
 				status = "okay";
 			};
 		};
 
-		usb0: ohci@600000 {
-			status = "okay";
-			num-ports = <3>;
-		};
-
-		usb1: ehci@700000 {
-			status = "okay";
-		};
 	};
 
 	leds {
 		compatible = "gpio-leds";
+
 		arietta_led {
 			label = "arietta_led";
 			gpios = <&pioB 8 GPIO_ACTIVE_HIGH>; /* PB8 */
@@ -90,3 +48,44 @@
 		};
 	};
 };
+
+&dbgu {
+	status = "okay";
+};
+
+&mmc0 {
+	pinctrl-0 = <
+		&pinctrl_mmc0_slot0_clk_cmd_dat0
+		&pinctrl_mmc0_slot0_dat1_3>;
+	status = "okay";
+
+	slot@0 {
+		reg = <0>;
+		bus-width = <4>;
+	};
+};
+
+&tcb0 {
+	timer@0 {
+		compatible = "atmel,tcb-timer";
+		reg = <0>;
+	};
+
+	timer@1 {
+		compatible = "atmel,tcb-timer";
+		reg = <1>;
+	};
+};
+
+&usb0 {
+	num-ports = <3>;
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
+
+&usb2 {
+	status = "okay";
+};
-- 
2.20.1

