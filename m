Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD0D3686FB7
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 21:34:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbjBAUek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 15:34:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbjBAUej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 15:34:39 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC1074498
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 12:34:37 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYehP-1p9pXd1fmt-00Ve3l; Wed, 01 Feb 2023 21:34:18 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Michael Heimpold <mhei@heimpold.de>
Subject: [PATCH 6/9] ARM: dts: imx28-duckbill-2: Include base board
Date:   Wed,  1 Feb 2023 21:33:35 +0100
Message-Id: <20230201203338.9525-7-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201203338.9525-1-stefan.wahren@i2se.com>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:s1ChDoKQxipAdzPN9rbByn8heT+sbOXgpxAJecAYpAh1q5SoRZr
 dX1gzrqD35R3M/caxufdpWLLEBbeLz5Cq6snnAWjWsOOt9gd0odaXnjrYUJ1FX5w83JfSWk
 PwNWeLnaomzYCqxJ06CdgmnZjcDDBMISP54+eq8Nz+/XCkNG9tPdB+F+tf4dfAr4h7UetWH
 5K5ku3h41sd3E6HliroBA==
UI-OutboundReport: notjunk:1;M01:P0:lLcQeMJNqSU=;e+1TSAfTflX3B2dUhja94zcyMij
 yNfsIc9WMUr5cMKte2nLjKvWENjRzLNSHv7MiNj+/cWrM/K7cVyWiNRSVIHJXAcFihAZH1TW2
 RWTiKtEGLAEscJdMtY2CXo8RqTr57Xbc0rFPw4j7Ff+56PVg/gurwv2ZWLKIgCqvupvoaRSkn
 SaRbp0w4YoAS1ZVICm/hRZaF5I+j9PyZfeCYxfQy5iwSUMJFXjjAo8wOCpt/Gi67yOAMGlGi5
 9XYDFV8XGWcA5fjETEXiouPmIVVF3IhWZP29KDvhCCrCAz+oWP9BHjRrSkKlLc8DC5G12t/xn
 MqW6AL8nW6hP42k1pOVCIq0dWRhVStjs9GBIEvEhhu41NFw4t8BCYowhmWq9IAjeaEz1wAhdE
 ojbmh191tDQUkYdI1RSuseKJRxLprmXkIex9zWpTVmPNImEKMty0mcCbp5k+bVIH8VHWyVemn
 A9naA7UTsA2SqpqGvMhHW4/mLVac590sxZr4ivmTuwchJTjjU2EJ2Asoi479O672LFZDfuVHp
 0Dzm22izdzFzixt+0kONhFpsvkQvc3MslATadGuFnn9FJCvMfCp2NNCFy+fo21fF8DqkY0yMF
 1V+cI1KzLisVyj1x3STnDaxPOdDSZNb7a4JDNs019rFcPBZgxZFrZY/AB5aZWeFMZkUXwr9By
 4310buxN+GwKAENJ/QgNSMMbs5sqUzE2gqGT71D7hg==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All additional I2SE Duckbill 2 variants always have the same
base board in common. So consider this by including the base
board and avoid a lot of redundancy.

Special care needs to be taken of the SPI variant. ssp2 is used
as SD card interface on the base board, but on the SPI variant
it's downgrade to a SPI interface to connect the QCA7000. So
the SD card properties must be deleted.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Michael Heimpold <mhei@heimpold.de>
---
 arch/arm/boot/dts/imx28-duckbill-2-485.dts    | 174 ++-------------
 .../arm/boot/dts/imx28-duckbill-2-enocean.dts | 198 +++-------------
 arch/arm/boot/dts/imx28-duckbill-2-spi.dts    | 211 ++++--------------
 3 files changed, 81 insertions(+), 502 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-duckbill-2-485.dts b/arch/arm/boot/dts/imx28-duckbill-2-485.dts
index d451fa018d83..b73020ff1053 100644
--- a/arch/arm/boot/dts/imx28-duckbill-2-485.dts
+++ b/arch/arm/boot/dts/imx28-duckbill-2-485.dts
@@ -5,172 +5,13 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/gpio/gpio.h>
-#include "imx28.dtsi"
+#include "imx28-duckbill-2.dts"
 
 / {
 	model = "I2SE Duckbill 2 485";
 	compatible = "i2se,duckbill-2-485", "i2se,duckbill-2", "fsl,imx28";
 
-	memory@40000000 {
-		device_type = "memory";
-		reg = <0x40000000 0x08000000>;
-	};
-
-	apb@80000000 {
-		apbh@80000000 {
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_8bit_pins_a
-					&mmc0_cd_cfg &mmc0_sck_cfg>;
-				bus-width = <8>;
-				vmmc-supply = <&reg_3p3v>;
-				status = "okay";
-				non-removable;
-			};
-
-			ssp2: spi@80014000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc2_4bit_pins_b
-					&mmc2_cd_cfg &mmc2_sck_cfg_b>;
-				bus-width = <4>;
-				vmmc-supply = <&reg_3p3v>;
-				status = "okay";
-			};
-
-			pinctrl@80018000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&hog_pins_a>;
-
-				hog_pins_a: hog@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D17__GPIO_1_17    /* Revision detection */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				mac0_phy_reset_pin: mac0-phy-reset@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_ALE__GPIO_0_26    /* PHY Reset */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				mac0_phy_int_pin: mac0-phy-int@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_D07__GPIO_0_7    /* PHY Interrupt */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				led_pins: leds@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SAIF0_MCLK__GPIO_3_20
-						MX28_PAD_SAIF0_LRCLK__GPIO_3_21
-						MX28_PAD_I2C0_SCL__GPIO_3_24
-						MX28_PAD_I2C0_SDA__GPIO_3_25
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-			};
-		};
-
-		apbx@80040000 {
-			lradc@80050000 {
-				status = "okay";
-			};
-
-			auart0: serial@8006a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart0_2pins_a>;
-				status = "okay";
-			};
-
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_a>;
-				status = "okay";
-			};
-
-			usbphy0: usbphy@8007c000 {
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb0: usb@80080000 {
-			status = "okay";
-			dr_mode = "peripheral";
-		};
-
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>, <&mac0_phy_reset_pin>;
-			phy-supply = <&reg_3p3v>;
-			phy-reset-gpios = <&gpio0 26 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <25>;
-			phy-handle = <&ethphy>;
-			status = "okay";
-
-			mdio {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				ethphy: ethernet-phy@0 {
-					compatible = "ethernet-phy-ieee802.3-c22";
-					reg = <0>;
-					pinctrl-names = "default";
-					pinctrl-0 = <&mac0_phy_int_pin>;
-					interrupt-parent = <&gpio0>;
-					interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
-					max-speed = <100>;
-				};
-			};
-		};
-	};
-
-	reg_3p3v: regulator-3p3v {
-		compatible = "regulator-fixed";
-		regulator-name = "3P3V";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-	};
-
 	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins>;
-
-		status-red {
-			label = "duckbill:red:status";
-			gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
-		};
-
-		status-green {
-			label = "duckbill:green:status";
-			gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
-
 		rs485-red {
 			label = "duckbill:red:rs485";
 			gpios = <&gpio3 24 GPIO_ACTIVE_LOW>;
@@ -182,3 +23,16 @@ rs485-green {
 		};
 	};
 };
+
+&i2c0 {
+	status = "disabled";
+};
+
+&led_pins {
+	fsl,pinmux-ids = <
+		MX28_PAD_SAIF0_MCLK__GPIO_3_20
+		MX28_PAD_SAIF0_LRCLK__GPIO_3_21
+		MX28_PAD_I2C0_SCL__GPIO_3_24
+		MX28_PAD_I2C0_SDA__GPIO_3_25
+	>;
+};
diff --git a/arch/arm/boot/dts/imx28-duckbill-2-enocean.dts b/arch/arm/boot/dts/imx28-duckbill-2-enocean.dts
index 73f521c46c1e..473d99b9b42f 100644
--- a/arch/arm/boot/dts/imx28-duckbill-2-enocean.dts
+++ b/arch/arm/boot/dts/imx28-duckbill-2-enocean.dts
@@ -5,184 +5,14 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/input/input.h>
-#include <dt-bindings/gpio/gpio.h>
-#include "imx28.dtsi"
+#include "imx28-duckbill-2.dts"
 
 / {
 	model = "I2SE Duckbill 2 EnOcean";
 	compatible = "i2se,duckbill-2-enocean", "i2se,duckbill-2", "fsl,imx28";
 
-	memory@40000000 {
-		device_type = "memory";
-		reg = <0x40000000 0x08000000>;
-	};
-
-	apb@80000000 {
-		apbh@80000000 {
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_8bit_pins_a
-					&mmc0_cd_cfg &mmc0_sck_cfg>;
-				bus-width = <8>;
-				vmmc-supply = <&reg_3p3v>;
-				status = "okay";
-				non-removable;
-			};
-
-			ssp2: spi@80014000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc2_4bit_pins_b
-					&mmc2_cd_cfg &mmc2_sck_cfg_b>;
-				bus-width = <4>;
-				vmmc-supply = <&reg_3p3v>;
-				status = "okay";
-			};
-
-			pinctrl@80018000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&hog_pins_a>;
-
-				hog_pins_a: hog@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D17__GPIO_1_17    /* Revision detection */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				mac0_phy_reset_pin: mac0-phy-reset@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_ALE__GPIO_0_26    /* PHY Reset */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				mac0_phy_int_pin: mac0-phy-int@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_D07__GPIO_0_7    /* PHY Interrupt */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				led_pins: leds@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SAIF0_MCLK__GPIO_3_20
-						MX28_PAD_SAIF0_LRCLK__GPIO_3_21
-						MX28_PAD_AUART0_CTS__GPIO_3_2
-						MX28_PAD_I2C0_SCL__GPIO_3_24
-						MX28_PAD_I2C0_SDA__GPIO_3_25
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				enocean_button: enocean-button@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_AUART0_RTS__GPIO_3_3
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-			};
-		};
-
-		apbx@80040000 {
-			lradc@80050000 {
-				status = "okay";
-			};
-
-			auart0: serial@8006a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart0_2pins_a>;
-				status = "okay";
-			};
-
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_a>;
-				status = "okay";
-			};
-
-			usbphy0: usbphy@8007c000 {
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb0: usb@80080000 {
-			status = "okay";
-			dr_mode = "peripheral";
-		};
-
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>, <&mac0_phy_reset_pin>;
-			phy-supply = <&reg_3p3v>;
-			phy-reset-gpios = <&gpio0 26 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <25>;
-			phy-handle = <&ethphy>;
-			status = "okay";
-
-			mdio {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				ethphy: ethernet-phy@0 {
-					compatible = "ethernet-phy-ieee802.3-c22";
-					reg = <0>;
-					pinctrl-names = "default";
-					pinctrl-0 = <&mac0_phy_int_pin>;
-					interrupt-parent = <&gpio0>;
-					interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
-					max-speed = <100>;
-				};
-			};
-		};
-	};
-
-	reg_3p3v: regulator-3p3v {
-		compatible = "regulator-fixed";
-		regulator-name = "3P3V";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-	};
-
 	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins>;
-
-		status-red {
-			label = "duckbill:red:status";
-			gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
-		};
-
-		status-green {
-			label = "duckbill:green:status";
-			gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
-
 		enocean-blue {
 			label = "duckbill:blue:enocean";
 			gpios = <&gpio3 24 GPIO_ACTIVE_LOW>;
@@ -211,3 +41,29 @@ key-enocean {
 		};
 	};
 };
+
+&i2c0 {
+	status = "disabled";
+};
+
+&led_pins {
+	fsl,pinmux-ids = <
+		MX28_PAD_SAIF0_MCLK__GPIO_3_20
+		MX28_PAD_SAIF0_LRCLK__GPIO_3_21
+		MX28_PAD_AUART0_CTS__GPIO_3_2
+		MX28_PAD_I2C0_SCL__GPIO_3_24
+		MX28_PAD_I2C0_SDA__GPIO_3_25
+	>;
+};
+
+&pinctrl {
+	enocean_button: enocean-button@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_AUART0_RTS__GPIO_3_3
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx28-duckbill-2-spi.dts b/arch/arm/boot/dts/imx28-duckbill-2-spi.dts
index 0e8be5975709..859d97a5a775 100644
--- a/arch/arm/boot/dts/imx28-duckbill-2-spi.dts
+++ b/arch/arm/boot/dts/imx28-duckbill-2-spi.dts
@@ -5,9 +5,7 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/gpio/gpio.h>
-#include "imx28.dtsi"
+#include "imx28-duckbill-2.dts"
 
 / {
 	model = "I2SE Duckbill 2 SPI";
@@ -16,179 +14,50 @@ / {
 	aliases {
 		ethernet1 = &qca7000;
 	};
+};
 
-	memory@40000000 {
-		device_type = "memory";
-		reg = <0x40000000 0x08000000>;
-	};
-
-	apb@80000000 {
-		apbh@80000000 {
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_8bit_pins_a
-					&mmc0_cd_cfg &mmc0_sck_cfg>;
-				bus-width = <8>;
-				vmmc-supply = <&reg_3p3v>;
-				status = "okay";
-				non-removable;
-			};
-
-			ssp2: spi@80014000 {
-				compatible = "fsl,imx28-spi";
-				pinctrl-names = "default";
-				pinctrl-0 = <&spi2_pins_a>;
-				status = "okay";
-
-				qca7000: ethernet@0 {
-					reg = <0>;
-					compatible = "qca,qca7000";
-					pinctrl-names = "default";
-					pinctrl-0 = <&qca7000_pins>;
-					interrupt-parent = <&gpio3>;
-					interrupts = <3 IRQ_TYPE_EDGE_RISING>;
-					spi-cpha;
-					spi-cpol;
-					spi-max-frequency = <8000000>;
-				};
-			};
-
-			pinctrl@80018000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&hog_pins_a>;
-
-				hog_pins_a: hog@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D17__GPIO_1_17    /* Revision detection */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				mac0_phy_reset_pin: mac0-phy-reset@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_ALE__GPIO_0_26    /* PHY Reset */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				mac0_phy_int_pin: mac0-phy-int@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_D07__GPIO_0_7    /* PHY Interrupt */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				led_pins: led@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SAIF0_MCLK__GPIO_3_20
-						MX28_PAD_SAIF0_LRCLK__GPIO_3_21
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				qca7000_pins: qca7000@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_AUART0_RTS__GPIO_3_3    /* Interrupt */
-						MX28_PAD_LCD_D13__GPIO_1_13      /* QCA7K reset */
-						MX28_PAD_LCD_D14__GPIO_1_14      /* GPIO 0 */
-						MX28_PAD_LCD_D15__GPIO_1_15      /* GPIO 1 */
-						MX28_PAD_LCD_D18__GPIO_1_18      /* GPIO 2 */
-						MX28_PAD_LCD_D21__GPIO_1_21      /* GPIO 3 */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-			};
-		};
-
-		apbx@80040000 {
-			lradc@80050000 {
-				status = "okay";
-			};
-
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_a>;
-				status = "okay";
-			};
-
-			usbphy0: usbphy@8007c000 {
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb0: usb@80080000 {
-			status = "okay";
-			dr_mode = "peripheral";
-		};
-
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>, <&mac0_phy_reset_pin>;
-			phy-supply = <&reg_3p3v>;
-			phy-reset-gpios = <&gpio0 26 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <25>;
-			phy-handle = <&ethphy>;
-			status = "okay";
-
-			mdio {
-				#address-cells = <1>;
-				#size-cells = <0>;
+&auart0 {
+	status = "disabled";
+};
 
-				ethphy: ethernet-phy@0 {
-					compatible = "ethernet-phy-ieee802.3-c22";
-					reg = <0>;
-					pinctrl-names = "default";
-					pinctrl-0 = <&mac0_phy_int_pin>;
-					interrupt-parent = <&gpio0>;
-					interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
-					max-speed = <100>;
-				};
-			};
-		};
-	};
+&i2c0 {
+	status = "disabled";
+};
 
-	reg_3p3v: regulator-3p3v {
-		compatible = "regulator-fixed";
-		regulator-name = "3P3V";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
+&pinctrl {
+	qca7000_pins: qca7000@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_AUART0_RTS__GPIO_3_3    /* Interrupt */
+			MX28_PAD_LCD_D13__GPIO_1_13      /* QCA7K reset */
+			MX28_PAD_LCD_D14__GPIO_1_14      /* GPIO 0 */
+			MX28_PAD_LCD_D15__GPIO_1_15      /* GPIO 1 */
+			MX28_PAD_LCD_D18__GPIO_1_18      /* GPIO 2 */
+			MX28_PAD_LCD_D21__GPIO_1_21      /* GPIO 3 */
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
 	};
+};
 
-	leds {
-		compatible = "gpio-leds";
+&ssp2 {
+	compatible = "fsl,imx28-spi";
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2_pins_a>;
+	/delete-property/ bus-width;
+	/delete-property/ vmmc-supply;
+	status = "okay";
+
+	qca7000: ethernet@0 {
+		reg = <0>;
+		compatible = "qca,qca7000";
 		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins>;
-
-		status-red {
-			label = "duckbill:red:status";
-			gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
-		};
-
-		status-green {
-			label = "duckbill:green:status";
-			gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
+		pinctrl-0 = <&qca7000_pins>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <3 IRQ_TYPE_EDGE_RISING>;
+		spi-cpha;
+		spi-cpol;
+		spi-max-frequency = <8000000>;
 	};
 };
-- 
2.34.1

