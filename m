Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C6CC6AF3DC
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 20:10:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjCGTKe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 14:10:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233616AbjCGTKH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 14:10:07 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 388EBC8085
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 10:54:46 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MfHUx-1qETh02Vg3-00gmne; Tue, 07 Mar 2023 19:40:21 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>, support@armadeus.com
Subject: [PATCH V2 1/9] ARM: dts: imx28-apf28: Convert to use label references
Date:   Tue,  7 Mar 2023 19:39:59 +0100
Message-Id: <20230307184007.10672-2-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230307184007.10672-1-stefan.wahren@i2se.com>
References: <20230307184007.10672-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:ZiSw4GmPlVi6GDzG6+OAf6IsuDoULNrOcGoT++9vi1e7MY7wyee
 sY1IGoak/YO8irBzTwwzSwej2gU4SA3MiuWIU54brk6asHBDtYqlhOQwBcd6pSka5yQVkPG
 SGfD0+d9+iXva/f9+ZGl11JGxMjK3ZWIjLy3nhaJ9Bh4HlcZFrhAEJmzpSVvi5jlC4bNeG6
 jQ/k5tKlCj5JhntmrmJJg==
UI-OutboundReport: notjunk:1;M01:P0:ffPGaoEaM9E=;W8DV7ymFWVu7w0wIJC93sqTJbE1
 1o2gz2U7pinT2tXVdRM/ti+E544kxsPqN1DY2kkafBwPqeesHhymktBo/p3v6naklQxQnkJCq
 iiJucpdAK2eMdRhh3D7Jsw665iejuC1QywAIROey96J1pw4P5Rt1bVpPbeRuLAe7OUK1Dzfkl
 Wfpy9lxB5Kd15GO0+7nULHE9Qb+T41J0LJxliqvY2p7AJbyyq/FMXGXoxVvX7XKdNKnUCSaHr
 /xyyfaVfOBEmrUb/5SjHCeaC1bcTFvAd5RXTSWpUY3XIpStjfo5g3U4M+E91HRcdqEGUc/Pod
 UF9EeCRcZwcGjv/NmNeTZPm1wFLVyFFx3V4rnMua0apBF8IeVRy1pSxgY06D99AZlZg4RUmBb
 xLvrMcXBkiAJP/r1M4t97sojX0W/j1VpxapqU6h4HpPLsu3BlseYiGAUg/wczePssnybHPvgZ
 v+jTxxKiuG7vy+DefM6M495Dk5Jv3T7m918XXNnnDqx6SmGfyQ69+Pu4xNHpg01kjrdSfAHC5
 R/soyl50ViyJAT6ySHzqCU/1JZGkDno+z1k9L46JKuj2YZLu9tExrQEltuIsUDIp/wEoDSeGO
 Cx12B/GT1Ow0jrvNYIsZ9HE4ByH8VSdLo6AmJ0TTBnTScWGVQiopSFxKylQsvp8qooqS6LsL0
 7H4QAx/SFdBg2sQ12tr1qkn1qSTojked600SyqAjeg==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These Armadeus board files still use node name and unit address
to reference parts from the imx28.dtsi . This causes a lot of
redundancy. So use label references in order to make it easier
to maintain.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: <support@armadeus.com>
---
 arch/arm/boot/dts/imx28-apf28.dts    |  96 ++++-----
 arch/arm/boot/dts/imx28-apf28dev.dts | 312 +++++++++++++--------------
 2 files changed, 196 insertions(+), 212 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-apf28.dts b/arch/arm/boot/dts/imx28-apf28.dts
index 14a92fe59770..98672932e41b 100644
--- a/arch/arm/boot/dts/imx28-apf28.dts
+++ b/arch/arm/boot/dts/imx28-apf28.dts
@@ -14,67 +14,59 @@ memory@40000000 {
 		device_type = "memory";
 		reg = <0x40000000 0x08000000>;
 	};
+};
 
-	apb@80000000 {
-		apbh@80000000 {
-			nand-controller@8000c000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
-				status = "okay";
-
-				partition@0 {
-					label = "u-boot";
-					reg = <0x0 0x300000>;
-				};
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_a>;
+	status = "okay";
+};
 
-				partition@300000 {
-					label = "env";
-					reg = <0x300000 0x80000>;
-				};
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
+	status = "okay";
 
-				partition@380000 {
-					label = "env2";
-					reg = <0x380000 0x80000>;
-				};
+	partition@0 {
+		label = "u-boot";
+		reg = <0x0 0x300000>;
+	};
 
-				partition@400000 {
-					label = "dtb";
-					reg = <0x400000 0x80000>;
-				};
+	partition@300000 {
+		label = "env";
+		reg = <0x300000 0x80000>;
+	};
 
-				partition@480000 {
-					label = "splash";
-					reg = <0x480000 0x80000>;
-				};
+	partition@380000 {
+		label = "env2";
+		reg = <0x380000 0x80000>;
+	};
 
-				partition@500000 {
-					label = "kernel";
-					reg = <0x500000 0x800000>;
-				};
+	partition@400000 {
+		label = "dtb";
+		reg = <0x400000 0x80000>;
+	};
 
-				partition@d00000 {
-					label = "rootfs";
-					reg = <0xd00000 0xf300000>;
-				};
-			};
-		};
+	partition@480000 {
+		label = "splash";
+		reg = <0x480000 0x80000>;
+	};
 
-		apbx@80040000 {
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_a>;
-				status = "okay";
-			};
-		};
+	partition@500000 {
+		label = "kernel";
+		reg = <0x500000 0x800000>;
 	};
 
-	ahb@80080000 {
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>;
-			phy-reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
-			status = "okay";
-		};
+	partition@d00000 {
+		label = "rootfs";
+		reg = <0xd00000 0xf300000>;
 	};
 };
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
+	phy-reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx28-apf28dev.dts b/arch/arm/boot/dts/imx28-apf28dev.dts
index 1b253b47006c..4704b6141836 100644
--- a/arch/arm/boot/dts/imx28-apf28dev.dts
+++ b/arch/arm/boot/dts/imx28-apf28dev.dts
@@ -10,166 +10,6 @@ / {
 	model = "Armadeus Systems APF28Dev docking/development board";
 	compatible = "armadeus,imx28-apf28dev", "armadeus,imx28-apf28", "fsl,imx28";
 
-	apb@80000000 {
-		apbh@80000000 {
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_4bit_pins_a
-					&mmc0_cd_cfg &mmc0_sck_cfg>;
-				bus-width = <4>;
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
-				pinctrl-0 = <&hog_pins_apf28dev>;
-
-				hog_pins_apf28dev: hog@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D16__GPIO_1_16
-						MX28_PAD_LCD_D17__GPIO_1_17
-						MX28_PAD_LCD_D18__GPIO_1_18
-						MX28_PAD_LCD_D19__GPIO_1_19
-						MX28_PAD_LCD_D20__GPIO_1_20
-						MX28_PAD_LCD_D21__GPIO_1_21
-						MX28_PAD_LCD_D22__GPIO_1_22
-						MX28_PAD_GPMI_CE1N__GPIO_0_17
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_apf28dev: lcdif-apf28dev@0 {
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
-				usb0_otg_apf28dev: otg-apf28dev@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_D23__GPIO_1_23
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-			};
-
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_16bit_pins_a
-						&lcdif_pins_apf28dev>;
-				display = <&display0>;
-				status = "okay";
-
-				display0: display0 {
-					bits-per-pixel = <16>;
-					bus-width = <16>;
-
-					display-timings {
-						native-mode = <&timing0>;
-						timing0: timing0 {
-							clock-frequency = <33000033>;
-							hactive = <800>;
-							vactive = <480>;
-							hback-porch = <96>;
-							hfront-porch = <96>;
-							vback-porch = <20>;
-							vfront-porch = <21>;
-							hsync-len = <64>;
-							vsync-len = <4>;
-							hsync-active = <1>;
-							vsync-active = <1>;
-							de-active = <1>;
-							pixelclk-active = <0>;
-						};
-					};
-				};
-			};
-
-			can0: can@80032000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&can0_pins_a>;
-				xceiver-supply = <&reg_can0_vcc>;
-				status = "okay";
-			};
-		};
-
-		apbx@80040000 {
-			lradc@80050000 {
-				fsl,lradc-touchscreen-wires = <4>;
-				status = "okay";
-			};
-
-			i2c0: i2c@80058000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c0_pins_a>;
-				status = "okay";
-			};
-
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm3_pins_a &pwm4_pins_a>;
-				status = "okay";
-			};
-
-			auart0: serial@8006a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart0_pins_a>;
-				uart-has-rtscts;
-				status = "okay";
-			};
-
-			usbphy0: usbphy@8007c000 {
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
-		usb0: usb@80080000 {
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb0_otg_apf28dev
-					&usb0_id_pins_b>;
-			vbus-supply = <&reg_usb0_vbus>;
-			status = "okay";
-		};
-
-		usb1: usb@80090000 {
-			status = "okay";
-		};
-
-		mac1: ethernet@800f4000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac1_pins_a>;
-			phy-reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
-			status = "okay";
-		};
-	};
-
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -223,3 +63,155 @@ user-button {
 		};
 	};
 };
+
+&auart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart0_pins_a>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&can0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&can0_pins_a>;
+	xceiver-supply = <&reg_can0_vcc>;
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_a>;
+	status = "okay";
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_16bit_pins_a
+		     &lcdif_pins_apf28dev>;
+	display = <&display0>;
+	status = "okay";
+
+	display0: display0 {
+		bits-per-pixel = <16>;
+		bus-width = <16>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: timing0 {
+				clock-frequency = <33000033>;
+				hactive = <800>;
+				vactive = <480>;
+				hback-porch = <96>;
+				hfront-porch = <96>;
+				vback-porch = <20>;
+				vfront-porch = <21>;
+				hsync-len = <64>;
+				vsync-len = <4>;
+				hsync-active = <1>;
+				vsync-active = <1>;
+				de-active = <1>;
+				pixelclk-active = <0>;
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
+&mac1 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac1_pins_a>;
+	phy-reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hog_pins_apf28dev>;
+
+	hog_pins_apf28dev: hog@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D16__GPIO_1_16
+			MX28_PAD_LCD_D17__GPIO_1_17
+			MX28_PAD_LCD_D18__GPIO_1_18
+			MX28_PAD_LCD_D19__GPIO_1_19
+			MX28_PAD_LCD_D20__GPIO_1_20
+			MX28_PAD_LCD_D21__GPIO_1_21
+			MX28_PAD_LCD_D22__GPIO_1_22
+			MX28_PAD_GPMI_CE1N__GPIO_0_17
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_apf28dev: lcdif-apf28dev@0 {
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
+	usb0_otg_apf28dev: otg-apf28dev@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_D23__GPIO_1_23
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm3_pins_a &pwm4_pins_a>;
+	status = "okay";
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_4bit_pins_a
+		     &mmc0_cd_cfg &mmc0_sck_cfg>;
+	bus-width = <4>;
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
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb0_otg_apf28dev
+		     &usb0_id_pins_b>;
+	vbus-supply = <&reg_usb0_vbus>;
+	status = "okay";
+};
+
+&usb1 {
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

