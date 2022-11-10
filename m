Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72C38624866
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 18:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbiKJRcQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 12:32:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiKJRcP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 12:32:15 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F41E51274A
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 09:32:13 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.71]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N0G9p-1pEXhI0rKh-00xJMj; Thu, 10 Nov 2022 18:31:35 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH V3 2/2] ARM: dts: bcm283x: Move ACT LED into separate dtsi
Date:   Thu, 10 Nov 2022 18:31:05 +0100
Message-Id: <20221110173105.6633-3-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221110173105.6633-1-stefan.wahren@i2se.com>
References: <20221110173105.6633-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:NDGv0qroNFZnHJJGl02MmaWtFTMADtOUU4r5McZOyVGgBcBqX7W
 Tds+u+/Dss6K70eJgD8aaI8HJudQu0fGEUz1OfvHdO6WnaDFzG8ugaNCZX3IBoh3/vn2oS3
 jCvope1ZYS0OjoGTv3s/E8iBgc9FWX45X+0/zOcrDvMu8HbNEkMGRk+wR2XIDEIyrtcfiz7
 Yy87dIZ+snHNEM6SG/SHA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:xFIE3SGRQsw=:bPf1edCmWgiSzV52c012Jc
 kKhUxfd7Gbw7w9KmJnSnoazRwg2gfyyBLVkSaSxlUS+j3buParPbqsEvyoD59uavQXJu0cuZZ
 D1DlJePPDcxkPvfcuJhpSKI/ykTmAyZhgDPa39qsUfQY6Q58r4gwmpRLSwVCW68Uj8vYCrTdM
 BaOnkkgMPzuWefdDpvGS5ipAxBmlcuWZUEAQDCYHC5nLtfSYoRXjj+L5kUxY7QK0B/BQty/D6
 6VC3YOojnRm0j1Va+4DHjUm9zX0V/0b6PH3MroxUWV2Xawpv+Uhr50nduOrpnc7wwQMMhtb8T
 dseO78odK9nlFggz6Xf5YiN9EpaK/YGemwDxrDYKMt9X+RDE9c/VoRA6wfbcQusFAWyuGzi/G
 mF92W/rEVhg7Zmfl3BOR8W4XcXLSgg8++ADwcyXW5NP0Ue3/BrLpeN4X5SgR8stymR0SSQvE5
 3FJIx6I0FH6N6rF1Bx2x1YOnTwvWRb1E3XPT9AQtNzlNw5xOWtaEO93ke/lrSjPR3t31BobC5
 RHZpzZXxCZ59SdzgwDmbgZvV8nE8wtv6AKBMPZhyyrIHxKiujOmU6mKTpYD2fZqU4s9NB3lMK
 ev2VQIhevLAWk3xpZvb5idquZNgN/yIAzg8rF0jeipjnG9F/qsMoFopI7DW2531DBjuPI505x
 Bs4cVuEc2UpBAqC4e0cd7sW/EI151jfvTxqJW5JPYKCRK+d/s93QzW/HbrW0oMoCxOrSgHfb3
 8ySbIGatOVEA68c1ihmpz2LNoilizsmAEA2fG3caT3q4XpHJHftcpWE/Q9+rHtrL1xUn6nZYs
 /fqGBxaLPCeFRj0EVnt4IoNiDGfIjfl1N2fE4zk3EmTTZOnJS5xd2mN9UFaBFkvyxq5gZ2PLM
 QbzrHptbARlEbCcBr7sgZyglLMIWTMoNRLP27fMXMrnZlTpVkGtx+XhJ6O1mNCiiZ4QLclSLk
 RQy4vXsICEq9a99QHKs9D2sJ4KqtlPbDx/XeDhEXjHcrthccHhXvPhoWMbV8DhrjkKJ5Jx9F+
 /B9mI2CLWBPoo3g3Jf19iuumYzDDdYcM6vd0eG6mfNo33sIsaSljoeX/3D7BgfwLphTrWD3nY
 GfYKYUeLT+NY8yovQ7GgdWlW1CqJ9H/u+TpY7YDTTMGoomwUjZ5cnjOzn1N87RdShTfx0tPVm
 7oYf7FPJscESOttiAsao9BVj3aY2k8dYdb0M0vSnrXVwAP9WrArcfOE2iZzSZI4Oey16krGCt
 Sxw128tD8LQLZKS97K0n97463GupX01dKbqksMG5sPZgaKAui5lAAAOD2hPZnDTzCLjh2DR7s
 kLdfYTDkVSSUeFt1S90SqyARQxum7g==
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
 arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi        |  5 ++++
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
 19 files changed, 164 insertions(+), 159 deletions(-)
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
index 1470d2049f74..02ce817868ba 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
@@ -3,6 +3,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm2835-rpi-common.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
 / {
@@ -13,19 +14,6 @@ memory@0 {
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
@@ -108,6 +96,19 @@ &hdmi {
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
index 89be496f84f8..3fdf60eb11dc 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a.dts
@@ -3,6 +3,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm2835-rpi-common.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
 / {
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
@@ -103,6 +98,10 @@ &hdmi {
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
index 7f653f11788d..9956fd06a4b6 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
@@ -3,6 +3,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm2835-rpi-common.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-smsc9514.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
@@ -14,19 +15,6 @@ memory@0 {
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
@@ -110,6 +98,19 @@ &hdmi {
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
index 55e7cb0a242f..4e1770afb145 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
@@ -3,6 +3,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm2835-rpi-common.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-smsc9512.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
@@ -14,12 +15,6 @@ memory@0 {
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
@@ -103,6 +98,10 @@ &hdmi {
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
index 3020c42ea8d7..eec1d0892d33 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b.dts
@@ -3,6 +3,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm2835-rpi-common.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-smsc9512.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
 
@@ -14,12 +15,6 @@ memory@0 {
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
@@ -97,6 +92,10 @@ &hdmi {
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
index f71d7e9e5895..750cd76948e3 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
@@ -3,6 +3,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm2835-rpi-common.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 
 / {
 	leds {
@@ -33,6 +34,10 @@ reg_1v8: fixed-regulator {
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
index 9b3a2070a629..dbf825985ec0 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -7,6 +7,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm2835-rpi-common.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-otg.dtsi"
 #include "bcm283x-rpi-wifi-bt.dtsi"
 
@@ -23,12 +24,6 @@ chosen {
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
@@ -111,6 +106,10 @@ &hdmi {
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
index f9359ac2bb92..f80e65a825fd 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
@@ -7,6 +7,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm2835-rpi-common.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
 #include "bcm283x-rpi-usb-otg.dtsi"
 
 / {
@@ -17,12 +18,6 @@ memory@0 {
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
@@ -105,6 +100,10 @@ &hdmi {
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
index 000000000000..f83e56de1a72
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

