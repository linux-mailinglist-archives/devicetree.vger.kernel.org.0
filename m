Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB1FD5E946D
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 18:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbiIYQlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 12:41:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230439AbiIYQlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 12:41:24 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CE491F2DA
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 09:41:22 -0700 (PDT)
Received: from stefanw-SCHENKER ([37.4.248.18]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MVubb-1omli62CHd-00RtY7; Sun, 25 Sep 2022 18:40:47 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH 2/2] ARM: dts: bcm283x: Move ACT LED into separate dtsi
Date:   Sun, 25 Sep 2022 18:40:21 +0200
Message-Id: <20220925164021.3600-3-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220925164021.3600-1-stefan.wahren@i2se.com>
References: <20220925164021.3600-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:aY9Ve6DIepxdHCufY97TWHyP7UqPG3wQHmpjuA7HtBuUNMzeUh8
 9pFfb+tUIcVdCrR3LB9a/fV8p98T3htdteEqx3QrV+UPIqh4ez5RgqRq9DHu4kYrvQ83EW+
 +Dz1FNPCGKqX2L8c6/ZSeZaXv+Ca8qQwwhsiU7uuTEXkeg7EgVtoMquZqX9oDrYZqb79Y4K
 6TCs4EpMwuu2tYYcyPFmA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:W/e7eWElzPE=:JiqCJb41+XSSix3nJ0eIQv
 Ed5v8sWaYyobxcbk5QuQrkSRBjQfQTW4Nwz5KupCstIleFquPLWbrNGRNe+USQgBeeqK7dvE8
 JjOyb/k1bBaohySAs7clD5o8JQ6HPtCgZ28PZzDK/xxkfFb861Aq4PkPlK9O1EcSxtFjOjtjY
 JYwiqvftO+5nl36mr+mchz5q0QQFTIJf+2im7af0qtamUOjdwJy4e1W5TTlo7sHfcvWNYMd8D
 T0nW9ngObLjNN6alXbW0ygXRIieIIqyy0ois9sXXLwiXXrDDqecBKwY4mpJJPuKy/zdw8DGjQ
 SQD2ZQ9v6mUvsr79x0/yaj4JKtsWO4cE+3r88KNSieuiN5Ks1tvPXhtpWqYsnvO2zfT/j8ePr
 tEwA/1kFCeoS5zvJujdHU3Yt1n5IxbMH4jufH0gLvaLd4tYPaIQv5YAgH/zTsMEJyMcgkNif/
 r7vStQBPr0DImsW/V7Fucm4t5a2UbubpgMLaKaTC/e65tTTcjqF3LQs7LJTj4uoPHpst3gOC3
 3Dkl8zzzKdTtn+XbFT9dYuFEY31WsOfpgnOmBcKctwSKGEbuEXujwHlrniw9siqYosVcYVfxK
 8g6WicC56ISzkQRj8qBJjisXcHa9qRmgKC4R9w38raHkq1W6l3m53naDOoDaZx5Q9y9Ms7Uqr
 UfgsxOCtFa6svJjc5mXFTLMVvIeSE4qhT/oxg46d3+WoBu5MMEF571jT2ANhoFCME5JoG9Myd
 u6WVZkP6f7i09y+UM+S6TCmPtKoYEydet1dbloXzMvBTRK9y9GvMWj6IJy0ETgPQ+YHmN4Mmc
 v7y3SaDyDRv8xBSX7b04Yj74pce+g==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The usage of the label property for gpio-leds has been deprecated
a long time ago. In bcm2835-rpi.dtsi the ACT LED uses such a label
and derive it to almost every Raspberry Pi board. Since we cannot break
userspace interface this property must be kept. But we can move the
ACT LED into a separate dtsi and include them from the board files.

This change have two benefits:
- with both new refs it's now clear the LED part is included from a dtsi
- new boards do not include the deprecated stuff automatically

Reported-by: Alexander Dahl <ada@thorsis.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts         | 27 ++++++++++---------
 arch/arm/boot/dts/bcm2711-rpi-400.dts         | 16 +++++------
 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts      | 27 ++++++++++---------
 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts      | 27 ++++++++++---------
 arch/arm/boot/dts/bcm2835-rpi-a.dts           | 11 ++++----
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts      | 27 ++++++++++---------
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts      | 11 ++++----
 arch/arm/boot/dts/bcm2835-rpi-b.dts           | 11 ++++----
 arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi        | 11 ++++----
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts      | 11 ++++----
 arch/arm/boot/dts/bcm2835-rpi-zero.dts        | 11 ++++----
 arch/arm/boot/dts/bcm2835-rpi.dtsi            | 10 -------
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts         | 27 ++++++++++---------
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts    | 27 ++++++++++---------
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts    | 27 ++++++++++---------
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts         | 11 ++++----
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi        |  8 ------
 arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts    | 11 ++++----
 .../boot/dts/bcm283x-rpi-led-deprecated.dtsi  | 18 +++++++++++++
 19 files changed, 164 insertions(+), 165 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index aaad9b7ec630..d5f8823230db 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2711.dtsi"
 #include "bcm2711-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-peripheral.dtsi"
 #include "bcm283x-rpi-wifi-bt.dtsi"
 
@@ -14,19 +15,6 @@ chosen {
 		stdout-path = "serial1:115200n8";
 	};
 
-	leds {
-		led-act {
-			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-pwr {
-			label = "PWR";
-			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
-			default-state = "keep";
-			linux,default-trigger = "default-on";
-		};
-	};
-
 	sd_io_1v8_reg: regulator-sd-io-1v8 {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-sd-io";
@@ -156,6 +144,19 @@ &hdmi1 {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	led_pwr: led-pwr {
+		label = "PWR";
+		gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+		default-state = "keep";
+		linux,default-trigger = "default-on";
+	};
+};
+
 &pixelvalve0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm2711-rpi-400.dts b/arch/arm/boot/dts/bcm2711-rpi-400.dts
index c53d9eb0b802..1ab8184302db 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-400.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-400.dts
@@ -11,14 +11,6 @@ chosen {
 		stdout-path = "serial1:115200n8";
 	};
 
-	leds {
-		/delete-node/ led-act;
-
-		led-pwr {
-			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
 	gpio-poweroff {
 		compatible = "gpio-poweroff";
 		gpios = <&expgpio 5 GPIO_ACTIVE_HIGH>;
@@ -40,6 +32,14 @@ &genet_mdio {
 	clock-frequency = <1950000>;
 };
 
+&led_pwr {
+	gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	/delete-node/ led_act;
+};
+
 &pm {
 	/delete-property/ system-power-controller;
 };
diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
index 19600b629be5..d7ba02f586d3 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
@@ -1,23 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
 #include "bcm2711-rpi-cm4.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
 / {
 	model = "Raspberry Pi Compute Module 4 IO Board";
-
-	leds {
-		led-act {
-			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-pwr {
-			label = "PWR";
-			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
-			default-state = "keep";
-			linux,default-trigger = "default-on";
-		};
-	};
 };
 
 &ddc0 {
@@ -113,6 +101,19 @@ &genet {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	led-pwr {
+		label = "PWR";
+		gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+		default-state = "keep";
+		linux,default-trigger = "default-on";
+	};
+};
+
 &pixelvalve0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
index 9b9a18bbb20a..50ba70d50313 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
 / {
@@ -12,19 +13,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x10000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-pwr {
-			label = "PWR";
-			gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
-			default-state = "keep";
-			linux,default-trigger = "default-on";
-		};
-	};
 };
 
 &gpio {
@@ -107,6 +95,19 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	led-pwr {
+		label = "PWR";
+		gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
+		default-state = "keep";
+		linux,default-trigger = "default-on";
+	};
+};
+
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-a.dts b/arch/arm/boot/dts/bcm2835-rpi-a.dts
index f664e4fced93..2236fc547372 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
 / {
@@ -12,12 +13,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x10000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
-		};
-	};
 };
 
 &gpio {
@@ -102,6 +97,10 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+};
+
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
index 248feb2ed23d..0fb2c9472a39 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-smsc9514.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
@@ -13,19 +14,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x20000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-pwr {
-			label = "PWR";
-			gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
-			default-state = "keep";
-			linux,default-trigger = "default-on";
-		};
-	};
 };
 
 &gpio {
@@ -109,6 +97,19 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	led-pwr {
+		label = "PWR";
+		gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
+		default-state = "keep";
+		linux,default-trigger = "default-on";
+	};
+};
+
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
index f5b66d3f4ff3..7315e731891a 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-smsc9512.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
@@ -13,12 +14,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x10000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
-		};
-	};
 };
 
 &gpio {
@@ -102,6 +97,10 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+};
+
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b.dts b/arch/arm/boot/dts/bcm2835-rpi-b.dts
index f589bede2b11..bf13290af2c9 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-smsc9512.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
@@ -13,12 +14,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x10000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
-		};
-	};
 };
 
 &gpio {
@@ -96,6 +91,10 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+};
+
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi b/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
index e4e6b6abbfc1..277c99a2f594 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
@@ -2,14 +2,9 @@
 /dts-v1/;
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 
 / {
-	leds {
-		led-act {
-			gpios = <&gpio 47 GPIO_ACTIVE_LOW>;
-		};
-	};
-
 	memory@0 {
 		device_type = "memory";
 		reg = <0 0x20000000>;
@@ -32,6 +27,10 @@ reg_1v8: fixed-regulator {
 	};
 };
 
+&led_act {
+	gpios = <&gpio 47 GPIO_ACTIVE_LOW>;
+};
+
 &sdhost {
 	non-removable;
 	vmmc-supply = <&reg_3v3>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index 596bb1ef994e..12ab981a7bad 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-otg.dtsi"
 #include "bcm283x-rpi-wifi-bt.dtsi"
 
@@ -22,12 +23,6 @@ chosen {
 		/* 8250 auxiliary UART instead of pl011 */
 		stdout-path = "serial1:115200n8";
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 47 GPIO_ACTIVE_LOW>;
-		};
-	};
 };
 
 &bt {
@@ -110,6 +105,10 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 47 GPIO_ACTIVE_LOW>;
+};
+
 &sdhci {
 	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
 };
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero.dts b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
index a65c2bca69ea..b0901cab4376 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-otg.dtsi"
 
 / {
@@ -16,12 +17,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x20000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };
 
 &gpio {
@@ -104,6 +99,10 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
+};
+
 &sdhost {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdhost_gpio48>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index 87ddcad76083..ee9ee9d1fe65 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -1,16 +1,6 @@
 #include <dt-bindings/power/raspberrypi-power.h>
 
 / {
-	leds {
-		compatible = "gpio-leds";
-
-		led-act {
-			label = "ACT";
-			default-state = "keep";
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
 	soc {
 		firmware: firmware {
 			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
diff --git a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
index 3635502b1e0a..6068ec390081 100644
--- a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
+++ b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2836.dtsi"
 #include "bcm2836-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-smsc9514.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
@@ -13,19 +14,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x40000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-pwr {
-			label = "PWR";
-			gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
-			default-state = "keep";
-			linux,default-trigger = "default-on";
-		};
-	};
 };
 
 &gpio {
@@ -109,6 +97,19 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	led-pwr {
+		label = "PWR";
+		gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
+		default-state = "keep";
+		linux,default-trigger = "default-on";
+	};
+};
+
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
index f7222a28903e..3548306dfbcb 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2837.dtsi"
 #include "bcm2836-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 #include "bcm283x-rpi-wifi-bt.dtsi"
 
@@ -18,19 +19,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x20000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 29 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-pwr {
-			label = "PWR";
-			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
-			default-state = "keep";
-			linux,default-trigger = "default-on";
-		};
-	};
 };
 
 &firmware {
@@ -124,6 +112,19 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 29 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	led-pwr {
+		label = "PWR";
+		gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+		default-state = "keep";
+		linux,default-trigger = "default-on";
+	};
+};
+
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio41>;
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index ec721d323ac5..2f1800cbc522 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -3,6 +3,7 @@
 #include "bcm2837.dtsi"
 #include "bcm2836-rpi.dtsi"
 #include "bcm283x-rpi-lan7515.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 #include "bcm283x-rpi-wifi-bt.dtsi"
 
@@ -19,19 +20,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x40000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 29 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-pwr {
-			label = "PWR";
-			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
-			default-state = "keep";
-			linux,default-trigger = "default-on";
-		};
-	};
 };
 
 &bt {
@@ -130,6 +118,19 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 29 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	led-pwr {
+		label = "PWR";
+		gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+		default-state = "keep";
+		linux,default-trigger = "default-on";
+	};
+};
+
 &pwm {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio41>;
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
index fb6a417d73e7..61270340075c 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 #include "bcm2837.dtsi"
 #include "bcm2836-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-smsc9514.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 #include "bcm283x-rpi-wifi-bt.dtsi"
@@ -19,12 +20,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0 0x40000000>;
 	};
-
-	leds {
-		led-act {
-			gpios = <&expgpio 2 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };
 
 &bt {
@@ -129,6 +124,10 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&expgpio 2 GPIO_ACTIVE_HIGH>;
+};
+
 /* uart0 communicates with the BT module */
 &uart0 {
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
index f57b4ca145dd..1e4e4946b6b6 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
+++ b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
@@ -9,14 +9,6 @@ memory@0 {
 		reg = <0 0x40000000>;
 	};
 
-	leds {
-		/*
-		 * Since there is no upstream GPIO driver yet,
-		 * remove the incomplete node.
-		 */
-		/delete-node/ led-act;
-	};
-
 	reg_3v3: fixed-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3V3";
diff --git a/arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts b/arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts
index 4a768562985e..b9cc4594398b 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include "bcm2837.dtsi"
 #include "bcm2836-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-otg.dtsi"
 #include "bcm283x-rpi-wifi-bt.dtsi"
 
@@ -22,12 +23,6 @@ chosen {
 		/* 8250 auxiliary UART instead of pl011 */
 		stdout-path = "serial1:115200n8";
 	};
-
-	leds {
-		led-act {
-			gpios = <&gpio 29 GPIO_ACTIVE_LOW>;
-		};
-	};
 };
 
 &bt {
@@ -109,6 +104,10 @@ &hdmi {
 	status = "okay";
 };
 
+&led_act {
+	gpios = <&gpio 29 GPIO_ACTIVE_LOW>;
+};
+
 &sdhci {
 	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
 };
diff --git a/arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi b/arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi
new file mode 100644
index 000000000000..880e43daac29
--- /dev/null
+++ b/arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/ {
+	/*
+	 * This file provides the now deprecated ACT LED to the
+	 * Raspberry Pi boards. Please don't include this file
+	 * for new boards!
+	 */
+	leds: leds {
+		compatible = "gpio-leds";
+
+		led_act: led-act {
+			label = "ACT";
+			default-state = "keep";
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
-- 
2.34.1

