Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8AD670D56D
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 09:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235476AbjEWHmr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 03:42:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235423AbjEWHmp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 03:42:45 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0A730132;
        Tue, 23 May 2023 00:42:37 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id C4FBA80B5;
        Tue, 23 May 2023 07:42:35 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     linux-omap@vger.kernel.org
Cc:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] ARM: dts: Unify pinctrl-single pin group nodes for am33xx
Date:   Tue, 23 May 2023 10:42:09 +0300
Message-Id: <20230523074209.47111-1-tony@atomide.com>
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
 arch/arm/boot/dts/am335x-baltos-ir2110.dts    |  4 +-
 arch/arm/boot/dts/am335x-baltos-ir3220.dts    |  8 +--
 arch/arm/boot/dts/am335x-baltos-ir5221.dts    | 10 ++--
 arch/arm/boot/dts/am335x-baltos-leds.dtsi     |  2 +-
 arch/arm/boot/dts/am335x-baltos.dtsi          | 20 ++++----
 arch/arm/boot/dts/am335x-base0033.dts         |  6 +--
 arch/arm/boot/dts/am335x-bone-common.dtsi     | 22 ++++----
 arch/arm/boot/dts/am335x-boneblack-hdmi.dtsi  |  6 +--
 .../boot/dts/am335x-boneblack-wireless.dts    |  8 +--
 arch/arm/boot/dts/am335x-boneblue.dts         | 34 ++++++-------
 .../arm/boot/dts/am335x-bonegreen-common.dtsi |  2 +-
 .../boot/dts/am335x-bonegreen-wireless.dts    |  8 +--
 arch/arm/boot/dts/am335x-chiliboard.dts       | 16 +++---
 arch/arm/boot/dts/am335x-chilisom.dtsi        |  4 +-
 arch/arm/boot/dts/am335x-cm-t335.dts          | 36 ++++++-------
 arch/arm/boot/dts/am335x-evm.dts              | 40 +++++++--------
 arch/arm/boot/dts/am335x-evmsk.dts            | 34 ++++++-------
 arch/arm/boot/dts/am335x-guardian.dts         | 30 +++++------
 arch/arm/boot/dts/am335x-icev2.dts            | 18 +++----
 arch/arm/boot/dts/am335x-igep0033.dtsi        |  8 +--
 arch/arm/boot/dts/am335x-lxm.dts              | 16 +++---
 .../boot/dts/am335x-moxa-uc-2100-common.dtsi  | 12 ++---
 arch/arm/boot/dts/am335x-moxa-uc-2101.dts     |  4 +-
 .../boot/dts/am335x-moxa-uc-8100-common.dtsi  | 24 ++++-----
 arch/arm/boot/dts/am335x-myirtech-myc.dtsi    | 20 ++++----
 arch/arm/boot/dts/am335x-myirtech-myd.dts     | 50 +++++++++----------
 arch/arm/boot/dts/am335x-nano.dts             | 20 ++++----
 arch/arm/boot/dts/am335x-netcan-plus-1xx.dts  |  4 +-
 arch/arm/boot/dts/am335x-netcom-plus-2xx.dts  |  4 +-
 arch/arm/boot/dts/am335x-netcom-plus-8xx.dts  |  6 +--
 arch/arm/boot/dts/am335x-osd3358-sm-red.dts   | 18 +++----
 arch/arm/boot/dts/am335x-pcm-953.dtsi         | 18 +++----
 arch/arm/boot/dts/am335x-pdu001.dts           | 28 +++++------
 arch/arm/boot/dts/am335x-pepper.dts           | 34 ++++++-------
 arch/arm/boot/dts/am335x-phycore-som.dtsi     | 10 ++--
 arch/arm/boot/dts/am335x-pocketbeagle.dts     | 26 +++++-----
 arch/arm/boot/dts/am335x-regor.dtsi           | 14 +++---
 .../boot/dts/am335x-sancloud-bbe-common.dtsi  |  6 +--
 .../dts/am335x-sancloud-bbe-extended-wifi.dts |  6 +--
 .../arm/boot/dts/am335x-sancloud-bbe-lite.dts |  2 +-
 arch/arm/boot/dts/am335x-sancloud-bbe.dts     |  4 +-
 arch/arm/boot/dts/am335x-sbc-t335.dts         |  4 +-
 arch/arm/boot/dts/am335x-shc.dts              | 30 +++++------
 arch/arm/boot/dts/am335x-sl50.dts             | 46 ++++++++---------
 arch/arm/boot/dts/am335x-wega.dtsi            | 12 ++---
 45 files changed, 367 insertions(+), 367 deletions(-)

diff --git a/arch/arm/boot/dts/am335x-baltos-ir2110.dts b/arch/arm/boot/dts/am335x-baltos-ir2110.dts
--- a/arch/arm/boot/dts/am335x-baltos-ir2110.dts
+++ b/arch/arm/boot/dts/am335x-baltos-ir2110.dts
@@ -18,7 +18,7 @@ / {
 };
 
 &am33xx_pinmux {
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_INPUT, MUX_MODE0)
@@ -31,7 +31,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)      /*
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD15, PIN_INPUT, MUX_MODE7)     /* MMC1 CD */
 		>;
diff --git a/arch/arm/boot/dts/am335x-baltos-ir3220.dts b/arch/arm/boot/dts/am335x-baltos-ir3220.dts
--- a/arch/arm/boot/dts/am335x-baltos-ir3220.dts
+++ b/arch/arm/boot/dts/am335x-baltos-ir3220.dts
@@ -18,13 +18,13 @@ / {
 };
 
 &am33xx_pinmux {
-	tca6416_pins: pinmux_tca6416_pins {
+	tca6416_pins: tca6416-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_INPUT_PULLUP, MUX_MODE7)      /* xdma_event_intr1.gpio0[20] tca6416 stuff */
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_INPUT, MUX_MODE0)
@@ -37,7 +37,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)      /*
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT, MUX_MODE1)      /* spi0_sclk.uart2_rxd_mux3 */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE1)      /* spi0_d0.uart2_txd_mux3 */
@@ -52,7 +52,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_INPUT_PULLUP, MUX_MODE7)      /* mca
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD3, PIN_INPUT, MUX_MODE7)     /* MMC1 CD */
 		>;
diff --git a/arch/arm/boot/dts/am335x-baltos-ir5221.dts b/arch/arm/boot/dts/am335x-baltos-ir5221.dts
--- a/arch/arm/boot/dts/am335x-baltos-ir5221.dts
+++ b/arch/arm/boot/dts/am335x-baltos-ir5221.dts
@@ -18,21 +18,21 @@ / {
 };
 
 &am33xx_pinmux {
-	tca6416_pins: pinmux_tca6416_pins {
+	tca6416_pins: tca6416-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_INPUT_PULLUP, MUX_MODE7)      /* xdma_event_intr1.gpio0[20] tca6416 stuff */
 		>;
 	};
 
 
-	dcan1_pins: pinmux_dcan1_pins {
+	dcan1_pins: dcan1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_OUTPUT, MUX_MODE2)      /* uart0_ctsn.dcan1_tx_mux0 */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT, MUX_MODE2)      /* uart0_rtsn.dcan1_rx_mux0 */
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_INPUT, MUX_MODE0)
@@ -45,7 +45,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)      /*
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT, MUX_MODE1)      /* spi0_sclk.uart2_rxd_mux3 */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE1)      /* spi0_d0.uart2_txd_mux3 */
@@ -60,7 +60,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_INPUT_PULLUP, MUX_MODE7)      /* mca
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD3, PIN_INPUT, MUX_MODE7)     /* MMC1 CD */
 		>;
diff --git a/arch/arm/boot/dts/am335x-baltos-leds.dtsi b/arch/arm/boot/dts/am335x-baltos-leds.dtsi
--- a/arch/arm/boot/dts/am335x-baltos-leds.dtsi
+++ b/arch/arm/boot/dts/am335x-baltos-leds.dtsi
@@ -37,7 +37,7 @@ led-app {
 };
 
 &am33xx_pinmux {
-	user_leds: pinmux_user_leds {
+	user_leds: user-leds-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* mii1_col.gpio3_0 PWR LED */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TXD3, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* mii1_txd3.gpio0_16 WLAN LED */
diff --git a/arch/arm/boot/dts/am335x-baltos.dtsi b/arch/arm/boot/dts/am335x-baltos.dtsi
--- a/arch/arm/boot/dts/am335x-baltos.dtsi
+++ b/arch/arm/boot/dts/am335x-baltos.dtsi
@@ -48,7 +48,7 @@ wl12xx_vmmc: fixedregulator2 {
 };
 
 &am33xx_pinmux {
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD8, PIN_INPUT_PULLUP, MUX_MODE2)      /* gpmc_ad8.mmc1_dat0_mux0 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD9, PIN_INPUT_PULLUP, MUX_MODE2)      /* gpmc_ad9.mmc1_dat1_mux0 */
@@ -60,33 +60,33 @@ AM33XX_PADCONF(AM335X_PIN_EMU0, PIN_INPUT_PULLUP, MUX_MODE7)      /* emu0.gpio3[
 		>;
 	};
 
-	wl12xx_gpio: pinmux_wl12xx_gpio {
+	wl12xx_gpio: wl12xx-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_EMU1, PIN_OUTPUT_PULLUP, MUX_MODE7)      /* emu1.gpio3[8] */
 		>;
 	};
 
-	tps65910_pins: pinmux_tps65910_pins {
+	tps65910_pins: tps65910-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_BEN1, PIN_INPUT_PULLUP, MUX_MODE7)      /* gpmc_ben1.gpio1[28] */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D1, PIN_INPUT, MUX_MODE2)      /* spi0_d1.i2c1_sda_mux3 */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT, MUX_MODE2)      /* spi0_cs0.i2c1_scl_mux3 */
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE1)       /* mii1_crs.rmii1_crs_dv */
@@ -114,7 +114,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLDOWN, MUX_MODE2)	/* gpmc_a11.r
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -141,7 +141,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)	/* mdio_data.mdio_data */
@@ -149,7 +149,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)			/* mdio_clk.mdio_
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -157,7 +157,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	nandflash_pins_s0: nandflash_pins_s0 {
+	nandflash_pins_s0: nandflash-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE0)	/* gpmc_ad0.gpmc_ad0 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLUP, MUX_MODE0)	/* gpmc_ad1.gpmc_ad1 */
diff --git a/arch/arm/boot/dts/am335x-base0033.dts b/arch/arm/boot/dts/am335x-base0033.dts
--- a/arch/arm/boot/dts/am335x-base0033.dts
+++ b/arch/arm/boot/dts/am335x-base0033.dts
@@ -41,7 +41,7 @@ led1 {
 };
 
 &am33xx_pinmux {
-	nxp_hdmi_pins: pinmux_nxp_hdmi_pins {
+	nxp_hdmi_pins: nxp-hdmi-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0, PIN_OUTPUT, MUX_MODE3)	/* xdma_event_intr0.clkout1 */
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA0, PIN_OUTPUT, MUX_MODE0)
@@ -66,13 +66,13 @@ AM33XX_PADCONF(AM335X_PIN_LCD_PCLK, PIN_OUTPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
-	nxp_hdmi_off_pins: pinmux_nxp_hdmi_off_pins {
+	nxp_hdmi_off_pins: nxp-hdmi-off-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0, PIN_OUTPUT, MUX_MODE3)	/* xdma_event_intr0.clkout1 */
 		>;
 	};
 
-	leds_base_pins: pinmux_leds_base_pins {
+	leds_base_pins: leds-base-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A5, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a5.gpio1_21 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN3, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_csn3.gpio2_0 */
diff --git a/arch/arm/boot/dts/am335x-bone-common.dtsi b/arch/arm/boot/dts/am335x-bone-common.dtsi
--- a/arch/arm/boot/dts/am335x-bone-common.dtsi
+++ b/arch/arm/boot/dts/am335x-bone-common.dtsi
@@ -66,7 +66,7 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clkout2_pin>;
 
-	user_leds_s0: user_leds_s0 {
+	user_leds_s0: user-leds-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A5, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a5.gpio1_21 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A6, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* gpmc_a6.gpio1_22 */
@@ -75,34 +75,34 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A8, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* gpmc_a8.gpio
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)	/* i2c0_sda.i2c0_sda */
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)	/* i2c0_scl.i2c0_scl */
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* uart1_ctsn.i2c2_sda */
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* uart1_rtsn.i2c2_scl */
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	clkout2_pin: pinmux_clkout2_pin {
+	clkout2_pin: clkout2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* xdma_event_intr1.clkout2 */
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -121,7 +121,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -140,7 +140,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -148,7 +148,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -156,7 +156,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE7)		/* spio0_cs1.gpio0_6 */
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT0, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -168,7 +168,7 @@ AM33XX_PADCONF(AM335X_PIN_MMC0_CLK, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	emmc_pins: pinmux_emmc_pins {
+	emmc_pins: emmc-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT_PULLUP, MUX_MODE2) /* gpmc_csn1.mmc1_clk */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_INPUT_PULLUP, MUX_MODE2) /* gpmc_csn2.mmc1_cmd */
diff --git a/arch/arm/boot/dts/am335x-boneblack-hdmi.dtsi b/arch/arm/boot/dts/am335x-boneblack-hdmi.dtsi
--- a/arch/arm/boot/dts/am335x-boneblack-hdmi.dtsi
+++ b/arch/arm/boot/dts/am335x-boneblack-hdmi.dtsi
@@ -7,7 +7,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 
 &am33xx_pinmux {
-	nxp_hdmi_bonelt_pins: nxp_hdmi_bonelt_pins {
+	nxp_hdmi_bonelt_pins: nxp-hdmi-bonelt-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0, PIN_OUTPUT_PULLDOWN, MUX_MODE3)
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA0, PIN_OUTPUT, MUX_MODE0)
@@ -33,13 +33,13 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	nxp_hdmi_bonelt_off_pins: nxp_hdmi_bonelt_off_pins {
+	nxp_hdmi_bonelt_off_pins: nxp-hdmi-bonelt-off-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0, PIN_OUTPUT_PULLDOWN, MUX_MODE3)
 		>;
 	};
 
-	mcasp0_pins: mcasp0_pins {
+	mcasp0_pins: mcasp0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKX, PIN_INPUT_PULLUP, MUX_MODE0) /* mcasp0_ahcklx.mcasp0_ahclkx */
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKR, PIN_OUTPUT_PULLDOWN, MUX_MODE2) /* mcasp0_ahclkr.mcasp0_axr2*/
diff --git a/arch/arm/boot/dts/am335x-boneblack-wireless.dts b/arch/arm/boot/dts/am335x-boneblack-wireless.dts
--- a/arch/arm/boot/dts/am335x-boneblack-wireless.dts
+++ b/arch/arm/boot/dts/am335x-boneblack-wireless.dts
@@ -28,13 +28,13 @@ wlan_en_reg: fixedregulator@2 {
 };
 
 &am33xx_pinmux {
-	bt_pins: pinmux_bt_pins {
+	bt_pins: bt-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TXD0, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* gmii1_txd0.gpio0_28 - BT_EN */
 		>;
 	};
 
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD1, PIN_INPUT_PULLUP, MUX_MODE6 ) /* (L15) gmii1_rxd1.mmc2_clk */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_INPUT_PULLUP, MUX_MODE6 ) /* (J16) gmii1_txen.mmc2_cmd */
@@ -45,7 +45,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_INPUT_PULLUP, MUX_MODE5 ) /* (H16) gmii1
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD3, PIN_INPUT_PULLUP, MUX_MODE1)	/* gmii1_rxd3.uart3_rxd */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD2, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* gmii1_rxd2.uart3_txd */
@@ -54,7 +54,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* mdio_clk.uart3
 		>;
 	};
 
-	wl18xx_pins: pinmux_wl18xx_pins {
+	wl18xx_pins: wl18xx-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_CLK, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gmii1_txclk.gpio3_9 WL_EN */
 			AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* rmii1_refclk.gpio0_29 WL_IRQ */
diff --git a/arch/arm/boot/dts/am335x-boneblue.dts b/arch/arm/boot/dts/am335x-boneblue.dts
--- a/arch/arm/boot/dts/am335x-boneblue.dts
+++ b/arch/arm/boot/dts/am335x-boneblue.dts
@@ -115,7 +115,7 @@ wlan_en_reg: fixedregulator@2 {
 };
 
 &am33xx_pinmux {
-	user_leds_s0: user_leds_s0 {
+	user_leds_s0: user-leds-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A5, PIN_OUTPUT, MUX_MODE7) /* (V15) gpmc_a5.gpio1[21] - USR_LED_0 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A6, PIN_OUTPUT, MUX_MODE7) /* (U15) gpmc_a6.gpio1[22] - USR_LED_1 */
@@ -132,7 +132,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD10, PIN_OUTPUT, MUX_MODE7) /* (T11) gpmc_ad10.g
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* (D18) uart1_ctsn.I2C2_SDA */
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* (D17) uart1_rtsn.I2C2_SCL */
@@ -140,7 +140,7 @@ AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* (D17) uart
 	};
 
 	/* UT0 */
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
@@ -148,7 +148,7 @@ AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 	};
 
 	/* UT1 */
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
@@ -156,7 +156,7 @@ AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 	};
 
 	/* GPS */
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLUP, MUX_MODE1)	/* (A17) spi0_sclk.uart2_rxd */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* (B17) spi0_d0.uart2_txd */
@@ -164,27 +164,27 @@ AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* (B17) spi0
 	};
 
 	/* DSM2 */
-	uart4_pins: pinmux_uart4_pins {
+	uart4_pins: uart4-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WAIT0, PIN_INPUT_PULLUP, MUX_MODE6)	/* (T17) gpmc_wait0.uart4_rxd */
 		>;
 	};
 
 	/* UT5 */
-	uart5_pins: pinmux_uart5_pins {
+	uart5_pins: uart5-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA9, PIN_INPUT_PULLUP, MUX_MODE4)	/* (U2) lcd_data9.uart5_rxd */
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA8, PIN_OUTPUT_PULLDOWN, MUX_MODE4)	/* (U1) lcd_data8.uart5_txd */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE7)		/* (C15) spi0_cs1.gpio0[6] */
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT_PULLUP, MUX_MODE2)	/* (U9) gpmc_csn1.mmc1_clk */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_INPUT_PULLUP, MUX_MODE2)	/* (V9) gpmc_csn2.mmc1_cmd */
@@ -199,7 +199,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD7, PIN_INPUT_PULLUP, MUX_MODE1)	/* (T9) gpmc_ad
 		>;
 	};
 
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD1, PIN_INPUT_PULLUP, MUX_MODE6)	/* (L15) gmii1_rxd1.mmc2_clk */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_INPUT_PULLUP, MUX_MODE6)	/* (J16) gmii1_txen.mmc2_cmd */
@@ -210,13 +210,13 @@ AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_INPUT_PULLUP, MUX_MODE5)	/* (H16) gmii1_
 		>;
 	};
 
-	bt_pins: pinmux_bt_pins {
+	bt_pins: bt-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TXD0, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* (K17) gmii1_txd0.gpio0[28] - BT_EN */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD3, PIN_INPUT_PULLUP, MUX_MODE1)	/* (L17) gmii1_rxd3.uart3_rxd */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD2, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* (L16) gmii1_rxd2.uart3_txd */
@@ -225,7 +225,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* (M18) mdio_clk
 		>;
 	};
 
-	wl18xx_pins: pinmux_wl18xx_pins {
+	wl18xx_pins: wl18xx-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_CLK, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* (K18) gmii1_txclk.gpio3[9] - WL_EN */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TXD1, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* (K16) gmii1_txd1.gpio0[21] - WL_IRQ */
@@ -234,7 +234,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RX_CLK, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* (L18) gm
 	};
 
 	/* DCAN */
-	dcan1_pins: pinmux_dcan1_pins {
+	dcan1_pins: dcan1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT, MUX_MODE2)		/* (E17) uart0_rtsn.dcan1_rx */
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_OUTPUT, MUX_MODE2)		/* (E18) uart0_ctsn.dcan1_tx */
@@ -243,7 +243,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_OUTPUT, MUX_MODE7)		/* (M16) gmii1_rxd0
 	};
 
 	/* E1 */
-	eqep0_pins: pinmux_eqep0_pins {
+	eqep0_pins: eqep0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AXR0, PIN_INPUT, MUX_MODE1)		/* (B12) mcasp0_aclkr.eQEP0A_in */
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_FSR, PIN_INPUT, MUX_MODE1)		/* (C13) mcasp0_fsr.eQEP0B_in */
@@ -251,7 +251,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_FSR, PIN_INPUT, MUX_MODE1)		/* (C13) mcasp0_fsr
 	};
 
 	/* E2 */
-	eqep1_pins: pinmux_eqep1_pins {
+	eqep1_pins: eqep1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA12, PIN_INPUT, MUX_MODE2)		/* (V2) lcd_data12.eQEP1A_in */
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA13, PIN_INPUT, MUX_MODE2)		/* (V3) lcd_data13.eQEP1B_in */
@@ -259,7 +259,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_DATA13, PIN_INPUT, MUX_MODE2)		/* (V3) lcd_data13.
 	};
 
 	/* E3 */
-	eqep2_pins: pinmux_eqep2_pins {
+	eqep2_pins: eqep2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT, MUX_MODE4)		/* (T12) gpmc_ad12.eQEP2A_in */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT, MUX_MODE4)		/* (R12) gpmc_ad13.eQEP2B_in */
diff --git a/arch/arm/boot/dts/am335x-bonegreen-common.dtsi b/arch/arm/boot/dts/am335x-bonegreen-common.dtsi
--- a/arch/arm/boot/dts/am335x-bonegreen-common.dtsi
+++ b/arch/arm/boot/dts/am335x-bonegreen-common.dtsi
@@ -22,7 +22,7 @@ &mmc2 {
 };
 
 &am33xx_pinmux {
-	uart2_pins: uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT, MUX_MODE1)	/* spi0_sclk.uart2_rxd */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE1)	/* spi0_d0.uart2_txd */
diff --git a/arch/arm/boot/dts/am335x-bonegreen-wireless.dts b/arch/arm/boot/dts/am335x-bonegreen-wireless.dts
--- a/arch/arm/boot/dts/am335x-bonegreen-wireless.dts
+++ b/arch/arm/boot/dts/am335x-bonegreen-wireless.dts
@@ -27,13 +27,13 @@ wlan_en_reg: fixedregulator@2 {
 };
 
 &am33xx_pinmux {
-	bt_pins: pinmux_bt_pins {
+	bt_pins: bt-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_BEN1, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* gpmc_ad12.gpio1_28 BT_EN */
 		>;
 	};
 
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_ad12.mmc2_dat0 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_ad13.mmc2_dat1 */
@@ -44,7 +44,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_CLK, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_clk.mmc
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD3, PIN_INPUT_PULLUP, MUX_MODE1)	/* gmii1_rxd3.uart3_rxd */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD2, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* gmii1_rxd2.uart3_txd */
@@ -53,7 +53,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* mdio_clk.uart3
 		>;
 	};
 
-	wl18xx_pins: pinmux_wl18xx_pins {
+	wl18xx_pins: wl18xx-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD10, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_ad10.gpio0_26 WL_EN */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD11, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* gpmc_ad11.gpio0_27 WL_IRQ */
diff --git a/arch/arm/boot/dts/am335x-chiliboard.dts b/arch/arm/boot/dts/am335x-chiliboard.dts
--- a/arch/arm/boot/dts/am335x-chiliboard.dts
+++ b/arch/arm/boot/dts/am335x-chiliboard.dts
@@ -36,14 +36,14 @@ led1 {
 };
 
 &am33xx_pinmux {
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE1)
@@ -57,7 +57,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -72,7 +72,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* mdio_data.mdio_data */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -81,7 +81,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -89,13 +89,13 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	usb1_drvvbus: usb1_drvvbus {
+	usb1_drvvbus: usb1-drvvbus-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_USB1_DRVVBUS, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	sd_pins: pinmux_sd_card {
+	sd_pins: sd-card-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT, MUX_MODE0)
@@ -107,7 +107,7 @@ AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE7) /* spi0_cs1.gpio0_6 */
 		>;
 	};
 
-	led_gpio_pins: led_gpio_pins {
+	led_gpio_pins: led-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_EMU0, PIN_OUTPUT, MUX_MODE7) /* emu0.gpio3_7 */
 			AM33XX_PADCONF(AM335X_PIN_EMU1, PIN_OUTPUT, MUX_MODE7) /* emu1.gpio3_8 */
diff --git a/arch/arm/boot/dts/am335x-chilisom.dtsi b/arch/arm/boot/dts/am335x-chilisom.dtsi
--- a/arch/arm/boot/dts/am335x-chilisom.dtsi
+++ b/arch/arm/boot/dts/am335x-chilisom.dtsi
@@ -25,14 +25,14 @@ memory@80000000 {
 &am33xx_pinmux {
 	pinctrl-names = "default";
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	nandflash_pins: nandflash_pins {
+	nandflash_pins: nandflash-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLDOWN, MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-cm-t335.dts b/arch/arm/boot/dts/am335x-cm-t335.dts
--- a/arch/arm/boot/dts/am335x-cm-t335.dts
+++ b/arch/arm/boot/dts/am335x-cm-t335.dts
@@ -88,14 +88,14 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&bluetooth_pins>;
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			/* uart0_ctsn.i2c1_sda */
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_INPUT_PULLUP, MUX_MODE2)
@@ -104,14 +104,14 @@ AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT_PULLUP, MUX_MODE2)
 		>;
 	};
 
-	gpio_led_pins: pinmux_gpio_led_pins {
+	gpio_led_pins: gpio-led-pins {
 		pinctrl-single,pins = <
 			/* gpmc_csn3.gpio2_0 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN3, PIN_OUTPUT, MUX_MODE7)
 		>;
 	};
 
-	nandflash_pins: pinmux_nandflash_pins {
+	nandflash_pins: nandflash-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -132,14 +132,14 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_BEN0_CLE, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
@@ -148,7 +148,7 @@ AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	dcan0_pins: pinmux_dcan0_pins {
+	dcan0_pins: dcan0-pins {
 		pinctrl-single,pins = <
 			/* uart1_ctsn.dcan0_tx */
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_OUTPUT, MUX_MODE2)
@@ -157,7 +157,7 @@ AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT, MUX_MODE2)
 		>;
 	};
 
-	dcan1_pins: pinmux_dcan1_pins {
+	dcan1_pins: dcan1-pins {
 		pinctrl-single,pins = <
 			/* uart1_rxd.dcan1_tx */
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_OUTPUT, MUX_MODE2)
@@ -166,13 +166,13 @@ AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_INPUT, MUX_MODE2)
 		>;
 	};
 
-	ecap0_pins: pinmux_ecap0_pins {
+	ecap0_pins: ecap0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, 0x0, MUX_MODE0)
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			/* mii1_tx_en.rgmii1_tctl */
@@ -202,7 +202,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE2)
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -220,14 +220,14 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -235,7 +235,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -246,7 +246,7 @@ AM33XX_PADCONF(AM335X_PIN_MMC0_CMD, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	spi0_pins: pinmux_spi0_pins {
+	spi0_pins: spi0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT_PULLUP, MUX_MODE0)
@@ -257,7 +257,7 @@ AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_OUTPUT, MUX_MODE0)
 	};
 
 	/* wl1271 bluetooth */
-	bluetooth_pins: pinmux_bluetooth_pins {
+	bluetooth_pins: bluetooth-pins {
 		pinctrl-single,pins = <
 			/* XDMA_EVENT_INTR0.gpio0_19 - bluetooth enable */
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0, PIN_OUTPUT_PULLUP, MUX_MODE7)
@@ -265,7 +265,7 @@ AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0, PIN_OUTPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* TLV320AIC23B codec */
-	mcasp1_pins: pinmux_mcasp1_pins {
+	mcasp1_pins: mcasp1-pins {
 		pinctrl-single,pins = <
 			/* MII1_CRS.mcasp1_aclkx */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE4)
@@ -279,7 +279,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE4)
 	};
 
 	/* wl1271 WiFi */
-	wifi_pins: pinmux_wifi_pins {
+	wifi_pins: wifi-pins {
 		pinctrl-single,pins = <
 			/* EMU1.gpio3_8 - WiFi IRQ */
 			AM33XX_PADCONF(AM335X_PIN_EMU1, PIN_INPUT_PULLUP, MUX_MODE7)
diff --git a/arch/arm/boot/dts/am335x-evm.dts b/arch/arm/boot/dts/am335x-evm.dts
--- a/arch/arm/boot/dts/am335x-evm.dts
+++ b/arch/arm/boot/dts/am335x-evm.dts
@@ -163,7 +163,7 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&matrix_keypad_s0 &volume_keys_s0 &clkout2_pin>;
 
-	matrix_keypad_s0: matrix_keypad_s0 {
+	matrix_keypad_s0: matrix-keypad-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A5, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a5.gpio1_21 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A6, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a6.gpio1_22 */
@@ -173,35 +173,35 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a11.g
 		>;
 	};
 
-	volume_keys_s0: volume_keys_s0 {
+	volume_keys_s0: volume-keys-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* spi0_sclk.gpio0_2 */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* spi0_d0.gpio0_3 */
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)	/* i2c0_sda.i2c0_sda */
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)	/* i2c0_scl.i2c0_scl */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D1, PIN_INPUT_PULLUP, MUX_MODE2)	/* spi0_d1.i2c1_sda */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT_PULLUP, MUX_MODE2)	/* spi0_cs0.i2c1_scl */
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
@@ -210,13 +210,13 @@ AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	clkout2_pin: pinmux_clkout2_pin {
+	clkout2_pin: clkout2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* xdma_event_intr1.clkout2 */
 		>;
 	};
 
-	nandflash_pins_s0: nandflash_pins_s0 {
+	nandflash_pins_s0: nandflash-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -236,13 +236,13 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_BEN0_CLE, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	ecap0_pins: backlight_pins {
+	ecap0_pins: backlight-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, 0x0, MUX_MODE0)
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_OUTPUT_PULLDOWN, MUX_MODE2)	/* mii1_txen.rgmii1_tctl */
@@ -260,7 +260,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE2)	/* mii1_rxd0
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -278,7 +278,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -286,7 +286,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -294,7 +294,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE7)		/* spi0_cs1.gpio0_6 */
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT0, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -307,7 +307,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_INPUT, MUX_MODE4)		/* mcasp0_aclkr.m
 		>;
 	};
 
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A1, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_a1.mmc2_dat0, INPUT_PULLUP | MODE3 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A2, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_a2.mmc2_dat1, INPUT_PULLUP | MODE3 */
@@ -318,7 +318,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_CLK, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_clk.mmc
 		>;
 	};
 
-	wlan_pins: pinmux_wlan_pins {
+	wlan_pins: wlan-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A0, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a0.gpio1_16 */
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKR, PIN_INPUT, MUX_MODE7)		/* mcasp0_ahclkr.gpio3_17 */
@@ -326,7 +326,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKX, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* mcas
 		>;
 	};
 
-	lcd_pins_s0: lcd_pins_s0 {
+	lcd_pins_s0: lcd-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD8, PIN_OUTPUT, MUX_MODE1)		/* gpmc_ad8.lcd_data23 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD9, PIN_OUTPUT, MUX_MODE1)		/* gpmc_ad9.lcd_data22 */
@@ -359,7 +359,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	mcasp1_pins: mcasp1_pins {
+	mcasp1_pins: mcasp1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE4) /* mii1_crs.mcasp1_aclkx */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE4) /* mii1_rxerr.mcasp1_fsx */
@@ -368,7 +368,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE4) /* rmii1
 		>;
 	};
 
-	mcasp1_pins_sleep: mcasp1_pins_sleep {
+	mcasp1_pins_sleep: mcasp1-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -377,7 +377,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	dcan1_pins_default: dcan1_pins_default {
+	dcan1_pins_default: dcan1-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_OUTPUT, MUX_MODE2) /* uart0_ctsn.d_can1_tx */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT_PULLDOWN, MUX_MODE2) /* uart0_rtsn.d_can1_rx */
diff --git a/arch/arm/boot/dts/am335x-evmsk.dts b/arch/arm/boot/dts/am335x-evmsk.dts
--- a/arch/arm/boot/dts/am335x-evmsk.dts
+++ b/arch/arm/boot/dts/am335x-evmsk.dts
@@ -202,7 +202,7 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gpio_keys_s0 &clkout2_pin>;
 
-	lcd_pins_default: lcd_pins_default {
+	lcd_pins_default: lcd-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD8, PIN_OUTPUT, MUX_MODE1)	/* gpmc_ad8.lcd_data23 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD9, PIN_OUTPUT, MUX_MODE1)	/* gpmc_ad9.lcd_data22 */
@@ -235,7 +235,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	lcd_pins_sleep: lcd_pins_sleep {
+	lcd_pins_sleep: lcd-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD8, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* gpmc_ad8.lcd_data23 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD9, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* gpmc_ad9.lcd_data22 */
@@ -269,7 +269,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)
 	};
 
 
-	user_leds_s0: user_leds_s0 {
+	user_leds_s0: user-leds-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD4, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_ad4.gpio1_4 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD5, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_ad5.gpio1_5 */
@@ -278,7 +278,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD7, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_ad7.
 		>;
 	};
 
-	gpio_keys_s0: gpio_keys_s0 {
+	gpio_keys_s0: gpio-keys-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_OEN_REN, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* gpmc_oen_ren.gpio2_3 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_ADVN_ALE, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* gpmc_advn_ale.gpio2_2 */
@@ -287,33 +287,33 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_BEN0_CLE, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* gpmc_
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	clkout2_pin: pinmux_clkout2_pin {
+	clkout2_pin: clkout2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* xdma_event_intr1.clkout2 */
 		>;
 	};
 
-	ecap2_pins: backlight_pins {
+	ecap2_pins: backlight-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKR, 0x0, MUX_MODE4)	/* mcasp0_ahclkr.ecap2_in_pwm2_out */
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_OUTPUT_PULLDOWN, MUX_MODE2)	/* mii1_txen.rgmii1_tctl */
@@ -345,7 +345,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLDOWN, MUX_MODE2)	/* gpmc_a11.r
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -377,7 +377,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -385,7 +385,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -393,7 +393,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE7) 		/* spi0_cs1.gpio0_6 */
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT0, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -406,7 +406,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_INPUT, MUX_MODE4)		/* mcasp0_aclkr.m
 		>;
 	};
 
-	mcasp1_pins: mcasp1_pins {
+	mcasp1_pins: mcasp1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE4) /* mii1_crs.mcasp1_aclkx */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE4) /* mii1_rxerr.mcasp1_fsx */
@@ -415,7 +415,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE4) /* rmii1
 		>;
 	};
 
-	mcasp1_pins_sleep: mcasp1_pins_sleep {
+	mcasp1_pins_sleep: mcasp1-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -424,7 +424,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WPN, PIN_INPUT_PULLUP, MUX_MODE7) /* gpmc_wpn.gpio0_31 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT_PULLUP, MUX_MODE2) /* gpmc_csn1.mmc1_clk */
@@ -436,7 +436,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD3, PIN_INPUT_PULLUP, MUX_MODE1) /* gpmc_ad3.mmc
 		>;
 	};
 
-	wl12xx_gpio: pinmux_wl12xx_gpio {
+	wl12xx_gpio: wl12xx-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN0, PIN_OUTPUT_PULLUP, MUX_MODE7) /* gpmc_csn0.gpio1_29 */
 		>;
diff --git a/arch/arm/boot/dts/am335x-guardian.dts b/arch/arm/boot/dts/am335x-guardian.dts
--- a/arch/arm/boot/dts/am335x-guardian.dts
+++ b/arch/arm/boot/dts/am335x-guardian.dts
@@ -481,14 +481,14 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clkout2_pin &guardian_interface_pins>;
 
-	clkout2_pin: pinmux_clkout2_pin {
+	clkout2_pin: clkout2-pins {
 		pinctrl-single,pins = <
 			/* xdma_event_intr1.clkout2 */
 			AM33XX_IOPAD(0x9b4, PIN_OUTPUT_PULLDOWN | MUX_MODE3)
 		>;
 	};
 
-	guardian_interface_pins: pinmux_interface_pins {
+	guardian_interface_pins: interface-pins {
 		pinctrl-single,pins = <
 			/* ADC_BATSENSE_EN */
 			/* (A14) MCASP0_AHCLKx.gpio3[21] */
@@ -518,13 +518,13 @@ AM33XX_IOPAD(0x918, PIN_OUTPUT_PULLDOWN | MUX_MODE7 )
 		>;
 	};
 
-	guardian_beeper_pins: pinmux_dmtimer7_pins {
+	guardian_beeper_pins: dmtimer7-pins {
 		pinctrl-single,pins = <
 			AM33XX_IOPAD(0x968, PIN_OUTPUT | MUX_MODE5) /* (E18) timer7 */
 		>;
 	};
 
-	guardian_button_pins: pinmux_guardian_button_pins {
+	guardian_button_pins: guardian-button-pins {
 		pinctrl-single,pins = <
 			AM33XX_IOPAD(0x940, PIN_INPUT | MUX_MODE7) /* (M16) gmii1_rxd0.gpio2[21] */
 			AM33XX_IOPAD(0x884, PIN_INPUT | MUX_MODE7) /* (V9)  gpmc_csn2.gpio1[31] */
@@ -532,28 +532,28 @@ AM33XX_IOPAD(0x884, PIN_INPUT | MUX_MODE7) /* (V9)  gpmc_csn2.gpio1[31] */
 	};
 
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_IOPAD(0x988, PIN_INPUT_PULLUP | MUX_MODE0) /* i2c0_sda.i2c0_sda */
 			AM33XX_IOPAD(0x98c, PIN_INPUT_PULLUP | MUX_MODE0) /* i2c0_scl.i2c0_scl */
 		>;
 	};
 
-	led_bl_pins: gpio_led_bl_pins {
+	led_bl_pins: gpio-led-bl-pins {
 		pinctrl-single,pins = <
 			/* P9_14, gpmc_a[2].GPIO1[18] (backlight control) */
 			AM33XX_IOPAD(0x848, PIN_OUTPUT | MUX_MODE7)
 		>;
 	};
 
-	lcd_disen_pins: pinmux_lcd_disen_pins {
+	lcd_disen_pins: lcd-disen-pins {
 		pinctrl-single,pins = <
 			/* P9_27, mcasp0_fsr.gpio3[19] (lcd_disen) */
 			AM33XX_IOPAD(0x9a4, PIN_OUTPUT_PULLUP | SLEWCTRL_SLOW | MUX_MODE7)
 		>;
 	};
 
-	lcd_pins_default: pinmux_lcd_pins_default {
+	lcd_pins_default: lcd-default-pins {
 		pinctrl-single,pins = <
 			/* (U10) gpmc_ad8.lcd_data23 */
 			AM33XX_IOPAD(0x820, PIN_OUTPUT | SLEWCTRL_SLOW | MUX_MODE1)
@@ -614,7 +614,7 @@ AM33XX_IOPAD(0x8ec, PIN_OUTPUT | SLEWCTRL_SLOW | MUX_MODE0)
 		>;
 	};
 
-	lcd_pins_sleep: pinmux_lcd_pins_sleep {
+	lcd_pins_sleep: lcd-sleep-pins {
 		pinctrl-single,pins = <
 			/* lcd_data0.lcd_data0 */
 			AM33XX_IOPAD(0x8a0, PULL_DISABLE | SLEWCTRL_SLOW | MUX_MODE7)
@@ -659,13 +659,13 @@ AM33XX_IOPAD(0x8ec, PIN_INPUT_PULLDOWN | SLEWCTRL_SLOW | MUX_MODE7)
 		>;
 	};
 
-	guardian_led_pins: pinmux_guardian_led_pins {
+	guardian_led_pins: guardian-led-pins {
 		pinctrl-single,pins = <
 			AM33XX_IOPAD(0x868, PIN_OUTPUT | MUX_MODE7) /* (T16) gpmc_a10.gpio1[26] */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_IOPAD(0x8f0, PIN_INPUT_PULLUP | MUX_MODE0)  /* mmc0_dat3.mmc0_dat3 */
 			AM33XX_IOPAD(0x8f4, PIN_INPUT_PULLUP | MUX_MODE0)  /* mmc0_dat2.mmc0_dat2 */
@@ -677,7 +677,7 @@ AM33XX_IOPAD(0x960, PIN_INPUT | MUX_MODE7)         /* GPIO0_6 */
 		>;
 	};
 
-	spi0_pins: pinmux_spi0_pins {
+	spi0_pins: spi0-pins {
 		pinctrl-single,pins = <
 			/* SPI0_CLK  - spi0_clk.spi */
 			AM33XX_IOPAD(0x950, PIN_OUTPUT_PULLDOWN | MUX_MODE0)
@@ -690,7 +690,7 @@ AM33XX_IOPAD(0x95c, PIN_OUTPUT_PULLUP | MUX_MODE0)
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			/* uart0_rxd.uart0_rxd */
 			AM33XX_IOPAD(0x970, PIN_INPUT_PULLUP | MUX_MODE0)
@@ -699,7 +699,7 @@ AM33XX_IOPAD(0x974, PIN_OUTPUT_PULLDOWN | MUX_MODE0)
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			/* K18 uart2_rxd.mirx_txd */
 			AM33XX_IOPAD(0x92c, PIN_INPUT_PULLUP | MUX_MODE1)
@@ -708,7 +708,7 @@ AM33XX_IOPAD(0x930, PIN_OUTPUT_PULLDOWN | MUX_MODE1)
 		>;
 	};
 
-	nandflash_pins: pinmux_nandflash_pins {
+	nandflash_pins: nandflash-pins {
 		pinctrl-single,pins = <
 			/* (U7) gpmc_ad0.gpmc_ad0 */
 			AM33XX_IOPAD(0x800, PIN_INPUT | MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-icev2.dts b/arch/arm/boot/dts/am335x-icev2.dts
--- a/arch/arm/boot/dts/am335x-icev2.dts
+++ b/arch/arm/boot/dts/am335x-icev2.dts
@@ -152,7 +152,7 @@ gpio-decoder {
 };
 
 &am33xx_pinmux {
-	user_leds: user_leds {
+	user_leds: user-leds-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TXD3, PIN_OUTPUT, MUX_MODE7) /* (J18) gmii1_txd3.gpio0[16] */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TXD2, PIN_OUTPUT, MUX_MODE7) /* (K15) gmii1_txd2.gpio0[17] */
@@ -163,7 +163,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_TX_CLK, PIN_OUTPUT, MUX_MODE7) /* (K18) gmii1_txc
 		>;
 	};
 
-	mmc0_pins_default: mmc0_pins_default {
+	mmc0_pins_default: mmc0-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -174,14 +174,14 @@ AM33XX_PADCONF(AM335X_PIN_MMC0_CMD, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	i2c0_pins_default: i2c0_pins_default {
+	i2c0_pins_default: i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT, MUX_MODE0)
 		>;
 	};
 
-	spi0_pins_default: spi0_pins_default {
+	spi0_pins_default: spi0-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -192,14 +192,14 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_INPUT_PULLUP, MUX_MODE7) /* (B12) mc
 		>;
 	};
 
-	uart3_pins_default: uart3_pins_default {
+	uart3_pins_default: uart3-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD3, PIN_INPUT_PULLUP, MUX_MODE1) /* (L17) gmii1_rxd3.uart3_rxd */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD2, PIN_OUTPUT_PULLUP, MUX_MODE1) /* (L16) gmii1_rxd2.uart3_txd */
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1, RMII mode */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLUP, MUX_MODE1)	/* mii1_crs.rmii1_crs_dv */
@@ -222,7 +222,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A0, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* gpmc_a0.rm
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -246,7 +246,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -254,7 +254,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
diff --git a/arch/arm/boot/dts/am335x-igep0033.dtsi b/arch/arm/boot/dts/am335x-igep0033.dtsi
--- a/arch/arm/boot/dts/am335x-igep0033.dtsi
+++ b/arch/arm/boot/dts/am335x-igep0033.dtsi
@@ -52,14 +52,14 @@ vmmc: fixedregulator1 {
 };
 
 &am33xx_pinmux {
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	nandflash_pins: pinmux_nandflash_pins {
+	nandflash_pins: nandflash-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -79,14 +79,14 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_BEN0_CLE, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	leds_pins: pinmux_leds_pins {
+	leds_pins: leds-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A7, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a7.gpio1_23 */
 		>;
diff --git a/arch/arm/boot/dts/am335x-lxm.dts b/arch/arm/boot/dts/am335x-lxm.dts
--- a/arch/arm/boot/dts/am335x-lxm.dts
+++ b/arch/arm/boot/dts/am335x-lxm.dts
@@ -41,7 +41,7 @@ vmmcsd_fixed: fixedregulator1 {
 };
 
 &am33xx_pinmux {
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -52,14 +52,14 @@ AM33XX_PADCONF(AM335X_PIN_MMC0_CMD, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT, MUX_MODE0)
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A9, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* rmii1_int */
@@ -85,7 +85,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_INPUT_PULLDOWN, MUX_MODE1)	/* rmii2_refc
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A9, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* rmii1_int */
@@ -111,7 +111,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* rmii2_refc
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -119,7 +119,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -127,7 +127,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	emmc_pins: pinmux_emmc_pins {
+	emmc_pins: emmc-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT_PULLUP, MUX_MODE2) /* gpmc_csn1.mmc1_clk */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_INPUT_PULLUP, MUX_MODE2) /* gpmc_csn2.mmc1_cmd */
@@ -142,7 +142,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD7, PIN_INPUT_PULLUP, MUX_MODE1) /* gpmc_ad7.mmc
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-moxa-uc-2100-common.dtsi b/arch/arm/boot/dts/am335x-moxa-uc-2100-common.dtsi
--- a/arch/arm/boot/dts/am335x-moxa-uc-2100-common.dtsi
+++ b/arch/arm/boot/dts/am335x-moxa-uc-2100-common.dtsi
@@ -31,27 +31,27 @@ buttons: push_button {
 &am33xx_pinmux {
 	pinctrl-names = "default";
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	push_button_pins: pinmux_push_button {
+	push_button_pins: push-button-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_HSYNC, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* lcd_hsync.gpio2_23 */
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -59,7 +59,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	mmc1_pins_default: pinmux_mmc1_pins {
+	mmc1_pins_default: mmc1-pins {
 		pinctrl-single,pins = <
 			/* eMMC */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad12.mmc1_dat0 */
@@ -75,7 +75,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT_PULLUP, MUX_MODE2)	/* gpmc_csn1.m
 		>;
 	};
 
-	spi0_pins: pinmux_spi0 {
+	spi0_pins: spi0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT_PULLUP, MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-moxa-uc-2101.dts b/arch/arm/boot/dts/am335x-moxa-uc-2101.dts
--- a/arch/arm/boot/dts/am335x-moxa-uc-2101.dts
+++ b/arch/arm/boot/dts/am335x-moxa-uc-2101.dts
@@ -28,7 +28,7 @@ led1 {
 &am33xx_pinmux {
 	pinctrl-names = "default";
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE1)	/* mii1_crs.rmii1_crs_dv */
@@ -42,7 +42,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	spi1_pins: pinmux_spi1 {
+	spi1_pins: spi1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, PIN_INPUT_PULLUP, MUX_MODE4)	 /* ecap0_in_pwm0_out.spi1_sclk */
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT_PULLUP, MUX_MODE4)	 /* uart1_ctsn.spi1_cs0 */
diff --git a/arch/arm/boot/dts/am335x-moxa-uc-8100-common.dtsi b/arch/arm/boot/dts/am335x-moxa-uc-8100-common.dtsi
--- a/arch/arm/boot/dts/am335x-moxa-uc-8100-common.dtsi
+++ b/arch/arm/boot/dts/am335x-moxa-uc-8100-common.dtsi
@@ -38,7 +38,7 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&minipcie_pins>;
 
-	minipcie_pins: pinmux_minipcie {
+	minipcie_pins: minipcie-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_PCLK, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* lcd_pclk.gpio2_24 */
 			AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* lcd_ac_bias_en.gpio2_25 */
@@ -46,13 +46,13 @@ AM33XX_PADCONF(AM335X_PIN_LCD_VSYNC, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* lcd_vsync
 		>;
 	};
 
-	push_button_pins: pinmux_push_button {
+	push_button_pins: push-button-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKX, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* mcasp0_ahcklx.gpio3_21 */
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -60,21 +60,21 @@ AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 	};
 
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* uart0_ctsn.i2c1_sda */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* uart0_rtsn.i2c1_scl */
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
@@ -83,7 +83,7 @@ AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA14, PIN_INPUT, MUX_MODE6)		/* lcd_data14.uart5_ctsn */
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA15, PIN_OUTPUT_PULLDOWN, MUX_MODE6)  /* lcd_data15.uart5_rtsn */
@@ -92,7 +92,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_DATA8, PIN_OUTPUT, MUX_MODE4)		/* lcd_data8.uart5_
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE1)
@@ -117,7 +117,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_INPUT_PULLDOWN, MUX_MODE1)  /* rmii2_ref
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -125,7 +125,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	mmc0_pins_default: pinmux_mmc0_pins {
+	mmc0_pins_default: mmc0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -138,7 +138,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_INPUT_PULLUP, MUX_MODE7)    /* mcasp
 		>;
 	};
 
-	mmc2_pins_default: pinmux_mmc2_pins {
+	mmc2_pins_default: mmc2-pins {
 		pinctrl-single,pins = <
 			/* eMMC */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_ad12.mmc2_dat0 */
@@ -154,7 +154,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_CLK, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_clk.mmc
 		>;
 	};
 
-	spi0_pins: pinmux_spi0 {
+	spi0_pins: spi0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT_PULLUP, MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-myirtech-myc.dtsi b/arch/arm/boot/dts/am335x-myirtech-myc.dtsi
--- a/arch/arm/boot/dts/am335x-myirtech-myc.dtsi
+++ b/arch/arm/boot/dts/am335x-myirtech-myc.dtsi
@@ -159,21 +159,21 @@ &rtc {
 };
 
 &am33xx_pinmux {
-	mdio_pins_default: pinmux_mdio_pins_default {
+	mdio_pins_default: mdio-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)	/* mdio_data */
 			AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)			/* mdio_clk */
 		>;
 	};
 
-	mdio_pins_sleep: pinmux_mdio_pins_sleep {
+	mdio_pins_sleep: mdio-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	eth_slave1_pins_default: pinmux_eth_slave1_pins_default {
+	eth_slave1_pins_default: eth-slave1-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_OUTPUT_PULLDOWN, MUX_MODE2)		/* rgmii1_tctl */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_DV, PIN_INPUT_PULLDOWN, MUX_MODE2)		/* rgmii1_rctl */
@@ -190,7 +190,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE2)		/* rgmii1_r
 		>;
 	};
 
-	eth_slave1_pins_sleep: pinmux_eth_slave1_pins_sleep {
+	eth_slave1_pins_sleep: eth-slave1-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_DV, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -207,34 +207,34 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	i2c0_pins_default: pinmux_i2c0_pins_default {
+	i2c0_pins_default: i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT | SLEWCTRL_FAST, MUX_MODE0)	/* I2C0_SDA */
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT | SLEWCTRL_FAST, MUX_MODE0)	/* I2C0_SCL */
 		>;
 	};
 
-	i2c0_pins_gpio: pinmux_i2c0_pins_gpio {
+	i2c0_pins_gpio: i2c0-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT, MUX_MODE7)			/* gpio3[5] */
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT, MUX_MODE7)			/* gpio3[6] */
 		>;
 	};
 
-	i2c0_pins_sleep: pinmux_i2c0_pins_sleep {
+	i2c0_pins_sleep: i2c0-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	led_mod_pins: pinmux_led_mod_pins {
+	led_mod_pins: led-mod-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_OUTPUT_PULLDOWN, MUX_MODE7)		/* gpio3[18] */
 		>;
 	};
 
-	nand_pins_default: pinmux_nand_pins_default {
+	nand_pins_default: nand-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE0)		/* gpmc_ad0 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLUP, MUX_MODE0)		/* gpmc_ad1 */
@@ -254,7 +254,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_BEN0_CLE, PIN_OUTPUT, MUX_MODE0)			/* gpmc_be0n_c
 		>;
 	};
 
-	nand_pins_sleep: pinmux_nand_pins_sleep {
+	nand_pins_sleep: nand-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLDOWN, MUX_MODE7)
diff --git a/arch/arm/boot/dts/am335x-myirtech-myd.dts b/arch/arm/boot/dts/am335x-myirtech-myd.dts
--- a/arch/arm/boot/dts/am335x-myirtech-myd.dts
+++ b/arch/arm/boot/dts/am335x-myirtech-myd.dts
@@ -304,47 +304,47 @@ &vdd_mod {
 };
 
 &am33xx_pinmux {
-	dcan0_pins_default: pinmux_dcan0_pins_default {
+	dcan0_pins_default: dcan0-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_OUTPUT, MUX_MODE2)			/* dcan0_tx_mux2 */
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT, MUX_MODE2)			/* dcan0_rx_mux2 */
 		>;
 	};
 
-	dcan0_pins_sleep: pinmux_dcan0_pins_sleep {
+	dcan0_pins_sleep: dcan0-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	dcan1_pins_default: pinmux_dcan1_pins_default {
+	dcan1_pins_default: dcan1-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_OUTPUT, MUX_MODE2)			/* dcan1_tx_mux0 */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT, MUX_MODE2)			/* dcan1_rx_mux0 */
 		>;
 	};
 
-	dcan1_pins_sleep: pinmux_dcan1_pins_sleep {
+	dcan1_pins_sleep: dcan1-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	ehrpwm0_pins_default: pinmux_ehrpwm0_pins_default {
+	ehrpwm0_pins_default: ehrpwm0-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_OUTPUT, MUX_MODE3)			/* ehrpwm0A_mux1 */
 		>;
 	};
 
-	ehrpwm0_pins_sleep: pinmux_ehrpwm0_pins_sleep {
+	ehrpwm0_pins_sleep: ehrpwm0-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	eth_slave2_pins_default: pinmux_eth_slave2_pins_default {
+	eth_slave2_pins_default: eth-slave2-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A0, PIN_OUTPUT_PULLDOWN, MUX_MODE2)		/* rgmii2_tctl */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A1, PIN_INPUT_PULLDOWN, MUX_MODE2)		/* rgmii2_rctl */
@@ -361,7 +361,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLDOWN, MUX_MODE2		/* rgmii2_rd0
 		>;
 	};
 
-	eth_slave2_pins_sleep: pinmux_eth_slave2_pins_sleep {
+	eth_slave2_pins_sleep: eth-slave2-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A1, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -378,35 +378,35 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	gpio_buttons_pins: pinmux_gpio_buttons_pins {
+	gpio_buttons_pins: gpio-buttons-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_INPUT_PULLDOWN, MUX_MODE7)		/* gpio3[0] */
 			AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT, MUX_MODE7)			/* gpio0[29] */
 		>;
 	};
 
-	i2c1_pins_default: pinmux_i2c1_pins_default {
+	i2c1_pins_default: i2c1-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D1, PIN_INPUT | SLEWCTRL_FAST, MUX_MODE2)	/* I2C1_SDA_mux3 */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT | SLEWCTRL_FAST, MUX_MODE2)	/* I2C1_SCL_mux3 */
 		>;
 	};
 
-	i2c1_pins_gpio: pinmux_i2c1_pins_gpio {
+	i2c1_pins_gpio: i2c1-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D1, PIN_INPUT, MUX_MODE7)			/* gpio0[4] */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT, MUX_MODE7)			/* gpio0[5] */
 		>;
 	};
 
-	i2c1_pins_sleep: pinmux_i2c1_pins_sleep {
+	i2c1_pins_sleep: i2c1-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D1, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	lcdc_pins_default: pinmux_lcdc_pins_default {
+	lcdc_pins_default: lcdc-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA0, PIN_OUTPUT, MUX_MODE0)			/* lcd_data0 */
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA1, PIN_OUTPUT, MUX_MODE0)			/* lcd_data1 */
@@ -431,7 +431,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_OUTPUT, MUX_MODE0)		/* lcd_ac_bias
 		>;
 	};
 
-	lcdc_pins_sleep: pinmux_lcdc_pins_sleep {
+	lcdc_pins_sleep: lcdc-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA0, PULL_DISABLE, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA1, PULL_DISABLE, MUX_MODE7)
@@ -456,14 +456,14 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	leds_pins: pinmux_leds_pins {
+	leds_pins: leds-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD11, PIN_OUTPUT, MUX_MODE7)			/* gpio0[27] */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE7)			/* gpio0[3] */
 		>;
 	};
 
-	mcasp0_pins_default: pinmux_mcasp0_pins_default {
+	mcasp0_pins_default: mcasp0-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKX, PIN_INPUT_PULLDOWN, MUX_MODE0)		/* mcasp0_aclkx_mux0 */
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_FSX, PIN_INPUT_PULLDOWN, MUX_MODE0)		/* mcasp0_fsx_mux0 */
@@ -472,7 +472,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_AXR1, PIN_INPUT_PULLDOWN, MUX_MODE0)		/* mcasp0
 		>;
 	};
 
-	mcasp0_pins_sleep: pinmux_mcasp0_pins_sleep {
+	mcasp0_pins_sleep: mcasp0-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKX, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_FSX, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -481,7 +481,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_AXR1, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	mmc1_pins_default: pinmux_mmc1_pins_default {
+	mmc1_pins_default: mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)		/* mmc0_dat3 */
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)		/* mmc0_dat2 */
@@ -493,7 +493,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKX, PIN_INPUT_PULLUP, MUX_MODE7)		/* gpio3[
 		>;
 	};
 
-	mmc1_pins_sleep: pinmux_mmc1_pins_sleep {
+	mmc1_pins_sleep: mmc1-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLDOWN, MUX_MODE0)
@@ -505,42 +505,42 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKX, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)		/* uart0_rxd */
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)		/* uart0_txd */
 		>;
 	};
 
-	uart1_pins_default: pinmux_uart1_pins_default {
+	uart1_pins_default: uart1-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT_PULLUP, MUX_MODE0)		/* uart1_rxd */
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)		/* uart1_txd */
 		>;
 	};
 
-	uart1_pins_sleep: pinmux_uart1_pins_sleep {
+	uart1_pins_sleep: uart1-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	uart2_pins_default: pinmux_uart2_pins_default {
+	uart2_pins_default: uart2-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT, MUX_MODE6)			/* uart2_rxd_mux1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_OUTPUT, MUX_MODE6)			/* uart2_txd_mux1 */
 		>;
 	};
 
-	uart2_pins_sleep: pinmux_uart2_pins_sleep {
+	uart2_pins_sleep: uart2-sleep-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	usb_pins: pinmux_usb_pins {
+	usb_pins: usb-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_USB0_DRVVBUS, PIN_OUTPUT_PULLDOWN, MUX_MODE0)		/* USB0_DRVVBUS */
 			AM33XX_PADCONF(AM335X_PIN_USB1_DRVVBUS, PIN_OUTPUT_PULLDOWN, MUX_MODE0)		/* USB1_DRVVBUS */
diff --git a/arch/arm/boot/dts/am335x-nano.dts b/arch/arm/boot/dts/am335x-nano.dts
--- a/arch/arm/boot/dts/am335x-nano.dts
+++ b/arch/arm/boot/dts/am335x-nano.dts
@@ -36,13 +36,13 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&misc_pins>;
 
-	misc_pins: misc_pins {
+	misc_pins: misc-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_OUTPUT, MUX_MODE7)	/* spi0_cs0.gpio0_5 */
 		>;
 	};
 
-	gpmc_pins: gpmc_pins {
+	gpmc_pins: gpmc-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -86,21 +86,21 @@ AM33XX_PADCONF(AM335X_PIN_LCD_PCLK, PIN_OUTPUT, MUX_MODE1)		/* lcd_pclk.gpmc_a10
 		>;
 	};
 
-	i2c0_pins: i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart0_pins: uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_OUTPUT, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_OUTPUT, MUX_MODE7)
@@ -109,7 +109,7 @@ AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	uart2_pins: uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA8, PIN_INPUT_PULLUP, MUX_MODE7)	/* lcd_data8.gpio2[14] */
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA9, PIN_OUTPUT, MUX_MODE7)		/* lcd_data9.gpio2[15] */
@@ -118,7 +118,7 @@ AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE1)		/* spi0_d0.uart2_txd
 		>;
 	};
 
-	uart3_pins: uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA10, PIN_INPUT_PULLUP, MUX_MODE7)	/* lcd_data10.gpio2[16] */
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA11, PIN_OUTPUT, MUX_MODE7)		/* lcd_data11.gpio2[17] */
@@ -127,7 +127,7 @@ AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, PIN_OUTPUT, MUX_MODE1)		/* ecap0_in
 		>;
 	};
 
-	uart4_pins: uart4_pins {
+	uart4_pins: uart4-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA12, PIN_INPUT_PULLUP, MUX_MODE7)	/* lcd_data12.gpio0[8] */
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA13, PIN_OUTPUT, MUX_MODE7)		/* lcd_data13.gpio0[9] */
@@ -136,14 +136,14 @@ AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_OUTPUT, MUX_MODE1)		/* uart0_rtsn.uart
 		>;
 	};
 
-	uart5_pins: uart5_pins {
+	uart5_pins: uart5-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA14, PIN_INPUT, MUX_MODE4)		/* lcd_data14.uart5_rxd */
 			AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_OUTPUT, MUX_MODE3)		/* rmiii1_refclk.uart5_txd */
 		>;
 	};
 
-	mmc1_pins: mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-netcan-plus-1xx.dts b/arch/arm/boot/dts/am335x-netcan-plus-1xx.dts
--- a/arch/arm/boot/dts/am335x-netcan-plus-1xx.dts
+++ b/arch/arm/boot/dts/am335x-netcan-plus-1xx.dts
@@ -37,14 +37,14 @@ led@2 {
 };
 
 &am33xx_pinmux {
-	user_leds_s0: user_leds_s0 {
+	user_leds_s0: user-leds-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* CAN Data LED */
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* CAN Error LED */
 		>;
 	};
 
-	dcan1_pins: pinmux_dcan1_pins {
+	dcan1_pins: dcan1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_OUTPUT, MUX_MODE2)	/* CAN TX */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT, MUX_MODE2)	/* CAN RX */
diff --git a/arch/arm/boot/dts/am335x-netcom-plus-2xx.dts b/arch/arm/boot/dts/am335x-netcom-plus-2xx.dts
--- a/arch/arm/boot/dts/am335x-netcom-plus-2xx.dts
+++ b/arch/arm/boot/dts/am335x-netcom-plus-2xx.dts
@@ -18,7 +18,7 @@ / {
 };
 
 &am33xx_pinmux {
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT, MUX_MODE0)			/* RX */
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_INPUT, MUX_MODE0)			/* TX */
@@ -31,7 +31,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* RI *
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT, MUX_MODE1)		/* RX */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE1)      		/* TX */
diff --git a/arch/arm/boot/dts/am335x-netcom-plus-8xx.dts b/arch/arm/boot/dts/am335x-netcom-plus-8xx.dts
--- a/arch/arm/boot/dts/am335x-netcom-plus-8xx.dts
+++ b/arch/arm/boot/dts/am335x-netcom-plus-8xx.dts
@@ -20,7 +20,7 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&dip_switches>;
 
-	dip_switches: pinmux_dip_switches {
+	dip_switches: dip-switches-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT_PULLDOWN, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -29,13 +29,13 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD15, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	tca6416_pins: pinmux_tca6416_pins {
+	tca6416_pins: tca6416-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT_PULLDOWN, MUX_MODE3)
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT_PULLDOWN, MUX_MODE3)
diff --git a/arch/arm/boot/dts/am335x-osd3358-sm-red.dts b/arch/arm/boot/dts/am335x-osd3358-sm-red.dts
--- a/arch/arm/boot/dts/am335x-osd3358-sm-red.dts
+++ b/arch/arm/boot/dts/am335x-osd3358-sm-red.dts
@@ -239,25 +239,25 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_OUTPUT_PULLDOWN, MUX_MODE7) /* gpmc_a11.
 		>;
 	};
 
-	flash_enable: flash-enable {
+	flash_enable: flash-enable-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* rmii1_ref_clk.gpio0_29 */
 		>;
 	};
 
-	imu_interrupt: imu-interrupt {
+	imu_interrupt: imu-interrupt-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* mii1_rx_er.gpio3_2 */
 		>;
 	};
 
-	ethernet_interrupt: ethernet-interrupt{
+	ethernet_interrupt: ethernet-interrupt-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* mii1_col.gpio3_0 */
 		>;
 	};
 
-	user_leds_s0: user-leds-s0 {
+	user_leds_s0: user-leds-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A5, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a5.gpio1_21 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A6, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* gpmc_a6.gpio1_22 */
@@ -280,13 +280,13 @@ AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	clkout2_pin: pinmux-clkout2-pin {
+	clkout2_pin: pinmux-clkout2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* xdma_event_intr1.clkout2 */
 		>;
 	};
 
-	cpsw_default: cpsw-default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_OUTPUT_PULLDOWN, MUX_MODE2)	/* mii1_txen.rgmii1_tctl */
@@ -304,7 +304,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE2)
 		>;
 	};
 
-	cpsw_sleep: cpsw-sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -322,7 +322,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci-mdio-default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -330,7 +330,7 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci-mdio-sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
diff --git a/arch/arm/boot/dts/am335x-pcm-953.dtsi b/arch/arm/boot/dts/am335x-pcm-953.dtsi
--- a/arch/arm/boot/dts/am335x-pcm-953.dtsi
+++ b/arch/arm/boot/dts/am335x-pcm-953.dtsi
@@ -68,14 +68,14 @@ button-1 {
 };
 
 &am33xx_pinmux {
-	user_buttons_pins: pinmux-user-buttons {
+	user_buttons_pins: pinmux-user-buttons-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_EMU0, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* emu0.gpio3_7 */
 			AM33XX_PADCONF(AM335X_PIN_EMU1, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* emu1.gpio3_8 */
 		>;
 	};
 
-	user_leds_pins: pinmux-user-leds {
+	user_leds_pins: pinmux-user-leds-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_csn1.gpio1_30 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_csn2.gpio1_31 */
@@ -85,7 +85,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* gpmc_csn
 
 /* CAN */
 &am33xx_pinmux {
-	dcan1_pins: pinmux-dcan1 {
+	dcan1_pins: pinmux-dcan1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_OUTPUT_PULLUP, MUX_MODE2)	/* uart1_rxd.dcan1_tx_mux2 */
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_INPUT_PULLUP, MUX_MODE2)	/* uart1_txd.dcan1_rx_mux2 */
@@ -101,7 +101,7 @@ &dcan1 {
 
 /* Ethernet */
 &am33xx_pinmux {
-	ethernet1_pins: pinmux_ethernet1 {
+	ethernet1_pins: ethernet1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A0, PIN_OUTPUT_PULLDOWN, MUX_MODE2)	/* gpmc_a0.rgmii2_tctl */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A1, PIN_INPUT_PULLDOWN, MUX_MODE2)	/* gpmc_a1.rgmii2_rctl */
@@ -142,7 +142,7 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&cb_gpio_pins>;
 
-	cb_gpio_pins: pinmux-cb-gpio {
+	cb_gpio_pins: pinmux-cb-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* uart0_ctsn.gpio1_8 */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* uart0_rtsn.gpio1_9 */
@@ -176,14 +176,14 @@ &mmc1 {
 
 /* UARTs */
 &am33xx_pinmux {
-	uart0_pins: pinmux-uart0 {
+	uart0_pins: pinmux-uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: pinmux-uart1 {
+	uart1_pins: pinmux-uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
@@ -192,14 +192,14 @@ AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart2_pins: pinmux-uart2 {
+	uart2_pins: pinmux-uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_CLK, PIN_INPUT_PULLUP, MUX_MODE1)	/* mii1_tx_clk.uart2_rxd */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_CLK, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* mii1_rx_clk.uart2_txd */
 		>;
 	};
 
-	uart3_pins: pinmux-uart3 {
+	uart3_pins: pinmux-uart3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD3, PIN_INPUT_PULLUP, MUX_MODE1)	/* mii1_rxd3.uart3_rxd */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RXD2, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* mii1_rxd2.uart3_txd */
diff --git a/arch/arm/boot/dts/am335x-pdu001.dts b/arch/arm/boot/dts/am335x-pdu001.dts
--- a/arch/arm/boot/dts/am335x-pdu001.dts
+++ b/arch/arm/boot/dts/am335x-pdu001.dts
@@ -90,28 +90,28 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clkout2_pin>;
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D1, PIN_INPUT_PULLUP, MUX_MODE2)	/* spi0_d1.i2c1_sda */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT_PULLUP, MUX_MODE2)	/* spi0_cs0.i2c1_scl */
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLUP, MUX_MODE2)	/* spi0_clk.i2c2_sda */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_INPUT_PULLUP, MUX_MODE2)	/* spi0_d0.i2c2_scl */
 		>;
 	};
 
-	spi1_pins: pinmux_spi1_pins {
+	spi1_pins: spi1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKX, PIN_OUTPUT, MUX_MODE3)		/* mcasp0_aclkx.spi1_sclk */
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_FSX, PIN_OUTPUT, MUX_MODE3)		/* mcasp0_fsx.spi1_d0 */
@@ -120,7 +120,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKR, PIN_OUTPUT, MUX_MODE3)		/* mcasp0_ahclk
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_OUTPUT, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -128,27 +128,27 @@ AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT_PULLUP, MUX_MODE1)	/* spi0_cs1.uart3_rxd */
 			AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* ecap0_in_pwm0_out.uart3_txd */
 		>;
 	};
 
-	clkout2_pin: pinmux_clkout2_pin {
+	clkout2_pin: clkout2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_OUTPUT_PULLDOWN, MUX_MODE3)	/* xdma_event_intr1.clkout2 */
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Port 1 (emac0) */
 			AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_INPUT, MUX_MODE0)
@@ -186,14 +186,14 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_BEN1, PIN_INPUT, MUX_MODE1)		/* mii2_col.gpmc_ben
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		/* eMMC */
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -205,7 +205,7 @@ AM33XX_PADCONF(AM335X_PIN_MMC0_CMD, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		/* SD cardcage */
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD3, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad3.mmc1_dat3 */
@@ -219,7 +219,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_ADVN_ALE, PIN_INPUT, MUX_MODE7)		/* gpmc_advn_ale
 		>;
 	};
 
-	lcd_pins_s0: lcd_pins_s0 {
+	lcd_pins_s0: lcd-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA0, PIN_OUTPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA1, PIN_OUTPUT, MUX_MODE0)
@@ -244,7 +244,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	dcan0_pins: pinmux_dcan0_pins {
+	dcan0_pins: dcan0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_OUTPUT, MUX_MODE2)		/* uart1_ctsn.d_can0_tx */
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT_PULLDOWN, MUX_MODE2)	/* uart1_rtsn.d_can0_rx */
diff --git a/arch/arm/boot/dts/am335x-pepper.dts b/arch/arm/boot/dts/am335x-pepper.dts
--- a/arch/arm/boot/dts/am335x-pepper.dts
+++ b/arch/arm/boot/dts/am335x-pepper.dts
@@ -26,7 +26,7 @@ buttons: user_buttons {
 		compatible = "gpio-keys";
 	};
 
-	leds: user_leds {
+	leds: user-leds-pins {
 		compatible = "gpio-leds";
 	};
 
@@ -88,13 +88,13 @@ &i2c1 {
 };
 
 &am33xx_pinmux {
-	i2c0_pins: pinmux_i2c0 {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
-	i2c1_pins: pinmux_i2c1 {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLUP, MUX_MODE3)	/* mii1_crs,i2c1_sda */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLUP, MUX_MODE3)	/* mii1_rxerr,i2c1_scl */
@@ -125,7 +125,7 @@ &accel {
 };
 
 &am33xx_pinmux {
-	accel_pins: pinmux_accel {
+	accel_pins: accel-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WEN, PIN_INPUT, MUX_MODE7)   /* gpmc_wen.gpio2_4 */
 		>;
@@ -172,7 +172,7 @@ &mcasp0 {
 };
 
 &am33xx_pinmux {
-	audio_pins: pinmux_audio {
+	audio_pins: audio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKX, PIN_INPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_FSX, PIN_INPUT_PULLDOWN, MUX_MODE0)
@@ -223,7 +223,7 @@ &lcdc {
 };
 
 &am33xx_pinmux {
-	lcd_pins: pinmux_lcd {
+	lcd_pins: lcd-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA0, PIN_OUTPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA1, PIN_OUTPUT, MUX_MODE0)
@@ -292,7 +292,7 @@ &mac_sw {
 };
 
 &am33xx_pinmux {
-	ethernet_pins: pinmux_ethernet {
+	ethernet_pins: ethernet-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_OUTPUT_PULLDOWN, MUX_MODE2)	/* mii1_txen.rgmii1_tctl */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_DV, PIN_INPUT_PULLUP, MUX_MODE2)	/* mii1_rxdv.rgmii1_rctl */
@@ -313,7 +313,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_COL, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* mii1_col.gp
 		>;
 	};
 
-	mdio_pins: pinmux_mdio {
+	mdio_pins: mdio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
@@ -357,7 +357,7 @@ &mmc3 {
 
 
 &am33xx_pinmux {
-	sd_pins: pinmux_sd_card {
+	sd_pins: sd-card-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -368,7 +368,7 @@ AM33XX_PADCONF(AM335X_PIN_MMC0_CMD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE7)		/* spi0_cs1.gpio0_6 */
 		>;
 	};
-	emmc_pins: pinmux_emmc {
+	emmc_pins: emmc-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT_PULLUP, MUX_MODE2)	/* gpmc_csn1.mmc1_clk */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_INPUT_PULLUP, MUX_MODE2)	/* gpmc_csn2.mmc1_cmd */
@@ -384,7 +384,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD7, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad7.mmc
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WPN, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* gpmc_wpn.gpio0_31 */
 		>;
 	};
-	wireless_pins: pinmux_wireless {
+	wireless_pins: wireless-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A1, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_a1.mmc2_dat0 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A2, PIN_INPUT_PULLUP, MUX_MODE3)	/* gpmc_a2.mmc2_dat1 */
@@ -491,7 +491,7 @@ &spi0 {
 };
 
 &am33xx_pinmux {
-	spi0_pins: pinmux_spi0 {
+	spi0_pins: spi0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS0, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -532,13 +532,13 @@ &uart1 {
 };
 
 &am33xx_pinmux {
-	uart0_pins: pinmux_uart0 {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
-	uart1_pins: pinmux_uart1 {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
@@ -563,7 +563,7 @@ &usb1 {
 };
 
 &am33xx_pinmux {
-	usb_pins: pinmux_usb {
+	usb_pins: usb-pins {
 		pinctrl-single,pins = <
 			/* USB0 Over-Current (active low) */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A9, PIN_INPUT, MUX_MODE7)	/* gpmc_a9.gpio1_25 */
@@ -620,14 +620,14 @@ button-2 {
 };
 
 &am33xx_pinmux {
-	user_leds_pins: pinmux_user_leds {
+	user_leds_pins: user-leds-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A4, PIN_OUTPUT, MUX_MODE7)	/* gpmc_a4.gpio1_20 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A5, PIN_OUTPUT, MUX_MODE7)	/* gpmc_a5.gpio1_21 */
 		>;
 	};
 
-	user_buttons_pins: pinmux_user_buttons {
+	user_buttons_pins: user-buttons-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A6, PIN_INPUT_PULLUP, MUX_MODE7)	/* gpmc_a6.gpio1_22 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A7, PIN_INPUT_PULLUP, MUX_MODE7)	/* gpmc_a7.gpio1_21 */
diff --git a/arch/arm/boot/dts/am335x-phycore-som.dtsi b/arch/arm/boot/dts/am335x-phycore-som.dtsi
--- a/arch/arm/boot/dts/am335x-phycore-som.dtsi
+++ b/arch/arm/boot/dts/am335x-phycore-som.dtsi
@@ -76,7 +76,7 @@ &mmc2 {
 
 /* Ethernet */
 &am33xx_pinmux {
-	ethernet0_pins: pinmux_ethernet0 {
+	ethernet0_pins: ethernet0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_CRS, PIN_INPUT_PULLDOWN, MUX_MODE1)
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE1)
@@ -89,7 +89,7 @@ AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_INPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	mdio_pins: pinmux_mdio {
+	mdio_pins: mdio-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -125,7 +125,7 @@ &mac_sw {
 
 /* I2C Busses */
 &am33xx_pinmux {
-	i2c0_pins: pinmux-i2c0 {
+	i2c0_pins: pinmux-i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT, MUX_MODE0)
@@ -165,7 +165,7 @@ i2c_rtc: rtc@68 {
 
 /* NAND memory */
 &am33xx_pinmux {
-		nandflash_pins: pinmux-nandflash {
+		nandflash_pins: pinmux-nandflash-pins {
 			pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -316,7 +316,7 @@ vmmc_reg: regulator@12 {
 
 /* SPI Busses */
 &am33xx_pinmux {
-	spi0_pins: pinmux-spi0 {
+	spi0_pins: pinmux-spi0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_INPUT_PULLDOWN, MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-pocketbeagle.dts b/arch/arm/boot/dts/am335x-pocketbeagle.dts
--- a/arch/arm/boot/dts/am335x-pocketbeagle.dts
+++ b/arch/arm/boot/dts/am335x-pocketbeagle.dts
@@ -214,7 +214,7 @@ &P2_06_gpio &P2_04_gpio &P2_02_gpio &P2_08_gpio
 			&P2_17_gpio >;
 
 	/* P2_03 (ZCZ ball T10) gpio0_23 0x824 PIN 9 */
-	P2_03_gpio: pinmux_P2_03_gpio {
+	P2_03_gpio: P2-03-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD9, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -223,7 +223,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD9, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P1_34 (ZCZ ball T11) gpio0_26 0x828 PIN 10 */
-	P1_34_gpio: pinmux_P1_34_gpio {
+	P1_34_gpio: P1-34-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD10, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -232,7 +232,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD10, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_19 (ZCZ ball U12) gpio0_27 0x82c PIN 11 */
-	P2_19_gpio: pinmux_P2_19_gpio {
+	P2_19_gpio: P2-19-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD11, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -241,7 +241,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD11, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_24 (ZCZ ball T12) gpio1_12 0x830 PIN 12 */
-	P2_24_gpio: pinmux_P2_24_gpio {
+	P2_24_gpio: P2-24-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -250,7 +250,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_33 (ZCZ ball R12) gpio1_13 0x834 PIN 13 */
-	P2_33_gpio: pinmux_P2_33_gpio {
+	P2_33_gpio: P2-33-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -259,7 +259,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_22 (ZCZ ball V13) gpio1_14 0x838 PIN 14 */
-	P2_22_gpio: pinmux_P2_22_gpio {
+	P2_22_gpio: P2-22-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD14, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -268,7 +268,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD14, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_18 (ZCZ ball U13) gpio1_15 0x83c PIN 15 */
-	P2_18_gpio: pinmux_P2_18_gpio {
+	P2_18_gpio: P2-18-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD15, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -277,7 +277,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD15, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_10 (ZCZ ball R14) gpio1_20 0x850 PIN 20 */
-	P2_10_gpio: pinmux_P2_10_gpio {
+	P2_10_gpio: P2-10-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A4, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -286,7 +286,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A4, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_06 (ZCZ ball U16) gpio1_25 0x864 PIN 25 */
-	P2_06_gpio: pinmux_P2_06_gpio {
+	P2_06_gpio: P2-06-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A9, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -295,7 +295,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A9, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_04 (ZCZ ball T16) gpio1_26 0x868 PIN 26 */
-	P2_04_gpio: pinmux_P2_04_gpio {
+	P2_04_gpio: P2-04-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A10, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -304,7 +304,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A10, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_02 (ZCZ ball V17) gpio1_27 0x86c PIN 27 */
-	P2_02_gpio: pinmux_P2_02_gpio {
+	P2_02_gpio: P2-02-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
@@ -313,7 +313,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLUP, MUX_MODE7)
 	};
 
 	/* P2_08 (ZCZ ball U18) gpio1_28 0x878 PIN 30 */
-	P2_08_gpio: pinmux_P2_08_gpio {
+	P2_08_gpio: P2-08-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_BEN1, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
@@ -322,7 +322,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_BEN1, PIN_INPUT_PULLDOWN, MUX_MODE7)
 	};
 
 	/* P2_17 (ZCZ ball V12) gpio2_1 0x88c PIN 35 */
-	P2_17_gpio: pinmux_P2_17_gpio {
+	P2_17_gpio: P2-17-gpio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CLK, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
diff --git a/arch/arm/boot/dts/am335x-regor.dtsi b/arch/arm/boot/dts/am335x-regor.dtsi
--- a/arch/arm/boot/dts/am335x-regor.dtsi
+++ b/arch/arm/boot/dts/am335x-regor.dtsi
@@ -39,7 +39,7 @@ error-led {
 
 /* User Leds */
 &am33xx_pinmux {
-	user_leds_pins: pinmux-user-leds {
+	user_leds_pins: pinmux-user-leds-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_VSYNC, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* lcd_hsync.gpio2_22 */
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_FSX, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* mcasp0_fsx.gpio3_15 */
@@ -49,7 +49,7 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_FSX, PIN_OUTPUT_PULLDOWN, MUX_MODE7)	/* mcasp0_
 
 /* CAN Busses */
 &am33xx_pinmux {
-	dcan1_pins: pinmux-dcan1 {
+	dcan1_pins: pinmux-dcan1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_OUTPUT_PULLUP, MUX_MODE2)	/* uart0_ctsn.d_can1_tx */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT_PULLUP, MUX_MODE2)	/* uart0_rtsn.d_can1_rx */
@@ -65,7 +65,7 @@ &dcan1 {
 
 /* Ethernet */
 &am33xx_pinmux {
-	ethernet1_pins: pinmux-ethernet1 {
+	ethernet1_pins: pinmux-ethernet1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A0, PIN_OUTPUT, MUX_MODE1)		/* gpmc_a0.mii2_txen */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A1, PIN_INPUT_PULLDOWN, MUX_MODE1)	/* gpmc_a1.mii2_rxdv */
@@ -108,7 +108,7 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&user_gpios_pins>;
 
-	user_gpios_pins: pinmux-user-gpios {
+	user_gpios_pins: pinmux-user-gpios-pins {
 		pinctrl-single,pins = <
 			/* DIGIN 1-4 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD11, PIN_INPUT, MUX_MODE7)		/* gpmc_ad11.gpio0_27 */
@@ -126,7 +126,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_OUTPUT, MUX_MODE7)		/* gpmc_ad12.gpio1_
 
 /* MMC */
 &am33xx_pinmux {
-	mmc1_pins: pinmux-mmc1 {
+	mmc1_pins: pinmux-mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -155,14 +155,14 @@ &i2c_rtc {
 
 /* UARTs */
 &am33xx_pinmux {
-	uart0_pins: pinmux-uart0 {
+	uart0_pins: pinmux-uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart2_pins: pinmux-uart2 {
+	uart2_pins: pinmux-uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_CLK, PIN_INPUT_PULLUP, MUX_MODE1)	/* mii1_tx_clk.uart2_rxd */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_CLK, PIN_OUTPUT_PULLDOWN, MUX_MODE1)	/* mii1_rx_clk.uart2_txd */
diff --git a/arch/arm/boot/dts/am335x-sancloud-bbe-common.dtsi b/arch/arm/boot/dts/am335x-sancloud-bbe-common.dtsi
--- a/arch/arm/boot/dts/am335x-sancloud-bbe-common.dtsi
+++ b/arch/arm/boot/dts/am335x-sancloud-bbe-common.dtsi
@@ -4,7 +4,7 @@
  */
 
 &am33xx_pinmux {
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_OUTPUT_PULLDOWN, MUX_MODE2)	/* mii1_txen.rgmii1_tctl */
@@ -22,7 +22,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE2)	/* mii1_rxd0
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_TX_EN, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -40,7 +40,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	usb_hub_ctrl: usb_hub_ctrl {
+	usb_hub_ctrl: usb-hub-ctrl-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_RMII1_REF_CLK, PIN_OUTPUT_PULLUP, MUX_MODE7)     /* rmii1_refclk.gpio0_29 */
 		>;
diff --git a/arch/arm/boot/dts/am335x-sancloud-bbe-extended-wifi.dts b/arch/arm/boot/dts/am335x-sancloud-bbe-extended-wifi.dts
--- a/arch/arm/boot/dts/am335x-sancloud-bbe-extended-wifi.dts
+++ b/arch/arm/boot/dts/am335x-sancloud-bbe-extended-wifi.dts
@@ -28,7 +28,7 @@ wlan_en_reg: fixedregulator@2 {
 };
 
 &am33xx_pinmux {
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			/* gpmc_a9.gpio1_25: RADIO_EN */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A9, PIN_OUTPUT_PULLUP, MUX_MODE7)
@@ -53,14 +53,14 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_CLK, PIN_INPUT_PULLUP, MUX_MODE3)
 		>;
 	};
 
-	bluetooth_pins: pinmux_bluetooth_pins {
+	bluetooth_pins: bluetooth-pins {
 		pinctrl-single,pins = <
 			/* event_intr0.gpio0_19 */
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0, PIN_INPUT_PULLUP, MUX_MODE7)
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			/* uart1_rxd */
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT, MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-sancloud-bbe-lite.dts b/arch/arm/boot/dts/am335x-sancloud-bbe-lite.dts
--- a/arch/arm/boot/dts/am335x-sancloud-bbe-lite.dts
+++ b/arch/arm/boot/dts/am335x-sancloud-bbe-lite.dts
@@ -19,7 +19,7 @@ / {
 };
 
 &am33xx_pinmux {
-	bb_spi0_pins: pinmux_bb_spi0_pins {
+	bb_spi0_pins: bb-spi0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_INPUT, MUX_MODE0)
diff --git a/arch/arm/boot/dts/am335x-sancloud-bbe.dts b/arch/arm/boot/dts/am335x-sancloud-bbe.dts
--- a/arch/arm/boot/dts/am335x-sancloud-bbe.dts
+++ b/arch/arm/boot/dts/am335x-sancloud-bbe.dts
@@ -17,13 +17,13 @@ / {
 };
 
 &am33xx_pinmux {
-	mpu6050_pins: pinmux_mpu6050_pins {
+	mpu6050_pins: mpu6050-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_INPUT, MUX_MODE7)    /* uart0_ctsn.gpio1_8 */
 		>;
 	};
 
-	lps3331ap_pins: pinmux_lps3331ap_pins {
+	lps3331ap_pins: lps3331ap-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A10, PIN_INPUT, MUX_MODE7)     /* gpmc_a10.gpio1_26 */
 		>;
diff --git a/arch/arm/boot/dts/am335x-sbc-t335.dts b/arch/arm/boot/dts/am335x-sbc-t335.dts
--- a/arch/arm/boot/dts/am335x-sbc-t335.dts
+++ b/arch/arm/boot/dts/am335x-sbc-t335.dts
@@ -64,7 +64,7 @@ timing1: dvi { /* 1024x768p60 */
 
 &am33xx_pinmux {
 	/* Display */
-	lcd_pins_default: lcd_pins_default {
+	lcd_pins_default: lcd-default-pins {
 		pinctrl-single,pins = <
 			/* gpmc_ad8.lcd_data23 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD8, PIN_OUTPUT, MUX_MODE1)
@@ -105,7 +105,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	lcd_pins_sleep: lcd_pins_sleep {
+	lcd_pins_sleep: lcd-sleep-pins {
 		pinctrl-single,pins = <
 			/* gpmc_ad8.lcd_data23 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD8, PIN_INPUT_PULLDOWN, MUX_MODE7)
diff --git a/arch/arm/boot/dts/am335x-shc.dts b/arch/arm/boot/dts/am335x-shc.dts
--- a/arch/arm/boot/dts/am335x-shc.dts
+++ b/arch/arm/boot/dts/am335x-shc.dts
@@ -366,14 +366,14 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clkout2_pin>;
 
-	clkout2_pin: pinmux_clkout2_pin {
+	clkout2_pin: clkout2-pins {
 		pinctrl-single,pins = <
 			/* xdma_event_intr1.clkout2 */
 			AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR1, PIN_INPUT, MUX_MODE6)
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE0)
@@ -392,7 +392,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -411,14 +411,14 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MDC, PIN_OUTPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -426,13 +426,13 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	ehrpwm1_pins: pinmux_ehrpwm1 {
+	ehrpwm1_pins: ehrpwm1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A3, PIN_OUTPUT, MUX_MODE6) /* gpmc_a3.gpio1_19 */
 		>;
 	};
 
-	emmc_pins: pinmux_emmc_pins {
+	emmc_pins: emmc-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT, MUX_MODE2)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_INPUT_PULLUP, MUX_MODE2)
@@ -447,20 +447,20 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD7, PIN_INPUT_PULLUP, MUX_MODE1)
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT, MUX_MODE0)
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE5)
 		>;
 	};
 
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT, MUX_MODE3)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT, MUX_MODE3)
@@ -471,7 +471,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_CLK, PIN_INPUT, MUX_MODE3)
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_INPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_OUTPUT, MUX_MODE0)
@@ -480,7 +480,7 @@ AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: pinmux_uart1 {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_OUTPUT, MUX_MODE0)
@@ -489,21 +489,21 @@ AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT, MUX_MODE0)
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_SCLK, PIN_INPUT, MUX_MODE1)
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE1)
 		>;
 	};
 
-	uart4_pins: pinmux_uart4_pins {
+	uart4_pins: uart4-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WAIT0, PIN_INPUT_PULLUP, MUX_MODE6)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WPN, PIN_OUTPUT_PULLUP, MUX_MODE6)
 		>;
 	};
 
-	user_leds_s0: user_leds_s0 {
+	user_leds_s0: user-leds-s0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD8, PIN_OUTPUT, MUX_MODE7)
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD9, PIN_OUTPUT, MUX_MODE7)
diff --git a/arch/arm/boot/dts/am335x-sl50.dts b/arch/arm/boot/dts/am335x-sl50.dts
--- a/arch/arm/boot/dts/am335x-sl50.dts
+++ b/arch/arm/boot/dts/am335x-sl50.dts
@@ -213,7 +213,7 @@ &am33xx_pinmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&lwb_pins>;
 
-	audio_pins: pinmux_audio_pins {
+	audio_pins: audio-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKX, PIN_INPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_FSX, PIN_INPUT_PULLDOWN, MUX_MODE0)
@@ -223,31 +223,31 @@ AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKR, PIN_OUTPUT_PULLDOWN, MUX_MODE2)
 		>;
 	};
 
-	audio_pa_pins: pinmux_audio_pa_pins {
+	audio_pa_pins: audio-pa-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* SoundPA_en - mcasp0_aclkr.gpio3_18 */
 		>;
 	};
 
-	audio_mclk_pins: pinmux_audio_mclk_pins {
+	audio_mclk_pins: audio-mclk-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A11, PIN_INPUT_PULLDOWN, MUX_MODE7)	/* gpmc_a11.gpio1_27 */
 		>;
 	};
 
-	backlight0_pins: pinmux_backlight0_pins {
+	backlight0_pins: backlight0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WEN, PIN_OUTPUT, MUX_MODE7)	/* gpmc_wen.gpio2_4 */
 		>;
 	};
 
-	backlight1_pins: pinmux_backlight1_pins {
+	backlight1_pins: backlight1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD10, PIN_OUTPUT, MUX_MODE7)     /* gpmc_ad10.gpio0_26 */
 		>;
 	};
 
-	lcd_pins: pinmux_lcd_pins {
+	lcd_pins: lcd-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA0, PIN_OUTPUT, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_LCD_DATA1, PIN_OUTPUT, MUX_MODE0)
@@ -272,7 +272,7 @@ AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A5, PIN_OUTPUT, MUX_MODE7)	/* gpmc_a5.gpio1_21 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A6, PIN_OUTPUT, MUX_MODE7)	/* gpmc_a6.gpio1_22 */
@@ -281,42 +281,42 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_A8, PIN_OUTPUT, MUX_MODE7)	/* gpmc_a8.gpio1_24 */
 		>;
 	};
 
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart4_pins: pinmux_uart4_pins {
+	uart4_pins: uart4-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WAIT0, PIN_INPUT_PULLUP, MUX_MODE6)	/* gpmc_wait0.uart4_rxd */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_WPN, PIN_OUTPUT_PULLDOWN, MUX_MODE6)	/* gpmc_wpn.uart4_txd */
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SDA, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_I2C0_SCL, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_CTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* uart1_ctsn.i2c2_sda */
 			AM33XX_PADCONF(AM335X_PIN_UART1_RTSN, PIN_INPUT_PULLUP, MUX_MODE3)	/* uart1_rtsn.i2c2_scl */
 		>;
 	};
 
-	cpsw_default: cpsw_default {
+	cpsw_default: cpsw-default-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -335,7 +335,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLUP, MUX_MODE0)
 		>;
 	};
 
-	cpsw_sleep: cpsw_sleep {
+	cpsw_sleep: cpsw-sleep-pins {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
 			AM33XX_PADCONF(AM335X_PIN_MII1_RX_ER, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -354,7 +354,7 @@ AM33XX_PADCONF(AM335X_PIN_MII1_RXD0, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	davinci_mdio_default: davinci_mdio_default {
+	davinci_mdio_default: davinci-mdio-default-pins {
 		pinctrl-single,pins = <
 			/* MDIO */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLUP | SLEWCTRL_FAST, MUX_MODE0)
@@ -364,7 +364,7 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD14, PIN_INPUT_PULLUP, MUX_MODE7)	/* Ethernet_nR
 		>;
 	};
 
-	davinci_mdio_sleep: davinci_mdio_sleep {
+	davinci_mdio_sleep: davinci-mdio-sleep-pins {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
 			AM33XX_PADCONF(AM335X_PIN_MDIO, PIN_INPUT_PULLDOWN, MUX_MODE7)
@@ -372,19 +372,19 @@ AM33XX_PADCONF(AM335X_PIN_MDC, PIN_INPUT_PULLDOWN, MUX_MODE7)
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT, MUX_MODE7)		/* uart0_rtsn.gpio1_9 */
 		>;
 	};
 
-	emmc_pwrseq_pins: pinmux_emmc_pwrseq_pins {
+	emmc_pwrseq_pins: emmc-pwrseq-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A4, PIN_OUTPUT_PULLUP, MUX_MODE7)	/* gpmc_a4.gpio1_20 */
 		>;
 	};
 
-	emmc_pins: pinmux_emmc_pins {
+	emmc_pins: emmc-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT_PULLUP, MUX_MODE2)	/* gpmc_csn1.mmc1_clk */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_INPUT_PULLUP, MUX_MODE2)	/* gpmc_csn2.mmc1_cmd */
@@ -399,20 +399,20 @@ AM33XX_PADCONF(AM335X_PIN_GPMC_AD7, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad7.mmc
 		>;
 	};
 
-	ehrpwm1_pins: pinmux_ehrpwm1a_pins {
+	ehrpwm1_pins: ehrpwm1a-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A2, PIN_OUTPUT, MUX_MODE6)	/* gpmc_a2.ehrpwm1a */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A3, PIN_OUTPUT, MUX_MODE6)	/* gpmc_a3.ehrpwm1b */
 		>;
 	};
 
-	rtc0_irq_pins: pinmux_rtc0_irq_pins {
+	rtc0_irq_pins: rtc0-irq-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD9, PIN_INPUT_PULLUP, MUX_MODE7)     /* gpmc_ad9.gpio0_23 */
 		>;
 	};
 
-	spi0_pins: pinmux_spi0_pins {
+	spi0_pins: spi0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_INPUT_PULLUP, MUX_MODE0)	/* SPI0_MOSI */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_D1, PIN_INPUT_PULLUP, MUX_MODE0)	/* SPI0_MISO */
@@ -422,7 +422,7 @@ AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT_PULLUP, MUX_MODE0)	/* SPI0_CS1 (FP
 		>;
 	};
 
-	lwb_pins: pinmux_lwb_pins {
+	lwb_pins: lwb-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT_PULLUP, MUX_MODE7)	/* nKbdInt - gpmc_ad12.gpio1_12 */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT_PULLUP, MUX_MODE7)	/* nKbdReset - gpmc_ad13.gpio1_13 */
diff --git a/arch/arm/boot/dts/am335x-wega.dtsi b/arch/arm/boot/dts/am335x-wega.dtsi
--- a/arch/arm/boot/dts/am335x-wega.dtsi
+++ b/arch/arm/boot/dts/am335x-wega.dtsi
@@ -49,7 +49,7 @@ vcc3v3: fixedregulator1 {
 
 /* Audio */
 &am33xx_pinmux {
-	mcasp0_pins: pinmux-mcasp0 {
+	mcasp0_pins: pinmux-mcasp0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_AHCLKX, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKX, PIN_INPUT_PULLDOWN, MUX_MODE0)
@@ -90,7 +90,7 @@ &mcasp0 {
 
 /* CAN Busses */
 &am33xx_pinmux {
-	dcan1_pins: pinmux-dcan1 {
+	dcan1_pins: pinmux-dcan1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_OUTPUT_PULLUP, MUX_MODE2) /* uart0_ctsn.d_can1_tx */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT_PULLUP, MUX_MODE2) /* uart0_rtsn.d_can1_rx */
@@ -106,7 +106,7 @@ &dcan1 {
 
 /* Ethernet */
 &am33xx_pinmux {
-	ethernet1_pins: pinmux-ethernet1 {
+	ethernet1_pins: pinmux-ethernet1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A0, PIN_OUTPUT, MUX_MODE1)		/* gpmc_a0.mii2_txen */
 			AM33XX_PADCONF(AM335X_PIN_GPMC_A1, PIN_INPUT_PULLDOWN, MUX_MODE1)	/* gpmc_a1.mii2_rxdv */
@@ -146,7 +146,7 @@ &mac_sw {
 
 /* MMC */
 &am33xx_pinmux {
-	mmc1_pins: pinmux-mmc1 {
+	mmc1_pins: pinmux-mmc1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
@@ -176,14 +176,14 @@ &vdig1_reg {
 
 /* UARTs */
 &am33xx_pinmux {
-	uart0_pins: pinmux-uart0 {
+	uart0_pins: pinmux-uart0-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART0_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART0_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
 		>;
 	};
 
-	uart1_pins: pinmux-uart1 {
+	uart1_pins: pinmux-uart1-pins {
 		pinctrl-single,pins = <
 			AM33XX_PADCONF(AM335X_PIN_UART1_RXD, PIN_INPUT_PULLUP, MUX_MODE0)
 			AM33XX_PADCONF(AM335X_PIN_UART1_TXD, PIN_OUTPUT_PULLDOWN, MUX_MODE0)
-- 
2.40.1
