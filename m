Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ADDC686FB5
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 21:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbjBAUej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 15:34:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBAUei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 15:34:38 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E6CA728D4
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 12:34:36 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M7aqD-1pI6DP34wP-0086fv; Wed, 01 Feb 2023 21:34:18 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Anson Huang <Anson.Huang@nxp.com>
Subject: [PATCH 7/9] ARM: dts: imx28-evk: Convert to use label references
Date:   Wed,  1 Feb 2023 21:33:36 +0100
Message-Id: <20230201203338.9525-8-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201203338.9525-1-stefan.wahren@i2se.com>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:WuM/Da0HictQbls18E9uveZD14kRRKOwBWOGpdNoLpVdnd6wVnl
 bEfDm6y9F9Zcif98ncqmN4pnvPJL+77zZ2KBA7kYFa5uPrz54m/JnDF/sC5X8j94Din273F
 gAsPTRFNXcfWjHVi78NKwk6WDBCiOngVVFO060soPPo2lHQxALFGOQK9lShIqlcV2jpbq6B
 8oQWq1wJvqoqkjkj6Y3fA==
UI-OutboundReport: notjunk:1;M01:P0:8DhZJWQFAFY=;PTiW6WXHZVaUWOkbOVjLnEntUPL
 6IZbmzsUskUrJUFosQ0bZ4Z9yMAKYB8PwsCFLgERfhalTJy5Zbu9QCTX51NoAo+TEpn/HKgNj
 yHe1gB6BIJUPx/+NDbQCUU9EvtRkIL+3WahPtSvbiKu1xumXXFL1B9LOx5G/mxSsIxhFuIJ/S
 Ej1qi2qZg9SdjFd/J2yZ38NjOWJR4TR2qLr1paM4XESVoTAJ/Lst9ThUo+Omh8gNHy9vM4dEZ
 DBU/gdKYoCytn4OVjnk6E1JlIKWvM4JCSC6JjANxdnQC6u2NOMcA7zBNCjC5q9WTFfhjHo4u5
 sJWEhwC/sZgykb1CaADjiNJw7+NYPrTjnsUEPrTg2kplRy4QC3emjcKjGxrfdgJ7tFOcVVvTg
 oU1oy4ZPuG/O3IVb9VHokEhFH5Ui4TBwE8pWLR1kWDV1WPAjdT4wwTKQ9XhoeL266Ql75Y6oi
 uQBrhNdDv1UIbTkDY/9Bl4BnwgQbEPEyDKCnaP+LaSB81sjf1ksYWRPp8RlfiD76kUQqH64zL
 63BirFHx6W/aBNaSXsj4NEhnButQ4brsNRCKaZKQfQbWOWKNRCsPkxRnxlV9IsKqtkCacPdab
 3dC9FpzP4mAQ57lIQ9BFN47MsydqnJDe88WhXF+5eCR9U+U8Fgl5OeXkry24qBTCqlwiN1inb
 yZ1gkAGJItIoowK4M/jsp1W3KWyrVSb4yJrNyYOUpQ==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This Freescale board file still use node name and unit address
to reference parts from the imx28.dtsi . This causes a lot of
redundancy. So use label references in order to make it easier
to maintain.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx28-evk.dts | 462 ++++++++++++++++----------------
 1 file changed, 227 insertions(+), 235 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-evk.dts b/arch/arm/boot/dts/imx28-evk.dts
index 1053b7c584d8..783abb82b2a8 100644
--- a/arch/arm/boot/dts/imx28-evk.dts
+++ b/arch/arm/boot/dts/imx28-evk.dts
@@ -95,266 +95,258 @@ panel_in: endpoint {
 		};
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			nand-controller@8000c000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg
-					     &gpmi_pins_evk>;
-				status = "okay";
-			};
+	sound {
+		compatible = "fsl,imx28-evk-sgtl5000",
+			     "fsl,mxs-audio-sgtl5000";
+		model = "imx28-evk-sgtl5000";
+		saif-controllers = <&saif0 &saif1>;
+		audio-codec = <&sgtl5000>;
+	};
 
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_8bit_pins_a
-					&mmc0_cd_cfg &mmc0_sck_cfg>;
-				bus-width = <8>;
-				wp-gpios = <&gpio2 12 0>;
-				vmmc-supply = <&reg_vddio_sd0>;
-				status = "okay";
-			};
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pin_gpio3_5>;
 
-			ssp1: spi@80012000 {
-				compatible = "fsl,imx28-mmc";
-				bus-width = <8>;
-				wp-gpios = <&gpio0 28 0>;
-			};
+		user {
+			label = "Heartbeat";
+			gpios = <&gpio3 5 0>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
 
-			ssp2: spi@80014000 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				compatible = "fsl,imx28-spi";
-				pinctrl-names = "default";
-				pinctrl-0 = <&spi2_pins_a>;
-				status = "okay";
-
-				flash: flash@0 {
-					#address-cells = <1>;
-					#size-cells = <1>;
-					compatible = "sst,sst25vf016b", "jedec,spi-nor";
-					spi-max-frequency = <40000000>;
-					reg = <0>;
-				};
-			};
+	backlight_display: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm 2 5000000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
+	};
+};
 
-			pinctrl@80018000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&hog_pins_a>;
-
-				hog_pins_a: hog@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP1_CMD__GPIO_2_13
-						MX28_PAD_SSP1_DATA3__GPIO_2_15
-						MX28_PAD_ENET0_RX_CLK__GPIO_4_13
-						MX28_PAD_SSP1_SCK__GPIO_2_12
-						MX28_PAD_PWM3__GPIO_3_28
-						MX28_PAD_LCD_RESET__GPIO_3_30
-						MX28_PAD_AUART2_RX__GPIO_3_8
-						MX28_PAD_AUART2_TX__GPIO_3_9
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				led_pin_gpio3_5: led_gpio3_5@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_AUART1_TX__GPIO_3_5
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				gpmi_pins_evk: gpmi-nand-evk@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_CE1N__GPMI_CE1N
-						MX28_PAD_GPMI_RDY1__GPMI_READY1
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_evk: lcdif-evk@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_RD_E__LCD_VSYNC
-						MX28_PAD_LCD_WR_RWN__LCD_HSYNC
-						MX28_PAD_LCD_RS__LCD_DOTCLK
-						MX28_PAD_LCD_CS__LCD_ENABLE
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-			};
+&auart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart0_pins_a>;
+	uart-has-rtscts;
+	status = "okay";
+};
 
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_24bit_pins_a
-					     &lcdif_pins_evk>;
-				status = "okay";
-
-				port {
-					display_out: endpoint {
-						remote-endpoint = <&panel_in>;
-					};
-				};
-			};
+&auart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart3_pins_a>;
+	status = "okay";
+};
 
-			can0: can@80032000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&can0_pins_a>;
-				xceiver-supply = <&reg_can_3v3>;
-				status = "okay";
-			};
+&can0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&can0_pins_a>;
+	xceiver-supply = <&reg_can_3v3>;
+	status = "okay";
+};
 
-			can1: can@80034000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&can1_pins_a>;
-				xceiver-supply = <&reg_can_3v3>;
-				status = "okay";
-			};
-		};
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&can1_pins_a>;
+	xceiver-supply = <&reg_can_3v3>;
+	status = "okay";
+};
 
-		apbx@80040000 {
-			saif0: saif@80042000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&saif0_pins_a>;
-				status = "okay";
-			};
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_a>;
+	status = "okay";
+};
 
-			saif1: saif@80046000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&saif1_pins_a>;
-				fsl,saif-master = <&saif0>;
-				status = "okay";
-			};
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg
+		     &gpmi_pins_evk>;
+	status = "okay";
+};
 
-			lradc@80050000 {
-				status = "okay";
-				fsl,lradc-touchscreen-wires = <4>;
-				fsl,ave-ctrl = <4>;
-				fsl,ave-delay = <2>;
-				fsl,settling = <10>;
-			};
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_24bit_pins_a
+		     &lcdif_pins_evk>;
+	status = "okay";
 
-			i2c0: i2c@80058000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c0_pins_a>;
-				status = "okay";
-
-				sgtl5000: codec@a {
-					compatible = "fsl,sgtl5000";
-					reg = <0x0a>;
-					#sound-dai-cells = <0>;
-					VDDA-supply = <&reg_3p3v>;
-					VDDIO-supply = <&reg_3p3v>;
-					clocks = <&saif0>;
-				};
-
-				at24@51 {
-					compatible = "atmel,24c32";
-					pagesize = <32>;
-					reg = <0x51>;
-				};
-			};
+	port {
+		display_out: endpoint {
+			remote-endpoint = <&panel_in>;
+		};
+	};
+};
 
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm2_pins_a>;
-				status = "okay";
-			};
+&lradc {
+	fsl,lradc-touchscreen-wires = <4>;
+	fsl,ave-ctrl = <4>;
+	fsl,ave-delay = <2>;
+	fsl,settling = <10>;
+	status = "okay";
+};
 
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_a>;
-				status = "okay";
-			};
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_a>;
+	status = "okay";
+
+	sgtl5000: codec@a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		#sound-dai-cells = <0>;
+		VDDA-supply = <&reg_3p3v>;
+		VDDIO-supply = <&reg_3p3v>;
+		clocks = <&saif0>;
+	};
 
-			auart0: serial@8006a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart0_pins_a>;
-				uart-has-rtscts;
-				status = "okay";
-			};
+	at24@51 {
+		compatible = "atmel,24c32";
+		pagesize = <32>;
+		reg = <0x51>;
+	};
+};
 
-			auart3: serial@80070000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart3_pins_a>;
-				status = "okay";
-			};
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
+	phy-supply = <&reg_fec_3v3>;
+	phy-reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <100>;
+	status = "okay";
+};
 
-			usbphy0: usbphy@8007c000 {
-				status = "okay";
-			};
+&mac1 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac1_pins_a>;
+	status = "okay";
+};
 
-			usbphy1: usbphy@8007e000 {
-				status = "okay";
-			};
-		};
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hog_pins_a>;
+
+	hog_pins_a: hog@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP1_CMD__GPIO_2_13
+			MX28_PAD_SSP1_DATA3__GPIO_2_15
+			MX28_PAD_ENET0_RX_CLK__GPIO_4_13
+			MX28_PAD_SSP1_SCK__GPIO_2_12
+			MX28_PAD_PWM3__GPIO_3_28
+			MX28_PAD_LCD_RESET__GPIO_3_30
+			MX28_PAD_AUART2_RX__GPIO_3_8
+			MX28_PAD_AUART2_TX__GPIO_3_9
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
 	};
 
-	ahb@80080000 {
-		usb0: usb@80080000 {
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb0_id_pins_a>;
-			vbus-supply = <&reg_usb0_vbus>;
-			status = "okay";
-		};
-
-		usb1: usb@80090000 {
-			vbus-supply = <&reg_usb1_vbus>;
-			status = "okay";
-		};
-
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>;
-			phy-supply = <&reg_fec_3v3>;
-			phy-reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <100>;
-			status = "okay";
-		};
+	led_pin_gpio3_5: led_gpio3_5@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_AUART1_TX__GPIO_3_5
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
 
-		mac1: ethernet@800f4000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac1_pins_a>;
-			status = "okay";
-		};
+	gpmi_pins_evk: gpmi-nand-evk@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_CE1N__GPMI_CE1N
+			MX28_PAD_GPMI_RDY1__GPMI_READY1
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
 	};
 
-	sound {
-		compatible = "fsl,imx28-evk-sgtl5000",
-			     "fsl,mxs-audio-sgtl5000";
-		model = "imx28-evk-sgtl5000";
-		saif-controllers = <&saif0 &saif1>;
-		audio-codec = <&sgtl5000>;
+	lcdif_pins_evk: lcdif-evk@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_RD_E__LCD_VSYNC
+			MX28_PAD_LCD_WR_RWN__LCD_HSYNC
+			MX28_PAD_LCD_RS__LCD_DOTCLK
+			MX28_PAD_LCD_CS__LCD_ENABLE
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
 	};
+};
 
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_pin_gpio3_5>;
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm2_pins_a>;
+	status = "okay";
+};
 
-		user {
-			label = "Heartbeat";
-			gpios = <&gpio3 5 0>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
+&saif0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&saif0_pins_a>;
+	status = "okay";
+};
 
-	backlight_display: backlight {
-		compatible = "pwm-backlight";
-		pwms = <&pwm 2 5000000>;
-		brightness-levels = <0 4 8 16 32 64 128 255>;
-		default-brightness-level = <6>;
+&saif1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&saif1_pins_a>;
+	fsl,saif-master = <&saif0>;
+	status = "okay";
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_8bit_pins_a
+		&mmc0_cd_cfg &mmc0_sck_cfg>;
+	bus-width = <8>;
+	wp-gpios = <&gpio2 12 0>;
+	vmmc-supply = <&reg_vddio_sd0>;
+	status = "okay";
+};
+
+&ssp1 {
+	compatible = "fsl,imx28-mmc";
+	bus-width = <8>;
+	wp-gpios = <&gpio0 28 0>;
+};
+
+&ssp2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	compatible = "fsl,imx28-spi";
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2_pins_a>;
+	status = "okay";
+
+	flash: flash@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "sst,sst25vf016b", "jedec,spi-nor";
+		spi-max-frequency = <40000000>;
 	};
 };
+
+&usb0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb0_id_pins_a>;
+	vbus-supply = <&reg_usb0_vbus>;
+	status = "okay";
+};
+
+&usb1 {
+	vbus-supply = <&reg_usb1_vbus>;
+	status = "okay";
+};
+
+&usbphy0 {
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
-- 
2.34.1

