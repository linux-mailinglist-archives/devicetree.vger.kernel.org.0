Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90E7370D855
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 11:04:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230319AbjEWJEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 05:04:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231827AbjEWJEU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 05:04:20 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DF835102
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 02:04:18 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 417DD80B5;
        Tue, 23 May 2023 09:04:17 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Lechner <david@lechnology.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: Unify pinctrl-single pin group nodes for davinci
Date:   Tue, 23 May 2023 12:04:04 +0300
Message-Id: <20230523090406.59632-1-tony@atomide.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We want to unify the pinctrl-single pin group nodes to use naming "pins".
Otherwise non-standad pin group names will add make dtbs checks errors
when the pinctrl-single yaml binding gets merged.

Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/da850-evm.dts      |  4 +--
 arch/arm/boot/dts/da850-lcdk.dts     |  4 +--
 arch/arm/boot/dts/da850-lego-ev3.dts |  2 +-
 arch/arm/boot/dts/da850.dtsi         | 52 ++++++++++++++--------------
 4 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boot/dts/da850-evm.dts b/arch/arm/boot/dts/da850-evm.dts
--- a/arch/arm/boot/dts/da850-evm.dts
+++ b/arch/arm/boot/dts/da850-evm.dts
@@ -161,7 +161,7 @@ &ref_clk {
 &pmx_core {
 	status = "okay";
 
-	mcasp0_pins: pinmux_mcasp0_pins {
+	mcasp0_pins: mcasp0-pins {
 		pinctrl-single,bits = <
 			/*
 			 * AHCLKX, ACLKX, AFSX, AHCLKR, ACLKR,
@@ -172,7 +172,7 @@ mcasp0_pins: pinmux_mcasp0_pins {
 			0x04 0x00011000 0x000ff000
 		>;
 	};
-	nand_pins: nand_pins {
+	nand_pins: nand-pins {
 		pinctrl-single,bits = <
 			/* EMA_WAIT[0], EMA_OE, EMA_WE, EMA_CS[4], EMA_CS[3] */
 			0x1c 0x10110110  0xf0ff0ff0
diff --git a/arch/arm/boot/dts/da850-lcdk.dts b/arch/arm/boot/dts/da850-lcdk.dts
--- a/arch/arm/boot/dts/da850-lcdk.dts
+++ b/arch/arm/boot/dts/da850-lcdk.dts
@@ -199,7 +199,7 @@ &opp_456 {
 &pmx_core {
 	status = "okay";
 
-	mcasp0_pins: pinmux_mcasp0_pins {
+	mcasp0_pins: mcasp0-pins {
 		pinctrl-single,bits = <
 			/* AHCLKX AFSX ACLKX */
 			0x00 0x00101010 0x00f0f0f0
@@ -208,7 +208,7 @@ mcasp0_pins: pinmux_mcasp0_pins {
 		>;
 	};
 
-	nand_pins: nand_pins {
+	nand_pins: nand-pins {
 		pinctrl-single,bits = <
 			/* EMA_WAIT[0], EMA_OE, EMA_WE, EMA_CS[3] */
 			0x1c 0x10110010  0xf0ff00f0
diff --git a/arch/arm/boot/dts/da850-lego-ev3.dts b/arch/arm/boot/dts/da850-lego-ev3.dts
--- a/arch/arm/boot/dts/da850-lego-ev3.dts
+++ b/arch/arm/boot/dts/da850-lego-ev3.dts
@@ -234,7 +234,7 @@ &opp_375 {
 &pmx_core {
 	status = "okay";
 
-	ev3_lcd_pins: pinmux_lcd {
+	ev3_lcd_pins: lcd-pins {
 		pinctrl-single,bits = <
 			/* SIMO, CLK */
 			0x14 0x00100100 0x00f00f00
diff --git a/arch/arm/boot/dts/da850.dtsi b/arch/arm/boot/dts/da850.dtsi
--- a/arch/arm/boot/dts/da850.dtsi
+++ b/arch/arm/boot/dts/da850.dtsi
@@ -170,55 +170,55 @@ range: gpio-range {
 				#pinctrl-single,gpio-range-cells = <3>;
 			};
 
-			serial0_rtscts_pins: pinmux_serial0_rtscts_pins {
+			serial0_rtscts_pins: serial0-rtscts-pins {
 				pinctrl-single,bits = <
 					/* UART0_RTS UART0_CTS */
 					0x0c 0x22000000 0xff000000
 				>;
 			};
-			serial0_rxtx_pins: pinmux_serial0_rxtx_pins {
+			serial0_rxtx_pins: serial0-rxtx-pins {
 				pinctrl-single,bits = <
 					/* UART0_TXD UART0_RXD */
 					0x0c 0x00220000 0x00ff0000
 				>;
 			};
-			serial1_rtscts_pins: pinmux_serial1_rtscts_pins {
+			serial1_rtscts_pins: serial1-rtscts-pins {
 				pinctrl-single,bits = <
 					/* UART1_CTS UART1_RTS */
 					0x00 0x00440000 0x00ff0000
 				>;
 			};
-			serial1_rxtx_pins: pinmux_serial1_rxtx_pins {
+			serial1_rxtx_pins: serial1-rxtx-pins {
 				pinctrl-single,bits = <
 					/* UART1_TXD UART1_RXD */
 					0x10 0x22000000 0xff000000
 				>;
 			};
-			serial2_rtscts_pins: pinmux_serial2_rtscts_pins {
+			serial2_rtscts_pins: serial2-rtscts-pins {
 				pinctrl-single,bits = <
 					/* UART2_CTS UART2_RTS */
 					0x00 0x44000000 0xff000000
 				>;
 			};
-			serial2_rxtx_pins: pinmux_serial2_rxtx_pins {
+			serial2_rxtx_pins: serial2-rxtx-pins {
 				pinctrl-single,bits = <
 					/* UART2_TXD UART2_RXD */
 					0x10 0x00220000 0x00ff0000
 				>;
 			};
-			i2c0_pins: pinmux_i2c0_pins {
+			i2c0_pins: i2c0-pins {
 				pinctrl-single,bits = <
 					/* I2C0_SDA,I2C0_SCL */
 					0x10 0x00002200 0x0000ff00
 				>;
 			};
-			i2c1_pins: pinmux_i2c1_pins {
+			i2c1_pins: i2c1-pins {
 				pinctrl-single,bits = <
 					/* I2C1_SDA, I2C1_SCL */
 					0x10 0x00440000 0x00ff0000
 				>;
 			};
-			mmc0_pins: pinmux_mmc_pins {
+			mmc0_pins: mmc-pins {
 				pinctrl-single,bits = <
 					/* MMCSD0_DAT[3] MMCSD0_DAT[2]
 					 * MMCSD0_DAT[1] MMCSD0_DAT[0]
@@ -227,85 +227,85 @@ mmc0_pins: pinmux_mmc_pins {
 					0x28 0x00222222  0x00ffffff
 				>;
 			};
-			ehrpwm0a_pins: pinmux_ehrpwm0a_pins {
+			ehrpwm0a_pins: ehrpwm0a-pins {
 				pinctrl-single,bits = <
 					/* EPWM0A */
 					0xc 0x00000002 0x0000000f
 				>;
 			};
-			ehrpwm0b_pins: pinmux_ehrpwm0b_pins {
+			ehrpwm0b_pins: ehrpwm0b-pins {
 				pinctrl-single,bits = <
 					/* EPWM0B */
 					0xc 0x00000020 0x000000f0
 				>;
 			};
-			ehrpwm1a_pins: pinmux_ehrpwm1a_pins {
+			ehrpwm1a_pins: ehrpwm1a-pins {
 				pinctrl-single,bits = <
 					/* EPWM1A */
 					0x14 0x00000002 0x0000000f
 				>;
 			};
-			ehrpwm1b_pins: pinmux_ehrpwm1b_pins {
+			ehrpwm1b_pins: ehrpwm1b-pins {
 				pinctrl-single,bits = <
 					/* EPWM1B */
 					0x14 0x00000020 0x000000f0
 				>;
 			};
-			ecap0_pins: pinmux_ecap0_pins {
+			ecap0_pins: ecap0-pins {
 				pinctrl-single,bits = <
 					/* ECAP0_APWM0 */
 					0x8 0x20000000 0xf0000000
 				>;
 			};
-			ecap1_pins: pinmux_ecap1_pins {
+			ecap1_pins: ecap1-pins {
 				pinctrl-single,bits = <
 					/* ECAP1_APWM1 */
 					0x4 0x40000000 0xf0000000
 				>;
 			};
-			ecap2_pins: pinmux_ecap2_pins {
+			ecap2_pins: ecap2-pins {
 				pinctrl-single,bits = <
 					/* ECAP2_APWM2 */
 					0x4 0x00000004 0x0000000f
 				>;
 			};
-			spi0_pins: pinmux_spi0_pins {
+			spi0_pins: spi0-pins {
 				pinctrl-single,bits = <
 					/* SIMO, SOMI, CLK */
 					0xc 0x00001101 0x0000ff0f
 				>;
 			};
-			spi0_cs0_pin: pinmux_spi0_cs0 {
+			spi0_cs0_pin: spi0-cs0-pins {
 				pinctrl-single,bits = <
 					/* CS0 */
 					0x10 0x00000010 0x000000f0
 				>;
 			};
-			spi0_cs3_pin: pinmux_spi0_cs3_pin {
+			spi0_cs3_pin: spi0-cs3-pins {
 				pinctrl-single,bits = <
 					/* CS3 */
 					0xc 0x01000000 0x0f000000
 				>;
 			};
-			spi1_pins: pinmux_spi1_pins {
+			spi1_pins: spi1-pins {
 				pinctrl-single,bits = <
 					/* SIMO, SOMI, CLK */
 					0x14 0x00110100 0x00ff0f00
 				>;
 			};
-			spi1_cs0_pin: pinmux_spi1_cs0 {
+			spi1_cs0_pin: spi1-cs0-pins {
 				pinctrl-single,bits = <
 					/* CS0 */
 					0x14 0x00000010 0x000000f0
 				>;
 			};
-			mdio_pins: pinmux_mdio_pins {
+			mdio_pins: mdio-pins {
 				pinctrl-single,bits = <
 					/* MDIO_CLK, MDIO_D */
 					0x10 0x00000088 0x000000ff
 				>;
 			};
-			mii_pins: pinmux_mii_pins {
+			mii_pins: mii-pins {
 				pinctrl-single,bits = <
 					/*
 					 * MII_TXEN, MII_TXCLK, MII_COL
@@ -321,7 +321,7 @@ mii_pins: pinmux_mii_pins {
 					0xc 0x88888888 0xffffffff
 				>;
 			};
-			lcd_pins: pinmux_lcd_pins {
+			lcd_pins: lcd-pins {
 				pinctrl-single,bits = <
 					/*
 					 * LCD_D[2], LCD_D[3], LCD_D[4], LCD_D[5],
@@ -342,7 +342,7 @@ lcd_pins: pinmux_lcd_pins {
 					0x4c 0x02000022 0x0f0000ff
 				>;
 			};
-			vpif_capture_pins: vpif_capture_pins {
+			vpif_capture_pins: vpif-capture-pins {
 				pinctrl-single,bits = <
 					/* VP_DIN[2..7], VP_CLKIN1, VP_CLKIN0 */
 					0x38 0x11111111 0xffffffff
@@ -352,7 +352,7 @@ vpif_capture_pins: vpif_capture_pins {
 					0x40 0x00000011 0x000000ff
 				>;
 			};
-			vpif_display_pins: vpif_display_pins {
+			vpif_display_pins: vpif-display-pins {
 				pinctrl-single,bits = <
 					/* VP_DOUT[2..7] */
 					0x40 0x11111100 0xffffff00
-- 
2.40.1
