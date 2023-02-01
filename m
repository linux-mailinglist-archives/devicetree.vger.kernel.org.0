Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6B87686FB8
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 21:34:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229671AbjBAUel (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 15:34:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBAUej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 15:34:39 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A04728FB
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 12:34:37 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MkHhB-1oussq15RJ-00kh4N; Wed, 01 Feb 2023 21:34:17 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Aapo Vienamo <aapo.vienamo@iki.fi>
Subject: [PATCH 3/9] ARM: dts: imx28-apx4devkit: Convert to use label references
Date:   Wed,  1 Feb 2023 21:33:32 +0100
Message-Id: <20230201203338.9525-4-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201203338.9525-1-stefan.wahren@i2se.com>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:pSjiIzP9UK3K4it2B62MqQZgQ2W5HioTEy+4OMBoMoDhYB0f3UD
 JPW/+DLycMo1VqbYjLRT3/5ViTKjqe0YhtT634NOJw4Xx5nIEi0E4FF5NpjHU6XqUAqz5JI
 sXpTvgV1th3ccIo2NQu0/OdrHEMuEG73i3yf3qYJ6CRFJnHAZAco0zCM11HKkhvuFerRLUi
 wGmADMiYk/9IiNHug7JbA==
UI-OutboundReport: notjunk:1;M01:P0:3qhJ3uLvZFA=;XHzqw3NNA1oKjtuW+tfr/4nIoQn
 Tv5hcjFx2qe27FTWVcJAWIx9AmkkQMbiTbffCjtijB+9V3dGc61aArBBnluPIgZe1Zs9yJIRP
 /vL1eDTFKLd3jASxuHXJ/QQRbG2FhXolbf/uVNZJuPLXqAoflIqsJGEII1lhFA1TyadaJgmLy
 91OXqq3Wukq4dp8sw0rCWnxUgbR6KMMr6OVx7KVu2PhuGNCzeuWuYzr69mjmJUtBnVpS4y5io
 /sqecZgJ/7deNpOO2LNkv7KaFKir6gSYw4N4nG5RZO8/ZnN7j99ApV6OtrNkRyt0YUU0RHe51
 w7nG7olDLqzbo5InVt5NNZusJBP0Uj8tTDo9f8BpxnwAIZ/cjDV2jMtOrPnmknkFiR5iO6/Id
 LHp8hcHW0qGSu+EkXZOWcgyJIOO4D3A0NO9N+frUA8hu7GKAy+Be0CWbcyf5vNZXcB3UQg9b7
 TecHTslnDo1gSMVqozH/amXxffrK/UoZbWHrgfDndGBSA+y8Z7/iFdNKj0Asyt5IsJdjiBP0a
 vdUIk4lF+etHVFTZn4OzvJpRXe0pwFPSoABn/RnfhuMrUmuwqf4ACf0v9X5yVDjaqsUWc91Z9
 FWxLqtTKgcBOyQDV8lKOZEtqRCxoq95MijBntLAo/KNeatfIWCaz8BJPkSUPA7xX0N4G6weCY
 yhKH/n1LsGB29KnMSZHlDxOm+dN9tyqAxzv+l5jkiQ==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This board file still use node name and unit address to
reference parts from the imx28.dtsi . This causes a lot of
redundancy. So use label references in orer to make it
easier to maintain.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Aapo Vienamo <aapo.vienamo@iki.fi>
---
 arch/arm/boot/dts/imx28-apx4devkit.dts | 380 ++++++++++++-------------
 1 file changed, 186 insertions(+), 194 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-apx4devkit.dts b/arch/arm/boot/dts/imx28-apx4devkit.dts
index b86be320496b..f9bf40d96568 100644
--- a/arch/arm/boot/dts/imx28-apx4devkit.dts
+++ b/arch/arm/boot/dts/imx28-apx4devkit.dts
@@ -11,200 +11,6 @@ memory@40000000 {
 		reg = <0x40000000 0x04000000>;
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			nand-controller@8000c000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
-				status = "okay";
-			};
-
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_4bit_pins_a &mmc0_sck_cfg>;
-				bus-width = <4>;
-				status = "okay";
-			};
-
-			ssp2: spi@80014000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc2_4bit_pins_apx4 &mmc2_sck_cfg_apx4>;
-				bus-width = <4>;
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
-						MX28_PAD_GPMI_CE1N__GPIO_0_17
-						MX28_PAD_GPMI_RDY1__GPIO_0_21
-						MX28_PAD_SSP2_MISO__GPIO_2_18
-						MX28_PAD_SSP2_SS0__AUART3_TX /* was: 0x2131 - MX28_PAD_SSP2_SS0__GPIO_2_19 */
-						MX28_PAD_PWM3__GPIO_3_28
-						MX28_PAD_LCD_RESET__GPIO_3_30
-						MX28_PAD_JTAG_RTCK__GPIO_4_20
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_apx4: lcdif-apx4@0 {
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
-
-				mmc2_4bit_pins_apx4: mmc2-4bit-apx4@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP0_DATA4__SSP2_D0
-						MX28_PAD_SSP0_DATA5__SSP2_D3
-						MX28_PAD_SSP0_DATA6__SSP2_CMD
-						MX28_PAD_SSP0_DATA7__SSP2_SCK
-						MX28_PAD_SSP2_SS1__SSP2_D1
-						MX28_PAD_SSP2_SS2__SSP2_D2
-					>;
-					fsl,drive-strength = <MXS_DRIVE_8mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				mmc2_sck_cfg_apx4: mmc2-sck-cfg-apx4@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP0_DATA7__SSP2_SCK
-					>;
-					fsl,drive-strength = <MXS_DRIVE_12mA>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-			};
-
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_24bit_pins_a
-					     &lcdif_pins_apx4>;
-				display = <&display0>;
-				status = "okay";
-
-				display0: display0 {
-					bits-per-pixel = <32>;
-					bus-width = <24>;
-
-					display-timings {
-						native-mode = <&timing0>;
-						timing0: timing0 {
-							clock-frequency = <30000000>;
-							hactive = <800>;
-							vactive = <480>;
-							hback-porch = <88>;
-							hfront-porch = <40>;
-							vback-porch = <32>;
-							vfront-porch = <13>;
-							hsync-len = <48>;
-							vsync-len = <3>;
-							hsync-active = <1>;
-							vsync-active = <1>;
-							de-active = <1>;
-							pixelclk-active = <0>;
-						};
-					};
-				};
-			};
-		};
-
-		apbx@80040000 {
-			saif0: saif@80042000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&saif0_pins_a>;
-				status = "okay";
-			};
-
-			saif1: saif@80046000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&saif1_pins_a>;
-				fsl,saif-master = <&saif0>;
-				status = "okay";
-			};
-
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
-				pcf8563: rtc@51 {
-					compatible = "phg,pcf8563";
-					reg = <0x51>;
-				};
-			};
-
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_a>;
-				status = "okay";
-			};
-
-			auart0: serial@8006a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart0_pins_a>;
-				status = "okay";
-			};
-
-			auart1: serial@8006c000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart1_2pins_a>;
-				status = "okay";
-			};
-
-			auart2: serial@8006e000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart2_2pins_a>;
-				status = "okay";
-			};
-
-			usbphy1: usbphy@8007e000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&usb1_pins_a>;
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb1: usb@80090000 {
-		      status = "okay";
-		};
-
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>;
-			status = "okay";
-		};
-	};
-
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -238,3 +44,189 @@ user {
 		};
 	};
 };
+
+&auart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart0_pins_a>;
+	status = "okay";
+};
+
+&auart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart1_2pins_a>;
+	status = "okay";
+};
+
+&auart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart2_2pins_a>;
+	status = "okay";
+};
+
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_a>;
+	status = "okay";
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
+	status = "okay";
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_24bit_pins_a
+		     &lcdif_pins_apx4>;
+	display = <&display0>;
+	status = "okay";
+
+	display0: display0 {
+		bits-per-pixel = <32>;
+		bus-width = <24>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: timing0 {
+				clock-frequency = <30000000>;
+				hactive = <800>;
+				vactive = <480>;
+				hback-porch = <88>;
+				hfront-porch = <40>;
+				vback-porch = <32>;
+				vfront-porch = <13>;
+				hsync-len = <48>;
+				vsync-len = <3>;
+				hsync-active = <1>;
+				vsync-active = <1>;
+				de-active = <1>;
+				pixelclk-active = <0>;
+			};
+		};
+	};
+};
+
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
+
+	pcf8563: rtc@51 {
+		compatible = "phg,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
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
+			MX28_PAD_GPMI_CE1N__GPIO_0_17
+			MX28_PAD_GPMI_RDY1__GPIO_0_21
+			MX28_PAD_SSP2_MISO__GPIO_2_18
+			MX28_PAD_SSP2_SS0__AUART3_TX /* was: 0x2131 - MX28_PAD_SSP2_SS0__GPIO_2_19 */
+			MX28_PAD_PWM3__GPIO_3_28
+			MX28_PAD_LCD_RESET__GPIO_3_30
+			MX28_PAD_JTAG_RTCK__GPIO_4_20
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_apx4: lcdif-apx4@0 {
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
+	};
+
+	mmc2_4bit_pins_apx4: mmc2-4bit-apx4@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP0_DATA4__SSP2_D0
+			MX28_PAD_SSP0_DATA5__SSP2_D3
+			MX28_PAD_SSP0_DATA6__SSP2_CMD
+			MX28_PAD_SSP0_DATA7__SSP2_SCK
+			MX28_PAD_SSP2_SS1__SSP2_D1
+			MX28_PAD_SSP2_SS2__SSP2_D2
+		>;
+		fsl,drive-strength = <MXS_DRIVE_8mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	mmc2_sck_cfg_apx4: mmc2-sck-cfg-apx4@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP0_DATA7__SSP2_SCK
+		>;
+		fsl,drive-strength = <MXS_DRIVE_12mA>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
+
+&saif0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&saif0_pins_a>;
+	status = "okay";
+};
+
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
+	pinctrl-0 = <&mmc0_4bit_pins_a &mmc0_sck_cfg>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&ssp2 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_4bit_pins_apx4 &mmc2_sck_cfg_apx4>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&usb1 {
+      status = "okay";
+};
+
+&usbphy1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb1_pins_a>;
+	status = "okay";
+};
-- 
2.34.1

