Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B2096AF281
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 19:53:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233463AbjCGSxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 13:53:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233374AbjCGSxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 13:53:18 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B17C5C80B7
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 10:41:17 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MNtCi-1pxuPe0Ijg-00OILN; Tue, 07 Mar 2023 19:40:22 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Marek Vasut <marex@denx.de>,
        Wolfgang Grandegger <wg@aries-embedded.de>
Subject: [PATCH V2 2/9] ARM: dts: imx28-m28/sps1: Convert to use label references
Date:   Tue,  7 Mar 2023 19:40:00 +0100
Message-Id: <20230307184007.10672-3-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230307184007.10672-1-stefan.wahren@i2se.com>
References: <20230307184007.10672-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:/nEtzx5yRWe1Geg4CFXlqIQCVtuAILXhF5STtX2KDLiL/WIC4Uk
 ykOnYDllxrlYlb+wkh/m9iAyV0ktF29wCwfsP2gFDnwNMINlKITqdJZkeqCnT9MJTB1HwQs
 1WrDRdZcnHpaw3tcLoRt8stTLGnarA+6gQVlprLV6BpXYtvabnJ9n0g840SWzlwil0j6uhB
 JdBehNYFlcaRqtFALWdug==
UI-OutboundReport: notjunk:1;M01:P0:ssCGm5Mz3q4=;NK9c6Hzg/+ruQ/s6dpMFJfkUL5/
 6mVQ9GgqDpqQQ4VAwGoJBWOOmm82ZndzNoOrYEprr9hH+uEAVw2uIpYzKaF4vvS7u0M/KyJwE
 YcR+a8YT1TEhpiTYOe6GUVkaZyhWPOgK0KRs7y0LLIAfK1ygkV3knmEe6tMA/wGxpwgCJKFaw
 52auWYKWst27f916Vm78IgGdslBSWCtkyM9GswJE4cp+XzVBqasafJFTZKfrLCEKKNl2+tT2w
 YdQVjJpHJfht2xVAeDt6cd9RQ1A7UDbneMBiFCF/RaP8UR4fjxkF6p+W7G/WndjRU6hEPOq2g
 CBnmSbQdp6ZesAu07/cUVbdaSQgD5zh1UmsUSTpVeGyloIKswI8RMOEoaEbvGS/bmyxvmNpXg
 +mCRpKMiwCa1uDOtLz7Ls38ACRPuLzNtn3aDQRiKi7FS9rcJOHcHs6Dbf7ks4/ERxrAtOn0dP
 wVEVwKJpnwbFY0m7GGaYSgY7W3hokP0WW3BUhvQxn0YElcCYpiz2BoUFaWb6BVcpKNdWlwz1t
 dd/6/AMWHUFp33fBel2fyQzJ4Ojp5NSRxDNpD4FzyyatnU4jez6wAIrX+vAufXSxUQOtTpSKD
 YvXHfLmK4SX0tQUsAK51KSfKLIVZy8t2dno3CrONncw+fNMTbX6GuZwlnu3MkPZbWJ0qLvZmy
 r1R8oNRkXL6sigb9hSLQsGUxFjd6sdrRgC4nEprpbQ==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These board files still use node name and unit address to
reference parts from the imx28.dtsi . This causes a lot of
redundancy. So use label references in orer to make it
easier to maintain.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Wolfgang Grandegger <wg@aries-embedded.de>
---
 arch/arm/boot/dts/imx28-m28.dtsi   |  44 ++-
 arch/arm/boot/dts/imx28-m28cu3.dts | 354 ++++++++++++------------
 arch/arm/boot/dts/imx28-m28evk.dts | 420 ++++++++++++++---------------
 arch/arm/boot/dts/imx28-sps1.dts   | 201 +++++++-------
 4 files changed, 494 insertions(+), 525 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-m28.dtsi b/arch/arm/boot/dts/imx28-m28.dtsi
index 2bdb4c093545..c08b14ad7cd5 100644
--- a/arch/arm/boot/dts/imx28-m28.dtsi
+++ b/arch/arm/boot/dts/imx28-m28.dtsi
@@ -14,31 +14,6 @@ memory@40000000 {
 		reg = <0x40000000 0x08000000>;
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			nand-controller@8000c000 {
-				#address-cells = <1>;
-				#size-cells = <1>;
-				pinctrl-names = "default";
-				pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
-				status = "okay";
-			};
-		};
-
-		apbx@80040000 {
-			i2c0: i2c@80058000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c0_pins_a>;
-				status = "okay";
-
-				rtc: rtc@68 {
-					compatible = "st,m41t62";
-					reg = <0x68>;
-				};
-			};
-		};
-	};
-
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -54,3 +29,22 @@ reg_3p3v: regulator@0 {
 		};
 	};
 };
+
+&gpmi {
+	#address-cells = <1>;
+	#size-cells = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_a>;
+	status = "okay";
+
+	rtc: rtc@68 {
+		compatible = "st,m41t62";
+		reg = <0x68>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx28-m28cu3.dts b/arch/arm/boot/dts/imx28-m28cu3.dts
index 865ac3d573c7..6b01de9efd02 100644
--- a/arch/arm/boot/dts/imx28-m28cu3.dts
+++ b/arch/arm/boot/dts/imx28-m28cu3.dts
@@ -15,187 +15,6 @@ memory@40000000 {
 		reg = <0x40000000 0x08000000>;
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			nand-controller@8000c000 {
-				#address-cells = <1>;
-				#size-cells = <1>;
-				pinctrl-names = "default";
-				pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
-				status = "okay";
-
-				partition@0 {
-					label = "gpmi-nfc-0-boot";
-					reg = <0x00000000 0x01400000>;
-					read-only;
-				};
-
-				partition@1 {
-					label = "gpmi-nfc-general-use";
-					reg = <0x01400000 0x0ec00000>;
-				};
-			};
-
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_4bit_pins_a
-					     &mmc0_cd_cfg
-					     &mmc0_sck_cfg>;
-				bus-width = <4>;
-				vmmc-supply = <&reg_vddio_sd0>;
-				status = "okay";
-			};
-
-			ssp2: spi@80014000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc2_4bit_pins_a
-					     &mmc2_cd_cfg
-					     &mmc2_sck_cfg_a>;
-				bus-width = <4>;
-				vmmc-supply = <&reg_vddio_sd1>;
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
-						MX28_PAD_SSP2_SS0__GPIO_2_19
-						MX28_PAD_PWM4__GPIO_3_29
-						MX28_PAD_AUART2_RX__GPIO_3_8
-						MX28_PAD_ENET0_RX_CLK__GPIO_4_13
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_m28: lcdif-m28@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_VSYNC__LCD_VSYNC
-						MX28_PAD_LCD_HSYNC__LCD_HSYNC
-						MX28_PAD_LCD_DOTCLK__LCD_DOTCLK
-						MX28_PAD_LCD_RESET__LCD_RESET
-						MX28_PAD_LCD_CS__LCD_ENABLE
-						MX28_PAD_AUART1_TX__GPIO_3_5
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				led_pins_gpio: leds-m28@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_SSP3_MISO__GPIO_2_26
-						MX28_PAD_SSP3_SCK__GPIO_2_24
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-			};
-
-			ocotp@8002c000 {
-				status = "okay";
-			};
-
-			lcdif@80030000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&lcdif_24bit_pins_a
-					     &lcdif_pins_m28>;
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
-							clock-frequency = <6410256>;
-							hactive = <320>;
-							vactive = <240>;
-							hback-porch = <38>;
-							hfront-porch = <20>;
-							vback-porch = <15>;
-							vfront-porch = <5>;
-							hsync-len = <30>;
-							vsync-len = <3>;
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
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_b>;
-				status = "okay";
-			};
-
-			usbphy1: usbphy@8007e000 {
-				status = "okay";
-			};
-
-			auart0: serial@8006a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart0_2pins_a>;
-				status = "okay";
-			};
-
-			auart3: serial@80070000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart3_2pins_b>;
-				status = "okay";
-			};
-
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm3_pins_a>;
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb1: usb@80090000 {
-			vbus-supply = <&reg_usb1_vbus>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb1_pins_a>;
-			disable-over-current;
-			status = "okay";
-		};
-
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>;
-			phy-reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
-			phy-reset-duration = <100>;
-			status = "okay";
-		};
-
-		mac1: ethernet@800f4000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac1_pins_a>;
-			status = "okay";
-		};
-	};
-
 	backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm 3 5000000>;
@@ -264,3 +83,176 @@ reg_usb1_vbus: regulator@3 {
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
+&auart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart3_2pins_b>;
+	status = "okay";
+};
+
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_b>;
+	status = "okay";
+};
+
+&gpmi {
+	#address-cells = <1>;
+	#size-cells = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
+	status = "okay";
+
+	partition@0 {
+		label = "gpmi-nfc-0-boot";
+		reg = <0x00000000 0x01400000>;
+		read-only;
+	};
+
+	partition@1 {
+		label = "gpmi-nfc-general-use";
+		reg = <0x01400000 0x0ec00000>;
+	};
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_24bit_pins_a
+		     &lcdif_pins_m28>;
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
+				clock-frequency = <6410256>;
+				hactive = <320>;
+				vactive = <240>;
+				hback-porch = <38>;
+				hfront-porch = <20>;
+				vback-porch = <15>;
+				vfront-porch = <5>;
+				hsync-len = <30>;
+				vsync-len = <3>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <1>;
+			};
+		};
+	};
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
+	phy-reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <100>;
+	status = "okay";
+};
+
+&mac1 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac1_pins_a>;
+	status = "okay";
+};
+
+&ocotp {
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
+			MX28_PAD_SSP2_SS0__GPIO_2_19
+			MX28_PAD_PWM4__GPIO_3_29
+			MX28_PAD_AUART2_RX__GPIO_3_8
+			MX28_PAD_ENET0_RX_CLK__GPIO_4_13
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_m28: lcdif-m28@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_VSYNC__LCD_VSYNC
+			MX28_PAD_LCD_HSYNC__LCD_HSYNC
+			MX28_PAD_LCD_DOTCLK__LCD_DOTCLK
+			MX28_PAD_LCD_RESET__LCD_RESET
+			MX28_PAD_LCD_CS__LCD_ENABLE
+			MX28_PAD_AUART1_TX__GPIO_3_5
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	led_pins_gpio: leds-m28@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP3_MISO__GPIO_2_26
+			MX28_PAD_SSP3_SCK__GPIO_2_24
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm3_pins_a>;
+	status = "okay";
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_4bit_pins_a
+		     &mmc0_cd_cfg
+		     &mmc0_sck_cfg>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_vddio_sd0>;
+	status = "okay";
+};
+
+&ssp2 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_4bit_pins_a
+		     &mmc2_cd_cfg
+		     &mmc2_sck_cfg_a>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_vddio_sd1>;
+	status = "okay";
+};
+
+&usb1 {
+	vbus-supply = <&reg_usb1_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb1_pins_a>;
+	disable-over-current;
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx28-m28evk.dts b/arch/arm/boot/dts/imx28-m28evk.dts
index 13acdc7916b9..e350d57a4cec 100644
--- a/arch/arm/boot/dts/imx28-m28evk.dts
+++ b/arch/arm/boot/dts/imx28-m28evk.dts
@@ -11,220 +11,6 @@ / {
 	model = "Aries/DENX M28EVK";
 	compatible = "aries,m28evk", "denx,m28evk", "fsl,imx28";
 
-	apb@80000000 {
-		apbh@80000000 {
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_8bit_pins_a
-					     &mmc0_cd_cfg
-					     &mmc0_sck_cfg>;
-				bus-width = <8>;
-				wp-gpios = <&gpio3 10 0>;
-				vmmc-supply = <&reg_vddio_sd0>;
-				status = "okay";
-			};
-
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
-					compatible = "m25p80", "jedec,spi-nor";
-					spi-max-frequency = <40000000>;
-					reg = <0>;
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
-						MX28_PAD_PWM3__GPIO_3_28
-						MX28_PAD_AUART2_CTS__GPIO_3_10
-						MX28_PAD_AUART2_RTS__GPIO_3_11
-						MX28_PAD_AUART3_RX__GPIO_3_12
-						MX28_PAD_AUART3_TX__GPIO_3_13
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-				lcdif_pins_m28: lcdif-m28@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_LCD_DOTCLK__LCD_DOTCLK
-						MX28_PAD_LCD_ENABLE__LCD_ENABLE
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
-					     &lcdif_pins_m28>;
-				display = <&display0>;
-				status = "okay";
-
-				display0: display0 {
-					bits-per-pixel = <16>;
-					bus-width = <18>;
-
-					display-timings {
-						native-mode = <&timing0>;
-						timing0: timing0 {
-							clock-frequency = <33260000>;
-							hactive = <800>;
-							vactive = <480>;
-							hback-porch = <0>;
-							hfront-porch = <256>;
-							vback-porch = <0>;
-							vfront-porch = <45>;
-							hsync-len = <1>;
-							vsync-len = <1>;
-							hsync-active = <0>;
-							vsync-active = <0>;
-							de-active = <1>;
-							pixelclk-active = <1>;
-						};
-					};
-				};
-			};
-
-			can0: can@80032000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&can0_pins_a>;
-				status = "okay";
-			};
-
-			can1: can@80034000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&can1_pins_a>;
-				status = "okay";
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
-				sgtl5000: codec@a {
-					compatible = "fsl,sgtl5000";
-					reg = <0x0a>;
-					#sound-dai-cells = <0>;
-					VDDA-supply = <&reg_3p3v>;
-					VDDIO-supply = <&reg_3p3v>;
-					clocks = <&saif0>;
-				};
-
-				eeprom: eeprom@51 {
-					compatible = "atmel,24c128";
-					reg = <0x51>;
-					pagesize = <32>;
-				};
-			};
-
-			lradc@80050000 {
-				status = "okay";
-				fsl,lradc-touchscreen-wires = <4>;
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
-
-			usbphy1: usbphy@8007e000 {
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
-				pinctrl-0 = <&auart1_pins_a>;
-				status = "okay";
-			};
-
-			auart2: serial@8006e000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart2_2pins_b>;
-				status = "okay";
-			};
-
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm4_pins_a>;
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb0: usb@80080000 {
-			vbus-supply = <&reg_usb0_vbus>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb0_pins_a>;
-			status = "okay";
-		};
-
-		usb1: usb@80090000 {
-			vbus-supply = <&reg_usb1_vbus>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb1_pins_a>;
-			status = "okay";
-		};
-
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>;
-			clocks = <&clks 57>, <&clks 57>;
-			clock-names = "ipg", "ahb";
-			status = "okay";
-		};
-
-		mac1: ethernet@800f4000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac1_pins_a>;
-			status = "okay";
-		};
-	};
-
 	backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm 4 5000000>;
@@ -269,3 +55,209 @@ sound {
 		audio-codec = <&sgtl5000>;
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
+	pinctrl-0 = <&auart1_pins_a>;
+	status = "okay";
+};
+
+&auart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart2_2pins_b>;
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
+	sgtl5000: codec@a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		#sound-dai-cells = <0>;
+		VDDA-supply = <&reg_3p3v>;
+		VDDIO-supply = <&reg_3p3v>;
+		clocks = <&saif0>;
+	};
+
+	eeprom: eeprom@51 {
+		compatible = "atmel,24c128";
+		reg = <0x51>;
+		pagesize = <32>;
+	};
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_24bit_pins_a
+		     &lcdif_pins_m28>;
+	display = <&display0>;
+	status = "okay";
+
+	display0: display0 {
+		bits-per-pixel = <16>;
+		bus-width = <18>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: timing0 {
+				clock-frequency = <33260000>;
+				hactive = <800>;
+				vactive = <480>;
+				hback-porch = <0>;
+				hfront-porch = <256>;
+				vback-porch = <0>;
+				vfront-porch = <45>;
+				hsync-len = <1>;
+				vsync-len = <1>;
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
+	status = "okay";
+	fsl,lradc-touchscreen-wires = <4>;
+};
+
+&can0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&can0_pins_a>;
+	status = "okay";
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&can1_pins_a>;
+	status = "okay";
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
+	clocks = <&clks 57>, <&clks 57>;
+	clock-names = "ipg", "ahb";
+	status = "okay";
+};
+
+&mac1 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac1_pins_a>;
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
+			MX28_PAD_PWM3__GPIO_3_28
+			MX28_PAD_AUART2_CTS__GPIO_3_10
+			MX28_PAD_AUART2_RTS__GPIO_3_11
+			MX28_PAD_AUART3_RX__GPIO_3_12
+			MX28_PAD_AUART3_TX__GPIO_3_13
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_m28: lcdif-m28@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_DOTCLK__LCD_DOTCLK
+			MX28_PAD_LCD_ENABLE__LCD_ENABLE
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
+	pinctrl-0 = <&mmc0_8bit_pins_a
+		     &mmc0_cd_cfg
+		     &mmc0_sck_cfg>;
+	bus-width = <8>;
+	wp-gpios = <&gpio3 10 0>;
+	vmmc-supply = <&reg_vddio_sd0>;
+	status = "okay";
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
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p80", "jedec,spi-nor";
+		spi-max-frequency = <40000000>;
+		reg = <0>;
+	};
+};
+
+&usb0 {
+	vbus-supply = <&reg_usb0_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb0_pins_a>;
+	status = "okay";
+};
+
+&usb1 {
+	vbus-supply = <&reg_usb1_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb1_pins_a>;
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
diff --git a/arch/arm/boot/dts/imx28-sps1.dts b/arch/arm/boot/dts/imx28-sps1.dts
index 90928db0df70..5d74a68c56ff 100644
--- a/arch/arm/boot/dts/imx28-sps1.dts
+++ b/arch/arm/boot/dts/imx28-sps1.dts
@@ -15,111 +15,6 @@ memory@40000000 {
 		reg = <0x40000000 0x08000000>;
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			pinctrl@80018000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&hog_pins_a>;
-
-				hog_pins_a: hog-gpios@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_GPMI_D00__GPIO_0_0
-						MX28_PAD_GPMI_D03__GPIO_0_3
-						MX28_PAD_GPMI_D06__GPIO_0_6
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-			};
-
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_4bit_pins_a>;
-				bus-width = <4>;
-				status = "okay";
-			};
-
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
-					compatible = "everspin,mr25h256", "mr25h256";
-					spi-max-frequency = <40000000>;
-					reg = <0>;
-				};
-			};
-		};
-
-		apbx@80040000 {
-			i2c0: i2c@80058000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&i2c0_pins_a>;
-				status = "okay";
-
-				rtc: rtc@51 {
-					compatible = "nxp,pcf8563";
-					reg = <0x51>;
-				};
-
-				eeprom: eeprom@52 {
-					compatible = "atmel,24c64";
-					reg = <0x52>;
-					pagesize = <32>;
-				};
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
-
-			auart0: serial@8006a000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&auart0_pins_a>;
-				status = "okay";
-			};
-		};
-	};
-
-	ahb@80080000 {
-		usb0: usb@80080000 {
-			vbus-supply = <&reg_usb0_vbus>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb0_pins_b>;
-			status = "okay";
-		};
-
-		mac0: ethernet@800f0000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac0_pins_a>;
-			status = "okay";
-		};
-
-		mac1: ethernet@800f4000 {
-			phy-mode = "rmii";
-			pinctrl-names = "default";
-			pinctrl-0 = <&mac1_pins_a>;
-			status = "okay";
-		};
-	};
-
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -164,3 +59,99 @@ led@3 {
 
 	};
 };
+
+&auart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart0_pins_a>;
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
+
+	rtc: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+
+	eeprom: eeprom@52 {
+		compatible = "atmel,24c64";
+		reg = <0x52>;
+		pagesize = <32>;
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
+&mac1 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac1_pins_a>;
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hog_pins_a>;
+
+	hog_pins_a: hog-gpios@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_D00__GPIO_0_0
+			MX28_PAD_GPMI_D03__GPIO_0_3
+			MX28_PAD_GPMI_D06__GPIO_0_6
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
+	pinctrl-0 = <&mmc0_4bit_pins_a>;
+	bus-width = <4>;
+	status = "okay";
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
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "everspin,mr25h256", "mr25h256";
+		spi-max-frequency = <40000000>;
+		reg = <0>;
+	};
+};
+
+&usb0 {
+	vbus-supply = <&reg_usb0_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb0_pins_b>;
+	status = "okay";
+};
+
+&usbphy0 {
+	status = "okay";
+};
-- 
2.34.1

