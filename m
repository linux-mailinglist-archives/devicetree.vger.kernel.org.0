Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9903C70D65F
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 09:58:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236076AbjEWH6c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 03:58:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236077AbjEWH6N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 03:58:13 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 283551993;
        Tue, 23 May 2023 00:56:30 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 5B05F814A;
        Tue, 23 May 2023 07:55:21 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     linux-omap@vger.kernel.org
Cc:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andreas Kemnade <andreas@kemnade.info>,
        "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: [PATCH 2/2] ARM: dts: Unify pinctrl-single pin group nodes for omap3
Date:   Tue, 23 May 2023 10:55:11 +0300
Message-Id: <20230523075511.41077-2-tony@atomide.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230523075511.41077-1-tony@atomide.com>
References: <20230523075511.41077-1-tony@atomide.com>
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
 arch/arm/boot/dts/am3517-craneboard.dts       |  2 +-
 arch/arm/boot/dts/am3517-evm-ui.dtsi          |  4 +-
 arch/arm/boot/dts/am3517-evm.dts              | 20 +++----
 arch/arm/boot/dts/am3517-som.dtsi             | 14 ++---
 .../boot/dts/logicpd-som-lv-35xx-devkit.dts   |  2 +-
 .../boot/dts/logicpd-som-lv-37xx-devkit.dts   |  2 +-
 .../boot/dts/logicpd-som-lv-baseboard.dtsi    | 16 +++---
 arch/arm/boot/dts/logicpd-som-lv.dtsi         | 24 ++++-----
 .../boot/dts/logicpd-torpedo-35xx-devkit.dts  |  2 +-
 .../boot/dts/logicpd-torpedo-37xx-devkit.dts  |  6 +--
 .../boot/dts/logicpd-torpedo-baseboard.dtsi   | 26 ++++-----
 arch/arm/boot/dts/logicpd-torpedo-som.dtsi    | 14 ++---
 arch/arm/boot/dts/omap3-beagle-xm.dts         | 14 ++---
 arch/arm/boot/dts/omap3-beagle.dts            | 14 ++---
 arch/arm/boot/dts/omap3-cm-t3517.dts          | 14 ++---
 arch/arm/boot/dts/omap3-cm-t3530.dts          |  2 +-
 arch/arm/boot/dts/omap3-cm-t3730.dts          |  6 +--
 arch/arm/boot/dts/omap3-cm-t3x.dtsi           | 20 +++----
 arch/arm/boot/dts/omap3-cm-t3x30.dtsi         |  4 +-
 .../arm/boot/dts/omap3-devkit8000-common.dtsi |  2 +-
 arch/arm/boot/dts/omap3-echo.dts              | 12 ++---
 arch/arm/boot/dts/omap3-evm-37xx.dts          |  4 +-
 arch/arm/boot/dts/omap3-evm-common.dtsi       |  2 +-
 .../boot/dts/omap3-evm-processor-common.dtsi  | 18 +++----
 arch/arm/boot/dts/omap3-evm.dts               |  4 +-
 arch/arm/boot/dts/omap3-gta04.dtsi            | 54 +++++++++----------
 arch/arm/boot/dts/omap3-gta04a5.dts           | 10 ++--
 arch/arm/boot/dts/omap3-gta04a5one.dts        |  2 +-
 arch/arm/boot/dts/omap3-ha-common.dtsi        | 16 +++---
 arch/arm/boot/dts/omap3-ha-lcd.dts            | 10 ++--
 arch/arm/boot/dts/omap3-igep.dtsi             | 16 +++---
 arch/arm/boot/dts/omap3-igep0020-common.dtsi  | 14 ++---
 arch/arm/boot/dts/omap3-igep0020-rev-f.dts    |  2 +-
 arch/arm/boot/dts/omap3-igep0020.dts          |  2 +-
 arch/arm/boot/dts/omap3-igep0030-common.dtsi  | 10 ++--
 arch/arm/boot/dts/omap3-igep0030-rev-g.dts    |  4 +-
 arch/arm/boot/dts/omap3-igep0030.dts          |  2 +-
 arch/arm/boot/dts/omap3-ldp.dts               |  6 +--
 arch/arm/boot/dts/omap3-lilly-a83x.dtsi       | 30 +++++------
 arch/arm/boot/dts/omap3-lilly-dbb056.dts      | 12 ++---
 arch/arm/boot/dts/omap3-n900.dts              | 34 ++++++------
 arch/arm/boot/dts/omap3-n950-n9.dtsi          | 18 +++----
 arch/arm/boot/dts/omap3-n950.dts              |  8 +--
 .../boot/dts/omap3-overo-alto35-common.dtsi   |  4 +-
 arch/arm/boot/dts/omap3-overo-base.dtsi       | 14 ++---
 arch/arm/boot/dts/omap3-overo-chestnut43.dts  |  4 +-
 arch/arm/boot/dts/omap3-overo-common-dvi.dtsi |  2 +-
 .../boot/dts/omap3-overo-common-lcd35.dtsi    | 10 ++--
 .../boot/dts/omap3-overo-common-lcd43.dtsi    | 10 ++--
 .../dts/omap3-overo-common-peripherals.dtsi   |  4 +-
 arch/arm/boot/dts/omap3-overo-gallop43.dts    |  4 +-
 arch/arm/boot/dts/omap3-overo-palo35.dts      |  4 +-
 arch/arm/boot/dts/omap3-overo-palo43.dts      |  4 +-
 .../boot/dts/omap3-overo-storm-chestnut43.dts |  4 +-
 .../boot/dts/omap3-overo-storm-gallop43.dts   |  4 +-
 .../arm/boot/dts/omap3-overo-storm-palo35.dts |  4 +-
 .../arm/boot/dts/omap3-overo-storm-palo43.dts |  4 +-
 .../arm/boot/dts/omap3-overo-storm-summit.dts |  2 +-
 arch/arm/boot/dts/omap3-overo-storm.dtsi      |  4 +-
 arch/arm/boot/dts/omap3-overo-summit.dts      |  2 +-
 arch/arm/boot/dts/omap3-overo.dtsi            |  4 +-
 arch/arm/boot/dts/omap3-pandora-1ghz.dts      |  6 +--
 arch/arm/boot/dts/omap3-pandora-600mhz.dts    |  6 +--
 arch/arm/boot/dts/omap3-pandora-common.dtsi   | 16 +++---
 arch/arm/boot/dts/omap3-sb-t35.dtsi           |  8 +--
 arch/arm/boot/dts/omap3-sbc-t3517.dts         |  4 +-
 arch/arm/boot/dts/omap3-sbc-t3530.dts         |  2 +-
 arch/arm/boot/dts/omap3-sbc-t3730.dts         |  2 +-
 arch/arm/boot/dts/omap3-sniper.dts            | 20 +++----
 arch/arm/boot/dts/omap3-tao3530.dtsi          | 20 +++----
 arch/arm/boot/dts/omap3-thunder.dts           |  6 +--
 arch/arm/boot/dts/omap3-zoom3.dts             | 18 +++----
 arch/arm/boot/dts/twl4030_omap3.dtsi          |  4 +-
 73 files changed, 349 insertions(+), 349 deletions(-)

diff --git a/arch/arm/boot/dts/am3517-craneboard.dts b/arch/arm/boot/dts/am3517-craneboard.dts
--- a/arch/arm/boot/dts/am3517-craneboard.dts
+++ b/arch/arm/boot/dts/am3517-craneboard.dts
@@ -72,7 +72,7 @@ &mmc3 {
 #include "tps65910.dtsi"
 
 &omap3_pmx_core {
-	tps_pins: pinmux_tps_pins {
+	tps_pins: tps-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21e0, PIN_INPUT_PULLUP | MUX_MODE0) /* sys_nirq.sys_nirq */
 		>;
diff --git a/arch/arm/boot/dts/am3517-evm-ui.dtsi b/arch/arm/boot/dts/am3517-evm-ui.dtsi
--- a/arch/arm/boot/dts/am3517-evm-ui.dtsi
+++ b/arch/arm/boot/dts/am3517-evm-ui.dtsi
@@ -197,7 +197,7 @@ &mcbsp2 {
 };
 
 &omap3_pmx_core {
-	mcbsp1_pins: pinmux_mcbsp1_pins {
+	mcbsp1_pins: mcbsp1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2190, PIN_OUTPUT | MUX_MODE0)	/* mcbsp1_dx.mcbsp1_dx */
 			OMAP3_CORE1_IOPAD(0x2192, PIN_INPUT | MUX_MODE0)	/* mcbsp1_dx.mcbsp1_dr */
@@ -206,7 +206,7 @@ OMAP3_CORE1_IOPAD(0x2198, PIN_INPUT | MUX_MODE0)	/* mcbsp1_clkx.mcbsp1_clkx */
 		>;
 	};
 
-	mcbsp2_pins: pinmux_mcbsp2_pins {
+	mcbsp2_pins: mcbsp2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x213c, PIN_INPUT | MUX_MODE0)	/* mcbsp2_fsx.mcbsp2_fsx */
 			OMAP3_CORE1_IOPAD(0x213e, PIN_INPUT | MUX_MODE0)	/* mcbsp2_clkx.mcbsp2_clkx */
diff --git a/arch/arm/boot/dts/am3517-evm.dts b/arch/arm/boot/dts/am3517-evm.dts
--- a/arch/arm/boot/dts/am3517-evm.dts
+++ b/arch/arm/boot/dts/am3517-evm.dts
@@ -242,7 +242,7 @@ &usbhsehci {
 
 &omap3_pmx_core {
 
-	ethernet_pins: pinmux_ethernet_pins {
+	ethernet_pins: ethernet-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21fe, PIN_INPUT | MUX_MODE0) /* rmii_mdio_data */
 			OMAP3_CORE1_IOPAD(0x2200, MUX_MODE0) /* rmii_mdio_clk */
@@ -257,28 +257,28 @@ OMAP3_CORE1_IOPAD(0x2210, PIN_INPUT_PULLDOWN | MUX_MODE0) /* rmii_50mhz_clk */
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_INPUT_PULLUP | MUX_MODE0)  /* i2c2_scl */
 			OMAP3_CORE1_IOPAD(0x21c0, PIN_INPUT_PULLUP | MUX_MODE0)  /* i2c2_sda */
 		>;
 	};
 
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT_PULLUP | MUX_MODE0)  /* i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT_PULLUP | MUX_MODE0)  /* i2c3_sda */
 		>;
 	};
 
-	leds_pins: pinmux_leds_pins {
+	leds_pins: leds-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a24, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* jtag_emu0.gpio_11 */
 			OMAP3_WKUP_IOPAD(0x2a26, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* jtag_emu1.gpio_31 */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_cmd.sdmmc1_cmd */
@@ -291,19 +291,19 @@ OMAP3_CORE1_IOPAD(0x2152, PIN_INPUT_PULLUP | MUX_MODE4) /* sdmmc1_dat5.gpio_127
 		>;
 	};
 
-	pwm_pins: pinmux_pwm_pins {
+	pwm_pins: pwm-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21dc, PIN_OUTPUT | MUX_MODE1)       /* mcspi2_cs0.gpt11_pwm */
 		>;
 	};
 
-	backlight_pins: pinmux_backlight_pins {
+	backlight_pins: backlight-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21de, PIN_OUTPUT | MUX_MODE4)       /* mcspi2_cs1.gpio_182 */
 		>;
 	};
 
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d2, PIN_OUTPUT | MUX_MODE4)       /* mcspi1_cs2.gpio_176 */
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)       /* dss_pclk.dss_pclk */
@@ -329,7 +329,7 @@ OMAP3_CORE1_IOPAD(0x20fa, PIN_OUTPUT | MUX_MODE0)       /* dss_data15.dss_data15
 		>;
 	};
 
-	hsusb1_rst_pins: pinmux_hsusb1_rst_pins {
+	hsusb1_rst_pins: hsusb1-rst-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20ba, PIN_OUTPUT | MUX_MODE4)	/* gpmc_ncs6.gpio_57 */
 		>;
@@ -338,7 +338,7 @@ OMAP3_CORE1_IOPAD(0x20ba, PIN_OUTPUT | MUX_MODE4)	/* gpmc_ncs6.gpio_57 */
 
 &omap3_pmx_core2 {
 
-	hsusb1_pins: pinmux_hsusb1_pins {
+	hsusb1_pins: hsusb1-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25d8, PIN_OUTPUT | MUX_MODE3)	/* etk_clk.hsusb1_stp */
 			OMAP3430_CORE2_IOPAD(0x25da, PIN_OUTPUT | MUX_MODE3)	/* etk_ctl.hsusb1_clk */
diff --git a/arch/arm/boot/dts/am3517-som.dtsi b/arch/arm/boot/dts/am3517-som.dtsi
--- a/arch/arm/boot/dts/am3517-som.dtsi
+++ b/arch/arm/boot/dts/am3517-som.dtsi
@@ -181,20 +181,20 @@ bluetooth {
 
 &omap3_pmx_core {
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba, PIN_INPUT_PULLUP | MUX_MODE0)  /* i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc, PIN_INPUT_PULLUP | MUX_MODE0)  /* i2c1_sda */
 		>;
 	};
 
-	wl12xx_buffer_pins: pinmux_wl12xx_buffer_pins {
+	wl12xx_buffer_pins: wl12xx-buffer-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2156, PIN_OUTPUT | MUX_MODE4)  /* mmc1_dat7.gpio_129 */
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)  /* mmc2_clk.mmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)  /* mmc2_cmd.mmc2_cmd */
@@ -210,19 +210,19 @@ OMAP3_CORE1_IOPAD(0x21c6, PIN_INPUT_PULLUP | MUX_MODE4)	/* hdq_sio.gpio_170 */
 		>;
 	};
 
-	rtc_pins: pinmux_rtc_pins {
+	rtc_pins: rtc-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20b6, PIN_INPUT_PULLUP | MUX_MODE4) /* gpmc_ncs4.gpio_55 */
 		>;
 	};
 
-	tsc2004_pins: pinmux_tsc2004_pins {
+	tsc2004_pins: tsc2004-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d2, PIN_INPUT | MUX_MODE4) /* gpmc_wait3.gpio_65 */
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_INPUT_PULLUP | MUX_MODE0)		/* uart2_cts */
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT_PULLUP | MUX_MODE0)	/* uart2_rts */
@@ -235,7 +235,7 @@ OMAP3_CORE1_IOPAD(0x20b8, PIN_INPUT | MUX_MODE0)		/* gpio_56 */
 
 &omap3_pmx_wkup {
 
-	wl12xx_wkup_pins: pinmux_wl12xx_wkup_pins {
+	wl12xx_wkup_pins: wl12xx-wkup-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a0c, PIN_OUTPUT | MUX_MODE4)	/* sys_boot1.gpio_3 */
 		>;
diff --git a/arch/arm/boot/dts/logicpd-som-lv-35xx-devkit.dts b/arch/arm/boot/dts/logicpd-som-lv-35xx-devkit.dts
--- a/arch/arm/boot/dts/logicpd-som-lv-35xx-devkit.dts
+++ b/arch/arm/boot/dts/logicpd-som-lv-35xx-devkit.dts
@@ -15,7 +15,7 @@ / {
 &omap3_pmx_core2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hsusb2_2_pins>;
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)            /* etk_d10.hsusb2_clk */
 			OMAP3430_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)            /* etk_d11.hsusb2_stp */
diff --git a/arch/arm/boot/dts/logicpd-som-lv-37xx-devkit.dts b/arch/arm/boot/dts/logicpd-som-lv-37xx-devkit.dts
--- a/arch/arm/boot/dts/logicpd-som-lv-37xx-devkit.dts
+++ b/arch/arm/boot/dts/logicpd-som-lv-37xx-devkit.dts
@@ -15,7 +15,7 @@ / {
 &omap3_pmx_core2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hsusb2_2_pins>;
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)            /* etk_d10.hsusb2_clk */
 			OMAP3630_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)            /* etk_d11.hsusb2_stp */
diff --git a/arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi b/arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi
--- a/arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi
+++ b/arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi
@@ -141,25 +141,25 @@ &mmc1 {
 };
 
 &omap3_pmx_core {
-	gpio_key_pins: pinmux_gpio_key_pins {
+	gpio_key_pins: gpio-key-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x212e, PIN_INPUT_PULLUP | MUX_MODE4)	/* cam_xclkb.gpio_111 / uP_GPIO_3*/
 		>;
 	};
 
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x215e, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* sdmmc2_dat1.gpio_133 / uP_GPIO_0 */
 		>;
 	};
 
-	lan9221_pins: pinmux_lan9221_pins {
+	lan9221_pins: lan9221-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2184, PIN_INPUT_PULLUP | MUX_MODE4)	/* mcbsp4_clkx.gpio_152 */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_OUTPUT | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT | MUX_MODE0)	/* sdmmc1_cmd.sdmmc1_cmd */
@@ -172,13 +172,13 @@ OMAP3_CORE1_IOPAD(0x212c, PIN_INPUT_PULLUP | MUX_MODE4)	/* cam_d11.gpio_110 */
 		>;
 	};
 
-	lcd_enable_pin: pinmux_lcd_enable_pin {
+	lcd_enable_pin: lcd-enable-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x218a, PIN_OUTPUT | PIN_OFF_OUTPUT_LOW | MUX_MODE4)       /* mcbsp4_fs.gpio_155 */
 		>;
 	};
 
-	dss_dpi_pins1: pinmux_dss_dpi_pins1 {
+	dss_dpi_pins1: dss-dpi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT_PULLDOWN | PIN_OFF_OUTPUT_LOW | MUX_MODE0)   /* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT_PULLDOWN | PIN_OFF_OUTPUT_LOW | MUX_MODE0)   /* dss_hsync.dss_hsync */
@@ -206,13 +206,13 @@ OMAP3_CORE1_IOPAD(0x20fa, PIN_OUTPUT_PULLDOWN | PIN_OFF_OUTPUT_LOW | MUX_MODE0)
 };
 
 &omap3_pmx_wkup {
-	led_pins_wkup: pinmux_led_pins_wkup {
+	led_pins_wkup: led-wkup-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a24, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* jtag_emu0.gpio_11 / uP_GPIO_1 */
 		>;
 	};
 
-	backlight_pins: pinmux_backlight_pins {
+	backlight_pins: backlight-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a16, PIN_OUTPUT | PIN_OFF_OUTPUT_LOW | MUX_MODE4)       /* sys_boot6.gpio_8 */
 		>;
diff --git a/arch/arm/boot/dts/logicpd-som-lv.dtsi b/arch/arm/boot/dts/logicpd-som-lv.dtsi
--- a/arch/arm/boot/dts/logicpd-som-lv.dtsi
+++ b/arch/arm/boot/dts/logicpd-som-lv.dtsi
@@ -157,7 +157,7 @@ &usbhsehci {
 
 &omap3_pmx_core {
 
-	mmc3_pins: pinmux_mm3_pins {
+	mmc3_pins: mm3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2164, PIN_INPUT_PULLUP | MUX_MODE3)	/* sdmmc2_dat4.sdmmc3_dat0 */
 			OMAP3_CORE1_IOPAD(0x2166, PIN_INPUT_PULLUP | MUX_MODE3)	/* sdmmc2_dat5.sdmmc3_dat1 */
@@ -167,7 +167,7 @@ OMAP3_CORE1_IOPAD(0x21d0, PIN_INPUT_PULLUP | MUX_MODE3) /* mcspi1_cs1.sdmmc3_cmd
 			OMAP3_CORE1_IOPAD(0x21d2, PIN_INPUT_PULLUP | MUX_MODE3)	/* mcspi1_cs2.sdmmc_clk */
 		>;
 	};
-	mcbsp2_pins: pinmux_mcbsp2_pins {
+	mcbsp2_pins: mcbsp2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x213c, PIN_INPUT | MUX_MODE0)        /* mcbsp2_fsx */
 			OMAP3_CORE1_IOPAD(0x213e, PIN_INPUT | MUX_MODE0)        /* mcbsp2_clkx */
@@ -175,7 +175,7 @@ OMAP3_CORE1_IOPAD(0x2140, PIN_INPUT | MUX_MODE0)        /* mcbsp2_dr */
 			OMAP3_CORE1_IOPAD(0x2142, PIN_OUTPUT | MUX_MODE0)       /* mcbsp2_dx */
 		>;
 	};
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_INPUT | MUX_MODE0)	/* uart2_cts.uart2_cts */
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT | MUX_MODE0)	/* uart2_rts .uart2_rts*/
@@ -184,7 +184,7 @@ OMAP3_CORE1_IOPAD(0x217a, PIN_INPUT | MUX_MODE0)	/* uart2_rx.uart2_rx */
 			OMAP3_CORE1_IOPAD(0x2198, PIN_OUTPUT | MUX_MODE4)	/* GPIO_162,BT_EN */
 		>;
 	};
-	mcspi1_pins: pinmux_mcspi1_pins {
+	mcspi1_pins: mcspi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c8, PIN_INPUT | MUX_MODE0)        /* mcspi1_clk.mcspi1_clk */
 			OMAP3_CORE1_IOPAD(0x21ca, PIN_OUTPUT | MUX_MODE0)       /* mcspi1_simo.mcspi1_simo */
@@ -193,7 +193,7 @@ OMAP3_CORE1_IOPAD(0x21ce, PIN_OUTPUT | MUX_MODE0)       /* mcspi1_cs0.mcspi1_cs0
 		>;
 	};
 
-	hsusb2_pins: pinmux_hsusb2_pins {
+	hsusb2_pins: hsusb2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d4, PIN_INPUT_PULLDOWN | MUX_MODE3)       /* mcspi1_cs3.hsusb2_data2 */
 			OMAP3_CORE1_IOPAD(0x21d6, PIN_INPUT_PULLDOWN | MUX_MODE3)       /* mcspi2_clk.hsusb2_data7 */
@@ -204,7 +204,7 @@ OMAP3_CORE1_IOPAD(0x21de, PIN_INPUT_PULLDOWN | MUX_MODE3)       /* mcspi2_cs1.hs
 		>;
 	};
 
-	hsusb_otg_pins: pinmux_hsusb_otg_pins {
+	hsusb_otg_pins: hsusb-otg-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21a2, PIN_INPUT | MUX_MODE0)	/* hsusb0_clk.hsusb0_clk */
 			OMAP3_CORE1_IOPAD(0x21a4, PIN_OUTPUT | MUX_MODE0)	/* hsusb0_stp.hsusb0_stp */
@@ -221,7 +221,7 @@ OMAP3_CORE1_IOPAD(0x21b8, PIN_INPUT | MUX_MODE0)	/* hsusb0_data7.hsusb0_data7 */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba, PIN_INPUT | MUX_MODE0)        /* i2c1_scl.i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc, PIN_INPUT | MUX_MODE0)        /* i2c1_sda.i2c1_sda */
@@ -229,21 +229,21 @@ OMAP3_CORE1_IOPAD(0x20ba, PIN_OUTPUT | MUX_MODE4)        /* gpmc_ncs6.gpio_57 */
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_INPUT | MUX_MODE0)	/* i2c2_scl */
 			OMAP3_CORE1_IOPAD(0x21c0, PIN_INPUT | MUX_MODE0)	/* i2c2_sda */
 		>;
 	};
 
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT | MUX_MODE0)	/* i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT | MUX_MODE0)	/* i2c3_sda */
 		>;
 	};
 
-	tsc2004_pins: pinmux_tsc2004_pins {
+	tsc2004_pins: tsc2004-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2186, PIN_INPUT | MUX_MODE4)	/* mcbsp4_dr.gpio_153 */
 		>;
@@ -252,12 +252,12 @@ OMAP3_CORE1_IOPAD(0x2186, PIN_INPUT | MUX_MODE4)	/* mcbsp4_dr.gpio_153 */
 
 &omap3_pmx_wkup {
 
-	hsusb2_reset_pin: pinmux_hsusb1_reset_pin {
+	hsusb2_reset_pin: hsusb1-reset-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a0e, PIN_OUTPUT | MUX_MODE4)	/* sys_boot2.gpio_4 */
 		>;
 	};
-	wl127x_gpio: pinmux_wl127x_gpio_pin {
+	wl127x_gpio: wl127x-gpio-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a0a, PIN_INPUT | MUX_MODE4)		/* sys_boot0.gpio_2 */
 			OMAP3_WKUP_IOPAD(0x2a0c, PIN_OUTPUT | MUX_MODE4)	/* sys_boot1.gpio_3 */
diff --git a/arch/arm/boot/dts/logicpd-torpedo-35xx-devkit.dts b/arch/arm/boot/dts/logicpd-torpedo-35xx-devkit.dts
--- a/arch/arm/boot/dts/logicpd-torpedo-35xx-devkit.dts
+++ b/arch/arm/boot/dts/logicpd-torpedo-35xx-devkit.dts
@@ -13,7 +13,7 @@ / {
 };
 
 &omap3_pmx_core {
-	isp1763_pins: pinmux_isp1763_pins {
+	isp1763_pins: isp1763-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2154,  PIN_INPUT_PULLUP | MUX_MODE4)	/* sdmmc1_dat6.gpio_128 */
 		>;
diff --git a/arch/arm/boot/dts/logicpd-torpedo-37xx-devkit.dts b/arch/arm/boot/dts/logicpd-torpedo-37xx-devkit.dts
--- a/arch/arm/boot/dts/logicpd-torpedo-37xx-devkit.dts
+++ b/arch/arm/boot/dts/logicpd-torpedo-37xx-devkit.dts
@@ -65,7 +65,7 @@ &mt9p031_out {
 };
 
 &omap3_pmx_core {
-	mmc3_pins: pinmux_mm3_pins {
+	mmc3_pins: mm3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2164, PIN_INPUT_PULLUP | MUX_MODE3)	/* sdmmc2_dat4.sdmmc3_dat0 */
 			OMAP3_CORE1_IOPAD(0x2166, PIN_INPUT_PULLUP | MUX_MODE3)	/* sdmmc2_dat5.sdmmc3_dat1 */
@@ -78,7 +78,7 @@ OMAP3_CORE1_IOPAD(0x218e, PIN_OUTPUT | MUX_MODE4)	/* mcbsp1_fsr.gpio_157 */
 };
 
 &omap3_pmx_core2 {
-	mmc3_core2_pins: pinmux_mmc3_core2_pins {
+	mmc3_core2_pins: mmc3-core2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25d8, PIN_INPUT_PULLUP | MUX_MODE2)   /* etk_clk.sdmmc3_clk */
 			OMAP3630_CORE2_IOPAD(0x25da, PIN_INPUT_PULLUP | MUX_MODE2)   /* etk_ctl.sdmmc3_cmd */
@@ -88,7 +88,7 @@ OMAP3630_CORE2_IOPAD(0x25da, PIN_INPUT_PULLUP | MUX_MODE2)   /* etk_ctl.sdmmc3_c
 
 /* The gpio muxing between omap3530 and dm3730 is different for GPIO_128 */
 &omap3_pmx_wkup {
-	isp1763_pins: pinmux_isp1763_pins {
+	isp1763_pins: isp1763-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a58, PIN_INPUT_PULLUP | MUX_MODE4)	/* reserved.gpio_128 */
 		>;
diff --git a/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi b/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
--- a/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
+++ b/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
@@ -209,33 +209,33 @@ &mmc1 {
 };
 
 &omap3_pmx_core {
-	gpio_key_pins: pinmux_gpio_key_pins {
+	gpio_key_pins: gpio-key-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d6, PIN_INPUT_PULLUP | MUX_MODE4)	/* mcspi2_clk.gpio_178 */
 			OMAP3_CORE1_IOPAD(0x21dc, PIN_INPUT_PULLUP | MUX_MODE4)	/* mcspi2_cs0.gpio_181 */
 		>;
 	};
 
-	hdq_pins: hdq_pins {
+	hdq_pins: hdq-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c6, PIN_INPUT_PULLUP | MUX_MODE0) /* hdq_sio */
 		>;
 	};
 
-	pwm_pins: pinmux_pwm_pins {
+	pwm_pins: pwm-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20B8, PIN_OUTPUT | PIN_OFF_OUTPUT_LOW | MUX_MODE3)       /* gpmc_ncs5.gpt_10_pwm_evt */
 		>;
 	};
 
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d8, PIN_OUTPUT | MUX_MODE4)	/* gpio_179 */
 			OMAP3_CORE1_IOPAD(0x21da, PIN_OUTPUT | MUX_MODE4)	/* gpio_180 */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_OUTPUT | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT | MUX_MODE0)	/* sdmmc1_cmd.sdmmc1_cmd */
@@ -246,19 +246,19 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT | MUX_MODE0)	/* sdmmc1_dat3.sdmmc1_dat3 */
 		>;
 	};
 
-	tsc2004_pins: pinmux_tsc2004_pins {
+	tsc2004_pins: tsc2004-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2186, PIN_INPUT | MUX_MODE4)	/* mcbsp4_dr.gpio_153 */
 		>;
 	};
 
-	backlight_pins: pinmux_backlight_pins {
+	backlight_pins: backlight-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2188, PIN_OUTPUT | PIN_OFF_OUTPUT_LOW | MUX_MODE4)       /* mcbsp4_dx.gpio_154 */
 		>;
 	};
 
-	isp_pins: pinmux_isp_pins {
+	isp_pins: isp-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x210c, PIN_INPUT | MUX_MODE0)   /* cam_hs.cam_hs */
 			OMAP3_CORE1_IOPAD(0x210e, PIN_INPUT | MUX_MODE0)   /* cam_vs.cam_vs */
@@ -276,13 +276,13 @@ OMAP3_CORE1_IOPAD(0x2124, PIN_INPUT | MUX_MODE0)   /* cam_d7.cam_d7 */
 		>;
 	};
 
-	panel_pwr_pins: pinmux_panel_pwr_pins {
+	panel_pwr_pins: panel-pwr-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x218a, PIN_OUTPUT | PIN_OFF_OUTPUT_LOW | MUX_MODE4)       /* mcbsp4_fs.gpio_155 */
 		>;
 	};
 
-	dss_dpi_pins1: pinmux_dss_dpi_pins1 {
+	dss_dpi_pins1: dss-dpi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT_PULLDOWN | PIN_OFF_OUTPUT_LOW | MUX_MODE0)   /* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT_PULLDOWN | PIN_OFF_OUTPUT_LOW | MUX_MODE0)   /* dss_hsync.dss_hsync */
@@ -313,20 +313,20 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT_PULLDOWN | PIN_OFF_OUTPUT_LOW | MUX_MODE3)
 };
 
 &omap3_pmx_wkup {
-	gpio_key_pins_wkup: pinmux_gpio_key_pins_wkup {
+	gpio_key_pins_wkup: gpio-key-wkup-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a0a, PIN_INPUT_PULLUP | MUX_MODE4)	/* sys_boot0.gpio_2 */
 			OMAP3_WKUP_IOPAD(0x2a14, PIN_INPUT_PULLUP | MUX_MODE4)	/* sys_boot5.gpio_7 */
 		>;
 	};
 
-	lan9221_pins: pinmux_lan9221_pins {
+	lan9221_pins: lan9221-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a5a, PIN_INPUT | MUX_MODE4)		/* reserved.gpio_129 */
 		>;
 	};
 
-	mmc1_cd: pinmux_mmc1_cd {
+	mmc1_cd: mmc1-cd-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a54, PIN_INPUT_PULLUP | MUX_MODE4)	/* reserved.gpio_127 */
 		>;
diff --git a/arch/arm/boot/dts/logicpd-torpedo-som.dtsi b/arch/arm/boot/dts/logicpd-torpedo-som.dtsi
--- a/arch/arm/boot/dts/logicpd-torpedo-som.dtsi
+++ b/arch/arm/boot/dts/logicpd-torpedo-som.dtsi
@@ -111,7 +111,7 @@ at24@50 {
 };
 
 &omap3_pmx_core {
-	mcbsp2_pins: pinmux_mcbsp2_pins {
+	mcbsp2_pins: mcbsp2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x213c, PIN_INPUT | MUX_MODE0)        /* mcbsp2_fsx */
 			OMAP3_CORE1_IOPAD(0x213e, PIN_INPUT | MUX_MODE0)        /* mcbsp2_clkx */
@@ -119,7 +119,7 @@ OMAP3_CORE1_IOPAD(0x2140, PIN_INPUT | MUX_MODE0)        /* mcbsp2_dr */
 			OMAP3_CORE1_IOPAD(0x2142, PIN_OUTPUT | MUX_MODE0)       /* mcbsp2_dx */
 		>;
 	};
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_INPUT | MUX_MODE0)	/* uart2_cts.uart2_cts */
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT | MUX_MODE0)	/* uart2_rts .uart2_rts*/
@@ -128,7 +128,7 @@ OMAP3_CORE1_IOPAD(0x217a, PIN_INPUT | MUX_MODE0)	/* uart2_rx.uart2_rx */
 			OMAP3_CORE1_IOPAD(0x2198, PIN_OUTPUT | MUX_MODE4)	/* GPIO_162,BT_EN */
 		>;
 	};
-	mcspi1_pins: pinmux_mcspi1_pins {
+	mcspi1_pins: mcspi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c8, PIN_INPUT | MUX_MODE0)        /* mcspi1_clk.mcspi1_clk */
 			OMAP3_CORE1_IOPAD(0x21ca, PIN_OUTPUT | MUX_MODE0)       /* mcspi1_simo.mcspi1_simo */
@@ -136,7 +136,7 @@ OMAP3_CORE1_IOPAD(0x21cc, PIN_INPUT_PULLUP | MUX_MODE0) /* mcspi1_somi.mcspi1_so
 			OMAP3_CORE1_IOPAD(0x21ce, PIN_OUTPUT | MUX_MODE0)       /* mcspi1_cs0.mcspi1_cs0 */
 		>;
 	};
-	hsusb_otg_pins: pinmux_hsusb_otg_pins {
+	hsusb_otg_pins: hsusb-otg-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21a2, PIN_INPUT | MUX_MODE0)	/* hsusb0_clk.hsusb0_clk */
 			OMAP3_CORE1_IOPAD(0x21a4, PIN_OUTPUT | MUX_MODE0)	/* hsusb0_stp.hsusb0_stp */
@@ -153,19 +153,19 @@ OMAP3_CORE1_IOPAD(0x21b6, PIN_INPUT | MUX_MODE0)	/* hsusb0_data6.hsusb0_data6 */
 			OMAP3_CORE1_IOPAD(0x21b8, PIN_INPUT | MUX_MODE0)	/* hsusb0_data7.hsusb0_data7 */
 		>;
 	};
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba, PIN_INPUT | MUX_MODE0)        /* i2c1_scl.i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc, PIN_INPUT | MUX_MODE0)        /* i2c1_sda.i2c1_sda */
 		>;
 	};
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_INPUT | MUX_MODE0)	/* i2c2_scl */
 			OMAP3_CORE1_IOPAD(0x21c0, PIN_INPUT | MUX_MODE0)	/* i2c2_sda */
 		>;
 	};
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT | MUX_MODE0)	/* i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT | MUX_MODE0)	/* i2c3_sda */
diff --git a/arch/arm/boot/dts/omap3-beagle-xm.dts b/arch/arm/boot/dts/omap3-beagle-xm.dts
--- a/arch/arm/boot/dts/omap3-beagle-xm.dts
+++ b/arch/arm/boot/dts/omap3-beagle-xm.dts
@@ -90,7 +90,7 @@ hsusb2_power: hsusb2_power_reg {
 	};
 
 	/* HS USB Host PHY on PORT 2 */
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		reset-gpios = <&gpio5 19 GPIO_ACTIVE_LOW>; /* gpio_147 */
 		vcc-supply = <&hsusb2_power>;
@@ -183,13 +183,13 @@ etm_out: endpoint {
 };
 
 &omap3_pmx_wkup {
-	gpio1_pins: pinmux_gpio1_pins {
+	gpio1_pins: gpio1-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a0e, PIN_INPUT | PIN_OFF_WAKEUPENABLE | MUX_MODE4) /* sys_boot2.gpio_4 */
 		>;
 	};
 
-	dss_dpi_pins2: pinmux_dss_dpi_pins1 {
+	dss_dpi_pins2: dss-dpi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a0a, PIN_OUTPUT | MUX_MODE3)   /* sys_boot0.dss_data18 */
 			OMAP3_WKUP_IOPAD(0x2a0c, PIN_OUTPUT | MUX_MODE3)   /* sys_boot1.dss_data19 */
@@ -207,14 +207,14 @@ &omap3_pmx_core {
 			&hsusb2_pins
 	>;
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | MUX_MODE0)	/* uart3_rx_irrx.uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)	/* uart3_tx_irtx.uart3_tx_irtx OUTPUT | MODE0 */
 		>;
 	};
 
-	hsusb2_pins: pinmux_hsusb2_pins {
+	hsusb2_pins: hsusb2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d4, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi1_cs3.hsusb2_data2 */
 			OMAP3_CORE1_IOPAD(0x21d6, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_clk.hsusb2_data7 */
@@ -225,7 +225,7 @@ OMAP3_CORE1_IOPAD(0x21de, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_cs1.hsusb2_d
 		>;
 	};
 
-	dss_dpi_pins1: pinmux_dss_dpi_pins2 {
+	dss_dpi_pins1: dss-dpi2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)   /* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)   /* dss_hsync.dss_hsync */
@@ -261,7 +261,7 @@ &omap3_pmx_core2 {
 			&hsusb2_2_pins
 	>;
 
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		/* etk_d10.hsusb2_clk */
 			OMAP3630_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		/* etk_d11.hsusb2_stp */
diff --git a/arch/arm/boot/dts/omap3-beagle.dts b/arch/arm/boot/dts/omap3-beagle.dts
--- a/arch/arm/boot/dts/omap3-beagle.dts
+++ b/arch/arm/boot/dts/omap3-beagle.dts
@@ -57,7 +57,7 @@ hsusb2_power: hsusb2_power_reg {
 	};
 
 	/* HS USB Host PHY on PORT 2 */
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		reset-gpios = <&gpio5 19 GPIO_ACTIVE_LOW>;	/* gpio_147 */
 		vcc-supply = <&hsusb2_power>;
@@ -170,7 +170,7 @@ etm_out: endpoint {
 };
 
 &omap3_pmx_wkup {
-	gpio1_pins: pinmux_gpio1_pins {
+	gpio1_pins: gpio1-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a14, PIN_INPUT | PIN_OFF_WAKEUPENABLE | MUX_MODE4) /* sys_boot5.gpio_7 */
 		>;
@@ -183,7 +183,7 @@ &omap3_pmx_core {
 			&hsusb2_pins
 	>;
 
-	hsusb2_pins: pinmux_hsusb2_pins {
+	hsusb2_pins: hsusb2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d4, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi1_cs3.hsusb2_data2 */
 			OMAP3_CORE1_IOPAD(0x21d6, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_clk.hsusb2_data7 */
@@ -194,20 +194,20 @@ OMAP3_CORE1_IOPAD(0x21de, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_cs1.hsusb2_d
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | PIN_OFF_WAKEUPENABLE | MUX_MODE0) /* uart3_rx_irrx.uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0) /* uart3_tx_irtx.uart3_tx_irtx */
 		>;
 	};
 
-	tfp410_pins: pinmux_tfp410_pins {
+	tfp410_pins: tfp410-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c6, PIN_OUTPUT | MUX_MODE4)	/* hdq_sio.gpio_170 */
 		>;
 	};
 
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)   /* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)   /* dss_hsync.dss_hsync */
@@ -247,7 +247,7 @@ &omap3_pmx_core2 {
 			&hsusb2_2_pins
 	>;
 
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		/* etk_d10.hsusb2_clk */
 			OMAP3430_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		/* etk_d11.hsusb2_stp */
diff --git a/arch/arm/boot/dts/omap3-cm-t3517.dts b/arch/arm/boot/dts/omap3-cm-t3517.dts
--- a/arch/arm/boot/dts/omap3-cm-t3517.dts
+++ b/arch/arm/boot/dts/omap3-cm-t3517.dts
@@ -43,7 +43,7 @@ wl12xx_vaux2: wl12xx_vaux2 {
 
 &omap3_pmx_wkup {
 
-	wl12xx_wkup_pins: pinmux_wl12xx_wkup_pins {
+	wl12xx_wkup_pins: wl12xx-wkup-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a0e, PIN_OUTPUT | MUX_MODE4)	/* sys_boot2.gpio_4 */
 			OMAP3_WKUP_IOPAD(0x2a12, PIN_OUTPUT | MUX_MODE4)	/* sys_boot4.gpio_6 */
@@ -53,25 +53,25 @@ OMAP3_WKUP_IOPAD(0x2a12, PIN_OUTPUT | MUX_MODE4)	/* sys_boot4.gpio_6 */
 
 &omap3_pmx_core {
 
-	phy1_reset_pins: pinmux_hsusb1_phy_reset_pins {
+	phy1_reset_pins: hsusb1-phy-reset-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2178, PIN_OUTPUT | MUX_MODE4)	/* uart2_tx.gpio_146 */
 		>;
 	};
 
-	phy2_reset_pins: pinmux_hsusb2_phy_reset_pins {
+	phy2_reset_pins: hsusb2-phy-reset-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x217a, PIN_OUTPUT | MUX_MODE4)	/* uart2_rx.gpio_147 */
 		>;
 	};
 
-	otg_drv_vbus: pinmux_otg_drv_vbus {
+	otg_drv_vbus: otg-drv-vbus-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2210, PIN_INPUT_PULLDOWN | MUX_MODE0) /* rmii_50MHz_clk.usb0_drvvbus */
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_cmd.sdmmc2_cmd */
@@ -82,14 +82,14 @@ OMAP3_CORE1_IOPAD(0x2162, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_dat3.sdmmc2_da
 		>;
 	};
 
-	wl12xx_core_pins: pinmux_wl12xx_core_pins {
+	wl12xx_core_pins: wl12xx-core-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20b8, PIN_OUTPUT | MUX_MODE4)	/* gpmc_ncs5.gpio_56 */
 			OMAP3_CORE1_IOPAD(0x2176, PIN_INPUT_PULLUP | MUX_MODE4)	/* uart2_rts.gpio_145 */
 		>;
 	};
 
-	usb_hub_pins: pinmux_usb_hub_pins {
+	usb_hub_pins: usb-hub-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2184, PIN_OUTPUT | MUX_MODE4)	/* mcbsp4_clkx.gpio_152 - USB HUB RST */
 		>;
diff --git a/arch/arm/boot/dts/omap3-cm-t3530.dts b/arch/arm/boot/dts/omap3-cm-t3530.dts
--- a/arch/arm/boot/dts/omap3-cm-t3530.dts
+++ b/arch/arm/boot/dts/omap3-cm-t3530.dts
@@ -23,7 +23,7 @@ mmc2_sdio_reset: regulator-mmc2-sdio-reset {
 };
 
 &omap3_pmx_core {
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_cmd.sdmmc2_cmd */
diff --git a/arch/arm/boot/dts/omap3-cm-t3730.dts b/arch/arm/boot/dts/omap3-cm-t3730.dts
--- a/arch/arm/boot/dts/omap3-cm-t3730.dts
+++ b/arch/arm/boot/dts/omap3-cm-t3730.dts
@@ -33,7 +33,7 @@ wl12xx_vaux2: wl12xx_vaux2 {
 };
 
 &omap3_pmx_wkup {
-	dss_dpi_pins_cm_t3730: pinmux_dss_dpi_pins_cm_t3730 {
+	dss_dpi_pins_cm_t3730: dss-dpi-cm-t3730-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a08, PIN_OUTPUT | MUX_MODE3)   /* sys_boot0.dss_data18 */
 			OMAP3_WKUP_IOPAD(0x2a0c, PIN_OUTPUT | MUX_MODE3)   /* sys_boot1.dss_data19 */
@@ -47,7 +47,7 @@ OMAP3_WKUP_IOPAD(0x2a16, PIN_OUTPUT | MUX_MODE3)   /* sys_boot6.dss_data23 */
 
 &omap3_pmx_core {
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_cmd.sdmmc2_cmd */
@@ -58,7 +58,7 @@ OMAP3_CORE1_IOPAD(0x2162, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_dat3.sdmmc2_da
 		>;
 	};
 
-	wl12xx_gpio: pinmux_wl12xx_gpio {
+	wl12xx_gpio: wl12xx-gpio-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20e2, PIN_OUTPUT | MUX_MODE4)	/* dss_data3.gpio_73 */
 			OMAP3_CORE1_IOPAD(0x2164, PIN_INPUT | MUX_MODE4)	/* sdmmc2_dat4.gpio_136 */
diff --git a/arch/arm/boot/dts/omap3-cm-t3x.dtsi b/arch/arm/boot/dts/omap3-cm-t3x.dtsi
--- a/arch/arm/boot/dts/omap3-cm-t3x.dtsi
+++ b/arch/arm/boot/dts/omap3-cm-t3x.dtsi
@@ -47,7 +47,7 @@ hsusb1_phy: hsusb1_phy {
 	};
 
 	/* HS USB Host PHY on PORT 2 */
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		vcc-supply = <&hsusb2_power>;
 		#phy-cells = <0>;
@@ -74,14 +74,14 @@ tv_connector_in: endpoint {
 
 &omap3_pmx_core {
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT  | MUX_MODE0)	/* uart3_rx_irrx.uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)	/* uart3_tx_irtx.uart3_tx_irtx */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_cmd.sdmmc1_cmd */
@@ -92,13 +92,13 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_dat3.sdmmc1_da
 		>;
 	};
 
-	green_led_pins: pinmux_green_led_pins {
+	green_led_pins: green-led-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21e2, PIN_OUTPUT | MUX_MODE4)	/* sys_clkout2.gpio_186 */
 		>;
 	};
 
-	dss_dpi_pins_common: pinmux_dss_dpi_pins_common {
+	dss_dpi_pins_common: dss-dpi-common-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)	/* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)	/* dss_hsync.dss_hsync */
@@ -126,7 +126,7 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE0)	/* dss_data23.dss_data23 */
 		>;
 	};
 
-	dss_dpi_pins_cm_t35x: pinmux_dss_dpi_pins_cm_t35x {
+	dss_dpi_pins_cm_t35x: dss-dpi-cm-t35x-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20dc, PIN_OUTPUT | MUX_MODE0)	/* dss_data0.dss_data0 */
 			OMAP3_CORE1_IOPAD(0x20de, PIN_OUTPUT | MUX_MODE0)	/* dss_data1.dss_data1 */
@@ -137,13 +137,13 @@ OMAP3_CORE1_IOPAD(0x20e6, PIN_OUTPUT | MUX_MODE0)	/* dss_data5.dss_data5 */
 		>;
 	};
 
-	ads7846_pins: pinmux_ads7846_pins {
+	ads7846_pins: ads7846-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20ba, PIN_INPUT_PULLUP | MUX_MODE4)	/* gpmc_ncs6.gpio_57 */
 		>;
 	};
 
-	mcspi1_pins: pinmux_mcspi1_pins {
+	mcspi1_pins: mcspi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c8, PIN_INPUT | MUX_MODE0)	/* mcspi1_clk */
 			OMAP3_CORE1_IOPAD(0x21ca, PIN_INPUT | MUX_MODE0)	/* mcspi1_simo */
@@ -152,14 +152,14 @@ OMAP3_CORE1_IOPAD(0x21ce, PIN_INPUT_PULLDOWN | MUX_MODE0) /* mcspi1_cs0 */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba, PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc, PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c1_sda */
 		>;
 	};
 
-	mcbsp2_pins: pinmux_mcbsp2_pins {
+	mcbsp2_pins: mcbsp2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x213c, PIN_INPUT | MUX_MODE0)	/* mcbsp2_fsx */
 			OMAP3_CORE1_IOPAD(0x213e, PIN_INPUT | MUX_MODE0)	/* mcbsp2_clkx */
diff --git a/arch/arm/boot/dts/omap3-cm-t3x30.dtsi b/arch/arm/boot/dts/omap3-cm-t3x30.dtsi
--- a/arch/arm/boot/dts/omap3-cm-t3x30.dtsi
+++ b/arch/arm/boot/dts/omap3-cm-t3x30.dtsi
@@ -22,14 +22,14 @@ sound {
 
 &omap3_pmx_core {
 
-	smsc1_pins: pinmux_smsc1_pins {
+	smsc1_pins: smsc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20b8, PIN_OUTPUT | MUX_MODE0)	/* gpmc_ncs5.gpmc_ncs5 */
 			OMAP3_CORE1_IOPAD(0x219a, PIN_INPUT_PULLUP | MUX_MODE4)	/* uart3_cts_rctx.gpio_163 */
 		>;
 	};
 
- 	hsusb0_pins: pinmux_hsusb0_pins {
+ 	hsusb0_pins: hsusb0-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21a2, PIN_OUTPUT | MUX_MODE0)		/* hsusb0_clk.hsusb0_clk */
 			OMAP3_CORE1_IOPAD(0x21a4, PIN_OUTPUT | MUX_MODE0)		/* hsusb0_stp.hsusb0_stp */
diff --git a/arch/arm/boot/dts/omap3-devkit8000-common.dtsi b/arch/arm/boot/dts/omap3-devkit8000-common.dtsi
--- a/arch/arm/boot/dts/omap3-devkit8000-common.dtsi
+++ b/arch/arm/boot/dts/omap3-devkit8000-common.dtsi
@@ -312,7 +312,7 @@ ethernet@6,0 {
 };
 
 &omap3_pmx_core {
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)	/* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)	/* dss_hsync.dss_hsync */
diff --git a/arch/arm/boot/dts/omap3-echo.dts b/arch/arm/boot/dts/omap3-echo.dts
--- a/arch/arm/boot/dts/omap3-echo.dts
+++ b/arch/arm/boot/dts/omap3-echo.dts
@@ -524,13 +524,13 @@ codec0: codec@18 {
 #include "tps65910.dtsi"
 
 &omap3_pmx_core {
-	tps_pins: pinmux_tps_pins {
+	tps_pins: tps-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21e0, PIN_INPUT_PULLUP | PIN_OFF_INPUT_PULLUP | PIN_OFF_OUTPUT_LOW | PIN_OFF_WAKEUPENABLE | MUX_MODE0) /* sys_nirq.sys_nirq */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20dc, PIN_INPUT | MUX_MODE4)	/* dss_data0.gpio_70 */
 			OMAP3_CORE1_IOPAD(0x20e0, PIN_INPUT | MUX_MODE4)	/* dss_data2.gpio_72 */
@@ -540,7 +540,7 @@ OMAP3_CORE1_IOPAD(0x2a1a, PIN_OUTPUT | MUX_MODE0)	/* sys_clkout1.sys_clkout1 */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_cmd.sdmmc1_cmd */
@@ -551,7 +551,7 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_dat3.sdmmc1_d
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_cmd.sdmmc2_cmd */
@@ -566,7 +566,7 @@ OMAP3_CORE1_IOPAD(0x216a, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_dat7.sdmmc2_d
 		>;
 	};
 
-	mcbsp2_pins: pinmux_mcbsp2_pins {
+	mcbsp2_pins: mcbsp2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x213c, PIN_INPUT | MUX_MODE0)	/* mcbsp2_fsx.mcbsp2_fsx */
 			OMAP3_CORE1_IOPAD(0x213e, PIN_INPUT | MUX_MODE0)	/* mcbsp2_clkx.mcbsp2_clkx */
@@ -577,7 +577,7 @@ OMAP3_CORE1_IOPAD(0x2142, PIN_OUTPUT | MUX_MODE0)	/* mcbsp2_dx.mcbsp2_dx */
 };
 
 &omap3_pmx_core2 {
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25d8, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_clk.sdmmc3_clk */
 			OMAP3630_CORE2_IOPAD(0x25da, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_ctl.sdmmc3_cmd */
diff --git a/arch/arm/boot/dts/omap3-evm-37xx.dts b/arch/arm/boot/dts/omap3-evm-37xx.dts
--- a/arch/arm/boot/dts/omap3-evm-37xx.dts
+++ b/arch/arm/boot/dts/omap3-evm-37xx.dts
@@ -17,7 +17,7 @@ &omap3_pmx_core2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hsusb2_2_pins>;
 
-	ehci_phy_pins: pinmux_ehci_phy_pins {
+	ehci_phy_pins: ehci-phy-pins {
 		pinctrl-single,pins = <
 
 		/* EHCI PHY reset GPIO etk_d7.gpio_21 */
@@ -29,7 +29,7 @@ OMAP3630_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)
 	};
 
 	/* Used by OHCI and EHCI. OHCI won't work without external phy */
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 
 		/* etk_d10.hsusb2_clk */
diff --git a/arch/arm/boot/dts/omap3-evm-common.dtsi b/arch/arm/boot/dts/omap3-evm-common.dtsi
--- a/arch/arm/boot/dts/omap3-evm-common.dtsi
+++ b/arch/arm/boot/dts/omap3-evm-common.dtsi
@@ -25,7 +25,7 @@ hsusb2_power: hsusb2_power_reg {
 	};
 
 	/* HS USB Host PHY on PORT 2 */
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		reset-gpios = <&gpio1 21 GPIO_ACTIVE_LOW>; /* gpio_21 */
 		vcc-supply = <&hsusb2_power>;
diff --git a/arch/arm/boot/dts/omap3-evm-processor-common.dtsi b/arch/arm/boot/dts/omap3-evm-processor-common.dtsi
--- a/arch/arm/boot/dts/omap3-evm-processor-common.dtsi
+++ b/arch/arm/boot/dts/omap3-evm-processor-common.dtsi
@@ -33,7 +33,7 @@ &omap3_pmx_core {
 	pinctrl-names = "default";
 	pinctrl-0 = <&on_board_gpio_61 &hsusb2_pins>;
 
-	dss_dpi_pins1: pinmux_dss_dpi_pins2 {
+	dss_dpi_pins1: dss-dpi2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)   /* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)   /* dss_hsync.dss_hsync */
@@ -62,7 +62,7 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE3)   /* dss_data23.dss_data5 */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_OUTPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_cmd.sdmmc1_cmd */
@@ -78,7 +78,7 @@ OMAP3_CORE1_IOPAD(0x2156, PIN_INPUT_PULLUP | MUX_MODE0) 	/* sdmmc1_dat7.sdmmc1_d
 	};
 
 	/* NOTE: Clocked externally, needs INPUT also for sdmmc2_clk.sdmmc2_clk */
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_cmd.sdmmc2_cmd */
@@ -93,7 +93,7 @@ OMAP3_CORE1_IOPAD(0x216a, PIN_INPUT | MUX_MODE1)	/* sdmmc2_dat7.sdmmc2_clkin */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, WAKEUP_EN | PIN_INPUT | MUX_MODE0) /* uart3_rx_irrx.uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)		/* uart3_tx_irtx.uart3_tx_irtx */
@@ -101,14 +101,14 @@ OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)		/* uart3_tx_irtx.uart3_tx_irt
 	};
 
 	/* Devices are routed with gpmc_nbe1.gpio_61 to on-board devices */
-	on_board_gpio_61: pinmux_ehci_port_select_pins {
+	on_board_gpio_61: ehci-port-select-pins {
 		pinctrl-single,pins = <
 		OMAP3_CORE1_IOPAD(0x20c8, PIN_OUTPUT | MUX_MODE4)
 		>;
 	};
 
 	/* Used by OHCI and EHCI. OHCI won't work without external phy */
-	hsusb2_pins: pinmux_hsusb2_pins {
+	hsusb2_pins: hsusb2-pins {
 		pinctrl-single,pins = <
 
 		/* mcspi1_cs3.hsusb2_data2 */
@@ -135,14 +135,14 @@ OMAP3_CORE1_IOPAD(0x21de, PIN_INPUT_PULLDOWN | MUX_MODE3)
 	 * Note that gpio_150 pulled high with internal pull to prevent wlcore
 	 * reset on return from off mode in idle.
 	 */
-	wl12xx_gpio: pinmux_wl12xx_gpio {
+	wl12xx_gpio: wl12xx-gpio-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2180, PIN_INPUT_PULLUP | MUX_MODE7)		/* uart1_cts.gpio_150 */
 			OMAP3_CORE1_IOPAD(0x217e, PIN_INPUT | MUX_MODE4)		/* uart1_rts.gpio_149 */
 		>;
 	};
 
-	smsc911x_pins: pinmux_smsc911x_pins {
+	smsc911x_pins: smsc911x-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d2, PIN_INPUT | MUX_MODE4)		/* mcspi1_cs2.gpio_176 */
 		>;
@@ -150,7 +150,7 @@ OMAP3_CORE1_IOPAD(0x21d2, PIN_INPUT | MUX_MODE4)		/* mcspi1_cs2.gpio_176 */
 };
 
 &omap3_pmx_wkup {
-	dss_dpi_pins2: pinmux_dss_dpi_pins1 {
+	dss_dpi_pins2: dss-dpi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a0a, PIN_OUTPUT | MUX_MODE3)   /* sys_boot0.dss_data18 */
 			OMAP3_WKUP_IOPAD(0x2a0c, PIN_OUTPUT | MUX_MODE3)   /* sys_boot1.dss_data19 */
diff --git a/arch/arm/boot/dts/omap3-evm.dts b/arch/arm/boot/dts/omap3-evm.dts
--- a/arch/arm/boot/dts/omap3-evm.dts
+++ b/arch/arm/boot/dts/omap3-evm.dts
@@ -17,7 +17,7 @@ &omap3_pmx_core2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hsusb2_2_pins>;
 
-	ehci_phy_pins: pinmux_ehci_phy_pins {
+	ehci_phy_pins: ehci-phy-pins {
 		pinctrl-single,pins = <
 
 		/* EHCI PHY reset GPIO etk_d7.gpio_21 */
@@ -29,7 +29,7 @@ OMAP3430_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)
 	};
 
 	/* Used by OHCI and EHCI. OHCI won't work without external phy */
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 
 		/* etk_d10.hsusb2_clk */
diff --git a/arch/arm/boot/dts/omap3-gta04.dtsi b/arch/arm/boot/dts/omap3-gta04.dtsi
--- a/arch/arm/boot/dts/omap3-gta04.dtsi
+++ b/arch/arm/boot/dts/omap3-gta04.dtsi
@@ -153,7 +153,7 @@ pwm11: pwm-11 {
 		ti,clock-source = <0x01>;
 	};
 
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		reset-gpios = <&gpio6 14 GPIO_ACTIVE_LOW>;
 		#phy-cells = <0>;
@@ -200,7 +200,7 @@ wifi_pwrseq: wifi_pwrseq {
 	};
 
 	/* devconf0 setup for mcbsp1 clock pins */
-	pinmux_mcbsp1@48002274 {
+	pinmux@48002274 {
 		compatible = "pinctrl-single";
 		reg = <0x48002274 4>;   /* CONTROL_DEVCONF0 */
 		#address-cells = <1>;
@@ -211,14 +211,14 @@ pinmux_mcbsp1@48002274 {
 		#pinctrl-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&mcbsp1_devconf0_pins>;
-		mcbsp1_devconf0_pins: pinmux_mcbsp1_devconf0_pins {
+		mcbsp1_devconf0_pins: mcbsp1-devconf0-pins {
 			/*                   offset bits mask */
 			pinctrl-single,bits = <0x00 0x08 0x1c>;	/* set MCBSP1_CLKR */
 		};
 	};
 
 	/* devconf1 setup for tvout pins */
-	pinmux_tv_out@480022d8 {
+	pinmux@480022d8 {
 		compatible = "pinctrl-single";
 		reg = <0x480022d8 4>;	/* CONTROL_DEVCONF1 */
 		#address-cells = <1>;
@@ -229,7 +229,7 @@ pinmux_tv_out@480022d8 {
 		#pinctrl-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&tv_acbias_devconf1_pins>;
-		tv_acbias_devconf1_pins: pinmux_tv_acbias_devconf1_pins {
+		tv_acbias_devconf1_pins: tv-acbias-devconf1-pins {
 			/*			offset	bits	mask */
 			pinctrl-single,bits = <0x00 0x40800 0x40800>;	/* set TVOUTBYPASS and TVOUTACEN */
 		};
@@ -237,7 +237,7 @@ tv_acbias_devconf1_pins: pinmux_tv_acbias_devconf1_pins {
 };
 
 &omap3_pmx_wkup {
-	gpio1_pins: pinmux_gpio1_pins {
+	gpio1_pins: gpio1-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a14, PIN_INPUT | PIN_OFF_WAKEUPENABLE | MUX_MODE4) /* sys_boot5.gpio_7 */
 			OMAP3_WKUP_IOPAD(0x2a1a, PIN_INPUT | PIN_OFF_WAKEUPENABLE | MUX_MODE4) /* sys_clkout.gpio_10 */
@@ -251,7 +251,7 @@ &omap3_pmx_core {
 			&hsusb2_pins
 	>;
 
-	hsusb2_pins: pinmux_hsusb2_pins {
+	hsusb2_pins: hsusb2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d4, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi1_cs3.hsusb2_data2 */
 			OMAP3_CORE1_IOPAD(0x21d6, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_clk.hsusb2_data7 */
@@ -262,28 +262,28 @@ OMAP3_CORE1_IOPAD(0x21de, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_cs1.hsusb2_d
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2182, PIN_INPUT | MUX_MODE0)		/* uart1_rx.uart1_rx */
 			OMAP3_CORE1_IOPAD(0x217c, PIN_OUTPUT | MUX_MODE0)		/* uart1_tx.uart1_tx */
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x217a, PIN_INPUT | MUX_MODE0)		/* uart2_rx.uart2_rx */
 			OMAP3_CORE1_IOPAD(0x2178, PIN_OUTPUT | MUX_MODE0)		/* uart2_tx.uart2_tx */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | MUX_MODE0)		/* uart3_rx.uart3_rx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)		/* uart3_tx.uart3_tx */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_cmd.sdmmc1_cmd */
@@ -294,13 +294,13 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_dat3.sdmmc1_d
 		>;
 	};
 
-	backlight_pins: backlight_pins_pinmux {
+	backlight_pins: backlight-pinmux-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20ba, MUX_MODE3)		/* gpt11/gpio57 */
 		>;
 	};
 
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)   /* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)   /* dss_hsync.dss_hsync */
@@ -333,50 +333,50 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE0)   /* dss_data23.dss_data23 */
 		>;
 	};
 
-	gps_pins: pinmux_gps_pins {
+	gps_pins: gps-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT_PULLDOWN | MUX_MODE4) /* gpio145 */
 		>;
 	};
 
-	hdq_pins: hdq_pins {
+	hdq_pins: hdq-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c6, PIN_INPUT_PULLUP | MUX_MODE0) /* i2c3_sda.hdq */
 		>;
 	};
 
-	bmp085_pins: pinmux_bmp085_pins {
+	bmp085_pins: bmp085-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2136, PIN_INPUT_PULLUP | MUX_MODE4) /* gpio113 */
 		>;
 	};
 
-	bma180_pins: pinmux_bma180_pins {
+	bma180_pins: bma180-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x213a, PIN_INPUT_PULLUP | MUX_MODE4) /* gpio115 */
 		>;
 	};
 
-	itg3200_pins: pinmux_itg3200_pins {
+	itg3200_pins: itg3200-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20b8, PIN_INPUT_PULLUP | MUX_MODE4) /* gpio56 */
 		>;
 	};
 
-	hmc5843_pins: pinmux_hmc5843_pins {
+	hmc5843_pins: hmc5843-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2134, PIN_INPUT_PULLUP | MUX_MODE4) /* gpio112 */
 		>;
 	};
 
-	penirq_pins: pinmux_penirq_pins {
+	penirq_pins: penirq-pins {
 		pinctrl-single,pins = <
 			/* here we could enable to wakeup the cpu from suspend by a pen touch */
 			OMAP3_CORE1_IOPAD(0x2194, PIN_INPUT_PULLUP | MUX_MODE4) /* gpio160 */
 		>;
 	};
 
-	camera_pins: pinmux_camera_pins {
+	camera_pins: camera-pins {
 		pinctrl-single,pins = <
 			/* set up parallel camera interface */
 			OMAP3_CORE1_IOPAD(0x210c, PIN_INPUT_PULLDOWN | MUX_MODE0) /* cam_hs */
@@ -402,7 +402,7 @@ OMAP3_CORE1_IOPAD(0x2132, PIN_INPUT_PULLDOWN | MUX_MODE4) /* cam_strobe */
 		>;
 	};
 
-	mcbsp1_pins: pinmux_mcbsp1_pins {
+	mcbsp1_pins: mcbsp1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x218c, PIN_INPUT | MUX_MODE4)	/* mcbsp1_clkr.mcbsp1_clkr - gpio_156 FM interrupt */
 			OMAP3_CORE1_IOPAD(0x218e, PIN_OUTPUT | MUX_MODE0)	/* mcbsp1_clkr.mcbsp1_fsr */
@@ -415,7 +415,7 @@ OMAP3_CORE1_IOPAD(0x2198, PIN_INPUT | MUX_MODE0)	/* mcbsp1_clkx.mcbsp1_clkx */
 		>;
 	};
 
-	mcbsp2_pins: pinmux_mcbsp2_pins {
+	mcbsp2_pins: mcbsp2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x213c, PIN_INPUT | MUX_MODE0)	/* mcbsp2_fsx.mcbsp2_fsx */
 			OMAP3_CORE1_IOPAD(0x213e, PIN_INPUT | MUX_MODE0)	/* mcbsp2_fsx.mcbsp2_clkx */
@@ -424,7 +424,7 @@ OMAP3_CORE1_IOPAD(0x2142, PIN_OUTPUT | MUX_MODE0)	/* mcbsp2_dr.mcbsp2_dx */
 		>;
 	};
 
-	mcbsp3_pins: pinmux_mcbsp3_pins {
+	mcbsp3_pins: mcbsp3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x216c, PIN_OUTPUT | MUX_MODE0)	/* mcbsp3_dx.mcbsp3_dx */
 			OMAP3_CORE1_IOPAD(0x216e, PIN_INPUT | MUX_MODE0)	/* mcbsp3_dx.mcbsp3_dr */
@@ -433,7 +433,7 @@ OMAP3_CORE1_IOPAD(0x2172, PIN_INPUT | MUX_MODE0)	/* mcbsp3_clkx.mcbsp3_fsx */
 		>;
 	};
 
-	mcbsp4_pins: pinmux_mcbsp4_pins {
+	mcbsp4_pins: mcbsp4-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2184, PIN_INPUT_PULLDOWN | MUX_MODE0)	/* mcbsp4_clkx.mcbsp4_clkx */
 			OMAP3_CORE1_IOPAD(0x2186, PIN_INPUT_PULLDOWN | MUX_MODE0)	/* mcbsp4_clkx.mcbsp4_dr */
@@ -448,7 +448,7 @@ &omap3_pmx_core2 {
 			&hsusb2_2_pins
 	>;
 
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		/* etk_d10.hsusb2_clk */
 			OMAP3630_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		/* etk_d11.hsusb2_stp */
@@ -459,7 +459,7 @@ OMAP3630_CORE2_IOPAD(0x25fa, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* etk_d15.hsusb2_d
 		>;
 	};
 
-	spi_gpio_pins: spi_gpio_pinmux {
+	spi_gpio_pins: spi-gpio-pinmux-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25d8, PIN_OUTPUT | MUX_MODE4) /* clk */
 			OMAP3630_CORE2_IOPAD(0x25e6, PIN_OUTPUT | MUX_MODE4) /* cs */
diff --git a/arch/arm/boot/dts/omap3-gta04a5.dts b/arch/arm/boot/dts/omap3-gta04a5.dts
--- a/arch/arm/boot/dts/omap3-gta04a5.dts
+++ b/arch/arm/boot/dts/omap3-gta04a5.dts
@@ -45,31 +45,31 @@ irda-en-hog {
 };
 
 &omap3_pmx_core {
-	bt_pins: pinmux_bt_pins {
+	bt_pins: bt-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2166, PIN_OUTPUT | MUX_MODE4)	/* mmc2_dat5 = mmc3_dat1 = gpio137 */
 		>;
 	};
 
-	wlan_pins: pinmux_wlan_pins {
+	wlan_pins: wlan-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2168, PIN_OUTPUT | MUX_MODE4)	/* mmc2_dat6 = mmc3_dat2 = gpio138 */
 		>;
 	};
 
-	wlan_irq_pin: pinmux_wlan_irq_pin {
+	wlan_irq_pin: wlan-irq-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x216a, PIN_INPUT_PULLUP | MUX_MODE4)	/* mmc2_dat7 = mmc3_dat3 = gpio139 */
 		>;
 	};
 
-	irda_pins: pinmux_irda {
+	irda_pins: irda-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d0, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* mcspi1_cs1 = gpio175 */
 		>;
 	};
 
-	pps_pins: pinmux_pps_pins {
+	pps_pins: pps-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2138, PIN_INPUT | MUX_MODE4) /* gpin114 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-gta04a5one.dts b/arch/arm/boot/dts/omap3-gta04a5one.dts
--- a/arch/arm/boot/dts/omap3-gta04a5one.dts
+++ b/arch/arm/boot/dts/omap3-gta04a5one.dts
@@ -10,7 +10,7 @@ / {
 };
 
 &omap3_pmx_core {
-	gpmc_pins: pinmux_gpmc_pins {
+	gpmc_pins: gpmc-pins {
 		pinctrl-single,pins = <
 
 			/* address lines */
diff --git a/arch/arm/boot/dts/omap3-ha-common.dtsi b/arch/arm/boot/dts/omap3-ha-common.dtsi
--- a/arch/arm/boot/dts/omap3-ha-common.dtsi
+++ b/arch/arm/boot/dts/omap3-ha-common.dtsi
@@ -17,43 +17,43 @@ gpio_poweroff {
 };
 
 &omap3_pmx_core {
-	sound2_pins: pinmux_sound2_pins {
+	sound2_pins: sound2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x209e, PIN_OUTPUT | MUX_MODE4)	/* gpmc_d8 gpio_44 */
 		>;
 	};
 
-	led_blue_pins: pinmux_led_blue_pins {
+	led_blue_pins: led-blue-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2110, PIN_OUTPUT | MUX_MODE4)	/* cam_xclka gpio_96, LED blue */
 		>;
 	};
 
-	led_green_pins: pinmux_led_green_pins {
+	led_green_pins: led-green-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2126, PIN_OUTPUT | MUX_MODE4)	/* cam_d8 gpio_107, LED green */
 		>;
 	};
 
-	led_red_pins: pinmux_led_red_pins {
+	led_red_pins: led-red-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x212e, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* cam_xclkb gpio_111, LED red */
 		>;
 	};
 
-	poweroff_pins: pinmux_poweroff_pins {
+	poweroff_pins: poweroff-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* i2c2_scl gpio_168 */
 		>;
 	};
 
-	powerdown_input_pins: pinmux_powerdown_input_pins {
+	powerdown_input_pins: powerdown-input-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c0, PIN_INPUT_PULLUP | MUX_MODE4)	/* i2c2_sda gpio_183 */
 		>;
 	};
 
-	fpga_boot0_pins: fpga_boot0_pins {
+	fpga_boot0_pins: fpga-boot0-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x211a, PIN_INPUT | MUX_MODE4)	/* cam_d2 gpio_101 */
 			OMAP3_CORE1_IOPAD(0x211c, PIN_OUTPUT | MUX_MODE4)	/* cam_d3 gpio_102 */
@@ -62,7 +62,7 @@ OMAP3_CORE1_IOPAD(0x2120, PIN_INPUT_PULLUP | MUX_MODE4)	/* cam_d5 gpio_104 */
 		>;
 	};
 
-	fpga_boot1_pins: fpga_boot1_pins {
+	fpga_boot1_pins: fpga-boot1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20a2, PIN_INPUT | MUX_MODE4)	/* gpmc_d10 gpio_46 */
 			OMAP3_CORE1_IOPAD(0x20a4, PIN_OUTPUT | MUX_MODE4)	/* gpmc_d11 gpio_47 */
diff --git a/arch/arm/boot/dts/omap3-ha-lcd.dts b/arch/arm/boot/dts/omap3-ha-lcd.dts
--- a/arch/arm/boot/dts/omap3-ha-lcd.dts
+++ b/arch/arm/boot/dts/omap3-ha-lcd.dts
@@ -24,19 +24,19 @@ &led_red_pins
 		&touchscreen_wake_pins
 	>;
 
-	touchscreen_irq_pins: pinmux_touchscreen_irq_pins {
+	touchscreen_irq_pins: touchscreen-irq-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2164, PIN_INPUT_PULLUP | MUX_MODE4)	/* gpio_136, Touchscreen IRQ */
 		>;
 	};
 
-	touchscreen_wake_pins: pinmux_touchscreen_wake_pins {
+	touchscreen_wake_pins: touchscreen-wake-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x212c, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* gpio_110, Touchscreen Wake */
 		>;
 	};
 
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)	/* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)	/* dss_hsync.dss_hsync */
@@ -69,13 +69,13 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE0)	/* dss_data23.dss_data23 */
 		>;
 	};
 
-	lte430_pins: pinmux_lte430_pins {
+	lte430_pins: lte430-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2168, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat6.gpio_138 */
 		>;
 	};
 
-	backlight_pins: pinmux_backlight_pins {
+	backlight_pins: backlight-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x216a, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat7.gpio_139 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-igep.dtsi b/arch/arm/boot/dts/omap3-igep.dtsi
--- a/arch/arm/boot/dts/omap3-igep.dtsi
+++ b/arch/arm/boot/dts/omap3-igep.dtsi
@@ -34,28 +34,28 @@ vdd33: regulator-vdd33 {
 };
 
 &omap3_pmx_core {
-	gpmc_pins: pinmux_gpmc_pins {
+	gpmc_pins: gpmc-pins {
 		pinctrl-single,pins = <
 			/* OneNAND seems to require PIN_INPUT on clock. */
                         OMAP3_CORE1_IOPAD(0x20be, PIN_INPUT | MUX_MODE0)        /* gpmc_clk.gpmc_clk */
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2182, PIN_INPUT | MUX_MODE0)	/* uart1_rx.uart1_rx */
 			OMAP3_CORE1_IOPAD(0x217c, PIN_OUTPUT | MUX_MODE0)	/* uart1_tx.uart1_tx */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | MUX_MODE0)	/* uart3_rx.uart3_rx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)	/* uart3_tx.uart3_tx */
 		>;
 	};
 
-	mcbsp2_pins: pinmux_mcbsp2_pins {
+	mcbsp2_pins: mcbsp2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x213c, PIN_INPUT | MUX_MODE0)	/* mcbsp2_fsx.mcbsp2_fsx */
 			OMAP3_CORE1_IOPAD(0x213e, PIN_INPUT | MUX_MODE0)	/* mcbsp2_clkx.mcbsp2_clkx */
@@ -64,7 +64,7 @@ OMAP3_CORE1_IOPAD(0x2142, PIN_OUTPUT | MUX_MODE0)	/* mcbsp2_dx.mcbsp2_dx */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_cmd.sdmmc1_cmd */
@@ -75,7 +75,7 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_dat3.sdmmc1_da
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_cmd.sdmmc2_cmd */
@@ -86,14 +86,14 @@ OMAP3_CORE1_IOPAD(0x2162, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_dat3.sdmmc2_da
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba, PIN_INPUT | MUX_MODE0)	/* i2c1_scl.i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc, PIN_INPUT | MUX_MODE0)	/* i2c1_sda.i2c1_sda */
 		>;
 	};
 
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT | MUX_MODE0)	/* i2c3_scl.i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT | MUX_MODE0)	/* i2c3_sda.i2c3_sda */
diff --git a/arch/arm/boot/dts/omap3-igep0020-common.dtsi b/arch/arm/boot/dts/omap3-igep0020-common.dtsi
--- a/arch/arm/boot/dts/omap3-igep0020-common.dtsi
+++ b/arch/arm/boot/dts/omap3-igep0020-common.dtsi
@@ -107,13 +107,13 @@ &tfp410_pins
 		&dss_dpi_pins
 	>;
 
-	tfp410_pins: pinmux_tfp410_pins {
+	tfp410_pins: tfp410-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c6, PIN_OUTPUT | MUX_MODE4)   /* hdq_sio.gpio_170 */
 		>;
 	};
 
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)   /* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)   /* dss_hsync.dss_hsync */
@@ -146,7 +146,7 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE0)   /* dss_data23.dss_data23 */
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_INPUT | MUX_MODE0)	/* uart2_cts.uart2_cts */
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT | MUX_MODE0)	/* uart2_rts .uart2_rts*/
@@ -155,7 +155,7 @@ OMAP3_CORE1_IOPAD(0x217a, PIN_INPUT | MUX_MODE0)	/* uart2_rx.uart2_rx */
 		>;
 	};
 
-	smsc9221_pins: pinmux_smsc9221_pins {
+	smsc9221_pins: smsc9221-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d2, PIN_INPUT | MUX_MODE4)	/* mcspi1_cs2.gpio_176 */
 		>;
@@ -168,7 +168,7 @@ &omap3_pmx_core2 {
 		&hsusbb1_pins
 	>;
 
-	hsusbb1_pins: pinmux_hsusbb1_pins {
+	hsusbb1_pins: hsusbb1-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25da, PIN_OUTPUT | MUX_MODE3)		/* etk_ctl.hsusb1_clk */
 			OMAP3630_CORE2_IOPAD(0x25d8, PIN_OUTPUT | MUX_MODE3)		/* etk_clk.hsusb1_stp */
@@ -185,7 +185,7 @@ OMAP3630_CORE2_IOPAD(0x25ea, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* etk_d7.hsusb1_da
 		>;
 	};
 
-	leds_pins: pinmux_leds_pins {
+	leds_pins: leds-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25f4, PIN_OUTPUT | MUX_MODE4) /* etk_d12.gpio_26 */
 			OMAP3630_CORE2_IOPAD(0x25f6, PIN_OUTPUT | MUX_MODE4) /* etk_d13.gpio_27 */
@@ -193,7 +193,7 @@ OMAP3630_CORE2_IOPAD(0x25f8, PIN_OUTPUT | MUX_MODE4) /* etk_d14.gpio_28 */
 		>;
 	};
 
-	mmc1_wp_pins: pinmux_mmc1_cd_pins {
+	mmc1_wp_pins: mmc1-cd-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25fa, PIN_INPUT | MUX_MODE4)   /* etk_d15.gpio_29 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-igep0020-rev-f.dts b/arch/arm/boot/dts/omap3-igep0020-rev-f.dts
--- a/arch/arm/boot/dts/omap3-igep0020-rev-f.dts
+++ b/arch/arm/boot/dts/omap3-igep0020-rev-f.dts
@@ -24,7 +24,7 @@ lbep5clwmc_wlen: regulator-lbep5clwmc-wlen {
 };
 
 &omap3_pmx_core {
-	lbep5clwmc_pins: pinmux_lbep5clwmc_pins {
+	lbep5clwmc_pins: lbep5clwmc-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d4, PIN_INPUT | MUX_MODE4)	/* mcspi1_cs3.gpio_177 - W_IRQ */
 			OMAP3_CORE1_IOPAD(0x2166, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat5.gpio_137 - BT_EN */
diff --git a/arch/arm/boot/dts/omap3-igep0020.dts b/arch/arm/boot/dts/omap3-igep0020.dts
--- a/arch/arm/boot/dts/omap3-igep0020.dts
+++ b/arch/arm/boot/dts/omap3-igep0020.dts
@@ -27,7 +27,7 @@ mmc2_pwrseq: mmc2_pwrseq {
 };
 
 &omap3_pmx_core {
-	lbee1usjyc_pins: pinmux_lbee1usjyc_pins {
+	lbee1usjyc_pins: lbee1usjyc-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2166, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat5.gpio_137 - RESET_N_W */
 			OMAP3_CORE1_IOPAD(0x2168, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat6.gpio_138 - WIFI_PDN */
diff --git a/arch/arm/boot/dts/omap3-igep0030-common.dtsi b/arch/arm/boot/dts/omap3-igep0030-common.dtsi
--- a/arch/arm/boot/dts/omap3-igep0030-common.dtsi
+++ b/arch/arm/boot/dts/omap3-igep0030-common.dtsi
@@ -31,7 +31,7 @@ user2 {
 		};
 	};
 
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		reset-gpios = <&gpio2 22 GPIO_ACTIVE_LOW>;		/* gpio_54 */
 		#phy-cells = <0>;
@@ -42,7 +42,7 @@ &omap3_pmx_core {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hsusb2_pins>;
 
-	hsusb2_pins: pinmux_hsusb2_pins {
+	hsusb2_pins: hsusb2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d4, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi1_cs3.hsusb2_data2 */
 			OMAP3_CORE1_IOPAD(0x21d6, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_clk.hsusb2_data7 */
@@ -53,7 +53,7 @@ OMAP3_CORE1_IOPAD(0x21de, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_cs1.hsusb2_d
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x216c, PIN_INPUT | MUX_MODE1)	/* mcbsp3_dx.uart2_cts */
 			OMAP3_CORE1_IOPAD(0x216e, PIN_OUTPUT | MUX_MODE1)	/* mcbsp3_dr.uart2_rts */
@@ -67,7 +67,7 @@ &omap3_pmx_core2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hsusb2_core2_pins>;
 
-	hsusb2_core2_pins: pinmux_hsusb2_core2_pins {
+	hsusb2_core2_pins: hsusb2-core2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		      /* etk_d10.hsusb2_clk */
 			OMAP3630_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		      /* etk_d11.hsusb2_stp */
@@ -78,7 +78,7 @@ OMAP3630_CORE2_IOPAD(0x25fa, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* etk_d15.hsusb2_d
 		>;
 	};
 
-	leds_core2_pins: pinmux_leds_core2_pins {
+	leds_core2_pins: leds-core2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25e0, PIN_OUTPUT | MUX_MODE4)	/* etk_d2.gpio_16 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-igep0030-rev-g.dts b/arch/arm/boot/dts/omap3-igep0030-rev-g.dts
--- a/arch/arm/boot/dts/omap3-igep0030-rev-g.dts
+++ b/arch/arm/boot/dts/omap3-igep0030-rev-g.dts
@@ -24,7 +24,7 @@ lbep5clwmc_wlen: regulator-lbep5clwmc-wlen {
 };
 
 &omap3_pmx_core {
-	lbep5clwmc_pins: pinmux_lbep5clwmc_pins {
+	lbep5clwmc_pins: lbep5clwmc-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2164, PIN_INPUT | MUX_MODE4)	/* sdmmc2_dat4.gpio_136 - W_IRQ */
 			OMAP3_CORE1_IOPAD(0x2166, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat5.gpio_137 - BT_EN */
@@ -32,7 +32,7 @@ OMAP3_CORE1_IOPAD(0x216a, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat7.gpio_139 - WL_E
 		>;
 	};
 
-	leds_pins: pinmux_leds_pins {
+	leds_pins: leds-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_OUTPUT | MUX_MODE4)	/* i2c2_scl.gpio_168 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-igep0030.dts b/arch/arm/boot/dts/omap3-igep0030.dts
--- a/arch/arm/boot/dts/omap3-igep0030.dts
+++ b/arch/arm/boot/dts/omap3-igep0030.dts
@@ -27,7 +27,7 @@ mmc2_pwrseq: mmc2_pwrseq {
 };
 
 &omap3_pmx_core {
-	lbee1usjyc_pins: pinmux_lbee1usjyc_pins {
+	lbee1usjyc_pins: lbee1usjyc-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2166, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat5.gpio_137 - RESET_N_W */
 			OMAP3_CORE1_IOPAD(0x2168, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat6.gpio_138 - WIFI_PDN */
diff --git a/arch/arm/boot/dts/omap3-ldp.dts b/arch/arm/boot/dts/omap3-ldp.dts
--- a/arch/arm/boot/dts/omap3-ldp.dts
+++ b/arch/arm/boot/dts/omap3-ldp.dts
@@ -223,7 +223,7 @@ &mmc3 {
 };
 
 &omap3_pmx_core {
-	gpio_key_pins: pinmux_gpio_key_pins {
+	gpio_key_pins: gpio-key-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x211a, PIN_INPUT | MUX_MODE4)	/* cam_d2.gpio_101 */
 			OMAP3_CORE1_IOPAD(0x211c, PIN_INPUT | MUX_MODE4)	/* cam_d3.gpio_102 */
@@ -237,7 +237,7 @@ OMAP3_CORE1_IOPAD(0x212a, PIN_INPUT | MUX_MODE4)	/* cam_d10.gpio_109 */
 		>;
 	};
 
-	musb_pins: pinmux_musb_pins {
+	musb_pins: musb-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21a2, PIN_INPUT | MUX_MODE0)	/* hsusb0_clk.hsusb0_clk */
 			OMAP3_CORE1_IOPAD(0x21aa, PIN_INPUT | MUX_MODE0)	/* hsusb0_data0.hsusb0_data0 */
@@ -254,7 +254,7 @@ OMAP3_CORE1_IOPAD(0x21a4, PIN_OUTPUT | MUX_MODE0)	/* hsusb0_stp.hsusb0_stp */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc1_clk.mmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc1_cmd.mmc1_cmd */
diff --git a/arch/arm/boot/dts/omap3-lilly-a83x.dtsi b/arch/arm/boot/dts/omap3-lilly-a83x.dtsi
--- a/arch/arm/boot/dts/omap3-lilly-a83x.dtsi
+++ b/arch/arm/boot/dts/omap3-lilly-a83x.dtsi
@@ -54,19 +54,19 @@ hsusb1_phy: hsusb1_phy {
 &omap3_pmx_wkup {
 	pinctrl-names = "default";
 
-	lan9221_pins: pinmux_lan9221_pins {
+	lan9221_pins: lan9221-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a5a, PIN_INPUT | MUX_MODE4)   /* reserved.gpio_129 */
 		>;
 	};
 
-	tsc2048_pins: pinmux_tsc2048_pins {
+	tsc2048_pins: tsc2048-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a16, PIN_INPUT_PULLUP | MUX_MODE4)   /* sys_boot6.gpio_8 */
 		>;
 	};
 
-	mmc1cd_pins: pinmux_mmc1cd_pins {
+	mmc1cd_pins: mmc1cd-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a56, PIN_INPUT | MUX_MODE4)   /* reserved.gpio_126 */
 		>;
@@ -76,7 +76,7 @@ OMAP3_WKUP_IOPAD(0x2a56, PIN_INPUT | MUX_MODE4)   /* reserved.gpio_126 */
 &omap3_pmx_core {
 	pinctrl-names = "default";
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x217c, PIN_OUTPUT | MUX_MODE0)   /* uart1_tx.uart1_tx */
 			OMAP3_CORE1_IOPAD(0x217e, PIN_OUTPUT | MUX_MODE0)   /* uart1_rts.uart1_rts */
@@ -85,42 +85,42 @@ OMAP3_CORE1_IOPAD(0x2182, PIN_INPUT | MUX_MODE0)    /* uart1_rx.uart1_rx */
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2170, PIN_OUTPUT | MUX_MODE1)   /* mcbsp3_clkx.uart2_tx */
 			OMAP3_CORE1_IOPAD(0x2172, PIN_INPUT | MUX_MODE1)    /* mcbsp3_fsx.uart2_rx */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | MUX_MODE0)    /* uart3_rx_irrx.uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)   /* uart3_tx_irtx.uart3_tx_irtx */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba ,PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c1_scl.i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc ,PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c1_sda.i2c1_sda */
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_INPUT | MUX_MODE0)   /* i2c2_scl.i2c2_scl */
 			OMAP3_CORE1_IOPAD(0x21c0, PIN_INPUT | MUX_MODE0)   /* i2c2_sda.i2c2_sda */
 		>;
 	};
 
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT | MUX_MODE0)   /* i2c3_scl.i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT | MUX_MODE0)   /* i2c3_sda.i2c3_sda */
 		>;
 	};
 
-	hsusb1_pins: pinmux_hsusb1_pins {
+	hsusb1_pins: hsusb1-pins {
 		pinctrl-single,pins = <
 
 			/* GPIO 182 controls USB-Hub reset. But USB-Phy its
@@ -132,7 +132,7 @@ OMAP3_CORE1_IOPAD(0x21de, PIN_OUTPUT_PULLUP | PIN_OFF_OUTPUT_HIGH | MUX_MODE4)
 		>;
 	};
 
-	hsusb_otg_pins: pinmux_hsusb_otg_pins {
+	hsusb_otg_pins: hsusb-otg-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21a2, PIN_INPUT | MUX_MODE0)   /* hsusb0_clk.hsusb0_clk */
 			OMAP3_CORE1_IOPAD(0x21a4, PIN_OUTPUT | MUX_MODE0)  /* hsusb0_stp.hsusb0_stp */
@@ -149,7 +149,7 @@ OMAP3_CORE1_IOPAD(0x21b8, PIN_INPUT | MUX_MODE0)   /* hsusb0_data7.hsusb0_data7
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)   /* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)   /* sdmmc1_cmd.sdmmc1_cmd */
@@ -160,7 +160,7 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)   /* sdmmc1_dat3.sdmmc1_
 		>;
 	};
 
-	spi2_pins: pinmux_spi2_pins {
+	spi2_pins: spi2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d6, PIN_INPUT_PULLDOWN | MUX_MODE0)   /* mcspi2_clk.mcspi2_clk */
 			OMAP3_CORE1_IOPAD(0x21d8, PIN_INPUT_PULLDOWN | MUX_MODE0)   /* mcspi2_simo.mcspi2_simo */
@@ -173,7 +173,7 @@ OMAP3_CORE1_IOPAD(0x21dc, PIN_OUTPUT | MUX_MODE0)   /* mcspi2_cs0.mcspi2_cs0 */
 &omap3_pmx_core2 {
 	pinctrl-names = "default";
 
-	hsusb1_2_pins: pinmux_hsusb1_2_pins {
+	hsusb1_2_pins: hsusb1-2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25d8, PIN_OUTPUT | MUX_MODE3)  /* etk_clk.hsusb1_stp */
 			OMAP3630_CORE2_IOPAD(0x25da, PIN_INPUT | MUX_MODE3)   /* etk_ctl.hsusb1_clk */
@@ -190,7 +190,7 @@ OMAP3630_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE3)   /* etk_d9.hsusb1_nxt */
 		>;
 	};
 
-	gpio1_pins: pinmux_gpio1_pins {
+	gpio1_pins: gpio1-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25fa, PIN_OUTPUT_PULLDOWN | MUX_MODE4)   /* etk_d15.gpio_29 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-lilly-dbb056.dts b/arch/arm/boot/dts/omap3-lilly-dbb056.dts
--- a/arch/arm/boot/dts/omap3-lilly-dbb056.dts
+++ b/arch/arm/boot/dts/omap3-lilly-dbb056.dts
@@ -24,25 +24,25 @@ &omap3_pmx_core {
 	pinctrl-names = "default";
 	pinctrl-0 = <&lcd_pins>;
 
-	lan9117_pins: pinmux_lan9117_pins {
+	lan9117_pins: lan9117-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2114, PIN_INPUT | MUX_MODE4)   /* cam_fld.gpio_98 */
 		>;
 	};
 
-	gpio4_pins: pinmux_gpio4_pins {
+	gpio4_pins: gpio4-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x212e, PIN_INPUT | MUX_MODE4)   /* cam_xclkb.gpio_111 -> sja1000 IRQ */
 		>;
 	};
 
-	gpio5_pins: pinmux_gpio5_pins {
+	gpio5_pins: gpio5-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x218c, PIN_OUTPUT | PIN_OFF_OUTPUT_HIGH | MUX_MODE4)   /* mcbsp1_clk.gpio_156 -> enable DSS */
 		>;
 	};
 
-	lcd_pins: pinmux_lcd_pins {
+	lcd_pins: lcd-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)   /* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)   /* dss_hsync.dss_hsync */
@@ -69,7 +69,7 @@ OMAP3_CORE1_IOPAD(0x20fe, PIN_OUTPUT | MUX_MODE0)   /* dss_data17.dss_data17 */
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)   /* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)   /* sdmmc2_cmd.sdmmc2_cmd */
@@ -86,7 +86,7 @@ OMAP3_CORE1_IOPAD(0x219c, PIN_INPUT_PULLUP | MUX_MODE4)   /* uart3_rts_sd.gpio_1
 		>;
 	};
 
-	spi1_pins: pinmux_spi1_pins {
+	spi1_pins: spi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c8, PIN_INPUT | MUX_MODE0)   /* mcspi1_clk.mcspi1_clk */
 			OMAP3_CORE1_IOPAD(0x21ca, PIN_INPUT | MUX_MODE0)   /* mcspi1_simo.mcspi1_simo */
diff --git a/arch/arm/boot/dts/omap3-n900.dts b/arch/arm/boot/dts/omap3-n900.dts
--- a/arch/arm/boot/dts/omap3-n900.dts
+++ b/arch/arm/boot/dts/omap3-n900.dts
@@ -209,7 +209,7 @@ csi_isp: endpoint {
 &omap3_pmx_core {
 	pinctrl-names = "default";
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_INPUT_PULLUP | MUX_MODE0)		/* uart2_cts */
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT | MUX_MODE0)		/* uart2_rts */
@@ -218,14 +218,14 @@ OMAP3_CORE1_IOPAD(0x217a, PIN_INPUT | MUX_MODE0)		/* uart2_rx */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | MUX_MODE0)		/* uart3_rx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)		/* uart3_tx */
 		>;
 	};
 
-	ethernet_pins: pinmux_ethernet_pins {
+	ethernet_pins: ethernet-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20b4, PIN_INPUT_PULLDOWN | MUX_MODE4)	/* gpmc_ncs3.gpio_54 */
 			OMAP3_CORE1_IOPAD(0x20fc, PIN_OUTPUT | MUX_MODE4)		/* dss_data16.gpio_86 */
@@ -233,7 +233,7 @@ OMAP3_CORE1_IOPAD(0x219c, PIN_OUTPUT | MUX_MODE4)		/* uart3_rts_sd.gpio_164 */
 		>;
 	};
 
-	gpmc_pins: pinmux_gpmc_pins {
+	gpmc_pins: gpmc-pins {
 		pinctrl-single,pins = <
 
 			/* address lines */
@@ -260,34 +260,34 @@ OMAP3_CORE1_IOPAD(0x20be, PIN_INPUT | MUX_MODE0)        /* gpmc_clk.gpmc_clk */
 			>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba, PIN_INPUT | MUX_MODE0)		/* i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc, PIN_INPUT | MUX_MODE0)		/* i2c1_sda */
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_INPUT | MUX_MODE0)		/* i2c2_scl */
 			OMAP3_CORE1_IOPAD(0x21c0, PIN_INPUT | MUX_MODE0)		/* i2c2_sda */
 		>;
 	};
 
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT | MUX_MODE0)		/* i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT | MUX_MODE0)		/* i2c3_sda */
 		>;
 	};
 
-	debug_leds: pinmux_debug_led_pins {
+	debug_leds: debug-led-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2198, PIN_OUTPUT | MUX_MODE4)	/* mcbsp1_clkx.gpio_162 */
 		>;
 	};
 
-	mcspi4_pins: pinmux_mcspi4_pins {
+	mcspi4_pins: mcspi4-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x218c, PIN_INPUT_PULLDOWN | MUX_MODE1) /* mcspi4_clk */
 			OMAP3_CORE1_IOPAD(0x2192, PIN_INPUT_PULLDOWN | MUX_MODE1) /* mcspi4_somi */
@@ -296,7 +296,7 @@ OMAP3_CORE1_IOPAD(0x2196, PIN_OUTPUT | MUX_MODE1) /* mcspi4_cs0 */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_cmd */
@@ -307,7 +307,7 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_dat3 */
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_cmd */
@@ -322,13 +322,13 @@ OMAP3_CORE1_IOPAD(0x216a, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_dat7 */
 		>;
 	};
 
-	acx565akm_pins: pinmux_acx565akm_pins {
+	acx565akm_pins: acx565akm-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2104, PIN_OUTPUT | MUX_MODE4)		/* RX51_LCD_RESET_GPIO */
 		>;
 	};
 
-	dss_sdi_pins: pinmux_dss_sdi_pins {
+	dss_sdi_pins: dss-sdi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20f0, PIN_OUTPUT | MUX_MODE1)   /* dss_data10.sdi_dat1n */
 			OMAP3_CORE1_IOPAD(0x20f2, PIN_OUTPUT | MUX_MODE1)   /* dss_data11.sdi_dat1p */
@@ -340,14 +340,14 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE1)   /* dss_data23.sdi_clkn */
 		>;
 	};
 
-	wl1251_pins: pinmux_wl1251 {
+	wl1251_pins: wl1251-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20fe, PIN_OUTPUT | MUX_MODE4)		/* gpio 87 => wl1251 enable */
 			OMAP3_CORE1_IOPAD(0x208a, PIN_INPUT | MUX_MODE4)		/* gpio 42 => wl1251 irq */
 		>;
 	};
 
-	ssi_pins: pinmux_ssi {
+	ssi_pins: ssi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2180, PIN_INPUT_PULLUP | MUX_MODE1)	/* ssi1_rdy_tx */
 			OMAP3_CORE1_IOPAD(0x217e, PIN_OUTPUT | MUX_MODE1)		/* ssi1_flag_tx */
@@ -360,7 +360,7 @@ OMAP3_CORE1_IOPAD(0x218a, PIN_OUTPUT | MUX_MODE1)		/* ssi1_wake */
 		>;
 	};
 
-	modem_pins: pinmux_modem {
+	modem_pins: modem-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20dc, PIN_OUTPUT | MUX_MODE4)		/* gpio 70 => cmt_apeslpx */
 			OMAP3_CORE1_IOPAD(0x20e0, PIN_INPUT | MUX_MODE4)		/* gpio 72 => ape_rst_rq */
@@ -371,7 +371,7 @@ modem_pins: pinmux_modem {
 		>;
 	};
 
-	camera_pins: pinmux_camera {
+	camera_pins: camera-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x210c, PIN_OUTPUT | MUX_MODE7)       /* cam_hs */
 			OMAP3_CORE1_IOPAD(0x210e, PIN_OUTPUT | MUX_MODE7)       /* cam_vs */
diff --git a/arch/arm/boot/dts/omap3-n950-n9.dtsi b/arch/arm/boot/dts/omap3-n950-n9.dtsi
--- a/arch/arm/boot/dts/omap3-n950-n9.dtsi
+++ b/arch/arm/boot/dts/omap3-n950-n9.dtsi
@@ -57,20 +57,20 @@ vctcxo: vctcxo {
 };
 
 &omap3_pmx_core {
-	accelerator_pins: pinmux_accelerator_pins {
+	accelerator_pins: accelerator-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21da, PIN_INPUT | MUX_MODE4)	/* mcspi2_somi.gpio_180 -> LIS302 INT1 */
 			OMAP3_CORE1_IOPAD(0x21dc, PIN_INPUT | MUX_MODE4)	/* mcspi2_cs0.gpio_181 -> LIS302 INT2 */
 		>;
 	};
 
-	debug_leds: pinmux_debug_led_pins {
+	debug_leds: debug-led-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2108, PIN_OUTPUT | MUX_MODE4)       /* dss_data22.gpio_92 */
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0) /* sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0) /* sdmmc2_cmd */
@@ -81,14 +81,14 @@ OMAP3_CORE1_IOPAD(0x2162, PIN_INPUT_PULLUP | MUX_MODE0) /* sdmmc2_dat3 */
 		>;
 	};
 
-	wlan_pins: pinmux_wlan_pins {
+	wlan_pins: wlan-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x207c, PIN_OUTPUT | MUX_MODE4) /* gpio 35 - wlan enable */
 			OMAP3_CORE1_IOPAD(0x208a, PIN_INPUT | MUX_MODE4) /* gpio 42 - wlan irq */
 		>;
 	};
 
-	ssi_pins: pinmux_ssi_pins {
+	ssi_pins: ssi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x217c, PIN_OUTPUT | MUX_MODE1)            /* ssi1_dat_tx */
 			OMAP3_CORE1_IOPAD(0x217e, PIN_OUTPUT | MUX_MODE1)            /* ssi1_flag_tx */
@@ -101,7 +101,7 @@ OMAP3_CORE1_IOPAD(0x218a, PIN_OUTPUT | MUX_MODE1)            /* ssi1_wake */
 		>;
 	};
 
-	ssi_pins_idle: pinmux_ssi_pins_idle {
+	ssi_pins_idle: ssi-idle-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x217c, PIN_OUTPUT | MUX_MODE7)            /* ssi1_dat_tx */
 			OMAP3_CORE1_IOPAD(0x217e, PIN_OUTPUT | MUX_MODE7)            /* ssi1_flag_tx */
@@ -114,7 +114,7 @@ OMAP3_CORE1_IOPAD(0x218a, PIN_OUTPUT | MUX_MODE7)            /* ssi1_wake */
 		>;
 	};
 
-	modem_pins1: pinmux_modem_core1_pins {
+	modem_pins1: modem-core1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x207a, PIN_INPUT | MUX_MODE4)	/* gpio_34 (ape_rst_rq) */
 			OMAP3_CORE1_IOPAD(0x2100, PIN_OUTPUT | MUX_MODE4)            /* gpio_88 (cmt_rst_rq) */
@@ -122,7 +122,7 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE4)            /* gpio_93 (cmt_ape
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_INPUT_PULLUP | MUX_MODE0)		/* uart2_cts */
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT | MUX_MODE0)		/* uart2_rts */
@@ -133,7 +133,7 @@ OMAP3_CORE1_IOPAD(0x217a, PIN_INPUT | MUX_MODE0)		/* uart2_rx */
 };
 
 &omap3_pmx_core2 {
-	modem_pins2: pinmux_modem_core2_pins {
+	modem_pins2: modem-core2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)         /* gpio_23 (cmt_en) */
 		>;
diff --git a/arch/arm/boot/dts/omap3-n950.dts b/arch/arm/boot/dts/omap3-n950.dts
--- a/arch/arm/boot/dts/omap3-n950.dts
+++ b/arch/arm/boot/dts/omap3-n950.dts
@@ -30,7 +30,7 @@ keypad_slide {
 };
 
 &omap3_pmx_core {
-	keypad_slide_pins: pinmux_debug_led_pins {
+	keypad_slide_pins: debug-led-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x212a, PIN_INPUT | MUX_MODE4)       /* cam_d10.gpio_109 */
 		>;
@@ -38,7 +38,7 @@ OMAP3_CORE1_IOPAD(0x212a, PIN_INPUT | MUX_MODE4)       /* cam_d10.gpio_109 */
 };
 
 &omap3_pmx_core {
-	spi4_pins: pinmux_spi4_pins {
+	spi4_pins: spi4-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x218c, PIN_INPUT_PULLDOWN | MUX_MODE1) /* mcspi4_clk */
 			OMAP3_CORE1_IOPAD(0x2190, PIN_OUTPUT | MUX_MODE1) /* mcspi4_simo */
@@ -49,7 +49,7 @@ OMAP3_CORE1_IOPAD(0x2196, PIN_OUTPUT | MUX_MODE1) /* mcspi4_cs0 */
 };
 
 &omap3_pmx_core {
-	dsi_pins: pinmux_dsi_pins {
+	dsi_pins: dsi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20dc, PIN_OUTPUT | MUX_MODE1) /* dsi_dx0 - data0+ */
 			OMAP3_CORE1_IOPAD(0x20de, PIN_OUTPUT | MUX_MODE1) /* dsi_dy0 - data0- */
@@ -60,7 +60,7 @@ OMAP3_CORE1_IOPAD(0x20e6, PIN_OUTPUT | MUX_MODE1) /* dsi_dy2 - data1- */
 		>;
 	};
 
-	display_pins: pinmux_display_pins {
+	display_pins: display-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20ca, PIN_INPUT | MUX_MODE4) /* gpio 62 - display te */
 			OMAP3_CORE1_IOPAD(0x20fe, PIN_OUTPUT | MUX_MODE4) /* gpio 87 - display reset */
diff --git a/arch/arm/boot/dts/omap3-overo-alto35-common.dtsi b/arch/arm/boot/dts/omap3-overo-alto35-common.dtsi
--- a/arch/arm/boot/dts/omap3-overo-alto35-common.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-alto35-common.dtsi
@@ -51,7 +51,7 @@ button0 {
 };
 
 &omap3_pmx_core {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x217c, PIN_OUTPUT | MUX_MODE4)	/* uart1_tx.gpio_148 */
 			OMAP3_CORE1_IOPAD(0x2180, PIN_OUTPUT | MUX_MODE4)	/* uart1_cts.gpio_150 */
@@ -62,7 +62,7 @@ OMAP3_CORE1_IOPAD(0x21c6, PIN_OUTPUT | MUX_MODE4)	/* hdq_sio.gpio_170 */
 };
 
 &omap3_pmx_wkup {
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a18, PIN_INPUT | MUX_MODE4)		/* sys_clkout1.gpio_10 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-overo-base.dtsi b/arch/arm/boot/dts/omap3-overo-base.dtsi
--- a/arch/arm/boot/dts/omap3-overo-base.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-base.dtsi
@@ -44,7 +44,7 @@ hsusb2_power: hsusb2_power_reg {
 	};
 
 	/* HS USB Host PHY on PORT 2 */
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		reset-gpios = <&gpio6 23 GPIO_ACTIVE_LOW>;	/* gpio_183 */
 		vcc-supply = <&hsusb2_power>;
@@ -80,7 +80,7 @@ &omap3_pmx_core {
 			&hsusb2_pins
 	>;
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x216c, PIN_INPUT | MUX_MODE1)	/* mcbsp3_dx.uart2_cts */
 			OMAP3_CORE1_IOPAD(0x216e, PIN_OUTPUT | MUX_MODE1)	/* mcbsp3_dr.uart2_rts */
@@ -89,14 +89,14 @@ OMAP3_CORE1_IOPAD(0x2172, PIN_INPUT | MUX_MODE1)	/* mcbsp3_fsx.uart2_rx */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba, PIN_INPUT | MUX_MODE0)		/* i2c1_scl.i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc, PIN_INPUT | MUX_MODE0)		/* i2c1_sda.i2c1_sda */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_cmd.sdmmc1_cmd */
@@ -107,7 +107,7 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_dat3.sdmmc1_d
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_cmd.sdmmc2_cmd */
@@ -119,14 +119,14 @@ OMAP3_CORE1_IOPAD(0x2162, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_dat3.sdmmc2_d
 	};
 
 	/* WiFi/BT combo */
-	w3cbw003c_pins: pinmux_w3cbw003c_pins {
+	w3cbw003c_pins: w3cbw003c-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20b4, PIN_OUTPUT | MUX_MODE4)		/* gpmc_ncs3.gpio_54 */
 			OMAP3_CORE1_IOPAD(0x219c, PIN_OUTPUT | MUX_MODE4)		/* uart3_rts_sd.gpio_164 */
 		>;
 	};
 
-	hsusb2_pins: pinmux_hsusb2_pins {
+	hsusb2_pins: hsusb2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21d4, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi1_cs3.hsusb2_data2 */
 			OMAP3_CORE1_IOPAD(0x21d6, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_clk.hsusb2_data7 */
diff --git a/arch/arm/boot/dts/omap3-overo-chestnut43.dts b/arch/arm/boot/dts/omap3-overo-chestnut43.dts
--- a/arch/arm/boot/dts/omap3-overo-chestnut43.dts
+++ b/arch/arm/boot/dts/omap3-overo-chestnut43.dts
@@ -18,14 +18,14 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 			OMAP3430_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)	/* etk_d8.gpio_22 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE4)	/* etk_d9.gpio_23 */
 			OMAP3430_CORE2_IOPAD(0x25dc, PIN_INPUT | MUX_MODE4)	/* etk_d0.gpio_14 */
diff --git a/arch/arm/boot/dts/omap3-overo-common-dvi.dtsi b/arch/arm/boot/dts/omap3-overo-common-dvi.dtsi
--- a/arch/arm/boot/dts/omap3-overo-common-dvi.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-common-dvi.dtsi
@@ -8,7 +8,7 @@
  */
 
 &omap3_pmx_core {
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)	/* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)	/* dss_hsync.dss_hsync */
diff --git a/arch/arm/boot/dts/omap3-overo-common-lcd35.dtsi b/arch/arm/boot/dts/omap3-overo-common-lcd35.dtsi
--- a/arch/arm/boot/dts/omap3-overo-common-lcd35.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-common-lcd35.dtsi
@@ -8,7 +8,7 @@
  */
 
 &omap3_pmx_core {
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)	/* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)	/* dss_hsync.dss_hsync */
@@ -41,19 +41,19 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE0)	/* dss_data23.dss_data23 */
 		>;
 	};
 
-	lb035_pins: pinmux_lb035_pins {
+	lb035_pins: lb035-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_OUTPUT | MUX_MODE4)	/* uart2_cts.gpio_144 */
 		>;
 	};
 
-	backlight_pins: pinmux_backlight_pins {
+	backlight_pins: backlight-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT | MUX_MODE4)	/* uart2_rts.gpio_145 */
 		>;
 	};
 
-	mcspi1_pins: pinmux_mcspi1_pins {
+	mcspi1_pins: mcspi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c8, PIN_INPUT | MUX_MODE0)	/* mcspi1_clk.mcspi1_clk */
 			OMAP3_CORE1_IOPAD(0x21ca, PIN_INPUT | MUX_MODE0)	/* mcspi1_simo.mcspi1_simo */
@@ -63,7 +63,7 @@ OMAP3_CORE1_IOPAD(0x21d0, PIN_INPUT | MUX_MODE0)	/* mcspi1_cs1.mcspi1_cs1 */
 		>;
 	};
 
-	ads7846_pins: pinmux_ads7846_pins {
+	ads7846_pins: ads7846-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2138, PIN_INPUT_PULLDOWN | MUX_MODE4)	/* csi2_dx1.gpio_114 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi b/arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi
--- a/arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi
@@ -8,7 +8,7 @@
  */
 
 &omap3_pmx_core {
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)	/* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)	/* dss_hsync.dss_hsync */
@@ -41,19 +41,19 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE0)	/* dss_data23.dss_data23 */
 		>;
 	};
 
-	lte430_pins: pinmux_lte430_pins {
+	lte430_pins: lte430-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_OUTPUT | MUX_MODE4)	/* uart2_cts.gpio_144 */
 		>;
 	};
 
-	backlight_pins: pinmux_backlight_pins {
+	backlight_pins: backlight-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT | MUX_MODE4)	/* uart2_rts.gpio_145 */
 		>;
 	};
 
-	mcspi1_pins: pinmux_mcspi1_pins {
+	mcspi1_pins: mcspi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c8, PIN_INPUT | MUX_MODE0)	/* mcspi1_clk.mcspi1_clk */
 			OMAP3_CORE1_IOPAD(0x21ca, PIN_INPUT | MUX_MODE0)	/* mcspi1_simo.mcspi1_simo */
@@ -62,7 +62,7 @@ OMAP3_CORE1_IOPAD(0x21ce, PIN_INPUT | MUX_MODE0)	/* mcspi1_cs0.mcspi1_cs0 */
 		>;
 	};
 
-	ads7846_pins: pinmux_ads7846_pins {
+	ads7846_pins: ads7846-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2138, PIN_INPUT_PULLDOWN | MUX_MODE4)	/* csi2_dx1.gpio_114 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-overo-common-peripherals.dtsi b/arch/arm/boot/dts/omap3-overo-common-peripherals.dtsi
--- a/arch/arm/boot/dts/omap3-overo-common-peripherals.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-common-peripherals.dtsi
@@ -24,14 +24,14 @@ lis33_1v8: lis33-1v8-reg {
 };
 
 &omap3_pmx_core {
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT | MUX_MODE0)	/* i2c3_scl.i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT | MUX_MODE0)	/* i2c3_sda.i2c3_sda */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | MUX_MODE0)	/* uart3_rx_irrx.uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)	/* uart3_tx_irtx.uart3_tx_irtx */
diff --git a/arch/arm/boot/dts/omap3-overo-gallop43.dts b/arch/arm/boot/dts/omap3-overo-gallop43.dts
--- a/arch/arm/boot/dts/omap3-overo-gallop43.dts
+++ b/arch/arm/boot/dts/omap3-overo-gallop43.dts
@@ -18,14 +18,14 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 			OMAP3430_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)	/* etk_d8.gpio_22 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE4)	/* etk_d9.gpio_23 */
 			OMAP3430_CORE2_IOPAD(0x25dc, PIN_INPUT | MUX_MODE4)	/* etk_d0.gpio_14 */
diff --git a/arch/arm/boot/dts/omap3-overo-palo35.dts b/arch/arm/boot/dts/omap3-overo-palo35.dts
--- a/arch/arm/boot/dts/omap3-overo-palo35.dts
+++ b/arch/arm/boot/dts/omap3-overo-palo35.dts
@@ -18,14 +18,14 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 			OMAP3430_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)	/* etk_d8.gpio_22 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE4)	/* etk_d9.gpio_23 */
 			OMAP3430_CORE2_IOPAD(0x25dc, PIN_INPUT | MUX_MODE4)	/* etk_d0.gpio_14 */
diff --git a/arch/arm/boot/dts/omap3-overo-palo43.dts b/arch/arm/boot/dts/omap3-overo-palo43.dts
--- a/arch/arm/boot/dts/omap3-overo-palo43.dts
+++ b/arch/arm/boot/dts/omap3-overo-palo43.dts
@@ -18,14 +18,14 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 			OMAP3430_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)	/* etk_d8.gpio_22 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE4)	/* etk_d9.gpio_23 */
 			OMAP3430_CORE2_IOPAD(0x25dc, PIN_INPUT | MUX_MODE4)	/* etk_d0.gpio_14 */
diff --git a/arch/arm/boot/dts/omap3-overo-storm-chestnut43.dts b/arch/arm/boot/dts/omap3-overo-storm-chestnut43.dts
--- a/arch/arm/boot/dts/omap3-overo-storm-chestnut43.dts
+++ b/arch/arm/boot/dts/omap3-overo-storm-chestnut43.dts
@@ -18,14 +18,14 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 			OMAP3630_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)	/* etk_d8.gpio_22 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE4)	/* etk_d9.gpio_23 */
 			OMAP3630_CORE2_IOPAD(0x25dc, PIN_INPUT | MUX_MODE4)	/* etk_d0.gpio_14 */
diff --git a/arch/arm/boot/dts/omap3-overo-storm-gallop43.dts b/arch/arm/boot/dts/omap3-overo-storm-gallop43.dts
--- a/arch/arm/boot/dts/omap3-overo-storm-gallop43.dts
+++ b/arch/arm/boot/dts/omap3-overo-storm-gallop43.dts
@@ -18,14 +18,14 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 			OMAP3630_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)	/* etk_d8.gpio_22 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE4)	/* etk_d9.gpio_23 */
 			OMAP3630_CORE2_IOPAD(0x25dc, PIN_INPUT | MUX_MODE4)	/* etk_d0.gpio_14 */
diff --git a/arch/arm/boot/dts/omap3-overo-storm-palo35.dts b/arch/arm/boot/dts/omap3-overo-storm-palo35.dts
--- a/arch/arm/boot/dts/omap3-overo-storm-palo35.dts
+++ b/arch/arm/boot/dts/omap3-overo-storm-palo35.dts
@@ -18,14 +18,14 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 			OMAP3630_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)	/* etk_d8.gpio_22 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE4)	/* etk_d9.gpio_23 */
 			OMAP3630_CORE2_IOPAD(0x25dc, PIN_INPUT | MUX_MODE4)	/* etk_d0.gpio_14 */
diff --git a/arch/arm/boot/dts/omap3-overo-storm-palo43.dts b/arch/arm/boot/dts/omap3-overo-storm-palo43.dts
--- a/arch/arm/boot/dts/omap3-overo-storm-palo43.dts
+++ b/arch/arm/boot/dts/omap3-overo-storm-palo43.dts
@@ -18,14 +18,14 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 			OMAP3630_CORE2_IOPAD(0x25ec, PIN_OUTPUT | MUX_MODE4)	/* etk_d8.gpio_22 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ee, PIN_INPUT | MUX_MODE4)	/* etk_d9.gpio_23 */
 			OMAP3630_CORE2_IOPAD(0x25dc, PIN_INPUT | MUX_MODE4)	/* etk_d0.gpio_14 */
diff --git a/arch/arm/boot/dts/omap3-overo-storm-summit.dts b/arch/arm/boot/dts/omap3-overo-storm-summit.dts
--- a/arch/arm/boot/dts/omap3-overo-storm-summit.dts
+++ b/arch/arm/boot/dts/omap3-overo-storm-summit.dts
@@ -18,7 +18,7 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-overo-storm.dtsi b/arch/arm/boot/dts/omap3-overo-storm.dtsi
--- a/arch/arm/boot/dts/omap3-overo-storm.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-storm.dtsi
@@ -12,7 +12,7 @@ &omap3_pmx_core2 {
 			&hsusb2_2_pins
 	>;
 
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		/* etk_d10.hsusb2_clk */
 			OMAP3630_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		/* etk_d11.hsusb2_stp */
@@ -23,7 +23,7 @@ OMAP3630_CORE2_IOPAD(0x25fa, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* etk_d15.hsusb2_d
 		>;
 	};
 
-	w3cbw003c_2_pins: pinmux_w3cbw003c_2_pins {
+	w3cbw003c_2_pins: w3cbw003c-2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25e0, PIN_OUTPUT | MUX_MODE4)		/* etk_d2.gpio_16 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-overo-summit.dts b/arch/arm/boot/dts/omap3-overo-summit.dts
--- a/arch/arm/boot/dts/omap3-overo-summit.dts
+++ b/arch/arm/boot/dts/omap3-overo-summit.dts
@@ -18,7 +18,7 @@ / {
 };
 
 &omap3_pmx_core2 {
-	led_pins: pinmux_led_pins {
+	led_pins: led-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25ea, PIN_OUTPUT | MUX_MODE4)	/* etk_d7.gpio_21 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-overo.dtsi b/arch/arm/boot/dts/omap3-overo.dtsi
--- a/arch/arm/boot/dts/omap3-overo.dtsi
+++ b/arch/arm/boot/dts/omap3-overo.dtsi
@@ -12,7 +12,7 @@ &omap3_pmx_core2 {
 			&hsusb2_2_pins
 	>;
 
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		/* etk_d10.hsusb2_clk */
 			OMAP3430_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		/* etk_d11.hsusb2_stp */
@@ -23,7 +23,7 @@ OMAP3430_CORE2_IOPAD(0x25fa, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* etk_d15.hsusb2_d
 		>;
 	};
 
-	w3cbw003c_2_pins: pinmux_w3cbw003c_2_pins {
+	w3cbw003c_2_pins: w3cbw003c-2-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25e0, PIN_OUTPUT | MUX_MODE4)		/* etk_d2.gpio_16 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-pandora-1ghz.dts b/arch/arm/boot/dts/omap3-pandora-1ghz.dts
--- a/arch/arm/boot/dts/omap3-pandora-1ghz.dts
+++ b/arch/arm/boot/dts/omap3-pandora-1ghz.dts
@@ -27,7 +27,7 @@ &hsusb2_2_pins
 		&control_pins
 	>;
 
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		/* etk_d10.hsusb2_clk */
 			OMAP3630_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		/* etk_d11.hsusb2_stp */
@@ -38,7 +38,7 @@ OMAP3630_CORE2_IOPAD(0x25fa, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* etk_d15.hsusb2_d
 		>;
 	};
 
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25d8, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_clk.sdmmc3_clk */
 			OMAP3630_CORE2_IOPAD(0x25da, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_ctl.sdmmc3_cmd */
@@ -49,7 +49,7 @@ OMAP3630_CORE2_IOPAD(0x25e8, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_d6.sdmmc3_dat2
 		>;
 	};
 
-	control_pins: pinmux_control_pins {
+	control_pins: control-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25dc, PIN_INPUT_PULLDOWN | MUX_MODE4)	/* etk_d0.gpio_14 =  HP_SHUTDOWN */
 			OMAP3630_CORE2_IOPAD(0x25de, PIN_OUTPUT | MUX_MODE4)		/* etk_d1.gpio_15 =  BT_SHUTDOWN */
diff --git a/arch/arm/boot/dts/omap3-pandora-600mhz.dts b/arch/arm/boot/dts/omap3-pandora-600mhz.dts
--- a/arch/arm/boot/dts/omap3-pandora-600mhz.dts
+++ b/arch/arm/boot/dts/omap3-pandora-600mhz.dts
@@ -27,7 +27,7 @@ &hsusb2_2_pins
 		&control_pins
 	>;
 
-	hsusb2_2_pins: pinmux_hsusb2_2_pins {
+	hsusb2_2_pins: hsusb2-2-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		/* etk_d10.hsusb2_clk */
 			OMAP3430_CORE2_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		/* etk_d11.hsusb2_stp */
@@ -38,7 +38,7 @@ OMAP3430_CORE2_IOPAD(0x25fa, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* etk_d15.hsusb2_d
 		>;
 	};
 
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25d8, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_clk.sdmmc3_clk */
 			OMAP3430_CORE2_IOPAD(0x25da, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_ctl.sdmmc3_cmd */
@@ -49,7 +49,7 @@ OMAP3430_CORE2_IOPAD(0x25e8, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_d6.sdmmc3_dat2
 		>;
 	};
 
-	control_pins: pinmux_control_pins {
+	control_pins: control-pins {
 		pinctrl-single,pins = <
 			OMAP3430_CORE2_IOPAD(0x25dc, PIN_INPUT_PULLDOWN | MUX_MODE4)	/* etk_d0.gpio_14 =  HP_SHUTDOWN */
 			OMAP3430_CORE2_IOPAD(0x25de, PIN_OUTPUT | MUX_MODE4)		/* etk_d1.gpio_15 =  BT_SHUTDOWN */
diff --git a/arch/arm/boot/dts/omap3-pandora-common.dtsi b/arch/arm/boot/dts/omap3-pandora-common.dtsi
--- a/arch/arm/boot/dts/omap3-pandora-common.dtsi
+++ b/arch/arm/boot/dts/omap3-pandora-common.dtsi
@@ -205,7 +205,7 @@ lid {
 	};
 
 	/* HS USB Host PHY on PORT 2 */
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		reset-gpios = <&gpio1 16 GPIO_ACTIVE_LOW>; /* GPIO_16 */
 		vcc-supply = <&vaux2>;
@@ -251,7 +251,7 @@ wg7210_32k: fixed-regulator-wg7210_32k {
 
 &omap3_pmx_core {
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_cmd.sdmmc1_cmd */
@@ -262,7 +262,7 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc1_dat3.sdmmc1_d
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)		/* sdmmc2_cmd.sdmmc2_cmd */
@@ -277,7 +277,7 @@ OMAP3_CORE1_IOPAD(0x216a, PIN_INPUT_PULLUP | MUX_MODE1)		/* sdmmc2_dat7.sdmmc2_c
 		>;
 	};
 
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)	/* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)	/* dss_hsync.dss_hsync */
@@ -311,14 +311,14 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE0)	/* dss_data23.dss_data23 */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | PIN_OFF_WAKEUPENABLE | MUX_MODE0)	/* uart3_rx_irrx.uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0) /* uart3_tx_irtx.uart3_tx_irtx */
 		>;
 	};
 
-	led_pins: pinmux_leds_pins {
+	led_pins: leds-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2154, PIN_OUTPUT | MUX_MODE4)	/* GPIO_128 */
 			OMAP3_CORE1_IOPAD(0x2156, PIN_OUTPUT | MUX_MODE4)	/* GPIO_129 */
@@ -327,7 +327,7 @@ OMAP3_CORE1_IOPAD(0x2192, PIN_OUTPUT | MUX_MODE4)	/* GPIO_159 */
 		>;
 	};
 
-	button_pins: pinmux_button_pins {
+	button_pins: button-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2110, PIN_INPUT | MUX_MODE4)	/* GPIO_96 */
 			OMAP3_CORE1_IOPAD(0x2112, PIN_INPUT | MUX_MODE4)	/* GPIO_97 */
@@ -349,7 +349,7 @@ OMAP3_CORE1_IOPAD(0x21d2, PIN_INPUT | MUX_MODE4)	/* GPIO_176 */
 		>;
 	};
 
-	penirq_pins: pinmux_penirq_pins {
+	penirq_pins: penirq-pins {
 		pinctrl-single,pins = <
 			/* here we could enable to wakeup the cpu from suspend by a pen touch */
 			OMAP3_CORE1_IOPAD(0x210c, PIN_INPUT | MUX_MODE4)	/* GPIO_94 */
diff --git a/arch/arm/boot/dts/omap3-sb-t35.dtsi b/arch/arm/boot/dts/omap3-sb-t35.dtsi
--- a/arch/arm/boot/dts/omap3-sb-t35.dtsi
+++ b/arch/arm/boot/dts/omap3-sb-t35.dtsi
@@ -56,27 +56,27 @@ audio_amp: audio_amp {
 };
 
 &omap3_pmx_core {
-	smsc2_pins: pinmux_smsc2_pins {
+	smsc2_pins: smsc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20b6, PIN_OUTPUT | MUX_MODE0)	/* gpmc_ncs4.gpmc_ncs4 */
 			OMAP3_CORE1_IOPAD(0x20d2, PIN_INPUT_PULLUP | MUX_MODE4)	/* gpmc_wait3.gpio_65 */
 		>;
 	};
 
-	tfp410_pins: pinmux_tfp410_pins {
+	tfp410_pins: tfp410-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20b4, PIN_OUTPUT | MUX_MODE4)	/* gpmc_ncs3.gpio_54 */
 		>;
 	};
 
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT_PULLUP | MUX_MODE0) /* i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT_PULLUP | MUX_MODE0) /* i2c3_sda */
 		>;
 	};
 
-	sb_t35_audio_amp: pinmux_sb_t35_audio_amp {
+	sb_t35_audio_amp: sb-t35-audio-amp-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20c8, PIN_OUTPUT | MUX_MODE4) /* gpmc_nbe1.gpio_61 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-sbc-t3517.dts b/arch/arm/boot/dts/omap3-sbc-t3517.dts
--- a/arch/arm/boot/dts/omap3-sbc-t3517.dts
+++ b/arch/arm/boot/dts/omap3-sbc-t3517.dts
@@ -36,14 +36,14 @@ &sb_t35_usb_hub_pins
 			&usb_hub_pins
 		    >;
 
-	mmc1_aux_pins: pinmux_mmc1_aux_pins {
+	mmc1_aux_pins: mmc1-aux-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20c0, PIN_INPUT_PULLUP | MUX_MODE4) /* gpmc_clk.gpio_59   */
 			OMAP3_CORE1_IOPAD(0x2174, PIN_INPUT_PULLUP | MUX_MODE4) /* uart2_cts.gpio_144 */
 		>;
 	};
 
-	sb_t35_usb_hub_pins: pinmux_sb_t35_usb_hub_pins {
+	sb_t35_usb_hub_pins: sb-t35-usb-hub-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ec, PIN_OUTPUT | MUX_MODE4) /* ccdc_wen.gpio_98 - SB-T35 USB HUB RST */
 		>;
diff --git a/arch/arm/boot/dts/omap3-sbc-t3530.dts b/arch/arm/boot/dts/omap3-sbc-t3530.dts
--- a/arch/arm/boot/dts/omap3-sbc-t3530.dts
+++ b/arch/arm/boot/dts/omap3-sbc-t3530.dts
@@ -20,7 +20,7 @@ &omap3_pmx_core {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sb_t35_usb_hub_pins>;
 
-	sb_t35_usb_hub_pins: pinmux_sb_t35_usb_hub_pins {
+	sb_t35_usb_hub_pins: sb-t35-usb-hub-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2130, PIN_OUTPUT | MUX_MODE4) /* ccdc_wen.gpio_167 - SB-T35 USB HUB RST */
 		>;
diff --git a/arch/arm/boot/dts/omap3-sbc-t3730.dts b/arch/arm/boot/dts/omap3-sbc-t3730.dts
--- a/arch/arm/boot/dts/omap3-sbc-t3730.dts
+++ b/arch/arm/boot/dts/omap3-sbc-t3730.dts
@@ -20,7 +20,7 @@ &omap3_pmx_core {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sb_t35_usb_hub_pins>;
 
-	sb_t35_usb_hub_pins: pinmux_sb_t35_usb_hub_pins {
+	sb_t35_usb_hub_pins: sb-t35-usb-hub-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2130, PIN_OUTPUT | MUX_MODE4) /* ccdc_wen.gpio_167 - SB-T35 USB HUB RST */
 		>;
diff --git a/arch/arm/boot/dts/omap3-sniper.dts b/arch/arm/boot/dts/omap3-sniper.dts
--- a/arch/arm/boot/dts/omap3-sniper.dts
+++ b/arch/arm/boot/dts/omap3-sniper.dts
@@ -26,48 +26,48 @@ memory@80000000 {
 &omap3_pmx_core {
 	pinctrl-names = "default";
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | MUX_MODE0)	/* uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)	/* uart3_tx_irtx */
 		>;
 	};
 
-	dp3t_sel_pins: pinmux_dp3t_sel_pins {
+	dp3t_sel_pins: dp3t-sel-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2196, PIN_OUTPUT | MUX_MODE4)	/* gpio_161 */
 			OMAP3_CORE1_IOPAD(0x2198, PIN_OUTPUT | MUX_MODE4)	/* gpio_162 */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21ba, PIN_INPUT | MUX_MODE0)	/* i2c1_scl */
 			OMAP3_CORE1_IOPAD(0x21bc, PIN_INPUT | MUX_MODE0)	/* i2c1_sda */
 		>;
 	};
 
-	i2c2_pins: pinmux_i2c2_pins {
+	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_INPUT | MUX_MODE0)	/* i2c2_scl */
 			OMAP3_CORE1_IOPAD(0x21c0, PIN_INPUT | MUX_MODE0)	/* i2c2_sda */
 		>;
 	};
 
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT | MUX_MODE0)	/* i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT | MUX_MODE0)	/* i2c3_sda */
 		>;
 	};
 
-	lp8720_en_pin: pinmux_lp8720_en_pin {
+	lp8720_en_pin: lp8720-en-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2080, PIN_OUTPUT | MUX_MODE4)	/* gpio_37 */
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT | MUX_MODE0)	/* sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT | MUX_MODE0)	/* sdmmc1_cmd */
@@ -78,7 +78,7 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT | MUX_MODE0)	/* sdmmc1_dat3 */
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT | MUX_MODE0)	/* sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT | MUX_MODE0)	/* sdmmc2_cmd */
@@ -93,7 +93,7 @@ OMAP3_CORE1_IOPAD(0x216a, PIN_INPUT | MUX_MODE0)	/* sdmmc2_dat7 */
 		>;
 	};
 
-	usb_otg_hs_pins: pinmux_usb_otg_hs_pins {
+	usb_otg_hs_pins: usb-otg-hs-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21a2, PIN_INPUT | MUX_MODE0)	/* hsusb0_clk */
 			OMAP3_CORE1_IOPAD(0x21a4, PIN_OUTPUT | MUX_MODE0)	/* hsusb0_stp */
@@ -114,7 +114,7 @@ OMAP3_CORE1_IOPAD(0x21b8, PIN_INPUT | MUX_MODE0)	/* hsusb0_data7 */
 &omap3_pmx_wkup {
 	pinctrl-names = "default";
 
-	mmc1_cd_pin: pinmux_mmc1_cd_pin {
+	mmc1_cd_pin: mmc1-cd-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a1a, PIN_INPUT | MUX_MODE4)		/* gpio_10 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-tao3530.dtsi b/arch/arm/boot/dts/omap3-tao3530.dtsi
--- a/arch/arm/boot/dts/omap3-tao3530.dtsi
+++ b/arch/arm/boot/dts/omap3-tao3530.dtsi
@@ -43,7 +43,7 @@ hsusb2_power: hsusb2_power_reg {
 	};
 
 	/* HS USB Host PHY on PORT 2 */
-	hsusb2_phy: hsusb2_phy {
+	hsusb2_phy: hsusb2-phy-pins {
 		compatible = "usb-nop-xceiv";
 		reset-gpios = <&gpio6 2 GPIO_ACTIVE_LOW>;	/* gpio_162 */
 		vcc-supply = <&hsusb2_power>;
@@ -70,7 +70,7 @@ mmc2_sdio_poweron: regulator-mmc2-sdio-poweron {
 };
 
 &omap3_pmx_core {
-	hsusbb2_pins: pinmux_hsusbb2_pins {
+	hsusbb2_pins: hsusbb2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x25f0, PIN_OUTPUT | MUX_MODE3)		/* etk_d10.hsusb2_clk */
 			OMAP3_CORE1_IOPAD(0x25f2, PIN_OUTPUT | MUX_MODE3)		/* etk_d11.hsusb2_stp */
@@ -87,7 +87,7 @@ OMAP3_CORE1_IOPAD(0x21de, PIN_INPUT_PULLDOWN | MUX_MODE3)	/* mcspi2_cs1.hsusb2_d
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_cmd.sdmmc1_cmd */
@@ -102,7 +102,7 @@ OMAP3_CORE1_IOPAD(0x2156, PIN_INPUT_PULLUP | MUX_MODE0) /* sdmmc1_dat7.sdmmc1_da
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_cmd.sdmmc2_cmd */
@@ -114,27 +114,27 @@ OMAP3_CORE1_IOPAD(0x2162, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_dat3.sdmmc2_da
 	};
 
 	/* wlan GPIO output for WLAN_EN */
-	wlan_gpio: pinmux_wlan_gpio {
+	wlan_gpio: wlan-gpio-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x218e, PIN_OUTPUT | MUX_MODE4)	/* mcbsp1_fsr gpio_157 */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219e, PIN_INPUT | PIN_OFF_WAKEUPENABLE | MUX_MODE0) /* uart3_rx_irrx.uart3_rx_irrx */
 			OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)	/* uart3_tx_irtx.uart3_tx_irtx */
 		>;
 	};
 
-	i2c3_pins: pinmux_i2c3_pins {
+	i2c3_pins: i2c3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c2, PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c3_scl.i2c3_scl */
 			OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c3_sda.i2c3_sda */
 		>;
 	};
 
-	mcspi1_pins: pinmux_mcspi1_pins {
+	mcspi1_pins: mcspi1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21c8, PIN_INPUT | MUX_MODE0)	/* mcspi1_clk.mcspi1_clk */
 			OMAP3_CORE1_IOPAD(0x21ca, PIN_OUTPUT | MUX_MODE0)	/* mcspi1_simo.mcspi1_simo */
@@ -143,7 +143,7 @@ OMAP3_CORE1_IOPAD(0x21ce, PIN_OUTPUT | MUX_MODE0)	/* mcspi1_cs0.mcspi1_cs0 */
 		>;
 	};
 
-	mcspi3_pins: pinmux_mcspi3_pins {
+	mcspi3_pins: mcspi3-pins {
 		pinctrl-single,pins = <
                         OMAP3_CORE1_IOPAD(0x25dc, PIN_OUTPUT | MUX_MODE1)	/* etk_d0.mcspi3_simo gpio14 INPUT | MODE1 */
                         OMAP3_CORE1_IOPAD(0x25de, PIN_INPUT_PULLUP | MUX_MODE1)	/* etk_d1.mcspi3_somi gpio15 INPUT | MODE1 */
@@ -152,7 +152,7 @@ OMAP3_CORE1_IOPAD(0x25e2, PIN_INPUT | MUX_MODE1)	/* etk_d3.mcspi3_clk gpio17 INP
 		>;
 	};
 
-	mcbsp3_pins: pinmux_mcbsp3_pins {
+	mcbsp3_pins: mcbsp3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x216c, PIN_OUTPUT | MUX_MODE0)	/* mcbsp3_dx.uart2_cts */
 			OMAP3_CORE1_IOPAD(0x216e, PIN_INPUT | MUX_MODE0)	/* mcbsp3_dr.uart2_rts */
diff --git a/arch/arm/boot/dts/omap3-thunder.dts b/arch/arm/boot/dts/omap3-thunder.dts
--- a/arch/arm/boot/dts/omap3-thunder.dts
+++ b/arch/arm/boot/dts/omap3-thunder.dts
@@ -12,7 +12,7 @@ / {
 };
 
 &omap3_pmx_core {
-	dss_dpi_pins: pinmux_dss_dpi_pins {
+	dss_dpi_pins: dss-dpi-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x20d4, PIN_OUTPUT | MUX_MODE0)	/* dss_pclk.dss_pclk */
 			OMAP3_CORE1_IOPAD(0x20d6, PIN_OUTPUT | MUX_MODE0)	/* dss_hsync.dss_hsync */
@@ -45,13 +45,13 @@ OMAP3_CORE1_IOPAD(0x210a, PIN_OUTPUT | MUX_MODE0)	/* dss_data23.dss_data23 */
 		>;
 	};
 
-	lte430_pins: pinmux_lte430_pins {
+	lte430_pins: lte430-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2168, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat6.gpio_138 */
 		>;
 	};
 
-	backlight_pins: pinmux_backlight_pins {
+	backlight_pins: backlight-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x216a, PIN_OUTPUT | MUX_MODE4)	/* sdmmc2_dat7.gpio_139 */
 		>;
diff --git a/arch/arm/boot/dts/omap3-zoom3.dts b/arch/arm/boot/dts/omap3-zoom3.dts
--- a/arch/arm/boot/dts/omap3-zoom3.dts
+++ b/arch/arm/boot/dts/omap3-zoom3.dts
@@ -49,7 +49,7 @@ wl12xx_vmmc: wl12xx_vmmc {
 
 &omap3_pmx_core {
 	/* REVISIT: twl gpio0 is mmc0_cd */
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2144, PIN_OUTPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
 			OMAP3_CORE1_IOPAD(0x2146, PIN_OUTPUT_PULLUP | MUX_MODE0)	/* sdmmc1_cmd.sdmmc1_cmd */
@@ -60,7 +60,7 @@ OMAP3_CORE1_IOPAD(0x214e, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_dat3.sdmmc1_da
 		>;
 	};
 
-	mmc2_pins: pinmux_mmc2_pins {
+	mmc2_pins: mmc2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2158, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_clk.sdmmc2_clk */
 			OMAP3_CORE1_IOPAD(0x215a, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc2_cmd.sdmmc2_cmd */
@@ -75,14 +75,14 @@ OMAP3_CORE1_IOPAD(0x216a, PIN_INPUT | MUX_MODE0)		/* sdmmc2_dat7.sdmmc2_dat7 */
 		>;
 	};
 
-	mmc3_pins: pinmux_mmc3_pins {
+	mmc3_pins: mmc3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2198, PIN_INPUT | MUX_MODE4)	/* mcbsp1_clkx.gpio_162 WLAN IRQ */
 			OMAP3_CORE1_IOPAD(0x21d0, PIN_INPUT_PULLUP | MUX_MODE3)	/* mcspi1_cs1.sdmmc3_cmd */
 		>;
 	};
 
-	uart1_pins: pinmux_uart1_pins {
+	uart1_pins: uart1-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2180, PIN_INPUT | MUX_MODE0)		/* uart1_cts.uart1_cts */
 			OMAP3_CORE1_IOPAD(0x217e, PIN_OUTPUT | MUX_MODE0)		/* uart1_rts.uart1_rts */
@@ -91,7 +91,7 @@ OMAP3_CORE1_IOPAD(0x217c, PIN_OUTPUT | MUX_MODE0)		/* uart1_tx.uart1_tx */
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x2174, PIN_INPUT_PULLUP | MUX_MODE0)	/* uart2_cts.uart2_cts */
 			OMAP3_CORE1_IOPAD(0x2176, PIN_OUTPUT | MUX_MODE0)		/* uart2_rts.uart2_rts */
@@ -100,7 +100,7 @@ OMAP3_CORE1_IOPAD(0x2178, PIN_OUTPUT | MUX_MODE0)		/* uart2_tx.uart2_tx */
 		>;
 	};
 
-	uart3_pins: pinmux_uart3_pins {
+	uart3_pins: uart3-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x219a, PIN_INPUT_PULLDOWN | MUX_MODE0)	/* uart3_cts_rctx.uart3_cts_rctx */
 			OMAP3_CORE1_IOPAD(0x219c, PIN_OUTPUT | MUX_MODE0)		/* uart3_rts_sd.uart3_rts_sd */
@@ -110,7 +110,7 @@ OMAP3_CORE1_IOPAD(0x21a0, PIN_OUTPUT | MUX_MODE0)		/* uart3_tx_irtx.uart3_tx_irt
 	};
 
 	/* wl12xx GPIO output for WLAN_EN */
-	wl12xx_gpio: pinmux_wl12xx_gpio {
+	wl12xx_gpio: wl12xx-gpio-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x211a, PIN_OUTPUT| MUX_MODE4)		/* cam_d2.gpio_101 */
 		>;
@@ -118,7 +118,7 @@ OMAP3_CORE1_IOPAD(0x211a, PIN_OUTPUT| MUX_MODE4)		/* cam_d2.gpio_101 */
 };
 
 &omap3_pmx_core2 {
-	mmc3_2_pins: pinmux_mmc3_2_pins {
+	mmc3_2_pins: mmc3-2-pins {
 		pinctrl-single,pins = <
 			OMAP3630_CORE2_IOPAD(0x25d8, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_clk.sdmmc3_clk */
 			OMAP3630_CORE2_IOPAD(0x25e4, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_d4.sdmmc3_dat0 */
@@ -130,7 +130,7 @@ OMAP3630_CORE2_IOPAD(0x25e2, PIN_INPUT_PULLUP | MUX_MODE2)	/* etk_d3.sdmmc3_dat3
 };
 
 &omap3_pmx_wkup {
-	wlan_host_wkup: pinmux_wlan_host_wkup_pins {
+	wlan_host_wkup: wlan-host-wkup-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a1a, PIN_INPUT_PULLUP | MUX_MODE4)	/* sys_clkout1.gpio_10 WLAN_HOST_WKUP */
 		>;
diff --git a/arch/arm/boot/dts/twl4030_omap3.dtsi b/arch/arm/boot/dts/twl4030_omap3.dtsi
--- a/arch/arm/boot/dts/twl4030_omap3.dtsi
+++ b/arch/arm/boot/dts/twl4030_omap3.dtsi
@@ -14,7 +14,7 @@ &omap3_pmx_core {
 	 * to the SYS_NIRQ line on OMAP.  Therefore, configure the
 	 * defaults for the SYS_NIRQ pin here.
 	 */
-	twl4030_pins: pinmux_twl4030_pins {
+	twl4030_pins: twl4030-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21e0, PIN_INPUT_PULLUP | PIN_OFF_WAKEUPENABLE | MUX_MODE0) /* sys_nirq.sys_nirq */
 		>;
@@ -28,7 +28,7 @@ OMAP3_CORE1_IOPAD(0x21e0, PIN_INPUT_PULLUP | PIN_OFF_WAKEUPENABLE | MUX_MODE0) /
  * sys_nvmode2 signaling.
  */
 &omap3_pmx_wkup {
-	twl4030_vpins: pinmux_twl4030_vpins {
+	twl4030_vpins: twl4030-vpins-pins {
 		pinctrl-single,pins = <
 			OMAP3_WKUP_IOPAD(0x2a00, PIN_INPUT | MUX_MODE0)		/* i2c4_scl.i2c4_scl */
 			OMAP3_WKUP_IOPAD(0x2a02, PIN_INPUT | MUX_MODE0)		/* i2c4_sda.i2c4_sda */
-- 
2.40.1
