Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA2BD6AF275
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 19:53:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233380AbjCGSx0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 13:53:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233425AbjCGSws (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 13:52:48 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC143928B
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 10:41:01 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MNtCi-1pxuPQ17gO-00OILN; Tue, 07 Mar 2023 19:40:24 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 7/9] ARM: dts: imx28-evk: Convert to use label references
Date:   Tue,  7 Mar 2023 19:40:05 +0100
Message-Id: <20230307184007.10672-8-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230307184007.10672-1-stefan.wahren@i2se.com>
References: <20230307184007.10672-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:bcMpEac8jFFm99IR/bxE7hv9QoUVNOTzMex0SrVDU9JhrC5JC8l
 dYsiWdlj9gKLl2aBja7bUUC9Xko/KHPF/kvv23uX0l4NXvFiFrq7XgkOQCRJJyAUDpUzimn
 WdMXgcPhD0YTvuCzjk3EgWoxnITA4hsgvu+KJPiLAI5Q9LuqYO7whotaOZIV+I+ShillC89
 Cegqyw30YQKYYwldAnsgg==
UI-OutboundReport: notjunk:1;M01:P0:ehxIvbq09Kk=;788PpGStEzBdHYaQQYtAFx1dVkf
 h1WeIcxA2e3fspiafQoWjbFzLrJQ6oGjsfOvXesMfSIU4gugBxaVDTCQ2+xTJte8vazqVnkJ6
 YXvYVrs0GpS15BFM5vw7M54BaMzgO0KRZI97vtpQIAPGAZuWVMFd1Wm4Kh/1AEpZdO1cw1Ka2
 Roj5IVdDs0jq1yXM6K5svDa9cdbZ/ZlKfK80AkhnxlQLM0q+tEUUuB+TNAtVNzS8nJWOV3MbX
 bLSAqfoMZNl9aKvp2EDPDzD6FHzoGknMA7CYxYDb8FOj8IYxm2LzCmReyt9LHriz1FDSg02Ax
 kjYP0V+dt4T36uZeNV5+/+GO8MQv+4vgIElhPPsQtcqP+pJVR0jvV66Gvc4BAADwj0hgmc0eJ
 ors0qEsa0h8nfNaXDCjQe857RuLmzvsZYGhD3lFwfQbBtHjcCmJzHDw2jKUtUr0Zv9tjjH5EF
 gguh7S70VY1Pvc49mmeQ92OkvNVfFS5Y8uaOL1PBcNttzob/pq33IlfCUBOwqqCfMGm1PexPv
 hvqm3wCgXEyhMt96IrxasoZuITbe0jRZ1RVFxDpn6Z3f5JEeiO5XvPkGpmmjteC56ec0wDsFq
 uvterp72qpP+VdRY3Iz3WTvm6f3HWQ5pAmXfpL41HLlPsMe/Zad+ddni1f9Yf029ICisIlLia
 9/5rG6aP5f5TmBdyEi95616NVhHyMMEvha3+I+EPRg==
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
Cc: NXP Linux Team <linux-imx@nxp.com>
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

