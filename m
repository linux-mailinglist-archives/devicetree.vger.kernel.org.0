Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CFCE686FBA
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 21:34:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbjBAUep (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 15:34:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBAUeo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 15:34:44 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 344C1728D4
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 12:34:40 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Macf4-1olE6F2xB4-00cCUa; Wed, 01 Feb 2023 21:34:17 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Brian Lilly <brian@crystalfontz.com>,
        =?UTF-8?q?Michal=20Vok=C3=A1=C4=8D?= <michal.vokac@ysoft.com>
Subject: [PATCH 4/9] ARM: dts: imx28-cfa10036: Convert to use label references
Date:   Wed,  1 Feb 2023 21:33:33 +0100
Message-Id: <20230201203338.9525-5-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201203338.9525-1-stefan.wahren@i2se.com>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:hCbNSCV7HZp3sX2oy3YNoJGNYbKxsBIoZqcuJPB9Su9BzM9y/Bp
 wXViWqFFDXVB2QXsjhyvDxc78neOosD173nz6kb/lnL7lEZ6qe959BeY7Fq1cPLCIy7bL7F
 KFlz7VD5k4LUoLDFbCeZgZEHmUdPLSxvS5lCeO7y9snTLknjazWSJBKNQn1yqzEVIvU4BEy
 rmhKjvbK40KDO+pfcq42Q==
UI-OutboundReport: notjunk:1;M01:P0:rc5+PP8l1As=;j0VFa4FXUiGcUfQaq//94l34clL
 Iup0LHFixnQYPKbTCdu4hl94Lyl3xtf0e5YlGbqJjmhx0oCfgQgAwtH2qDteG9V6L+aqNmqqh
 wAkKisp2xXbaiNUkKAXWK5IaUHZcjic9/vpDT9ljd9eawcwfbH+yVDS0DQZq9ByS1bxmRvlgp
 fgxZBsqtWxnc0HfKU+8z8flDeURM0f6a4g8MMDP525GNxSsxQcRxnqWvN/fMUnJkNIfpiWttl
 +8Kl1/cWLwTBy8Padv3SW/DqXizkR7b5jRv5GoJSny2a3QVpiBxnnHOQtJThT4nWPp4PKWlEK
 yPivgJiS/ZeQWjHhIRbzaoxDeNEfG9unl32mJh/MoFkvntaW9tLGRDOFaBkkHR3aJrGiDISV4
 mx75jy5Yu31GspIM1kM4lT9zGSAsOBafyk8Jtel/UPtKO/xDSgOEj3TxpCfd0hkQm4OtMf04G
 ahf03OpeWtb1TtvID5rZb+sc06pfG0ZY7EHe+6cA2bJujl5dXiRrVkDhYokoezzphyKnQ2Cps
 yYYYSwuaVvkbnKzmrrb4WD25XBkxnAkPxT7DvYldUfXdXWqbEBV36HodRubfANPUtaVN56XGw
 BS6yBM32/oizMw8A/ktse09FQYwvkynM58l4HqeWXhJAtxSBJVMz8Kb77YjhcA/pTPSpQLMI3
 SKhtfobvzuESxgK/NzZBYuzH9FjwERelLVoe/B3HLw==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These Crystal fontz board files still use node name and unit
address to reference parts from the imx28.dtsi . This causes
a lot of redundancy. So use label references in order to make
it easier to maintain.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Brian Lilly <brian@crystalfontz.com>
Cc: Michal Vokáč <michal.vokac@ysoft.com>
---
 arch/arm/boot/dts/imx28-cfa10036.dts | 193 ++++++------
 arch/arm/boot/dts/imx28-cfa10049.dts | 454 +++++++++++++--------------
 arch/arm/boot/dts/imx28-cfa10055.dts | 224 +++++++------
 arch/arm/boot/dts/imx28-cfa10056.dts | 146 +++++----
 arch/arm/boot/dts/imx28-cfa10057.dts | 252 +++++++--------
 arch/arm/boot/dts/imx28-cfa10058.dts | 186 ++++++-----
 6 files changed, 703 insertions(+), 752 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-cfa10036.dts b/arch/arm/boot/dts/imx28-cfa10036.dts
index 85aa1cc3ff66..d004b1cbb4ae 100644
--- a/arch/arm/boot/dts/imx28-cfa10036.dts
+++ b/arch/arm/boot/dts/imx28-cfa10036.dts
@@ -16,107 +16,6 @@ memory@40000000 {
 		reg = <0x40000000 0x08000000>;
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			pinctrl@80018000 {
-				ssd1306_cfa10036: ssd1306-10036@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP0_DATA7__GPIO_2_7
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				led_pins_cfa10036: leds-10036@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_AUART1_RX__GPIO_3_4
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				usb0_otg_cfa10036: otg-10036@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_RDY0__USB0_ID
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				mmc_pwr_cfa10036: mmc_pwr_cfa10036@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						0x31c3 /*
-						MX28_PAD_PWM3__GPIO_3_28 */
-					>;
-					fsl,drive-strength = <0>;
-					fsl,voltage = <1>;
-					fsl,pull-up = <0>;
-				};
-
-			};
-
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_4bit_pins_a
-					&mmc0_cd_cfg &mmc0_sck_cfg>;
-				vmmc-supply = <&reg_vddio_sd0>;
-				bus-width = <4>;
-				status = "okay";
-			};
-		};
-
-		apbx@80040000 {
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_b>;
-				status = "okay";
-			};
-
-			i2c0: i2c@80058000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c0_pins_b>;
-				clock-frequency = <400000>;
-				status = "okay";
-
-				ssd1306: oled@3c {
-					compatible = "solomon,ssd1306fb-i2c";
-					pinctrl-names = "default";
-					pinctrl-0 = <&ssd1306_cfa10036>;
-					reg = <0x3c>;
-					reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
-					solomon,height = <32>;
-					solomon,width = <128>;
-					solomon,page-offset = <0>;
-					solomon,com-lrremap;
-					solomon,com-invdir;
-					solomon,com-offset = <32>;
-				};
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
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb0_otg_cfa10036>;
-			dr_mode = "peripheral";
-			phy_type = "utmi";
-			status = "okay";
-		};
-	};
-
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -138,3 +37,95 @@ reg_vddio_sd0: vddio-sd0 {
 		gpio = <&gpio3 28 0>;
 	};
 };
+
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_b>;
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_b>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	ssd1306: oled@3c {
+		compatible = "solomon,ssd1306fb-i2c";
+		pinctrl-names = "default";
+		pinctrl-0 = <&ssd1306_cfa10036>;
+		reg = <0x3c>;
+		reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
+		solomon,height = <32>;
+		solomon,width = <128>;
+		solomon,page-offset = <0>;
+		solomon,com-lrremap;
+		solomon,com-invdir;
+		solomon,com-offset = <32>;
+	};
+};
+
+&pinctrl {
+	ssd1306_cfa10036: ssd1306-10036@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP0_DATA7__GPIO_2_7
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	led_pins_cfa10036: leds-10036@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_AUART1_RX__GPIO_3_4
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	usb0_otg_cfa10036: otg-10036@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_RDY0__USB0_ID
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	mmc_pwr_cfa10036: mmc_pwr_cfa10036@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			0x31c3 /*
+			MX28_PAD_PWM3__GPIO_3_28 */
+		>;
+		fsl,drive-strength = <0>;
+		fsl,voltage = <1>;
+		fsl,pull-up = <0>;
+	};
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_4bit_pins_a
+		&mmc0_cd_cfg &mmc0_sck_cfg>;
+	vmmc-supply = <&reg_vddio_sd0>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&usb0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb0_otg_cfa10036>;
+	dr_mode = "peripheral";
+	phy_type = "utmi";
+	status = "okay";
+};
+
+&usbphy0 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx28-cfa10049.dts b/arch/arm/boot/dts/imx28-cfa10049.dts
index 9ef0d567ea48..94d6614c1983 100644
--- a/arch/arm/boot/dts/imx28-cfa10049.dts
+++ b/arch/arm/boot/dts/imx28-cfa10049.dts
@@ -78,226 +78,6 @@ pca9555: pca9555@20 {
 		};
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			pinctrl@80018000 {
-				usb_pins_cfa10049: usb-10049@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_D07__GPIO_0_7
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				i2cmux_pins_cfa10049: i2cmux-10049@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D22__GPIO_1_22
-						MX28_PAD_LCD_D23__GPIO_1_23
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				mac0_pins_cfa10049: mac0-10049@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP2_SS2__GPIO_2_21
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				pca_pins_cfa10049: pca-10049@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP2_SS0__GPIO_2_19
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				rotary_pins_cfa10049: rotary-10049@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_I2C0_SCL__GPIO_3_24
-						MX28_PAD_I2C0_SDA__GPIO_3_25
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				rotary_btn_pins_cfa10049: rotary-btn-10049@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SAIF1_SDATA0__GPIO_3_26
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				spi2_pins_cfa10049: spi2-cfa10049@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP2_SCK__GPIO_2_16
-						MX28_PAD_SSP2_MOSI__GPIO_2_17
-						MX28_PAD_SSP2_MISO__GPIO_2_18
-						MX28_PAD_AUART1_TX__GPIO_3_5
-					>;
-					fsl,drive-strength = <MXS_DRIVE_8mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				spi3_pins_cfa10049: spi3-cfa10049@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_RDN__GPIO_0_24
-						MX28_PAD_GPMI_RESETN__GPIO_0_28
-						MX28_PAD_GPMI_CE1N__GPIO_0_17
-						MX28_PAD_GPMI_ALE__GPIO_0_26
-						MX28_PAD_GPMI_CLE__GPIO_0_27
-					>;
-					fsl,drive-strength = <MXS_DRIVE_8mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				lcdif_18bit_pins_cfa10049: lcdif-18bit@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D00__LCD_D0
-						MX28_PAD_LCD_D01__LCD_D1
-						MX28_PAD_LCD_D02__LCD_D2
-						MX28_PAD_LCD_D03__LCD_D3
-						MX28_PAD_LCD_D04__LCD_D4
-						MX28_PAD_LCD_D05__LCD_D5
-						MX28_PAD_LCD_D06__LCD_D6
-						MX28_PAD_LCD_D07__LCD_D7
-						MX28_PAD_LCD_D08__LCD_D8
-						MX28_PAD_LCD_D09__LCD_D9
-						MX28_PAD_LCD_D10__LCD_D10
-						MX28_PAD_LCD_D11__LCD_D11
-						MX28_PAD_LCD_D12__LCD_D12
-						MX28_PAD_LCD_D13__LCD_D13
-						MX28_PAD_LCD_D14__LCD_D14
-						MX28_PAD_LCD_D15__LCD_D15
-						MX28_PAD_LCD_D16__LCD_D16
-						MX28_PAD_LCD_D17__LCD_D17
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_cfa10049: lcdif-evk@0 {
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
-				lcdif_pins_cfa10049_pullup: lcdif-10049-pullup@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_RESET__GPIO_3_30
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				w1_gpio_pins: w1-gpio@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D21__GPIO_1_21
-					>;
-					fsl,drive-strength = <MXS_DRIVE_8mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>; /* 0 will enable the keeper */
-				};
-			};
-
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_18bit_pins_cfa10049
-					     &lcdif_pins_cfa10049
-					     &lcdif_pins_cfa10049_pullup>;
-				display = <&display0>;
-				status = "okay";
-
-				display0: display0 {
-					bits-per-pixel = <32>;
-					bus-width = <18>;
-
-					display-timings {
-						native-mode = <&timing0>;
-						timing0: timing0 {
-							clock-frequency = <9216000>;
-							hactive = <320>;
-							vactive = <480>;
-							hback-porch = <2>;
-							hfront-porch = <2>;
-							vback-porch = <2>;
-							vfront-porch = <2>;
-							hsync-len = <15>;
-							vsync-len = <15>;
-							hsync-active = <0>;
-							vsync-active = <0>;
-							de-active = <1>;
-							pixelclk-active = <1>;
-						};
-					};
-				};
-			};
-		};
-
-		apbx@80040000 {
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm3_pins_b>;
-				status = "okay";
-			};
-
-			i2c1: i2c@8005a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c1_pins_a>;
-				status = "okay";
-			};
-
-			usbphy1: usbphy@8007e000 {
-				status = "okay";
-			};
-
-			lradc@80050000 {
-				status = "okay";
-				fsl,lradc-touchscreen-wires = <4>;
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb1: usb@80090000 {
-			vbus-supply = <&reg_usb1_vbus>;
-			pinctrl-0 = <&usb1_pins_a>;
-			pinctrl-names = "default";
-			status = "okay";
-		};
-	};
-
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -315,18 +95,6 @@ reg_usb1_vbus: regulator@0 {
 		};
 	};
 
-	ahb@80080000 {
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a
-				&mac0_pins_cfa10049>;
-			phy-reset-gpios = <&gpio2 21 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <100>;
-			status = "okay";
-		};
-	};
-
 	spi-2 {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
@@ -426,3 +194,225 @@ onewire {
 		gpios = <&gpio1 21 0>;
 	};
 };
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins_a>;
+	status = "okay";
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_18bit_pins_cfa10049
+		     &lcdif_pins_cfa10049
+		     &lcdif_pins_cfa10049_pullup>;
+	display = <&display0>;
+	status = "okay";
+
+	display0: display0 {
+		bits-per-pixel = <32>;
+		bus-width = <18>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: timing0 {
+				clock-frequency = <9216000>;
+				hactive = <320>;
+				vactive = <480>;
+				hback-porch = <2>;
+				hfront-porch = <2>;
+				vback-porch = <2>;
+				vfront-porch = <2>;
+				hsync-len = <15>;
+				vsync-len = <15>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <1>;
+			};
+		};
+	};
+};
+
+&lradc {
+	fsl,lradc-touchscreen-wires = <4>;
+	status = "okay";
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a
+		&mac0_pins_cfa10049>;
+	phy-reset-gpios = <&gpio2 21 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <100>;
+	status = "okay";
+};
+
+&pinctrl {
+	usb_pins_cfa10049: usb-10049@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_D07__GPIO_0_7
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	i2cmux_pins_cfa10049: i2cmux-10049@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D22__GPIO_1_22
+			MX28_PAD_LCD_D23__GPIO_1_23
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	mac0_pins_cfa10049: mac0-10049@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP2_SS2__GPIO_2_21
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	pca_pins_cfa10049: pca-10049@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP2_SS0__GPIO_2_19
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	rotary_pins_cfa10049: rotary-10049@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_I2C0_SCL__GPIO_3_24
+			MX28_PAD_I2C0_SDA__GPIO_3_25
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	rotary_btn_pins_cfa10049: rotary-btn-10049@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SAIF1_SDATA0__GPIO_3_26
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	spi2_pins_cfa10049: spi2-cfa10049@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP2_SCK__GPIO_2_16
+			MX28_PAD_SSP2_MOSI__GPIO_2_17
+			MX28_PAD_SSP2_MISO__GPIO_2_18
+			MX28_PAD_AUART1_TX__GPIO_3_5
+		>;
+		fsl,drive-strength = <MXS_DRIVE_8mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	spi3_pins_cfa10049: spi3-cfa10049@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_RDN__GPIO_0_24
+			MX28_PAD_GPMI_RESETN__GPIO_0_28
+			MX28_PAD_GPMI_CE1N__GPIO_0_17
+			MX28_PAD_GPMI_ALE__GPIO_0_26
+			MX28_PAD_GPMI_CLE__GPIO_0_27
+		>;
+		fsl,drive-strength = <MXS_DRIVE_8mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	lcdif_18bit_pins_cfa10049: lcdif-18bit@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D00__LCD_D0
+			MX28_PAD_LCD_D01__LCD_D1
+			MX28_PAD_LCD_D02__LCD_D2
+			MX28_PAD_LCD_D03__LCD_D3
+			MX28_PAD_LCD_D04__LCD_D4
+			MX28_PAD_LCD_D05__LCD_D5
+			MX28_PAD_LCD_D06__LCD_D6
+			MX28_PAD_LCD_D07__LCD_D7
+			MX28_PAD_LCD_D08__LCD_D8
+			MX28_PAD_LCD_D09__LCD_D9
+			MX28_PAD_LCD_D10__LCD_D10
+			MX28_PAD_LCD_D11__LCD_D11
+			MX28_PAD_LCD_D12__LCD_D12
+			MX28_PAD_LCD_D13__LCD_D13
+			MX28_PAD_LCD_D14__LCD_D14
+			MX28_PAD_LCD_D15__LCD_D15
+			MX28_PAD_LCD_D16__LCD_D16
+			MX28_PAD_LCD_D17__LCD_D17
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_cfa10049: lcdif-evk@0 {
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
+	lcdif_pins_cfa10049_pullup: lcdif-10049-pullup@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_RESET__GPIO_3_30
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	w1_gpio_pins: w1-gpio@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D21__GPIO_1_21
+		>;
+		fsl,drive-strength = <MXS_DRIVE_8mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>; /* 0 will enable the keeper */
+	};
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm3_pins_b>;
+	status = "okay";
+};
+
+&usb1 {
+	vbus-supply = <&reg_usb1_vbus>;
+	pinctrl-0 = <&usb1_pins_a>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx28-cfa10055.dts b/arch/arm/boot/dts/imx28-cfa10055.dts
index fac5bbda7a93..42ba7da48beb 100644
--- a/arch/arm/boot/dts/imx28-cfa10055.dts
+++ b/arch/arm/boot/dts/imx28-cfa10055.dts
@@ -14,121 +14,6 @@ / {
 	model = "Crystalfontz CFA-10055 Board";
 	compatible = "crystalfontz,cfa10055", "crystalfontz,cfa10037", "crystalfontz,cfa10036", "fsl,imx28";
 
-	apb@80000000 {
-		apbh@80000000 {
-			pinctrl@80018000 {
-				spi2_pins_cfa10055: spi2-cfa10055@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP2_SCK__GPIO_2_16
-						MX28_PAD_SSP2_MOSI__GPIO_2_17
-						MX28_PAD_SSP2_MISO__GPIO_2_18
-						MX28_PAD_AUART1_TX__GPIO_3_5
-					>;
-					fsl,drive-strength = <MXS_DRIVE_8mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				lcdif_18bit_pins_cfa10055: lcdif-18bit@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D00__LCD_D0
-						MX28_PAD_LCD_D01__LCD_D1
-						MX28_PAD_LCD_D02__LCD_D2
-						MX28_PAD_LCD_D03__LCD_D3
-						MX28_PAD_LCD_D04__LCD_D4
-						MX28_PAD_LCD_D05__LCD_D5
-						MX28_PAD_LCD_D06__LCD_D6
-						MX28_PAD_LCD_D07__LCD_D7
-						MX28_PAD_LCD_D08__LCD_D8
-						MX28_PAD_LCD_D09__LCD_D9
-						MX28_PAD_LCD_D10__LCD_D10
-						MX28_PAD_LCD_D11__LCD_D11
-						MX28_PAD_LCD_D12__LCD_D12
-						MX28_PAD_LCD_D13__LCD_D13
-						MX28_PAD_LCD_D14__LCD_D14
-						MX28_PAD_LCD_D15__LCD_D15
-						MX28_PAD_LCD_D16__LCD_D16
-						MX28_PAD_LCD_D17__LCD_D17
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_cfa10055: lcdif-evk@0 {
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
-				lcdif_pins_cfa10055_pullup: lcdif-10055-pullup@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_RESET__GPIO_3_30
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-			};
-
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_18bit_pins_cfa10055
-					     &lcdif_pins_cfa10055
-					     &lcdif_pins_cfa10055_pullup>;
-				display = <&display0>;
-				status = "okay";
-
-				display0: display0 {
-					bits-per-pixel = <32>;
-					bus-width = <18>;
-
-					display-timings {
-						native-mode = <&timing0>;
-						timing0: timing0 {
-							clock-frequency = <9216000>;
-							hactive = <320>;
-							vactive = <480>;
-							hback-porch = <2>;
-							hfront-porch = <2>;
-							vback-porch = <2>;
-							vfront-porch = <2>;
-							hsync-len = <15>;
-							vsync-len = <15>;
-							hsync-active = <0>;
-							vsync-active = <0>;
-							de-active = <1>;
-							pixelclk-active = <1>;
-						};
-					};
-				};
-			};
-		};
-
-		apbx@80040000 {
-			lradc@80050000 {
-				fsl,lradc-touchscreen-wires = <4>;
-				status = "okay";
-			};
-
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm3_pins_b>;
-				status = "okay";
-			};
-		};
-	};
-
 	spi-2 {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
@@ -159,3 +44,112 @@ backlight {
 		default-brightness-level = <6>;
 	};
 };
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_18bit_pins_cfa10055
+		     &lcdif_pins_cfa10055
+		     &lcdif_pins_cfa10055_pullup>;
+	display = <&display0>;
+	status = "okay";
+
+	display0: display0 {
+		bits-per-pixel = <32>;
+		bus-width = <18>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: timing0 {
+				clock-frequency = <9216000>;
+				hactive = <320>;
+				vactive = <480>;
+				hback-porch = <2>;
+				hfront-porch = <2>;
+				vback-porch = <2>;
+				vfront-porch = <2>;
+				hsync-len = <15>;
+				vsync-len = <15>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <1>;
+			};
+		};
+	};
+};
+
+&lradc {
+	fsl,lradc-touchscreen-wires = <4>;
+	status = "okay";
+};
+
+&pinctrl {
+	spi2_pins_cfa10055: spi2-cfa10055@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP2_SCK__GPIO_2_16
+			MX28_PAD_SSP2_MOSI__GPIO_2_17
+			MX28_PAD_SSP2_MISO__GPIO_2_18
+			MX28_PAD_AUART1_TX__GPIO_3_5
+		>;
+		fsl,drive-strength = <MXS_DRIVE_8mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	lcdif_18bit_pins_cfa10055: lcdif-18bit@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D00__LCD_D0
+			MX28_PAD_LCD_D01__LCD_D1
+			MX28_PAD_LCD_D02__LCD_D2
+			MX28_PAD_LCD_D03__LCD_D3
+			MX28_PAD_LCD_D04__LCD_D4
+			MX28_PAD_LCD_D05__LCD_D5
+			MX28_PAD_LCD_D06__LCD_D6
+			MX28_PAD_LCD_D07__LCD_D7
+			MX28_PAD_LCD_D08__LCD_D8
+			MX28_PAD_LCD_D09__LCD_D9
+			MX28_PAD_LCD_D10__LCD_D10
+			MX28_PAD_LCD_D11__LCD_D11
+			MX28_PAD_LCD_D12__LCD_D12
+			MX28_PAD_LCD_D13__LCD_D13
+			MX28_PAD_LCD_D14__LCD_D14
+			MX28_PAD_LCD_D15__LCD_D15
+			MX28_PAD_LCD_D16__LCD_D16
+			MX28_PAD_LCD_D17__LCD_D17
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_cfa10055: lcdif-evk@0 {
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
+	lcdif_pins_cfa10055_pullup: lcdif-10055-pullup@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_RESET__GPIO_3_30
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm3_pins_b>;
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx28-cfa10056.dts b/arch/arm/boot/dts/imx28-cfa10056.dts
index c5f3337e8b39..0e15bdfd7281 100644
--- a/arch/arm/boot/dts/imx28-cfa10056.dts
+++ b/arch/arm/boot/dts/imx28-cfa10056.dts
@@ -13,81 +13,6 @@ / {
 	model = "Crystalfontz CFA-10056 Board";
 	compatible = "crystalfontz,cfa10056", "crystalfontz,cfa10037", "crystalfontz,cfa10036", "fsl,imx28";
 
-	apb@80000000 {
-		apbh@80000000 {
-			pinctrl@80018000 {
-				spi2_pins_cfa10056: spi2-cfa10056@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP2_SCK__GPIO_2_16
-						MX28_PAD_SSP2_MOSI__GPIO_2_17
-						MX28_PAD_SSP2_MISO__GPIO_2_18
-						MX28_PAD_AUART1_TX__GPIO_3_5
-					>;
-					fsl,drive-strength = <MXS_DRIVE_8mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-
-				lcdif_pins_cfa10056: lcdif-10056@0 {
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
-				lcdif_pins_cfa10056_pullup: lcdif-10056-pullup@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_RESET__GPIO_3_30
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_ENABLE>;
-				};
-			};
-
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_24bit_pins_a
-						&lcdif_pins_cfa10056
-						&lcdif_pins_cfa10056_pullup >;
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
-							clock-frequency = <32000000>;
-							hactive = <480>;
-							vactive = <800>;
-							hback-porch = <2>;
-							hfront-porch = <2>;
-							vback-porch = <2>;
-							vfront-porch = <2>;
-							hsync-len = <5>;
-							vsync-len = <5>;
-							hsync-active = <0>;
-							vsync-active = <0>;
-							de-active = <1>;
-							pixelclk-active = <1>;
-						};
-					};
-				};
-			};
-		};
-	};
-
 	spi-2 {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
@@ -111,3 +36,74 @@ hx8369: hx8369@0 {
 		};
 	};
 };
+
+&pinctrl {
+	spi2_pins_cfa10056: spi2-cfa10056@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP2_SCK__GPIO_2_16
+			MX28_PAD_SSP2_MOSI__GPIO_2_17
+			MX28_PAD_SSP2_MISO__GPIO_2_18
+			MX28_PAD_AUART1_TX__GPIO_3_5
+		>;
+		fsl,drive-strength = <MXS_DRIVE_8mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	lcdif_pins_cfa10056: lcdif-10056@0 {
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
+	lcdif_pins_cfa10056_pullup: lcdif-10056-pullup@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_RESET__GPIO_3_30
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_24bit_pins_a
+			&lcdif_pins_cfa10056
+			&lcdif_pins_cfa10056_pullup >;
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
+				clock-frequency = <32000000>;
+				hactive = <480>;
+				vactive = <800>;
+				hback-porch = <2>;
+				hfront-porch = <2>;
+				vback-porch = <2>;
+				vfront-porch = <2>;
+				hsync-len = <5>;
+				vsync-len = <5>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <1>;
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/imx28-cfa10057.dts b/arch/arm/boot/dts/imx28-cfa10057.dts
index 2f7e479dbc74..27602c01f162 100644
--- a/arch/arm/boot/dts/imx28-cfa10057.dts
+++ b/arch/arm/boot/dts/imx28-cfa10057.dts
@@ -14,126 +14,6 @@ / {
 	model = "Crystalfontz CFA-10057 Board";
 	compatible = "crystalfontz,cfa10057", "crystalfontz,cfa10036", "fsl,imx28";
 
-	apb@80000000 {
-		apbh@80000000 {
-			pinctrl@80018000 {
-				usb_pins_cfa10057: usb-10057@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_D07__GPIO_0_7
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_18bit_pins_cfa10057: lcdif-18bit@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D00__LCD_D0
-						MX28_PAD_LCD_D01__LCD_D1
-						MX28_PAD_LCD_D02__LCD_D2
-						MX28_PAD_LCD_D03__LCD_D3
-						MX28_PAD_LCD_D04__LCD_D4
-						MX28_PAD_LCD_D05__LCD_D5
-						MX28_PAD_LCD_D06__LCD_D6
-						MX28_PAD_LCD_D07__LCD_D7
-						MX28_PAD_LCD_D08__LCD_D8
-						MX28_PAD_LCD_D09__LCD_D9
-						MX28_PAD_LCD_D10__LCD_D10
-						MX28_PAD_LCD_D11__LCD_D11
-						MX28_PAD_LCD_D12__LCD_D12
-						MX28_PAD_LCD_D13__LCD_D13
-						MX28_PAD_LCD_D14__LCD_D14
-						MX28_PAD_LCD_D15__LCD_D15
-						MX28_PAD_LCD_D16__LCD_D16
-						MX28_PAD_LCD_D17__LCD_D17
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_cfa10057: lcdif-evk@0 {
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
-
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_18bit_pins_cfa10057
-					     &lcdif_pins_cfa10057>;
-				display = <&display0>;
-				status = "okay";
-
-				display0: display0 {
-					bits-per-pixel = <32>;
-					bus-width = <18>;
-
-					display-timings {
-						native-mode = <&timing0>;
-						timing0: timing0 {
-							clock-frequency = <30000000>;
-							hactive = <480>;
-							vactive = <800>;
-							hfront-porch = <12>;
-							hback-porch = <2>;
-							vfront-porch = <5>;
-							vback-porch = <3>;
-							hsync-len = <2>;
-							vsync-len = <2>;
-							hsync-active = <0>;
-							vsync-active = <0>;
-							de-active = <1>;
-							pixelclk-active = <1>;
-						};
-					};
-				};
-			};
-		};
-
-		apbx@80040000 {
-			lradc@80050000 {
-				fsl,lradc-touchscreen-wires = <4>;
-				status = "okay";
-			};
-
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm4_pins_a>;
-				status = "okay";
-			};
-
-			i2c1: i2c@8005a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c1_pins_a>;
-				status = "okay";
-			};
-
-			usbphy1: usbphy@8007e000 {
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb1: usb@80090000 {
-			vbus-supply = <&reg_usb1_vbus>;
-			pinctrl-0 = <&usb1_pins_a>;
-			pinctrl-names = "default";
-			status = "okay";
-		};
-	};
-
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -151,17 +31,6 @@ reg_usb1_vbus: regulator@0 {
 		};
 	};
 
-	ahb@80080000 {
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>;
-			phy-reset-gpios = <&gpio2 21 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <100>;
-			status = "okay";
-		};
-	};
-
 	backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm 4 5000000>;
@@ -169,3 +38,124 @@ backlight {
 		default-brightness-level = <7>;
 	};
 };
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_18bit_pins_cfa10057
+		     &lcdif_pins_cfa10057>;
+	display = <&display0>;
+	status = "okay";
+
+	display0: display0 {
+		bits-per-pixel = <32>;
+		bus-width = <18>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: timing0 {
+				clock-frequency = <30000000>;
+				hactive = <480>;
+				vactive = <800>;
+				hfront-porch = <12>;
+				hback-porch = <2>;
+				vfront-porch = <5>;
+				vback-porch = <3>;
+				hsync-len = <2>;
+				vsync-len = <2>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <1>;
+			};
+		};
+	};
+};
+
+&lradc {
+	fsl,lradc-touchscreen-wires = <4>;
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins_a>;
+	status = "okay";
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
+	phy-reset-gpios = <&gpio2 21 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <100>;
+	status = "okay";
+};
+
+&pinctrl {
+	usb_pins_cfa10057: usb-10057@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_D07__GPIO_0_7
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_18bit_pins_cfa10057: lcdif-18bit@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D00__LCD_D0
+			MX28_PAD_LCD_D01__LCD_D1
+			MX28_PAD_LCD_D02__LCD_D2
+			MX28_PAD_LCD_D03__LCD_D3
+			MX28_PAD_LCD_D04__LCD_D4
+			MX28_PAD_LCD_D05__LCD_D5
+			MX28_PAD_LCD_D06__LCD_D6
+			MX28_PAD_LCD_D07__LCD_D7
+			MX28_PAD_LCD_D08__LCD_D8
+			MX28_PAD_LCD_D09__LCD_D9
+			MX28_PAD_LCD_D10__LCD_D10
+			MX28_PAD_LCD_D11__LCD_D11
+			MX28_PAD_LCD_D12__LCD_D12
+			MX28_PAD_LCD_D13__LCD_D13
+			MX28_PAD_LCD_D14__LCD_D14
+			MX28_PAD_LCD_D15__LCD_D15
+			MX28_PAD_LCD_D16__LCD_D16
+			MX28_PAD_LCD_D17__LCD_D17
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_cfa10057: lcdif-evk@0 {
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
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm4_pins_a>;
+	status = "okay";
+};
+
+&usb1 {
+	vbus-supply = <&reg_usb1_vbus>;
+	pinctrl-0 = <&usb1_pins_a>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx28-cfa10058.dts b/arch/arm/boot/dts/imx28-cfa10058.dts
index 4465fd86785a..931c4d089b26 100644
--- a/arch/arm/boot/dts/imx28-cfa10058.dts
+++ b/arch/arm/boot/dts/imx28-cfa10058.dts
@@ -14,93 +14,6 @@ / {
 	model = "Crystalfontz CFA-10058 Board";
 	compatible = "crystalfontz,cfa10058", "crystalfontz,cfa10036", "fsl,imx28";
 
-	apb@80000000 {
-		apbh@80000000 {
-			pinctrl@80018000 {
-				usb_pins_cfa10058: usb-10058@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_D07__GPIO_0_7
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_cfa10058: lcdif-10058@0 {
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
-
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_24bit_pins_a
-						 &lcdif_pins_cfa10058>;
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
-							hback-porch = <40>;
-							hfront-porch = <40>;
-							vback-porch = <13>;
-							vfront-porch = <29>;
-							hsync-len = <8>;
-							vsync-len = <8>;
-							hsync-active = <0>;
-							vsync-active = <0>;
-							de-active = <1>;
-							pixelclk-active = <1>;
-						};
-					};
-				};
-			};
-		};
-
-		apbx@80040000 {
-			lradc@80050000 {
-				fsl,lradc-touchscreen-wires = <4>;
-				status = "okay";
-			};
-
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm3_pins_b>;
-				status = "okay";
-			};
-
-			usbphy1: usbphy@8007e000 {
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb1: usb@80090000 {
-			vbus-supply = <&reg_usb1_vbus>;
-			pinctrl-0 = <&usb1_pins_a>;
-			pinctrl-names = "default";
-			status = "okay";
-		};
-	};
-
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -118,17 +31,6 @@ reg_usb1_vbus: regulator@0 {
 		};
 	};
 
-	ahb@80080000 {
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>;
-			phy-reset-gpios = <&gpio2 21 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <100>;
-			status = "okay";
-		};
-	};
-
 	backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm 3 5000000>;
@@ -136,3 +38,91 @@ backlight {
 		default-brightness-level = <6>;
 	};
 };
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_24bit_pins_a
+			 &lcdif_pins_cfa10058>;
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
+				hback-porch = <40>;
+				hfront-porch = <40>;
+				vback-porch = <13>;
+				vfront-porch = <29>;
+				hsync-len = <8>;
+				vsync-len = <8>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <1>;
+			};
+		};
+	};
+};
+
+&lradc {
+	fsl,lradc-touchscreen-wires = <4>;
+	status = "okay";
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
+	phy-reset-gpios = <&gpio2 21 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <100>;
+	status = "okay";
+};
+
+&pinctrl {
+	usb_pins_cfa10058: usb-10058@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_D07__GPIO_0_7
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_cfa10058: lcdif-10058@0 {
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
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm3_pins_b>;
+	status = "okay";
+};
+
+&usb1 {
+	vbus-supply = <&reg_usb1_vbus>;
+	pinctrl-0 = <&usb1_pins_a>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
-- 
2.34.1

