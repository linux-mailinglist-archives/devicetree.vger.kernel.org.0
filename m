Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 230BA686FB6
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 21:34:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbjBAUek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 15:34:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjBAUej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 15:34:39 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9441D744A1
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 12:34:37 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MK3BO-1p3zRE0JfK-00LUWS; Wed, 01 Feb 2023 21:34:18 +0100
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
Subject: [PATCH 5/9] ARM: dts: imx28-duckbill: Convert to use label references
Date:   Wed,  1 Feb 2023 21:33:34 +0100
Message-Id: <20230201203338.9525-6-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201203338.9525-1-stefan.wahren@i2se.com>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:qFfYRiFiQ2LFjE6thsbJHT7e4sTPcr4XX8pZjCJ7Wo9nNlYfWUI
 F+NoFkR3Jy7LG3HgqbzWu5EOjr62GDUNMQWoXUgiM3mSgNOgETzrgXUaKHfCSz1Dori1Oov
 VmtW+AEYXO2gAhwbODkMHNjeYAFm2xUtOYTmnUmiVJyGyIlOmYsmJmU8JDNEsy4fvze4JNs
 KRYSDexOkGRDn8JQPUg3Q==
UI-OutboundReport: notjunk:1;M01:P0:UCCRFakHlc8=;0jhJdsxYQhc+vEgk+heEhl8Hh3H
 FxQK21QTxJmruuHoc/wVfbrKockij3ru7zi8H5rkRK9QtoqnvFoNL6P0qGfdTZP9hLEu2vDvH
 AZ9FoO0HD6pdcPNkVHg145DM9ozmr2AxxIl1fFNmvp3CZYHXr/1E8JPOgV48iFLJUIlJIkkvR
 WrwJCIWs4hb9tEapO4vq7dMHxvawUVnH55BDDXOklsPUbn5NYkUfApSS3xX27zO7bsW7GKl+s
 kN7ESTPD5hm3WivC8aZcad0vEldtdGhXvfSDz+abRgDWCOvQ6o5QFDSXh4J+QbRmSBQpd9dmP
 iDljKadQfPZj4QDRHVIcvAo0Ka5qojnpVK9inemexHVYUrirOHE+TJz5W5cfbXZl8X5jWUgfv
 QsUQ9YJBnlVibcbdUnr0oPsHuAeEpaAjD4zptrFN93vCWVPvtZEgBUxLa2rbNtxr4Qp4AKzFe
 +jEgO7TlZwhvB4sA7A8El3AYY192tKpwHT6j//5jCIRl3eOPnw7xlWVCWU/GpxL0Cyh5b1gRh
 NUcyQP3cgaAUV2hUgKzB84t+9w4AL9Dk6qGMvrbyaw7zkQi8h6eG+U9MzDjfXB7hlgaV60rPN
 0h5fGI5sSMnKAhOU6doLk/JEb8w5R5ADpMC3gE0y2zbyxkHr/xrKqVMMY/4DjPlgtPKGPl0aw
 ixJqkjf7YIoTpB5oRbBVY3Xj+b/6Ow5vWcj4sSZH7g==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These I2SE board files still use node name and unit address
to reference parts from the imx28.dtsi . This causes a lot of
redundancy. So use label references in order to make it easier
to maintain.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Michael Heimpold <mhei@heimpold.de>
---
 arch/arm/boot/dts/imx28-duckbill-2.dts | 256 ++++++++++++-------------
 arch/arm/boot/dts/imx28-duckbill.dts   | 196 +++++++++----------
 2 files changed, 218 insertions(+), 234 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-duckbill-2.dts b/arch/arm/boot/dts/imx28-duckbill-2.dts
index 23fd3036404d..4e28212e9626 100644
--- a/arch/arm/boot/dts/imx28-duckbill-2.dts
+++ b/arch/arm/boot/dts/imx28-duckbill-2.dts
@@ -18,138 +18,6 @@ memory@40000000 {
 		reg = <0x40000000 0x08000000>;
 	};
 
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
-			i2c0: i2c@80058000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c0_pins_a>;
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
 	reg_3p3v: regulator-3p3v {
 		compatible = "regulator-fixed";
 		regulator-name = "3P3V";
@@ -176,3 +44,127 @@ status-green {
 		};
 	};
 };
+
+&auart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart0_2pins_a>;
+	status = "okay";
+};
+
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_a>;
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_a>;
+	status = "okay";
+};
+
+&lradc {
+	status = "okay";
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>, <&mac0_phy_reset_pin>;
+	phy-supply = <&reg_3p3v>;
+	phy-reset-gpios = <&gpio0 26 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <25>;
+	phy-handle = <&ethphy>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&mac0_phy_int_pin>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
+			max-speed = <100>;
+		};
+	};
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hog_pins_a>;
+
+	hog_pins_a: hog@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D17__GPIO_1_17    /* Revision detection */
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	mac0_phy_reset_pin: mac0-phy-reset@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_ALE__GPIO_0_26    /* PHY Reset */
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	mac0_phy_int_pin: mac0-phy-int@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_D07__GPIO_0_7    /* PHY Interrupt */
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	led_pins: leds@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SAIF0_MCLK__GPIO_3_20
+			MX28_PAD_SAIF0_LRCLK__GPIO_3_21
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_8bit_pins_a
+		&mmc0_cd_cfg &mmc0_sck_cfg>;
+	bus-width = <8>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+	non-removable;
+};
+
+&ssp2 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_4bit_pins_b
+		&mmc2_cd_cfg &mmc2_sck_cfg_b>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	dr_mode = "peripheral";
+};
+
+&usbphy0 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx28-duckbill.dts b/arch/arm/boot/dts/imx28-duckbill.dts
index c666afb12445..13ffd533fdea 100644
--- a/arch/arm/boot/dts/imx28-duckbill.dts
+++ b/arch/arm/boot/dts/imx28-duckbill.dts
@@ -17,108 +17,6 @@ memory@40000000 {
 		reg = <0x40000000 0x08000000>;
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_4bit_pins_a
-					&mmc0_cd_cfg &mmc0_sck_cfg>;
-				bus-width = <4>;
-				vmmc-supply = <&reg_3p3v>;
-				status = "okay";
-			};
-
-			ssp2: spi@80014000 {
-				compatible = "fsl,imx28-spi";
-				pinctrl-names = "default";
-				pinctrl-0 = <&spi2_pins_a>;
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
-						MX28_PAD_SSP0_DATA7__GPIO_2_7    /* PHY Reset */
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				led_pins: leds@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_AUART1_RX__GPIO_3_4
-						MX28_PAD_AUART1_TX__GPIO_3_5
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
-			i2c0: i2c@80058000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c0_pins_a>;
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
-			phy-reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <25>;
-			status = "okay";
-		};
-	};
-
 	reg_3p3v: regulator-3p3v {
 		compatible = "regulator-fixed";
 		regulator-name = "3P3V";
@@ -145,3 +43,97 @@ status-green {
 		};
 	};
 };
+
+&auart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart0_2pins_a>;
+	status = "okay";
+};
+
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_a>;
+	status = "okay";
+};
+
+&lradc {
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_a>;
+	status = "okay";
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>, <&mac0_phy_reset_pin>;
+	phy-supply = <&reg_3p3v>;
+	phy-reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <25>;
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hog_pins_a>;
+
+	hog_pins_a: hog@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D17__GPIO_1_17    /* Revision detection */
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	mac0_phy_reset_pin: mac0-phy-reset@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP0_DATA7__GPIO_2_7    /* PHY Reset */
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	led_pins: leds@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_AUART1_RX__GPIO_3_4
+			MX28_PAD_AUART1_TX__GPIO_3_5
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_4bit_pins_a
+		&mmc0_cd_cfg &mmc0_sck_cfg>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&ssp2 {
+	compatible = "fsl,imx28-spi";
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2_pins_a>;
+	status = "okay";
+};
+
+&usb0 {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbphy0 {
+	status = "okay";
+};
-- 
2.34.1

