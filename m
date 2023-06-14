Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8B2072FC66
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 13:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233227AbjFNL3b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 07:29:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233170AbjFNL3a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 07:29:30 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EBAD4137
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 04:29:25 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id C39CA8027;
        Wed, 14 Jun 2023 11:29:23 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: ti: Unify pin group node names for make dtbs checks
Date:   Wed, 14 Jun 2023 14:28:46 +0300
Message-ID: <20230614112910.21489-1-tony@atomide.com>
X-Mailer: git-send-email 2.41.0
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

Prepare for pinctrl-single yaml binding and unify pin group node names.

Let's standardize on pin group node naming ending in -pins. As we don't
necessarily have a SoC specific compatible property for pinctrl-single.
I'd rather not add a pattern match for pins somewhere in the name for all
the users.

Trying to add matches for pins-default will be futile as on the earlier
SoCs we've already seen names like pins-sleep, pins-idle, pins-off and so
on that would need to be matched.

And as the node is a pin group, let's prefer to use naming -pins rather
than -pin as more pins may need to be added to the pin group later on.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts      |  6 +-
 .../arm64/boot/dts/ti/k3-am625-beagleplay.dts | 54 +++++++++---------
 arch/arm64/boot/dts/ti/k3-am625-sk.dts        |  8 +--
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts       | 22 ++++----
 .../arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 22 ++++----
 .../boot/dts/ti/k3-am64-phycore-som.dtsi      | 12 ++--
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       | 30 +++++-----
 .../dts/ti/k3-am642-phyboard-electra-rdk.dts  | 26 ++++-----
 arch/arm64/boot/dts/ti/k3-am642-sk.dts        | 28 +++++-----
 .../dts/ti/k3-am65-iot2050-common-pg2.dtsi    |  2 +-
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 48 ++++++++--------
 .../ti/k3-am6528-iot2050-basic-common.dtsi    |  2 +-
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 38 ++++++-------
 .../ti/k3-am6548-iot2050-advanced-common.dtsi |  2 +-
 .../dts/ti/k3-am6548-iot2050-advanced-m2.dts  | 10 ++--
 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 24 ++++----
 arch/arm64/boot/dts/ti/k3-am69-sk.dts         |  8 +--
 .../dts/ti/k3-j7200-common-proc-board.dts     | 14 ++---
 .../ti/k3-j7200-evm-quad-port-eth-exp.dtso    |  2 +-
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   |  8 +--
 .../boot/dts/ti/k3-j721e-beagleboneai64.dts   | 56 +++++++++----------
 .../dts/ti/k3-j721e-common-proc-board.dts     | 48 ++++++++--------
 .../ti/k3-j721e-evm-quad-port-eth-exp.dtso    |  2 +-
 arch/arm64/boot/dts/ti/k3-j721e-sk.dts        | 46 +++++++--------
 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi   |  4 +-
 .../dts/ti/k3-j721s2-common-proc-board.dts    | 24 ++++----
 arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi  |  4 +-
 arch/arm64/boot/dts/ti/k3-j784s4-evm.dts      | 12 ++--
 28 files changed, 281 insertions(+), 281 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
@@ -73,19 +73,19 @@ vddshv_sdio: regulator-4 {
 };
 
 &main_pmx0 {
-	vddshv_sdio_pins_default: vddshv-sdio-pins-default {
+	vddshv_sdio_pins_default: vddshv-sdio-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x07c, PIN_OUTPUT, 7) /* (M19) GPMC0_CLK.GPIO0_31 */
 		>;
 	};
 
-	main_gpio1_ioexp_intr_pins_default: main-gpio1-ioexp-intr-pins-default {
+	main_gpio1_ioexp_intr_pins_default: main-gpio1-ioexp-intr-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01d4, PIN_INPUT, 7) /* (C13) UART0_RTSn.GPIO1_23 */
 		>;
 	};
 
-	pmic_irq_pins_default: pmic-irq-pins-default {
+	pmic_irq_pins_default: pmic-irq-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01f4, PIN_INPUT, 0) /* (B16) EXTINTn */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -216,7 +216,7 @@ cpsw3g_phy1: ethernet-phy@1 {
 };
 
 &main_pmx0 {
-	gpio0_pins_default: gpio0-pins-default {
+	gpio0_pins_default: gpio0-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0004, PIN_INPUT, 7) /* (G25) OSPI0_LBCLKO.GPIO0_1 */
 			AM62X_IOPAD(0x0008, PIN_INPUT, 7) /* (J24) OSPI0_DQS.GPIO0_2 */
@@ -235,47 +235,47 @@ AM62X_IOPAD(0x00ac, PIN_INPUT, 7) /* (L21) GPMC0_CSn1.GPIO0_42 */
 		>;
 	};
 
-	vdd_sd_dv_pins_default: vdd-sd-pins-default {
+	vdd_sd_dv_pins_default: vdd-sd-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0244, PIN_OUTPUT, 7) /* (C17) MMC1_SDWP.GPIO1_49 */
 		>;
 	};
 
-	usr_button_pins_default: usr-button-pins-default {
+	usr_button_pins_default: usr-button-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0048, PIN_INPUT, 7) /* (N25) GPMC0_AD3.GPIO0_18 */
 		>;
 	};
 
-	grove_pins_default: grove-pins-default {
+	grove_pins_default: grove-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01e8, PIN_INPUT_PULLUP, 0) /* (B17) I2C1_SCL */
 			AM62X_IOPAD(0x01ec, PIN_INPUT_PULLUP, 0) /* (A17) I2C1_SDA */
 		>;
 	};
 
-	local_i2c_pins_default: local-i2c-pins-default {
+	local_i2c_pins_default: local-i2c-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01e0, PIN_INPUT_PULLUP, 0) /* (B16) I2C0_SCL */
 			AM62X_IOPAD(0x01e4, PIN_INPUT_PULLUP, 0) /* (A16) I2C0_SDA */
 		>;
 	};
 
-	i2c2_1v8_pins_default: i2c2-pins-default {
+	i2c2_1v8_pins_default: i2c2-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x00b0, PIN_INPUT_PULLUP, 1) /* (K22) GPMC0_CSn2.I2C2_SCL */
 			AM62X_IOPAD(0x00b4, PIN_INPUT_PULLUP, 1) /* (K24) GPMC0_CSn3.I2C2_SDA */
 		>;
 	};
 
-	mdio0_pins_default: mdio0-pins-default {
+	mdio0_pins_default: mdio0-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0160, PIN_OUTPUT, 7) /* (AD24) MDIO0_MDC.GPIO0_86 */
 			AM62X_IOPAD(0x015c, PIN_INPUT, 7) /* (AB22) MDIO0_MDIO.GPIO0_85 */
 		>;
 	};
 
-	rgmii1_pins_default: rgmii1-pins-default {
+	rgmii1_pins_default: rgmii1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x014c, PIN_INPUT, 0) /* (AB17) RGMII1_RD0 */
 			AM62X_IOPAD(0x0150, PIN_INPUT, 0) /* (AC17) RGMII1_RD1 */
@@ -292,7 +292,7 @@ AM62X_IOPAD(0x012c, PIN_OUTPUT, 0) /* (AD19) RGMII1_TX_CTL */
 		>;
 	};
 
-	emmc_pins_default: emmc-pins-default {
+	emmc_pins_default: emmc-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0220, PIN_INPUT, 0) /* (Y3) MMC0_CMD */
 			AM62X_IOPAD(0x0218, PIN_INPUT, 0) /* (AB1) MMC0_CLK */
@@ -307,13 +307,13 @@ AM62X_IOPAD(0x01f8, PIN_INPUT, 0) /* (AC2) MMC0_DAT7 */
 		>;
 	};
 
-	vdd_3v3_sd_pins_default: vdd-3v3-sd-pins-default {
+	vdd_3v3_sd_pins_default: vdd-3v3-sd-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01c4, PIN_INPUT, 7) /* (B14) SPI0_D1_GPIO1_19 */
 		>;
 	};
 
-	sd_pins_default: sd-pins-default {
+	sd_pins_default: sd-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x023c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
 			AM62X_IOPAD(0x0234, PIN_INPUT, 0) /* (B22) MMC1_CLK */
@@ -325,7 +325,7 @@ AM62X_IOPAD(0x0240, PIN_INPUT, 7) /* (D17) MMC1_SDCD.GPIO1_48 */
 		>;
 	};
 
-	wifi_pins_default: wifi-pins-default {
+	wifi_pins_default: wifi-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0120, PIN_INPUT, 0) /* (C24) MMC2_CMD */
 			AM62X_IOPAD(0x0118, PIN_INPUT, 0) /* (D25) MMC2_CLK */
@@ -338,19 +338,19 @@ AM62X_IOPAD(0x11c, PIN_INPUT, 0) /* (#N/A) MMC2_CLKB */
 		>;
 	};
 
-	wifi_en_pins_default: wifi-en-pins-default {
+	wifi_en_pins_default: wifi-en-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x009c, PIN_OUTPUT, 7) /* (V25) GPMC0_WAIT1.GPIO0_38 */
 		>;
 	};
 
-	wifi_wlirq_pins_default: wifi-wlirq-pins-default {
+	wifi_wlirq_pins_default: wifi-wlirq-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x00a8, PIN_INPUT, 7) /* (M21) GPMC0_CSn0.GPIO0_41 */
 		>;
 	};
 
-	spe_pins_default: spe-pins-default {
+	spe_pins_default: spe-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0168, PIN_INPUT, 1) /* (AE21) RGMII2_TXC.RMII2_CRS_DV */
 			AM62X_IOPAD(0x0180, PIN_INPUT, 1) /* (AD23) RGMII2_RXC.RMII2_REF_CLK */
@@ -366,21 +366,21 @@ AM62X_IOPAD(0x01f0, PIN_OUTPUT, 5) /* (A18) EXT_REFCLK1.CLKOUT0 */
 		>;
 	};
 
-	mikrobus_i2c_pins_default: mikrobus-i2c-pins-default {
+	mikrobus_i2c_pins_default: mikrobus-i2c-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01d0, PIN_INPUT_PULLUP, 2) /* (A15) UART0_CTSn.I2C3_SCL */
 			AM62X_IOPAD(0x01d4, PIN_INPUT_PULLUP, 2) /* (B15) UART0_RTSn.I2C3_SDA */
 		>;
 	};
 
-	mikrobus_uart_pins_default: mikrobus-uart-pins-default {
+	mikrobus_uart_pins_default: mikrobus-uart-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01d8, PIN_INPUT, 1) /* (C15) MCAN0_TX.UART5_RXD */
 			AM62X_IOPAD(0x01dc, PIN_OUTPUT, 1) /* (E15) MCAN0_RX.UART5_TXD */
 		>;
 	};
 
-	mikrobus_spi_pins_default: mikrobus-spi-pins-default {
+	mikrobus_spi_pins_default: mikrobus-spi-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01b0, PIN_INPUT, 1) /* (A20) MCASP0_ACLKR.SPI2_CLK */
 			AM62X_IOPAD(0x01ac, PIN_INPUT, 1) /* (E19) MCASP0_AFSR.SPI2_CS0 */
@@ -389,7 +389,7 @@ AM62X_IOPAD(0x0198, PIN_INPUT, 1) /* (A19) MCASP0_AXR2.SPI2_D1 */
 		>;
 	};
 
-	mikrobus_gpio_pins_default: mikrobus-gpio-pins-default {
+	mikrobus_gpio_pins_default: mikrobus-gpio-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x019c, PIN_INPUT, 7) /* (B18) MCASP0_AXR1.GPIO1_9 */
 			AM62X_IOPAD(0x01a0, PIN_INPUT, 7) /* (E18) MCASP0_AXR0.GPIO1_10 */
@@ -397,27 +397,27 @@ AM62X_IOPAD(0x01a8, PIN_INPUT, 7) /* (D20) MCASP0_AFSX.GPIO1_12 */
 		>;
 	};
 
-	console_pins_default: console-pins-default {
+	console_pins_default: console-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01c8, PIN_INPUT, 0) /* (D14) UART0_RXD */
 			AM62X_IOPAD(0x01cc, PIN_OUTPUT, 0) /* (E14) UART0_TXD */
 		>;
 	};
 
-	wifi_debug_uart_pins_default: wifi-debug-uart-pins-default {
+	wifi_debug_uart_pins_default: wifi-debug-uart-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x001c, PIN_INPUT, 3) /* (J23) OSPI0_D4.UART6_RXD */
 			AM62X_IOPAD(0x0020, PIN_OUTPUT, 3) /* (J25) OSPI0_D5.UART6_TXD */
 		>;
 	};
 
-	usb1_pins_default: usb1-pins-default {
+	usb1_pins_default: usb1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0258, PIN_INPUT, 0) /* (F18) USB1_DRVVBUS */
 		>;
 	};
 
-	pmic_irq_pins_default: pmic-irq-pins-default {
+	pmic_irq_pins_default: pmic-irq-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01f4, PIN_INPUT_PULLUP, 0) /* (D16) EXTINTn */
 		>;
@@ -425,27 +425,27 @@ AM62X_IOPAD(0x01f4, PIN_INPUT_PULLUP, 0) /* (D16) EXTINTn */
 };
 
 &mcu_pmx0 {
-	i2c_qwiic_pins_default: i2c-qwiic-pins-default {
+	i2c_qwiic_pins_default: i2c-qwiic-default-pins {
 		pinctrl-single,pins = <
 			AM62X_MCU_IOPAD(0x0044, PIN_INPUT, 0) /* (A8) MCU_I2C0_SCL */
 			AM62X_MCU_IOPAD(0x0048, PIN_INPUT, 0) /* (D10) MCU_I2C0_SDA */
 		>;
 	};
 
-	gbe_pmx_obsclk: gbe-pmx-clk-default {
+	gbe_pmx_obsclk: gbe-pmx-clk-default-pins {
 		pinctrl-single,pins = <
 			AM62X_MCU_IOPAD(0x0004, PIN_OUTPUT, 1) /* (B8) MCU_SPI0_CS1.MCU_OBSCLK0 */
 		>;
 	};
 
-	i2c_csi_pins_default: i2c-csi-pins-default {
+	i2c_csi_pins_default: i2c-csi-default-pins {
 		pinctrl-single,pins = <
 			AM62X_MCU_IOPAD(0x004c, PIN_INPUT_PULLUP, 0) /* (B9) WKUP_I2C0_SCL */
 			AM62X_MCU_IOPAD(0x0050, PIN_INPUT_PULLUP, 0) /* (A9) WKUP_I2C0_SDA */
 		>;
 	};
 
-	wifi_32k_clk: mcu-clk-out-pins-default {
+	wifi_32k_clk: mcu-clk-out-default-pins {
 		pinctrl-single,pins = <
 			AM62X_MCU_IOPAD(0x0084, PIN_OUTPUT, 0) /* (A12) WKUP_CLKOUT0 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
--- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
@@ -101,7 +101,7 @@ vcc_1v8: regulator-5 {
 };
 
 &main_pmx0 {
-	main_rgmii2_pins_default: main-rgmii2-pins-default {
+	main_rgmii2_pins_default: main-rgmii2-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x184, PIN_INPUT, 0) /* (AE23) RGMII2_RD0 */
 			AM62X_IOPAD(0x188, PIN_INPUT, 0) /* (AB20) RGMII2_RD1 */
@@ -118,7 +118,7 @@ AM62X_IOPAD(0x164, PIN_OUTPUT, 0) /* (AA19) RGMII2_TX_CTL */
 		>;
 	};
 
-	ospi0_pins_default: ospi0-pins-default {
+	ospi0_pins_default: ospi0-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x000, PIN_OUTPUT, 0) /* (H24) OSPI0_CLK */
 			AM62X_IOPAD(0x02c, PIN_OUTPUT, 0) /* (F23) OSPI0_CSn0 */
@@ -134,13 +134,13 @@ AM62X_IOPAD(0x008, PIN_INPUT, 0) /* (J24) OSPI0_DQS */
 		>;
 	};
 
-	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
+	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x07c, PIN_OUTPUT, 7) /* (P25) GPMC0_CLK.GPIO0_31 */
 		>;
 	};
 
-	main_gpio1_ioexp_intr_pins_default: main-gpio1-ioexp-intr-pins-default {
+	main_gpio1_ioexp_intr_pins_default: main-gpio1-ioexp-intr-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01d4, PIN_INPUT, 7) /* (B15) UART0_RTSn.GPIO1_23 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -117,7 +117,7 @@ led-0 {
 };
 
 &mcu_pmx0 {
-	wkup_uart0_pins_default: wkup-uart0-pins-default {
+	wkup_uart0_pins_default: wkup-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_MCU_IOPAD(0x0024, PIN_INPUT, 0) /* (C9) WKUP_UART0_RXD */
 			AM62AX_MCU_IOPAD(0x0028, PIN_OUTPUT, 0) /* (E9) WKUP_UART0_TXD */
@@ -135,14 +135,14 @@ &wkup_uart0 {
 };
 
 &main_pmx0 {
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x1c8, PIN_INPUT, 0) /* (E14) UART0_RXD */
 			AM62AX_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (D15) UART0_TXD */
 		>;
 	};
 
-	main_uart1_pins_default: main-uart1-pins-default {
+	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x01e8, PIN_INPUT, 1) /* (C17) I2C1_SCL.UART1_RXD */
 			AM62AX_IOPAD(0x01ec, PIN_OUTPUT, 1) /* (E17) I2C1_SDA.UART1_TXD */
@@ -151,28 +151,28 @@ AM62AX_IOPAD(0x0198, PIN_OUTPUT, 2) /* (B19) MCASP0_AXR2.UART1_RTSn */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x1e0, PIN_INPUT_PULLUP, 0) /* (B16) I2C0_SCL */
 			AM62AX_IOPAD(0x1e4, PIN_INPUT_PULLUP, 0) /* (A16) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x1e8, PIN_INPUT_PULLUP, 0) /* (B17) I2C1_SCL */
 			AM62AX_IOPAD(0x1ec, PIN_INPUT_PULLUP, 0) /* (A17) I2C1_SDA */
 		>;
 	};
 
-	main_i2c2_pins_default: main-i2c2-pins-default {
+	main_i2c2_pins_default: main-i2c2-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x0b0, PIN_INPUT_PULLUP, 1) /* (K22) GPMC0_CSn2.I2C2_SCL */
 			AM62AX_IOPAD(0x0b4, PIN_INPUT_PULLUP, 1) /* (K24) GPMC0_CSn3.I2C2_SDA */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x23c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
 			AM62AX_IOPAD(0x234, PIN_INPUT, 0) /* (B22) MMC1_CLK */
@@ -184,26 +184,26 @@ AM62AX_IOPAD(0x240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
 		>;
 	};
 
-	usr_led_pins_default: usr-led-pins-default {
+	usr_led_pins_default: usr-led-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x244, PIN_OUTPUT, 7) /* (D18) MMC1_SDWP.GPIO1_49 */
 		>;
 	};
 
-	main_usb1_pins_default: main-usb1-pins-default {
+	main_usb1_pins_default: main-usb1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x0258, PIN_OUTPUT, 0) /* (F18) USB1_DRVVBUS */
 		>;
 	};
 
-	main_mdio1_pins_default: main-mdio1-pins-default {
+	main_mdio1_pins_default: main-mdio1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x160, PIN_OUTPUT, 0) /* (V12) MDIO0_MDC */
 			AM62AX_IOPAD(0x15c, PIN_INPUT, 0) /* (V13) MDIO0_MDIO */
 		>;
 	};
 
-	main_rgmii1_pins_default: main-rgmii1-pins-default {
+	main_rgmii1_pins_default: main-rgmii1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x14c, PIN_INPUT, 0) /* (AB16) RGMII1_RD0 */
 			AM62AX_IOPAD(0x150, PIN_INPUT, 0) /* (V15) RGMII1_RD1 */
diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
@@ -119,35 +119,35 @@ sound_master: simple-audio-card,codec {
 
 &main_pmx0 {
 	/* First pad number is ALW package and second is AMC package */
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x1c8, PIN_INPUT, 0) /* (D14/A13) UART0_RXD */
 			AM62X_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (E14/E11) UART0_TXD */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x1e0, PIN_INPUT_PULLUP, 0) /* (B16/E12) I2C0_SCL */
 			AM62X_IOPAD(0x1e4, PIN_INPUT_PULLUP, 0) /* (A16/D14) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x1e8, PIN_INPUT_PULLUP, 0) /* (B17/A17) I2C1_SCL */
 			AM62X_IOPAD(0x1ec, PIN_INPUT_PULLUP, 0) /* (A17/A16) I2C1_SDA */
 		>;
 	};
 
-	main_i2c2_pins_default: main-i2c2-pins-default {
+	main_i2c2_pins_default: main-i2c2-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0b0, PIN_INPUT_PULLUP, 1) /* (K22/H18) GPMC0_CSn2.I2C2_SCL */
 			AM62X_IOPAD(0x0b4, PIN_INPUT_PULLUP, 1) /* (K24/H19) GPMC0_CSn3.I2C2_SDA */
 		>;
 	};
 
-	main_mmc0_pins_default: main-mmc0-pins-default {
+	main_mmc0_pins_default: main-mmc0-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x220, PIN_INPUT, 0) /* (Y3/V3) MMC0_CMD */
 			AM62X_IOPAD(0x218, PIN_INPUT, 0) /* (AB1/Y1) MMC0_CLK */
@@ -162,7 +162,7 @@ AM62X_IOPAD(0x1f8, PIN_INPUT, 0) /* (AC2/V4) MMC0_DAT7 */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x23c, PIN_INPUT, 0) /* (A21/C18) MMC1_CMD */
 			AM62X_IOPAD(0x234, PIN_INPUT, 0) /* (B22/A20) MMC1_CLK */
@@ -174,20 +174,20 @@ AM62X_IOPAD(0x240, PIN_INPUT, 0) /* (D17/C15) MMC1_SDCD */
 		>;
 	};
 
-	usr_led_pins_default: usr-led-pins-default {
+	usr_led_pins_default: usr-led-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x244, PIN_OUTPUT, 7) /* (C17/B15) MMC1_SDWP.GPIO1_49 */
 		>;
 	};
 
-	main_mdio1_pins_default: main-mdio1-pins-default {
+	main_mdio1_pins_default: main-mdio1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x160, PIN_OUTPUT, 0) /* (AD24/V17) MDIO0_MDC */
 			AM62X_IOPAD(0x15c, PIN_INPUT, 0) /* (AB22/U16) MDIO0_MDIO */
 		>;
 	};
 
-	main_rgmii1_pins_default: main-rgmii1-pins-default {
+	main_rgmii1_pins_default: main-rgmii1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x14c, PIN_INPUT, 0) /* (AB17/W15) RGMII1_RD0 */
 			AM62X_IOPAD(0x150, PIN_INPUT, 0) /* (AC17/Y16) RGMII1_RD1 */
@@ -204,13 +204,13 @@ AM62X_IOPAD(0x12c, PIN_OUTPUT, 0) /* (AD19/V15) RGMII1_TX_CTL */
 		>;
 	};
 
-	main_usb1_pins_default: main-usb1-pins-default {
+	main_usb1_pins_default: main-usb1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x0258, PIN_OUTPUT, 0) /* (F18/E16) USB1_DRVVBUS */
 		>;
 	};
 
-	main_mcasp1_pins_default: main-mcasp1-pins-default {
+	main_mcasp1_pins_default: main-mcasp1-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x090, PIN_INPUT, 2) /* (M24) GPMC0_BE0N_CLE.MCASP1_ACLKX */
 			AM62X_IOPAD(0x098, PIN_INPUT, 2) /* (U23) GPMC0_WAIT0.MCASP1_AFSX */
diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
@@ -66,7 +66,7 @@ vcc_5v0_som: regulator-vcc-5v0-som {
 };
 
 &main_pmx0 {
-	cpsw_mdio_pins_default: cpsw-mdio-pins-default {
+	cpsw_mdio_pins_default: cpsw-mdio-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x01f8, PIN_INPUT, 4)	/* (P5) PRG0_PRU1_GPO18.MDIO0_MDIO */
 			AM64X_IOPAD(0x01fc, PIN_OUTPUT, 4)	/* (R2) PRG0_PRU1_GPO19.MDIO0_MDC */
@@ -74,7 +74,7 @@ AM64X_IOPAD(0x0100, PIN_OUTPUT, 7)	/* (V7) PRG1_PRU0_GPO18.GPIO0_63 */
 		>;
 	};
 
-	cpsw_rgmii1_pins_default: cpsw-rgmii1-pins-default {
+	cpsw_rgmii1_pins_default: cpsw-rgmii1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0184, PIN_INPUT, 4)	/* (W6) PRG0_PRU0_GPO9.RGMII1_RX_CTL */
 			AM64X_IOPAD(0x0188, PIN_INPUT, 4)	/* (AA5) PRG0_PRU0_GPO10.RGMII1_RXC */
@@ -92,26 +92,26 @@ AM64X_IOPAD(0x0154, PIN_INPUT, 7)	/* (V12) PRG1_PRU1_GPO19.GPIO0_84 */
 		>;
 	};
 
-	eeprom_wp_pins_default: eeprom-wp-pins-default {
+	eeprom_wp_pins_default: eeprom-wp-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0208, PIN_OUTPUT, 7)	/* (D12) SPI0_CS0.GPIO1_42 */
 		>;
 	};
 
-	leds_pins_default: leds-pins-default {
+	leds_pins_default: leds-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0030, PIN_OUTPUT, 7)	/* (L18) OSPI0_CSn1.GPIO0_12 */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0260, PIN_INPUT, 0)	/* (A18) I2C0_SCL */
 			AM64X_IOPAD(0x0264, PIN_INPUT, 0)	/* (B18) I2C0_SDA */
 		>;
 	};
 
-	ospi0_pins_default: ospi0-pins-default {
+	ospi0_pins_default: ospi0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0000, PIN_OUTPUT, 0)	/* (N20) OSPI0_CLK */
 			AM64X_IOPAD(0x0008, PIN_INPUT, 0)	/* (N19) OSPI0_DQS */
diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -226,7 +226,7 @@ transceiver2: can-phy1 {
 };
 
 &main_pmx0 {
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0294, PIN_INPUT_PULLUP, 0) /* (J19) MMC1_CMD */
 			AM64X_IOPAD(0x028c, PIN_INPUT_PULLDOWN, 0) /* (L20) MMC1_CLK */
@@ -240,7 +240,7 @@ AM64X_IOPAD(0x0290, PIN_INPUT, 0) /* MMC1_CLKLB */
 		>;
 	};
 
-	main_uart1_pins_default: main-uart1-pins-default {
+	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0248, PIN_INPUT, 0)		/* (D16) UART1_CTSn */
 			AM64X_IOPAD(0x024c, PIN_OUTPUT, 0)		/* (E16) UART1_RTSn */
@@ -249,7 +249,7 @@ AM64X_IOPAD(0x0244, PIN_OUTPUT, 0)		/* (E14) UART1_TXD */
 		>;
 	};
 
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0238, PIN_INPUT, 0) /* (B16) UART0_CTSn */
 			AM64X_IOPAD(0x023c, PIN_OUTPUT, 0) /* (A16) UART0_RTSn */
@@ -258,7 +258,7 @@ AM64X_IOPAD(0x0234, PIN_OUTPUT, 0) /* (C16) UART0_TXD */
 		>;
 	};
 
-	main_spi0_pins_default: main-spi0-pins-default {
+	main_spi0_pins_default: main-spi0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0210, PIN_INPUT, 0) /* (D13) SPI0_CLK */
 			AM64X_IOPAD(0x0208, PIN_OUTPUT, 0) /* (D12) SPI0_CS0 */
@@ -267,28 +267,28 @@ AM64X_IOPAD(0x0218, PIN_INPUT, 0) /* (A14) SPI0_D1 */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0260, PIN_INPUT_PULLUP, 0) /* (A18) I2C0_SCL */
 			AM64X_IOPAD(0x0264, PIN_INPUT_PULLUP, 0) /* (B18) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0268, PIN_INPUT_PULLUP, 0) /* (C18) I2C1_SCL */
 			AM64X_IOPAD(0x026c, PIN_INPUT_PULLUP, 0) /* (B19) I2C1_SDA */
 		>;
 	};
 
-	mdio1_pins_default: mdio1-pins-default {
+	mdio1_pins_default: mdio1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x01fc, PIN_OUTPUT, 4) /* (R2) PRG0_PRU1_GPO19.MDIO0_MDC */
 			AM64X_IOPAD(0x01f8, PIN_INPUT, 4) /* (P5) PRG0_PRU1_GPO18.MDIO0_MDIO */
 		>;
 	};
 
-	rgmii1_pins_default: rgmii1-pins-default {
+	rgmii1_pins_default: rgmii1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x01cc, PIN_INPUT, 4) /* (W5) PRG0_PRU1_GPO7.RGMII1_RD0 */
 			AM64X_IOPAD(0x01d4, PIN_INPUT, 4) /* (Y5) PRG0_PRU1_GPO9.RGMII1_RD1 */
@@ -305,7 +305,7 @@ AM64X_IOPAD(0x00dc, PIN_OUTPUT, 4) /* (U15) PRG1_PRU0_GPO9.RGMII1_TX_CTL */
 		>;
 	};
 
-       rgmii2_pins_default: rgmii2-pins-default {
+       rgmii2_pins_default: rgmii2-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0108, PIN_INPUT, 4) /* (W11) PRG1_PRU1_GPO0.RGMII2_RD0 */
 			AM64X_IOPAD(0x010c, PIN_INPUT, 4) /* (V11) PRG1_PRU1_GPO1.RGMII2_RD1 */
@@ -322,13 +322,13 @@ AM64X_IOPAD(0x0144, PIN_OUTPUT, 4) /* (Y11) PRG1_PRU1_GPO15.RGMII2_TX_CTL */
 		>;
 	};
 
-	main_usb0_pins_default: main-usb0-pins-default {
+	main_usb0_pins_default: main-usb0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x02a8, PIN_OUTPUT, 0) /* (E19) USB0_DRVVBUS */
 		>;
 	};
 
-	ospi0_pins_default: ospi0-pins-default {
+	ospi0_pins_default: ospi0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0000, PIN_OUTPUT, 0) /* (N20) OSPI0_CLK */
 			AM64X_IOPAD(0x002c, PIN_OUTPUT, 0) /* (L19) OSPI0_CSn0 */
@@ -344,27 +344,27 @@ AM64X_IOPAD(0x0008, PIN_INPUT, 0) /* (N19) OSPI0_DQS */
 		>;
 	};
 
-	main_ecap0_pins_default: main-ecap0-pins-default {
+	main_ecap0_pins_default: main-ecap0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0270, PIN_INPUT, 0) /* (D18) ECAP0_IN_APWM_OUT */
 		>;
 	};
 
-	main_mcan0_pins_default: main-mcan0-pins-default {
+	main_mcan0_pins_default: main-mcan0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0254, PIN_INPUT, 0) /* (B17) MCAN0_RX */
 			AM64X_IOPAD(0x0250, PIN_OUTPUT, 0) /* (A17) MCAN0_TX */
 		>;
 	};
 
-	main_mcan1_pins_default: main-mcan1-pins-default {
+	main_mcan1_pins_default: main-mcan1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x025c, PIN_INPUT, 0) /* (D17) MCAN1_RX */
 			AM64X_IOPAD(0x0258, PIN_OUTPUT, 0) /* (C17) MCAN1_TX */
 		>;
 	};
 
-	ddr_vtt_pins_default: ddr-vtt-pins-default {
+	ddr_vtt_pins_default: ddr-vtt-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0030, PIN_OUTPUT_PULLUP, 7) /* (L18) OSPI0_CSN1.GPIO0_12 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
--- a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
@@ -104,47 +104,47 @@ vcc_3v3_mmc: regulator-sd {
 };
 
 &main_pmx0 {
-	can_tc1_pins_default: can-tc1-pins-default {
+	can_tc1_pins_default: can-tc1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0084, PIN_OUTPUT, 7)	/* (P16) GPMC0_ADVn_ALE.GPIO0_32 */
 		>;
 	};
 
-	can_tc2_pins_default: can-tc2-pins-default {
+	can_tc2_pins_default: can-tc2-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0090, PIN_OUTPUT, 7)	/* (P17) GPMC0_BE0n_CLE.GPIO0_35 */
 		>;
 	};
 
-	gpio_keys_pins_default: gpio-keys-pins-default {
+	gpio_keys_pins_default: gpio-keys-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0044, PIN_INPUT, 7)	/* (T18) GPMC0_AD2.GPIO0_17 */
 			AM64X_IOPAD(0x0054, PIN_INPUT, 7)	/* (V20) GPMC0_AD6.GPIO0_21 */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0268, PIN_INPUT, 0)	/* (C18) I2C1_SCL */
 			AM64X_IOPAD(0x026c, PIN_INPUT, 0)	/* (B19) I2C1_SDA */
 		>;
 	};
 
-	main_mcan0_pins_default: main-mcan0-pins-default {
+	main_mcan0_pins_default: main-mcan0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0250, PIN_OUTPUT, 0)	/* (A17) MCAN0_TX */
 			AM64X_IOPAD(0x0254, PIN_INPUT, 0)	/* (B17) MCAN0_RX */
 		>;
 	};
 
-	main_mcan1_pins_default: main-mcan1-pins-default {
+	main_mcan1_pins_default: main-mcan1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0258, PIN_OUTPUT, 0)	/* (C17) MCAN1_TX */
 			AM64X_IOPAD(0x025c, PIN_INPUT, 0)	/* (D17) MCAN1_RX */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x027c, PIN_INPUT_PULLUP, 0)	/* (K18) MMC1_DAT3 */
 			AM64X_IOPAD(0x0280, PIN_INPUT_PULLUP, 0)	/* (K19) MMC1_DAT2 */
@@ -157,14 +157,14 @@ AM64X_IOPAD(0x0298, PIN_INPUT_PULLUP, 0)	/* (D19) MMC1_SDCD */
 		>;
 	};
 
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0230, PIN_INPUT, 0)	/* (D15) UART0_RXD */
 			AM64X_IOPAD(0x0234, PIN_OUTPUT, 0)	/* (C16) UART0_TXD */
 		>;
 	};
 
-	main_uart1_pins_default: main-uart1-pins-default {
+	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0248, PIN_INPUT, 0)	/* (D16) UART1_CTSn */
 			AM64X_IOPAD(0x024C, PIN_OUTPUT, 0)	/* (E16) UART1_RTSn */
@@ -173,25 +173,25 @@ AM64X_IOPAD(0x0244, PIN_OUTPUT, 0)	/* (E14) UART1_TXD */
 		>;
 	};
 
-	main_usb0_pins_default: main-usb0-pins-default {
+	main_usb0_pins_default: main-usb0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x02a8, PIN_OUTPUT, 0)	/* (E19) USB0_DRVVBUS */
 		>;
 	};
 
-	pcie_usb_sel_pins_default: pcie-usb-sel-pins-default {
+	pcie_usb_sel_pins_default: pcie-usb-sel-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x017c, PIN_OUTPUT, 7)	/* (T1) PRG0_PRU0_GPO7.GPIO1_7 */
 		>;
 	};
 
-	pcie0_pins_default: pcie0-pins-default {
+	pcie0_pins_default: pcie0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0098, PIN_OUTPUT, 7)	/* (W19) GPMC0_WAIT0.GPIO0_37 */
 		>;
 	};
 
-	user_leds_pins_default: user-leds-pins-default {
+	user_leds_pins_default: user-leds-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x003c, PIN_OUTPUT, 7)	/* (T20) GPMC0_AD0.GPIO0_15 */
 			AM64X_IOPAD(0x0040, PIN_OUTPUT, 7)	/* (U21) GPMC0_AD1.GPIO0_16 */
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -232,7 +232,7 @@ led-7 {
 };
 
 &main_pmx0 {
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x029c, PIN_INPUT_PULLUP, 0) /* (C20) MMC1_SDWP */
 			AM64X_IOPAD(0x0298, PIN_INPUT_PULLUP, 0) /* (D19) MMC1_SDCD */
@@ -246,7 +246,7 @@ AM64X_IOPAD(0x027c, PIN_INPUT_PULLUP, 0) /* (K18) MMC1_DAT3 */
 		>;
 	};
 
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0238, PIN_INPUT, 0) /* (B16) UART0_CTSn */
 			AM64X_IOPAD(0x023c, PIN_OUTPUT, 0) /* (A16) UART0_RTSn */
@@ -255,7 +255,7 @@ AM64X_IOPAD(0x0234, PIN_OUTPUT, 0) /* (C16) UART0_TXD */
 		>;
 	};
 
-	main_uart1_pins_default: main-uart1-pins-default {
+	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0248, PIN_INPUT, 0) /* (D16) UART1_CTSn */
 			AM64X_IOPAD(0x024c, PIN_OUTPUT, 0) /* (E16) UART1_RTSn */
@@ -264,34 +264,34 @@ AM64X_IOPAD(0x0244, PIN_OUTPUT, 0) /* (E14) UART1_TXD */
 		>;
 	};
 
-	main_usb0_pins_default: main-usb0-pins-default {
+	main_usb0_pins_default: main-usb0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x02a8, PIN_OUTPUT, 0) /* (E19) USB0_DRVVBUS */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0260, PIN_INPUT_PULLUP, 0) /* (A18) I2C0_SCL */
 			AM64X_IOPAD(0x0264, PIN_INPUT_PULLUP, 0) /* (B18) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0268, PIN_INPUT_PULLUP, 0) /* (C18) I2C1_SCL */
 			AM64X_IOPAD(0x026c, PIN_INPUT_PULLUP, 0) /* (B19) I2C1_SDA */
 		>;
 	};
 
-	mdio1_pins_default: mdio1-pins-default {
+	mdio1_pins_default: mdio1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x01fc, PIN_OUTPUT, 4) /* (R2) PRG0_PRU1_GPO19.MDIO0_MDC */
 			AM64X_IOPAD(0x01f8, PIN_INPUT, 4) /* (P5) PRG0_PRU1_GPO18.MDIO0_MDIO */
 		>;
 	};
 
-	rgmii1_pins_default: rgmii1-pins-default {
+	rgmii1_pins_default: rgmii1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x011c, PIN_INPUT, 4) /* (AA13) PRG1_PRU1_GPO5.RGMII1_RD0 */
 			AM64X_IOPAD(0x0128, PIN_INPUT, 4) /* (U12) PRG1_PRU1_GPO8.RGMII1_RD1 */
@@ -308,7 +308,7 @@ AM64X_IOPAD(0x00dc, PIN_OUTPUT, 4) /* (U15) PRG1_PRU0_GPO9.RGMII1_TX_CTL */
 		>;
 	};
 
-       rgmii2_pins_default: rgmii2-pins-default {
+       rgmii2_pins_default: rgmii2-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0108, PIN_INPUT, 4) /* (W11) PRG1_PRU1_GPO0.RGMII2_RD0 */
 			AM64X_IOPAD(0x010c, PIN_INPUT, 4) /* (V11) PRG1_PRU1_GPO1.RGMII2_RD1 */
@@ -325,7 +325,7 @@ AM64X_IOPAD(0x0144, PIN_OUTPUT, 4) /* (Y11) PRG1_PRU1_GPO15.RGMII2_TX_CTL */
 		>;
 	};
 
-	ospi0_pins_default: ospi0-pins-default {
+	ospi0_pins_default: ospi0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0000, PIN_OUTPUT, 0) /* (N20) OSPI0_CLK */
 			AM64X_IOPAD(0x002c, PIN_OUTPUT, 0) /* (L19) OSPI0_CSn0 */
@@ -341,24 +341,24 @@ AM64X_IOPAD(0x0008, PIN_INPUT, 0) /* (N19) OSPI0_DQS */
 		>;
 	};
 
-	main_ecap0_pins_default: main-ecap0-pins-default {
+	main_ecap0_pins_default: main-ecap0-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0270, PIN_INPUT, 0) /* (D18) ECAP0_IN_APWM_OUT */
 		>;
 	};
-	main_wlan_en_pins_default: main-wlan-en-pins-default {
+	main_wlan_en_pins_default: main-wlan-en-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x00c4, PIN_OUTPUT_PULLUP, 7) /* (V8) GPIO0_48 */
 		>;
 	};
 
-	main_com8_ls_en_pins_default: main-com8-ls-en-pins-default {
+	main_com8_ls_en_pins_default: main-com8-ls-en-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x00fc, PIN_OUTPUT, 7) /* (U7) PRG1_PRU0_GPO17.GPIO0_62 */
 		>;
 	};
 
-	main_wlan_pins_default: main-wlan-pins-default {
+	main_wlan_pins_default: main-wlan-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x00bc, PIN_INPUT, 7) /* (U8) GPIO0_46 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
@@ -10,7 +10,7 @@
  */
 
 &main_pmx0 {
-	cp2102n_reset_pin_default: cp2102n-reset-pin-default {
+	cp2102n_reset_pin_default: cp2102n-reset-default-pins {
 		pinctrl-single,pins = <
 			/* (AF12) GPIO1_24, used as cp2102 reset */
 			AM65X_IOPAD(0x01e0, PIN_OUTPUT, 7)
diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -104,7 +104,7 @@ dp_refclk: clock {
 };
 
 &wkup_pmx0 {
-	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
+	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 		pinctrl-single,pins = <
 			/* (AC7) WKUP_I2C0_SCL */
 			AM65X_WKUP_IOPAD(0x00e0, PIN_INPUT,  0)
@@ -113,7 +113,7 @@ AM65X_WKUP_IOPAD(0x00e4, PIN_INPUT,  0)
 		>;
 	};
 
-	mcu_i2c0_pins_default: mcu-i2c0-pins-default {
+	mcu_i2c0_pins_default: mcu-i2c0-default-pins {
 		pinctrl-single,pins = <
 			/* (AD8) MCU_I2C0_SCL */
 			AM65X_WKUP_IOPAD(0x00e8, PIN_INPUT,  0)
@@ -122,21 +122,21 @@ AM65X_WKUP_IOPAD(0x00ec, PIN_INPUT,  0)
 		>;
 	};
 
-	arduino_i2c_aio_switch_pins_default: arduino-i2c-aio-switch-pins-default {
+	arduino_i2c_aio_switch_pins_default: arduino-i2c-aio-switch-default-pins {
 		pinctrl-single,pins = <
 			/* (R2) WKUP_GPIO0_21 */
 			AM65X_WKUP_IOPAD(0x0024, PIN_OUTPUT, 7)
 		>;
 	};
 
-	push_button_pins_default: push-button-pins-default {
+	push_button_pins_default: push-button-default-pins {
 		pinctrl-single,pins = <
 			/* (T1) MCU_OSPI1_CLK.WKUP_GPIO0_25 */
 			AM65X_WKUP_IOPAD(0x0034, PIN_INPUT,  7)
 		>;
 	};
 
-	arduino_uart_pins_default: arduino-uart-pins-default {
+	arduino_uart_pins_default: arduino-uart-default-pins {
 		pinctrl-single,pins = <
 			/* (P4) MCU_UART0_RXD */
 			AM65X_WKUP_IOPAD(0x0044, PIN_INPUT,  4)
@@ -145,7 +145,7 @@ AM65X_WKUP_IOPAD(0x0048, PIN_OUTPUT, 4)
 		>;
 	};
 
-	arduino_io_d2_to_d3_pins_default: arduino-io-d2-to-d3-pins-default {
+	arduino_io_d2_to_d3_pins_default: arduino-io-d2-to-d3-default-pins {
 		pinctrl-single,pins = <
 			/* (P1) WKUP_GPIO0_31 */
 			AM65X_WKUP_IOPAD(0x004C, PIN_OUTPUT, 7)
@@ -154,7 +154,7 @@ AM65X_WKUP_IOPAD(0x0054, PIN_OUTPUT, 7)
 		>;
 	};
 
-	arduino_io_oe_pins_default: arduino-io-oe-pins-default {
+	arduino_io_oe_pins_default: arduino-io-oe-default-pins {
 		pinctrl-single,pins = <
 			/* (N4) WKUP_GPIO0_34 */
 			AM65X_WKUP_IOPAD(0x0058, PIN_OUTPUT, 7)
@@ -169,7 +169,7 @@ AM65X_WKUP_IOPAD(0x0074, PIN_OUTPUT, 7)
 		>;
 	};
 
-	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
 		pinctrl-single,pins = <
 			/* (V1) MCU_OSPI0_CLK */
 			AM65X_WKUP_IOPAD(0x0000, PIN_OUTPUT, 0)
@@ -184,7 +184,7 @@ AM65X_WKUP_IOPAD(0x002c, PIN_OUTPUT, 0)
 		>;
 	};
 
-	db9_com_mode_pins_default: db9-com-mode-pins-default {
+	db9_com_mode_pins_default: db9-com-mode-default-pins {
 		pinctrl-single,pins = <
 			/* (AD3) WKUP_GPIO0_5, used as uart0 mode 0 */
 			AM65X_WKUP_IOPAD(0x00c4, PIN_OUTPUT, 7)
@@ -197,7 +197,7 @@ AM65X_WKUP_IOPAD(0x00c8, PIN_OUTPUT, 7)
 		>;
 	};
 
-	leds_pins_default: leds-pins-default {
+	leds_pins_default: leds-default-pins {
 		pinctrl-single,pins = <
 			/* (T2) WKUP_GPIO0_17, used as user led1 red */
 			AM65X_WKUP_IOPAD(0x0014, PIN_OUTPUT, 7)
@@ -210,7 +210,7 @@ AM65X_WKUP_IOPAD(0x0050, PIN_OUTPUT, 7)
 		>;
 	};
 
-	mcu_spi0_pins_default: mcu-spi0-pins-default {
+	mcu_spi0_pins_default: mcu-spi0-default-pins {
 		pinctrl-single,pins = <
 			/* (Y1) MCU_SPI0_CLK */
 			AM65X_WKUP_IOPAD(0x0090, PIN_INPUT,  0)
@@ -223,7 +223,7 @@ AM65X_WKUP_IOPAD(0x009c, PIN_OUTPUT, 0)
 		>;
 	};
 
-	minipcie_pins_default: minipcie-pins-default {
+	minipcie_pins_default: minipcie-default-pins {
 		pinctrl-single,pins = <
 			/* (P2) MCU_OSPI1_DQS.WKUP_GPIO0_27 */
 			AM65X_WKUP_IOPAD(0x003C, PIN_OUTPUT, 7)
@@ -232,7 +232,7 @@ AM65X_WKUP_IOPAD(0x003C, PIN_OUTPUT, 7)
 };
 
 &main_pmx0 {
-	main_uart1_pins_default: main-uart1-pins-default {
+	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0174, PIN_INPUT,  6)  /* (AE23) UART1_RXD */
 			AM65X_IOPAD(0x014c, PIN_OUTPUT, 6)  /* (AD23) UART1_TXD */
@@ -241,14 +241,14 @@ AM65X_IOPAD(0x017c, PIN_OUTPUT, 6)  /* (AC21) UART1_RTSn */
 		>;
 	};
 
-	main_i2c3_pins_default: main-i2c3-pins-default {
+	main_i2c3_pins_default: main-i2c3-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01c0, PIN_INPUT,  2)  /* (AF13) I2C3_SCL */
 			AM65X_IOPAD(0x01d4, PIN_INPUT,  2)  /* (AG12) I2C3_SDA */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x02d4, PIN_INPUT_PULLDOWN, 0)  /* (C27) MMC1_CLK */
 			AM65X_IOPAD(0x02d8, PIN_INPUT_PULLUP,   0)  /* (C28) MMC1_CMD */
@@ -261,19 +261,19 @@ AM65X_IOPAD(0x02e0, PIN_INPUT_PULLUP,   0)  /* (C24) MMC1_SDWP */
 		>;
 	};
 
-	usb0_pins_default: usb0-pins-default {
+	usb0_pins_default: usb0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x02bc, PIN_OUTPUT, 0)  /* (AD9) USB0_DRVVBUS */
 		>;
 	};
 
-	usb1_pins_default: usb1-pins-default {
+	usb1_pins_default: usb1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x02c0, PIN_OUTPUT, 0)  /* (AC8) USB1_DRVVBUS */
 		>;
 	};
 
-	arduino_io_d4_to_d9_pins_default: arduino-io-d4-to-d9-pins-default {
+	arduino_io_d4_to_d9_pins_default: arduino-io-d4-to-d9-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0084, PIN_OUTPUT, 7)  /* (AG18) GPIO0_33 */
 			AM65X_IOPAD(0x008C, PIN_OUTPUT, 7)  /* (AF17) GPIO0_35 */
@@ -284,7 +284,7 @@ AM65X_IOPAD(0x00CC, PIN_OUTPUT, 7)  /* (AD15) GPIO0_51 */
 		>;
 	};
 
-	dss_vout1_pins_default: dss-vout1-pins-default {
+	dss_vout1_pins_default: dss-vout1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0000, PIN_OUTPUT, 1)  /* VOUT1_DATA0 */
 			AM65X_IOPAD(0x0004, PIN_OUTPUT, 1)  /* VOUT1_DATA1 */
@@ -317,13 +317,13 @@ AM65X_IOPAD(0x006c, PIN_OUTPUT, 1)  /* VOUT1_DE */
 		>;
 	};
 
-	dp_pins_default: dp-pins-default {
+	dp_pins_default: dp-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0078, PIN_OUTPUT, 7)  /* (AF18) DP rst_n */
 		>;
 	};
 
-	main_i2c2_pins_default: main-i2c2-pins-default {
+	main_i2c2_pins_default: main-i2c2-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0074, PIN_INPUT,  5)  /* (T27) I2C2_SCL */
 			AM65X_IOPAD(0x0070, PIN_INPUT,  5)  /* (R25) I2C2_SDA */
@@ -332,21 +332,21 @@ AM65X_IOPAD(0x0070, PIN_INPUT,  5)  /* (R25) I2C2_SDA */
 };
 
 &main_pmx1 {
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0000, PIN_INPUT,  0)  /* (D20) I2C0_SCL */
 			AM65X_IOPAD(0x0004, PIN_INPUT,  0)  /* (C21) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0008, PIN_INPUT,  0)  /* (B21) I2C1_SCL */
 			AM65X_IOPAD(0x000c, PIN_INPUT,  0)  /* (E21) I2C1_SDA */
 		>;
 	};
 
-	ecap0_pins_default: ecap0-pins-default {
+	ecap0_pins_default: ecap0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0010, PIN_INPUT,  0)  /* (D21) ECAP0_IN_APWM_OUT */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
@@ -35,7 +35,7 @@ &sdhci0 {
 };
 
 &main_pmx0 {
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01e4, PIN_INPUT,  0)  /* (AF11) UART0_RXD */
 			AM65X_IOPAD(0x01e8, PIN_OUTPUT, 0)  /* (AE11) UART0_TXD */
diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -147,7 +147,7 @@ vtt_supply: regulator-3 {
 };
 
 &wkup_pmx0 {
-	wkup_uart0_pins_default: wkup-uart0-pins-default {
+	wkup_uart0_pins_default: wkup-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x00a0, PIN_INPUT, 0)	/* (AB1) WKUP_UART0_RXD */
 			AM65X_WKUP_IOPAD(0x00a4, PIN_OUTPUT, 0)	/* (AB5) WKUP_UART0_TXD */
@@ -156,27 +156,27 @@ AM65X_WKUP_IOPAD(0x00cc, PIN_OUTPUT, 1)	/* (AC1) WKUP_GPIO0_7.WKUP_UART0_RTSn */
 		>;
 	};
 
-	ddr_vtt_pins_default: ddr-vtt-pins-default {
+	ddr_vtt_pins_default: ddr-vtt-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x0040, PIN_OUTPUT_PULLUP, 7)	/* WKUP_GPIO0_28 */
 		>;
 	};
 
-	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
+	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x00e0, PIN_INPUT, 0) /* (AC7) WKUP_I2C0_SCL */
 			AM65X_WKUP_IOPAD(0x00e4, PIN_INPUT, 0) /* (AD6) WKUP_I2C0_SDA */
 		>;
 	};
 
-	push_button_pins_default: push-button-pins-default {
+	push_button_pins_default: push-button-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x0030, PIN_INPUT, 7) /* (R5) WKUP_GPIO0_24 */
 			AM65X_WKUP_IOPAD(0x003c, PIN_INPUT, 7) /* (P2) WKUP_GPIO0_27 */
 		>;
 	};
 
-	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x0000, PIN_OUTPUT, 0) /* (V1) MCU_OSPI0_CLK */
 			AM65X_WKUP_IOPAD(0x0008, PIN_INPUT, 0)	 /* (U2) MCU_OSPI0_DQS */
@@ -192,13 +192,13 @@ AM65X_WKUP_IOPAD(0x002c, PIN_OUTPUT, 0) /* (R4) MCU_OSPI0_CSn0 */
 		>;
 	};
 
-	wkup_pca554_default: wkup-pca554-default {
+	wkup_pca554_default: wkup-pca554-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x0034, PIN_INPUT, 7) /* (T1) MCU_OSPI1_CLK.WKUP_GPIO0_25 */
 		>;
 	};
 
-	mcu_uart0_pins_default: mcu-uart0-pins-default {
+	mcu_uart0_pins_default: mcu-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x0044, PIN_INPUT, 4)	/* (P4) MCU_OSPI1_D1.MCU_UART0_RXD */
 			AM65X_WKUP_IOPAD(0x0048, PIN_OUTPUT, 4)	/* (P5) MCU_OSPI1_D2.MCU_UART0_TXD */
@@ -207,7 +207,7 @@ AM65X_WKUP_IOPAD(0x0054, PIN_OUTPUT, 4)	/* (N3) MCU_OSPI1_CSn1.MCU_UART0_RTSn */
 		>;
 	};
 
-	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x0058, PIN_OUTPUT, 0) /* (N4) MCU_RGMII1_TX_CTL */
 			AM65X_WKUP_IOPAD(0x005c, PIN_INPUT, 0) /* (N5) MCU_RGMII1_RX_CTL */
@@ -224,14 +224,14 @@ AM65X_WKUP_IOPAD(0x0074, PIN_INPUT, 0) /* (M1) MCU_RGMII1_RXC */
 		>;
 	};
 
-	mcu_mdio_pins_default: mcu-mdio1-pins-default {
+	mcu_mdio_pins_default: mcu-mdio1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x008c, PIN_OUTPUT, 0) /* (L1) MCU_MDIO0_MDC */
 			AM65X_WKUP_IOPAD(0x0088, PIN_INPUT, 0) /* (L4) MCU_MDIO0_MDIO */
 		>;
 	};
 
-	mcu_i2c0_pins_default: mcu-i2c0-pins-default {
+	mcu_i2c0_pins_default: mcu-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x00e8, PIN_INPUT,  0) /* (AD8) MCU_I2C0_SCL */
 			AM65X_WKUP_IOPAD(0x00ec, PIN_INPUT,  0) /* (AD7) MCU_I2C0_SDA */
@@ -240,7 +240,7 @@ AM65X_WKUP_IOPAD(0x00ec, PIN_INPUT,  0) /* (AD7) MCU_I2C0_SDA */
 };
 
 &main_pmx0 {
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01e4, PIN_INPUT, 0)	/* (AF11) UART0_RXD */
 			AM65X_IOPAD(0x01e8, PIN_OUTPUT, 0)	/* (AE11) UART0_TXD */
@@ -249,14 +249,14 @@ AM65X_IOPAD(0x01f0, PIN_OUTPUT, 0)	/* (AD11) UART0_RTSn */
 		>;
 	};
 
-	main_i2c2_pins_default: main-i2c2-pins-default {
+	main_i2c2_pins_default: main-i2c2-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0074, PIN_INPUT, 5) /* (T27) GPMC0_CSn3.I2C2_SCL */
 			AM65X_IOPAD(0x0070, PIN_INPUT, 5) /* (R25) GPMC0_CSn2.I2C2_SDA */
 		>;
 	};
 
-	main_spi0_pins_default: main-spi0-pins-default {
+	main_spi0_pins_default: main-spi0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01c4, PIN_INPUT, 0) /* (AH13) SPI0_CLK */
 			AM65X_IOPAD(0x01c8, PIN_INPUT, 0) /* (AE13) SPI0_D0 */
@@ -265,7 +265,7 @@ AM65X_IOPAD(0x01bc, PIN_OUTPUT, 0) /* (AG13) SPI0_CS0 */
 		>;
 	};
 
-	main_mmc0_pins_default: main-mmc0-pins-default {
+	main_mmc0_pins_default: main-mmc0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01a8, PIN_INPUT_PULLDOWN, 0) /* (B25) MMC0_CLK */
 			AM65X_IOPAD(0x01ac, PIN_INPUT_PULLUP, 0) /* (B27) MMC0_CMD */
@@ -282,7 +282,7 @@ AM65X_IOPAD(0x01b0, PIN_INPUT, 0) /* (C25) MMC0_DS */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x02d4, PIN_INPUT_PULLDOWN, 0) /* (C27) MMC1_CLK */
 			AM65X_IOPAD(0x02d8, PIN_INPUT_PULLUP, 0) /* (C28) MMC1_CMD */
@@ -295,7 +295,7 @@ AM65X_IOPAD(0x02e0, PIN_INPUT, 0) /* (C24) MMC1_SDWP */
 		>;
 	};
 
-	usb1_pins_default: usb1-pins-default {
+	usb1_pins_default: usb1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x02c0, PIN_OUTPUT, 0) /* (AC8) USB1_DRVVBUS */
 		>;
@@ -303,21 +303,21 @@ AM65X_IOPAD(0x02c0, PIN_OUTPUT, 0) /* (AC8) USB1_DRVVBUS */
 };
 
 &main_pmx1 {
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0000, PIN_INPUT, 0) /* (D20) I2C0_SCL */
 			AM65X_IOPAD(0x0004, PIN_INPUT, 0) /* (C21) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0008, PIN_INPUT, 0) /* (B21) I2C1_SCL */
 			AM65X_IOPAD(0x000c, PIN_INPUT, 0) /* (E21) I2C1_SDA */
 		>;
 	};
 
-	ecap0_pins_default: ecap0-pins-default {
+	ecap0_pins_default: ecap0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0010, PIN_INPUT, 0) /* (D21) ECAP0_IN_APWM_OUT */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
@@ -22,7 +22,7 @@ memory@80000000 {
 };
 
 &main_pmx0 {
-	main_mmc0_pins_default: main-mmc0-pins-default {
+	main_mmc0_pins_default: main-mmc0-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01a8, PIN_INPUT_PULLDOWN, 0)  /* (B25) MMC0_CLK */
 			AM65X_IOPAD(0x01ac, PIN_INPUT_PULLUP,   0)  /* (B27) MMC0_CMD */
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
--- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
@@ -27,26 +27,26 @@ &mcu_r5fss0 {
 };
 
 &main_pmx0 {
-	main_m2_enable_pins_default: main-m2-enable-pins-default {
+	main_m2_enable_pins_default: main-m2-enable-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01c4, PIN_INPUT_PULLUP, 7)  /* (AH13) GPIO1_17 */
 		>;
 	};
 
-	main_bkey_pcie_reset: main-bkey-pcie-reset {
+	main_bkey_pcie_reset: main-bkey-pcie-reset-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01bc, PIN_OUTPUT_PULLUP, 7)  /* (AG13) GPIO1_15 */
 		>;
 	};
 
-	main_pmx0_m2_config_pins_default: main-pmx0-m2-config-pins-default {
+	main_pmx0_m2_config_pins_default: main-pmx0-m2-config-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01c8, PIN_INPUT_PULLUP, 7)  /* (AE13) GPIO1_18 */
 			AM65X_IOPAD(0x01cc, PIN_INPUT_PULLUP, 7)  /* (AD13) GPIO1_19 */
 		>;
 	};
 
-	main_m2_pcie_mux_control: main-m2-pcie-mux-control {
+	main_m2_pcie_mux_control: main-m2-pcie-mux-control-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0148, PIN_INPUT_PULLUP, 7)  /* (AG22) GPIO0_82 */
 			AM65X_IOPAD(0x0160, PIN_INPUT_PULLUP, 7)  /* (AE20) GPIO0_88 */
@@ -56,7 +56,7 @@ AM65X_IOPAD(0x0164, PIN_INPUT_PULLUP, 7)  /* (AF19) GPIO0_89 */
 };
 
 &main_pmx1 {
-	main_pmx1_m2_config_pins_default: main-pmx1-m2-config-pins-default {
+	main_pmx1_m2_config_pins_default: main-pmx1-m2-config-default-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0018, PIN_INPUT_PULLUP, 7)  /* (B22) GPIO1_88 */
 			AM65X_IOPAD(0x001c, PIN_INPUT_PULLUP, 7)  /* (C23) GPIO1_89 */
diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
@@ -122,21 +122,21 @@ transceiver4: can-phy3 {
 };
 
 &main_pmx0 {
-	main_uart8_pins_default: main-uart8-pins-default {
+	main_uart8_pins_default: main-uart8-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x0d0, PIN_INPUT, 11) /* (AF26) SPI0_CS1.UART8_RXD */
 			J721S2_IOPAD(0x0d4, PIN_OUTPUT, 11) /* (AH27) SPI0_CLK.UART8_TXD */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x0e0, PIN_INPUT, 0) /* (AH25) I2C0_SCL */
 			J721S2_IOPAD(0x0e4, PIN_INPUT, 0) /* (AE24) I2C0_SDA */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x104, PIN_INPUT, 0) /* (P23) MMC1_CLK */
 			J721S2_IOPAD(0x108, PIN_INPUT, 0) /* (N24) MMC1_CMD */
@@ -148,26 +148,26 @@ J721S2_IOPAD(0x0e8, PIN_INPUT, 8) /* (AE25) TIMER_IO0.MMC1_SDCD */
 		>;
 	};
 
-	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
+	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x0c4, PIN_INPUT, 7) /* (AB26) ECAP0_IN_APWM_OUT.GPIO0_49 */
 		>;
 	};
 
-	main_usbss0_pins_default: main-usbss0-pins-default {
+	main_usbss0_pins_default: main-usbss0-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x0ec, PIN_OUTPUT, 6) /* (AG25) TIMER_IO1.USB0_DRVVBUS */
 		>;
 	};
 
-	main_mcan6_pins_default: main-mcan6-pins-default {
+	main_mcan6_pins_default: main-mcan6-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x098, PIN_INPUT, 0) /* (V25) MCASP0_AXR10.MCAN6_RX */
 			J721S2_IOPAD(0x094, PIN_INPUT, 0) /* (AA25) MCASP0_AXR9.MCAN6_TX */
 		>;
 	};
 
-	main_mcan7_pins_default: main-mcan7-pins-default {
+	main_mcan7_pins_default: main-mcan7-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x0a0, PIN_INPUT, 0) /* (AB25) MCASP0_AXR12.MCAN7_RX */
 			J721S2_IOPAD(0x09c, PIN_INPUT, 0) /* (T24) MCASP0_AXR11.MCAN7_TX */
@@ -176,7 +176,7 @@ J721S2_IOPAD(0x09c, PIN_INPUT, 0) /* (T24) MCASP0_AXR11.MCAN7_TX */
 };
 
 &wkup_pmx0 {
-	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x094, PIN_INPUT, 0) /* (B22) MCU_RGMII1_RD0 */
 			J721S2_WKUP_IOPAD(0x090, PIN_INPUT, 0) /* (B21) MCU_RGMII1_RD1 */
@@ -193,28 +193,28 @@ J721S2_WKUP_IOPAD(0x068, PIN_OUTPUT, 0) /* (F22) MCU_RGMII1_TX_CTL */
 		>;
 	};
 
-	mcu_mdio_pins_default: mcu-mdio-pins-default {
+	mcu_mdio_pins_default: mcu-mdio-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x09c, PIN_OUTPUT, 0) /* (A21) MCU_MDIO0_MDC */
 			J721S2_WKUP_IOPAD(0x098, PIN_INPUT, 0) /* (A22) MCU_MDIO0_MDIO */
 		>;
 	};
 
-	mcu_mcan0_pins_default: mcu-mcan0-pins-default {
+	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x0bc, PIN_INPUT, 0) /* (E28) MCU_MCAN0_RX */
 			J721S2_WKUP_IOPAD(0x0b8, PIN_OUTPUT, 0) /* (E27) MCU_MCAN0_TX */
 		>;
 	};
 
-	mcu_mcan1_pins_default: mcu-mcan1-pins-default {
+	mcu_mcan1_pins_default: mcu-mcan1-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x0d4, PIN_INPUT, 0) /* (F26) WKUP_GPIO0_5.MCU_MCAN1_RX */
 			J721S2_WKUP_IOPAD(0x0d0, PIN_OUTPUT, 0) /* (C23) WKUP_GPIO0_4.MCU_MCAN1_TX*/
 		>;
 	};
 
-	mcu_i2c1_pins_default: mcu-i2c1-pins-default {
+	mcu_i2c1_pins_default: mcu-i2c1-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x0e0, PIN_INPUT, 0) /* (F24) WKUP_GPIO0_8.MCU_I2C1_SCL */
 			J721S2_WKUP_IOPAD(0x0e4, PIN_INPUT, 0) /* (H26) WKUP_GPIO0_9.MCU_I2C1_SDA */
diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -105,21 +105,21 @@ vdd_sd_dv: regulator-tlv71033 {
 };
 
 &main_pmx0 {
-	main_uart8_pins_default: main-uart8-pins-default {
+	main_uart8_pins_default: main-uart8-default-pins {
 		pinctrl-single,pins = <
 			J784S4_IOPAD(0x0d0, PIN_INPUT, 11) /* (AP38) SPI0_CS1.UART8_RXD */
 			J784S4_IOPAD(0x0d4, PIN_OUTPUT, 11) /* (AN38) SPI0_CLK.UART8_TXD */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J784S4_IOPAD(0x0e0, PIN_INPUT_PULLUP, 0) /* (AN36) I2C0_SCL */
 			J784S4_IOPAD(0x0e4, PIN_INPUT_PULLUP, 0) /* (AP37) I2C0_SDA */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			J784S4_IOPAD(0x104, PIN_INPUT, 0) /* (AB38) MMC1_CLK */
 			J784S4_IOPAD(0x108, PIN_INPUT, 0) /* (AB36) MMC1_CMD */
@@ -132,7 +132,7 @@ J784S4_IOPAD(0x0e8, PIN_INPUT, 8) /* (AR38) TIMER_IO0.MMC1_SDCD */
 		>;
 	};
 
-	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
+	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
 		pinctrl-single,pins = <
 			J784S4_IOPAD(0x0C4, PIN_INPUT, 7) /* (AD36) ECAP0_IN_APWM_OUT.GPIO0_49 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
--- a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
@@ -80,7 +80,7 @@ vdd_sd_dv: gpio-regulator-TLV71033 {
 };
 
 &wkup_pmx2 {
-	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x0000, PIN_OUTPUT, 0) /* MCU_RGMII1_TX_CTL */
 			J721E_WKUP_IOPAD(0x0004, PIN_INPUT, 0) /* MCU_RGMII1_RX_CTL */
@@ -97,7 +97,7 @@ J721E_WKUP_IOPAD(0x001c, PIN_INPUT, 0) /* MCU_RGMII1_RXC */
 		>;
 	};
 
-	mcu_mdio_pins_default: mcu-mdio1-pins-default {
+	mcu_mdio_pins_default: mcu-mdio1-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x0034, PIN_OUTPUT, 0) /* (L1) MCU_MDIO0_MDC */
 			J721E_WKUP_IOPAD(0x0030, PIN_INPUT, 0) /* (L4) MCU_MDIO0_MDIO */
@@ -106,21 +106,21 @@ J721E_WKUP_IOPAD(0x0030, PIN_INPUT, 0) /* (L4) MCU_MDIO0_MDIO */
 };
 
 &main_pmx0 {
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0xd4, PIN_INPUT_PULLUP, 0) /* (V3) I2C0_SCL */
 			J721E_IOPAD(0xd8, PIN_INPUT_PULLUP, 0) /* (W2) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0xdc, PIN_INPUT_PULLUP, 3) /* (U3) ECAP0_IN_APWM_OUT.I2C1_SCL */
 			J721E_IOPAD(0xe0, PIN_INPUT_PULLUP, 3) /* (T3) EXT_REFCLK1.I2C1_SDA */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x104, PIN_INPUT, 0) /* (M20) MMC1_CMD */
 			J721E_IOPAD(0x100, PIN_INPUT, 0) /* (P21) MMC1_CLK */
@@ -133,7 +133,7 @@ J721E_IOPAD(0xe4, PIN_INPUT, 8) /* (V1) TIMER_IO0.MMC1_SDCD */
 		>;
 	};
 
-	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
+	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0xd0, PIN_OUTPUT, 7) /* (T5) SPI0_D1.GPIO0_55 */
 		>;
@@ -141,7 +141,7 @@ J721E_IOPAD(0xd0, PIN_OUTPUT, 7) /* (T5) SPI0_D1.GPIO0_55 */
 };
 
 &main_pmx1 {
-	main_usbss0_pins_default: main-usbss0-pins-default {
+	main_usbss0_pins_default: main-usbss0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x04, PIN_OUTPUT, 0) /* (T4) USB0_DRVVBUS */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-evm-quad-port-eth-exp.dtso b/arch/arm64/boot/dts/ti/k3-j7200-evm-quad-port-eth-exp.dtso
--- a/arch/arm64/boot/dts/ti/k3-j7200-evm-quad-port-eth-exp.dtso
+++ b/arch/arm64/boot/dts/ti/k3-j7200-evm-quad-port-eth-exp.dtso
@@ -92,7 +92,7 @@ qsgmii-line-hog {
 };
 
 &main_pmx0 {
-	mdio0_pins_default: mdio0-pins-default {
+	mdio0_pins_default: mdio0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x00a8, PIN_OUTPUT, 5) /* (W19) UART8_TXD.MDIO0_MDC */
 			J721E_IOPAD(0x00a4, PIN_INPUT, 5) /* (W14) UART8_RXD.MDIO0_MDIO */
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
--- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
@@ -83,7 +83,7 @@ rtos_ipc_memory_region: ipc-memories@a4000000 {
 };
 
 &wkup_pmx0 {
-	mcu_fss0_hpb0_pins_default: mcu-fss0-hpb0-pins-default {
+	mcu_fss0_hpb0_pins_default: mcu-fss0-hpb0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x0, PIN_OUTPUT, 1) /* (B6) MCU_OSPI0_CLK.MCU_HYPERBUS0_CK */
 			J721E_WKUP_IOPAD(0x4, PIN_OUTPUT, 1) /* (C8) MCU_OSPI0_LBCLKO.MCU_HYPERBUS0_CKn */
@@ -101,7 +101,7 @@ J721E_WKUP_IOPAD(0x28, PIN_INPUT, 1) /* (A7) MCU_OSPI0_D7.MCU_HYPERBUS0_DQ7 */
 		>;
 	};
 
-	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x0000, PIN_OUTPUT, 0) /* MCU_OSPI0_CLK */
 			J721E_WKUP_IOPAD(0x002c, PIN_OUTPUT, 0) /* MCU_OSPI0_CSn0 */
@@ -119,7 +119,7 @@ J721E_WKUP_IOPAD(0x0008, PIN_INPUT, 0)  /* MCU_OSPI0_DQS */
 };
 
 &wkup_pmx2 {
-	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
+	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 			pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x98, PIN_INPUT_PULLUP, 0) /* (F20) WKUP_I2C0_SCL */
 			J721E_WKUP_IOPAD(0x9c, PIN_INPUT_PULLUP, 0) /* (H21) WKUP_I2C0_SDA */
@@ -128,7 +128,7 @@ J721E_WKUP_IOPAD(0x9c, PIN_INPUT_PULLUP, 0) /* (H21) WKUP_I2C0_SDA */
 };
 
 &main_pmx0 {
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0xd4, PIN_INPUT_PULLUP, 0) /* (V3) I2C0_SCL */
 			J721E_IOPAD(0xd8, PIN_INPUT_PULLUP, 0) /* (W2) I2C0_SDA */
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
--- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
@@ -304,7 +304,7 @@ dp_connector_in: endpoint {
 };
 
 &main_pmx0 {
-	led_pins_default: led-pins-default {
+	led_pins_default: led-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x184, PIN_INPUT, 7) /* (T23) RGMII5_RD0.GPIO0_96 */
 			J721E_IOPAD(0x180, PIN_INPUT, 7) /* (R23) RGMII5_RD1.GPIO0_95 */
@@ -314,7 +314,7 @@ J721E_IOPAD(0x1b8, PIN_INPUT, 7) /* (V26) MDIO0_MDIO.GPIO0_109 */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x254, PIN_INPUT, 0) /* (R29) MMC1_CMD */
 			J721E_IOPAD(0x250, PIN_INPUT, 0) /* (P25) MMC1_CLK */
@@ -327,64 +327,64 @@ J721E_IOPAD(0x258, PIN_INPUT, 0) /* (P23) MMC1_SDCD */
 		>;
 	};
 
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1e8, PIN_INPUT, 0) /* (AB2) UART0_RXD */
 			J721E_IOPAD(0x1ec, PIN_OUTPUT, 0) /* (AB3) UART0_TXD */
 		>;
 	};
 
-	sd_pwr_en_pins_default: sd-pwr-en-pins-default {
+	sd_pwr_en_pins_default: sd-pwr-en-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x14c, PIN_INPUT, 7) /* (AA29) PRG0_PRU1_GPO19.GPIO0_82 */
 		>;
 	};
 
-	vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-pins-default {
+	vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1d8, PIN_INPUT, 7) /* (W4) SPI1_CS1.GPIO0_117 */
 		>;
 	};
 
-	main_usbss0_pins_default: main-usbss0-pins-default {
+	main_usbss0_pins_default: main-usbss0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x210, PIN_INPUT, 7) /* (W3) MCAN1_RX.GPIO1_3 - USBC_DIR */
 		>;
 	};
 
-	main_usbss1_pins_default: main-usbss1-pins-default {
+	main_usbss1_pins_default: main-usbss1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x290, INPUT_DISABLE, 1) /* (U6) USB0_DRVVBUS.USB1_DRVVBUS */
 		>;
 	};
 
-	dp0_3v3_en_pins_default:dp0-3v3-en-pins-default {
+	dp0_3v3_en_pins_default: dp0-3v3-en-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0xc8, PIN_INPUT, 7) /* (AE26) PRG0_PRU0_GPO6.GPIO0_49 */
 		>;
 	};
 
-	dp0_pins_default: dp0-pins-default {
+	dp0_pins_default: dp0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1c4, PIN_INPUT, 5) /* (Y4) SPI0_CS1.DP0_HPD */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x220, PIN_INPUT_PULLUP, 0) /* (AC5) I2C0_SCL */
 			J721E_IOPAD(0x224, PIN_INPUT_PULLUP, 0) /* (AA5) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x228, PIN_INPUT_PULLUP, 0) /* (Y6) I2C1_SCL */
 			J721E_IOPAD(0x22c, PIN_INPUT_PULLUP, 0) /* (AA6) I2C1_SDA */
 		>;
 	};
 
-	main_i2c2_pins_default: main-i2c2-pins-default {
+	main_i2c2_pins_default: main-i2c2-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x208, PIN_INPUT_PULLUP, 4) /* (W5) MCAN0_RX.I2C2_SCL */
 			J721E_IOPAD(0x20c, PIN_INPUT_PULLUP, 4) /* (W6) MCAN0_TX.I2C2_SDA */
@@ -393,14 +393,14 @@ J721E_IOPAD(0x13c, PIN_INPUT, 7) /* (AF29) PRG0_PRU1_GPO15.GPIO0_78 */
 		>;
 	};
 
-	main_i2c3_pins_default: main-i2c3-pins-default {
+	main_i2c3_pins_default: main-i2c3-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x270, PIN_INPUT_PULLUP, 4) /* (T26) MMC2_CLK.I2C3_SCL */
 			J721E_IOPAD(0x274, PIN_INPUT_PULLUP, 4) /* (T25) MMC2_CMD.I2C3_SDA */
 		>;
 	};
 
-	main_i2c4_pins_default: main-i2c4-pins-default {
+	main_i2c4_pins_default: main-i2c4-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1e0, PIN_INPUT_PULLUP, 2) /* (Y5) SPI1_D0.I2C4_SCL */
 			J721E_IOPAD(0x1dc, PIN_INPUT_PULLUP, 2) /* (Y1) SPI1_CLK.I2C4_SDA */
@@ -409,14 +409,14 @@ J721E_IOPAD(0x34, PIN_INPUT, 7) /* (AJ24) PRG1_PRU0_GPO12.GPIO0_13 */
 		>;
 	};
 
-	main_i2c5_pins_default: main-i2c5-pins-default {
+	main_i2c5_pins_default: main-i2c5-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x150, PIN_INPUT_PULLUP, 2) /* (Y26) PRG0_MDIO0_MDIO.I2C5_SCL */
 			J721E_IOPAD(0x154, PIN_INPUT_PULLUP, 2) /* (AA27) PRG0_MDIO0_MDC.I2C5_SDA */
 		>;
 	};
 
-	main_i2c6_pins_default: main-i2c6-pins-default {
+	main_i2c6_pins_default: main-i2c6-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1d0, PIN_INPUT_PULLUP, 2) /* (AA3) SPI0_D1.I2C6_SCL */
 			J721E_IOPAD(0x1e4, PIN_INPUT_PULLUP, 2) /* (Y2) SPI1_D1.I2C6_SDA */
@@ -425,21 +425,21 @@ J721E_IOPAD(0xa4, PIN_INPUT, 7) /* (AH22) PRG1_PRU1_GPO19.GPIO0_40 */
 		>;
 	};
 
-	csi0_gpio_pins_default: csi0-gpio-pins-default {
+	csi0_gpio_pins_default: csi0-gpio-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x19c, PIN_INPUT_PULLDOWN, 7) /* (W27) RGMII6_TD0.GPIO0_102 */
 			J721E_IOPAD(0x1a0, PIN_INPUT_PULLDOWN, 7) /* (W29) RGMII6_TXC.GPIO0_103 */
 		>;
 	};
 
-	csi1_gpio_pins_default: csi1-gpio-pins-default {
+	csi1_gpio_pins_default: csi1-gpio-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x198, PIN_INPUT_PULLDOWN, 7) /* (V25) RGMII6_TD1.GPIO0_101 */
 			J721E_IOPAD(0x1b0, PIN_INPUT_PULLDOWN, 7) /* (W24) RGMII6_RD1.GPIO0_107 */
 		>;
 	};
 
-	pcie1_rst_pins_default: pcie1-rst-pins-default {
+	pcie1_rst_pins_default: pcie1-rst-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x5c, PIN_INPUT, 7) /* (AG23) PRG1_PRU1_GPO1.GPIO0_22 */
 		>;
@@ -447,13 +447,13 @@ J721E_IOPAD(0x5c, PIN_INPUT, 7) /* (AG23) PRG1_PRU1_GPO1.GPIO0_22 */
 };
 
 &wkup_pmx0 {
-	eeprom_wp_pins_default: eeprom-wp-pins-default {
+	eeprom_wp_pins_default: eeprom-wp-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xc4, PIN_OUTPUT_PULLUP, 7) /* (G24) WKUP_GPIO0_5 */
 		>;
 	};
 
-	mcu_adc0_pins_default: mcu-adc0-pins-default {
+	mcu_adc0_pins_default: mcu-adc0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x130, PIN_INPUT, 0) /* (K25) MCU_ADC0_AIN0 */
 			J721E_WKUP_IOPAD(0x134, PIN_INPUT, 0) /* (K26) MCU_ADC0_AIN1 */
@@ -465,13 +465,13 @@ J721E_WKUP_IOPAD(0x148, PIN_INPUT, 0) /* (K29) MCU_ADC0_AIN6 */
 		>;
 	};
 
-	mcu_adc1_pins_default: mcu-adc1-pins-default {
+	mcu_adc1_pins_default: mcu-adc1-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x150, PIN_INPUT, 0) /* (N23) MCU_ADC1_AIN0 */
 		>;
 	};
 
-	mikro_bus_pins_default: mikro-bus-pins-default {
+	mikro_bus_pins_default: mikro-bus-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x108, PIN_INPUT, 7) /* SDAPULLEN (E26) PMIC_POWER_EN0.WKUP_GPIO0_66 */
 			J721E_WKUP_IOPAD(0xd4, PIN_INPUT, 7) /* SDA (G26) WKUP_GPIO0_9.MCU_I2C1_SDA */
@@ -494,7 +494,7 @@ J721E_WKUP_IOPAD(0xac, PIN_INPUT, 7) /* AN (C29) MCU_MCAN0_RX.WKUP_GPIO0_59 */
 		>;
 	};
 
-	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x84, PIN_INPUT, 0) /* (B24) MCU_RGMII1_RD0 */
 			J721E_WKUP_IOPAD(0x80, PIN_INPUT, 0) /* (A24) MCU_RGMII1_RD1 */
@@ -511,27 +511,27 @@ J721E_WKUP_IOPAD(0x58, PIN_OUTPUT, 0) /* (B27) MCU_RGMII1_TX_CTL */
 		>;
 	};
 
-	mcu_mdio_pins_default: mcu-mdio1-pins-default {
+	mcu_mdio_pins_default: mcu-mdio1-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x8c, PIN_OUTPUT, 0) /* (F23) MCU_MDIO0_MDC */
 			J721E_WKUP_IOPAD(0x88, PIN_INPUT, 0) /* (E23) MCU_MDIO0_MDIO */
 		>;
 	};
 
-	sw_pwr_pins_default: sw-pwr-pins-default {
+	sw_pwr_pins_default: sw-pwr-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xc0, PIN_INPUT, 7) /* (G25) WKUP_GPIO0_4 */
 		>;
 	};
 
-	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
+	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xf8, PIN_INPUT_PULLUP, 0) /* (J25) WKUP_I2C0_SCL */
 			J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SDA */
 		>;
 	};
 
-	mcu_usbss1_pins_default: mcu-usbss1-pins-default {
+	mcu_usbss1_pins_default: mcu-usbss1-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x3c, PIN_OUTPUT_PULLUP, 5) /* (A23) MCU_OSPI1_LBCLKO.WKUP_GPIO0_30 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -172,13 +172,13 @@ dp_connector_in: endpoint {
 };
 
 &main_pmx0 {
-	sw10_button_pins_default: sw10-button-pins-default {
+	sw10_button_pins_default: sw10-button-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x0, PIN_INPUT, 7) /* (AC18) EXTINTn.GPIO0_0 */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x254, PIN_INPUT, 0) /* (R29) MMC1_CMD */
 			J721E_IOPAD(0x250, PIN_INPUT, 0) /* (P25) MMC1_CLK */
@@ -192,66 +192,66 @@ J721E_IOPAD(0x25c, PIN_INPUT, 0) /* (R28) MMC1_SDWP */
 		>;
 	};
 
-	vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-pins-default {
+	vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1d8, PIN_INPUT, 7) /* (W4) SPI1_CS1.GPIO0_117 */
 		>;
 	};
 
-	main_usbss0_pins_default: main-usbss0-pins-default {
+	main_usbss0_pins_default: main-usbss0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x290, PIN_OUTPUT, 0) /* (U6) USB0_DRVVBUS */
 			J721E_IOPAD(0x210, PIN_INPUT, 7) /* (W3) MCAN1_RX.GPIO1_3 */
 		>;
 	};
 
-	main_usbss1_pins_default: main-usbss1-pins-default {
+	main_usbss1_pins_default: main-usbss1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x214, PIN_OUTPUT, 4) /* (V4) MCAN1_TX.USB1_DRVVBUS */
 		>;
 	};
 
-	dp0_pins_default: dp0-pins-default {
+	dp0_pins_default: dp0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1c4, PIN_INPUT, 5) /* SPI0_CS1.DP0_HPD */
 		>;
 	};
 
-	main_i2c1_exp4_pins_default: main-i2c1-exp4-pins-default {
+	main_i2c1_exp4_pins_default: main-i2c1-exp4-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x230, PIN_INPUT, 7) /* (U2) ECAP0_IN_APWM_OUT.GPIO1_11 */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x220, PIN_INPUT_PULLUP, 0) /* (AC5) I2C0_SCL */
 			J721E_IOPAD(0x224, PIN_INPUT_PULLUP, 0) /* (AA5) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x228, PIN_INPUT_PULLUP, 0) /* (Y6) I2C1_SCL */
 			J721E_IOPAD(0x22c, PIN_INPUT_PULLUP, 0) /* (AA6) I2C1_SDA */
 		>;
 	};
 
-	main_i2c3_pins_default: main-i2c3-pins-default {
+	main_i2c3_pins_default: main-i2c3-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x270, PIN_INPUT_PULLUP, 4) /* (T26) MMC2_CLK.I2C3_SCL */
 			J721E_IOPAD(0x274, PIN_INPUT_PULLUP, 4) /* (T25) MMC2_CMD.I2C3_SDA */
 		>;
 	};
 
-	main_i2c6_pins_default: main-i2c6-pins-default {
+	main_i2c6_pins_default: main-i2c6-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1d0, PIN_INPUT_PULLUP, 2) /* (AA3) SPI0_D1.I2C6_SCL */
 			J721E_IOPAD(0x1e4, PIN_INPUT_PULLUP, 2) /* (Y2) SPI1_D1.I2C6_SDA */
 		>;
 	};
 
-	mcasp10_pins_default: mcasp10-pins-default {
+	mcasp10_pins_default: mcasp10-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x158, PIN_OUTPUT_PULLDOWN, 12) /* (U23) RGMII5_TX_CTL.MCASP10_ACLKX */
 			J721E_IOPAD(0x15c, PIN_OUTPUT_PULLDOWN, 12) /* (U26) RGMII5_RX_CTL.MCASP10_AFSX */
@@ -265,27 +265,27 @@ J721E_IOPAD(0x1a0, PIN_INPUT_PULLDOWN, 12) /* (W29) RGMII6_TXC.MCASP10_AXR6 */
 		>;
 	};
 
-	audi_ext_refclk2_pins_default: audi-ext-refclk2-pins-default {
+	audi_ext_refclk2_pins_default: audi-ext-refclk2-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1a4, PIN_OUTPUT, 3) /* (W26) RGMII6_RXC.AUDIO_EXT_REFCLK2 */
 		>;
 	};
 
-	main_mcan0_pins_default: main-mcan0-pins-default {
+	main_mcan0_pins_default: main-mcan0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x208, PIN_INPUT, 0) /* (W5) MCAN0_RX */
 			J721E_IOPAD(0x20c, PIN_OUTPUT, 0) /* (W6) MCAN0_TX */
 		>;
 	};
 
-	main_mcan2_pins_default: main-mcan2-pins-default {
+	main_mcan2_pins_default: main-mcan2-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x01f0, PIN_INPUT, 3) /* (AC2) MCAN2_RX.GPIO0_123 */
 			J721E_IOPAD(0x01f4, PIN_OUTPUT, 3) /* (AB1) MCAN2_TX.GPIO0_124 */
 		>;
 	};
 
-	main_mcan2_gpio_pins_default: main-mcan2-gpio-pins-default {
+	main_mcan2_gpio_pins_default: main-mcan2-gpio-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x200, PIN_INPUT, 7) /* (AC4) UART1_CTSn.GPIO0_127 */
 		>;
@@ -293,13 +293,13 @@ J721E_IOPAD(0x200, PIN_INPUT, 7) /* (AC4) UART1_CTSn.GPIO0_127 */
 };
 
 &wkup_pmx0 {
-	sw11_button_pins_default: sw11-button-pins-default {
+	sw11_button_pins_default: sw11-button-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xcc, PIN_INPUT, 7) /* (G28) WKUP_GPIO0_7 */
 		>;
 	};
 
-	mcu_fss0_ospi1_pins_default: mcu-fss0-ospi1-pins-default {
+	mcu_fss0_ospi1_pins_default: mcu-fss0-ospi1-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x34, PIN_OUTPUT, 0) /* (F22) MCU_OSPI1_CLK */
 			J721E_WKUP_IOPAD(0x50, PIN_OUTPUT, 0) /* (C22) MCU_OSPI1_CSn0 */
@@ -312,7 +312,7 @@ J721E_WKUP_IOPAD(0x38, PIN_INPUT, 0) /* (A23) MCU_OSPI1_LBCLKO */
 		>;
 	};
 
-	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x0058, PIN_OUTPUT, 0) /* MCU_RGMII1_TX_CTL */
 			J721E_WKUP_IOPAD(0x005c, PIN_INPUT, 0) /* MCU_RGMII1_RX_CTL */
@@ -329,35 +329,35 @@ J721E_WKUP_IOPAD(0x0074, PIN_INPUT, 0) /* MCU_RGMII1_RXC */
 		>;
 	};
 
-	mcu_mdio_pins_default: mcu-mdio1-pins-default {
+	mcu_mdio_pins_default: mcu-mdio1-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x008c, PIN_OUTPUT, 0) /* MCU_MDIO0_MDC */
 			J721E_WKUP_IOPAD(0x0088, PIN_INPUT, 0) /* MCU_MDIO0_MDIO */
 		>;
 	};
 
-	mcu_mcan0_pins_default: mcu-mcan0-pins-default {
+	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xac, PIN_INPUT, 0) /* (C29) MCU_MCAN0_RX */
 			J721E_WKUP_IOPAD(0xa8, PIN_OUTPUT, 0) /* (D29) MCU_MCAN0_TX */
 		>;
 	};
 
-	mcu_mcan0_gpio_pins_default: mcu-mcan0-gpio-pins-default {
+	mcu_mcan0_gpio_pins_default: mcu-mcan0-gpio-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xb0, PIN_INPUT, 7) /* (F26) WKUP_GPIO0_0 */
 			J721E_WKUP_IOPAD(0x98, PIN_INPUT, 7) /* (E28) MCU_SPI0_D1.WKUP_GPIO0_54 */
 		>;
 	};
 
-	mcu_mcan1_pins_default: mcu-mcan1-pins-default {
+	mcu_mcan1_pins_default: mcu-mcan1-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xc4, PIN_INPUT, 0) /* (G24) WKUP_GPIO0_5.MCU_MCAN1_RX */
 			J721E_WKUP_IOPAD(0xc0, PIN_OUTPUT, 0) /* (G25) WKUP_GPIO0_4.MCU_MCAN1_TX */
 		>;
 	};
 
-	mcu_mcan1_gpio_pins_default: mcu-mcan1-gpio-pins-default {
+	mcu_mcan1_gpio_pins_default: mcu-mcan1-gpio-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xb8, PIN_INPUT, 7) /* (F28) WKUP_GPIO0_2 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-evm-quad-port-eth-exp.dtso b/arch/arm64/boot/dts/ti/k3-j721e-evm-quad-port-eth-exp.dtso
--- a/arch/arm64/boot/dts/ti/k3-j721e-evm-quad-port-eth-exp.dtso
+++ b/arch/arm64/boot/dts/ti/k3-j721e-evm-quad-port-eth-exp.dtso
@@ -94,7 +94,7 @@ qsgmii-line-hog {
 };
 
 &main_pmx0 {
-	mdio0_pins_default: mdio0-pins-default {
+	mdio0_pins_default: mdio0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1bc, PIN_OUTPUT, 0) /* (V24) MDIO0_MDC */
 			J721E_IOPAD(0x1b8, PIN_INPUT, 0) /* (V26) MDIO0_MDIO */
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
--- a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
@@ -280,7 +280,7 @@ tfp410_out: endpoint {
 };
 
 &main_pmx0 {
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x254, PIN_INPUT, 0) /* (R29) MMC1_CMD */
 			J721E_IOPAD(0x250, PIN_INPUT, 0) /* (P25) MMC1_CLK */
@@ -293,7 +293,7 @@ J721E_IOPAD(0x258, PIN_INPUT, 0) /* (P23) MMC1_SDCD */
 		>;
 	};
 
-	main_uart0_pins_default: main-uart0-pins-default {
+	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1f0, PIN_INPUT, 0) /* (AC2) UART0_CTSn */
 			J721E_IOPAD(0x1f4, PIN_OUTPUT, 0) /* (AB1) UART0_RTSn */
@@ -302,53 +302,53 @@ J721E_IOPAD(0x1ec, PIN_OUTPUT, 0) /* (AB3) UART0_TXD */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x220, PIN_INPUT_PULLUP, 0) /* (AC5) I2C0_SCL */
 			J721E_IOPAD(0x224, PIN_INPUT_PULLUP, 0) /* (AA5) I2C0_SDA */
 		>;
 	};
 
-	main_i2c1_pins_default: main-i2c1-pins-default {
+	main_i2c1_pins_default: main-i2c1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x228, PIN_INPUT_PULLUP, 0) /* (Y6) I2C1_SCL */
 			J721E_IOPAD(0x22c, PIN_INPUT_PULLUP, 0) /* (AA6) I2C1_SDA */
 		>;
 	};
 
-	main_i2c3_pins_default: main-i2c3-pins-default {
+	main_i2c3_pins_default: main-i2c3-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x270, PIN_INPUT_PULLUP, 4) /* (T26) MMC2_CLK.I2C3_SCL */
 			J721E_IOPAD(0x274, PIN_INPUT_PULLUP, 4) /* (T25) MMC2_CMD.I2C3_SDA */
 		>;
 	};
 
-	main_usbss0_pins_default: main-usbss0-pins-default {
+	main_usbss0_pins_default: main-usbss0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x290, PIN_OUTPUT, 0) /* (U6) USB0_DRVVBUS */
 			J721E_IOPAD(0x210, PIN_INPUT, 7) /* (W3) MCAN1_RX.GPIO1_3 */
 		>;
 	};
 
-	main_usbss1_pins_default: main-usbss1-pins-default {
+	main_usbss1_pins_default: main-usbss1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x214, PIN_OUTPUT, 4) /* (V4) MCAN1_TX.USB1_DRVVBUS */
 		>;
 	};
 
-	dp0_pins_default: dp0-pins-default {
+	dp0_pins_default: dp0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1c4, PIN_INPUT, 5) /* SPI0_CS1.DP0_HPD */
 		>;
 	};
 
-	dp_pwr_en_pins_default: dp-pwr-en-pins-default {
+	dp_pwr_en_pins_default: dp-pwr-en-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1c0, PIN_INPUT, 7) /* (AA2) SPI0_CS0.GPIO0_111 */
 		>;
 	};
 
-	dss_vout0_pins_default: dss-vout0-pins-default {
+	dss_vout0_pins_default: dss-vout0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x58, PIN_OUTPUT, 10) /* (AE22) PRG1_PRU1_GPO0.VOUT0_DATA0 */
 			J721E_IOPAD(0x5c, PIN_OUTPUT, 10) /* (AG23) PRG1_PRU1_GPO1.VOUT0_DATA1 */
@@ -381,33 +381,33 @@ J721E_IOPAD(0xa0, PIN_OUTPUT, 10) /* (AJ22) PRG1_PRU1_GPO18.VOUT0_VSYNC */
 		>;
 	};
 
-	hdmi_hpd_pins_default: hdmi-hpd-pins-default {
+	hdmi_hpd_pins_default: hdmi-hpd-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x204, PIN_INPUT, 7) /* (AD5) UART1_RTSn.GPIO1_0 */
 		>;
 	};
 
-	hdmi_pdn_pins_default: hdmi-pdn-pins-default {
+	hdmi_pdn_pins_default: hdmi-pdn-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x200, PIN_INPUT, 7) /* (AC4) UART1_CTSn.GPIO0_127 */
 		>;
 	};
 
 	/* Reset for M.2 E Key slot on PCIe0  */
-	ekey_reset_pins_default: ekey-reset-pns-pins-default {
+	ekey_reset_pins_default: ekey-reset-pns-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x124, PIN_INPUT, 7) /* (Y24) PRG0_PRU1_GPO9.GPIO0_72 */
 		>;
 	};
 
-	main_i2c5_pins_default: main-i2c5-pins-default {
+	main_i2c5_pins_default: main-i2c5-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x150, PIN_INPUT_PULLUP, 2) /* (Y26) PRG0_MDIO0_MDIO.I2C5_SCL */
 			J721E_IOPAD(0x154, PIN_INPUT_PULLUP, 2) /* (AA27) PRG0_MDIO0_MDC.I2C5_SDA */
 		>;
 	};
 
-	rpi_header_gpio0_pins_default: rpi-header-gpio0-pins-default {
+	rpi_header_gpio0_pins_default: rpi-header-gpio0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x01C, PIN_INPUT, 7) /* (AD22) PRG1_PRU0_GPO6.GPIO0_7 */
 			J721E_IOPAD(0x120, PIN_INPUT, 7) /* (AA28) PRG0_PRU1_GPO8.GPIO0_71 */
@@ -435,7 +435,7 @@ J721E_IOPAD(0x18C, PIN_INPUT, 7) /* (V23) RGMII6_RX_CTL.GPIO0_98 */
 		>;
 	};
 
-	rpi_header_gpio1_pins_default: rpi-header-gpio1-pins-default {
+	rpi_header_gpio1_pins_default: rpi-header-gpio1-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x234, PIN_INPUT, 7) /* (U3) EXT_REFCLK1.GPIO1_12 */
 		>;
@@ -443,7 +443,7 @@ J721E_IOPAD(0x234, PIN_INPUT, 7) /* (U3) EXT_REFCLK1.GPIO1_12 */
 };
 
 &wkup_pmx0 {
-	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x84, PIN_INPUT, 0) /* (B24) MCU_RGMII1_RD0 */
 			J721E_WKUP_IOPAD(0x80, PIN_INPUT, 0) /* (A24) MCU_RGMII1_RD1 */
@@ -460,14 +460,14 @@ J721E_WKUP_IOPAD(0x58, PIN_OUTPUT, 0) /* (B27) MCU_RGMII1_TX_CTL */
 		>;
 	};
 
-	mcu_mdio_pins_default: mcu-mdio1-pins-default {
+	mcu_mdio_pins_default: mcu-mdio1-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x8c, PIN_OUTPUT, 0) /* (F23) MCU_MDIO0_MDC */
 			J721E_WKUP_IOPAD(0x88, PIN_INPUT, 0) /* (E23) MCU_MDIO0_MDIO */
 		>;
 	};
 
-	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x0, PIN_OUTPUT, 0) /* (E20) MCU_OSPI0_CLK */
 			J721E_WKUP_IOPAD(0x2c, PIN_OUTPUT, 0) /* (F19) MCU_OSPI0_CSn0 */
@@ -483,19 +483,19 @@ J721E_WKUP_IOPAD(0x8, PIN_INPUT, 0) /* (D21) MCU_OSPI0_DQS */
 		>;
 	};
 
-	vdd_mmc1_en_pins_default: vdd-mmc1-en-pins-default {
+	vdd_mmc1_en_pins_default: vdd-mmc1-en-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xd0, PIN_OUTPUT, 7) /* (G27) WKUP_GPIO0_8 */
 		>;
 	};
 
-	vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-pins-default {
+	vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xd4, PIN_OUTPUT, 7) /* (G26) WKUP_GPIO0_9 */
 		>;
 	};
 
-	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
+	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xf8, PIN_INPUT_PULLUP, 0) /* (J25) WKUP_I2C0_SCL */
 			J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SDA */
@@ -503,7 +503,7 @@ J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SDA */
 	};
 
 	/* Reset for M.2 M Key slot on PCIe1  */
-	mkey_reset_pins_default: mkey-reset-pns-pins-default {
+	mkey_reset_pins_default: mkey-reset-pns-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xdc, PIN_INPUT, 7) /* (H27) WKUP_GPIO0_11 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
--- a/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
@@ -143,14 +143,14 @@ rtos_ipc_memory_region: ipc-memories@aa000000 {
 };
 
 &wkup_pmx0 {
-	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
+	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0xf8, PIN_INPUT_PULLUP, 0) /* (J25) WKUP_I2C0_SCL */
 			J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SDA */
 		>;
 	};
 
-	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x0000, PIN_OUTPUT, 0) /* MCU_OSPI0_CLK */
 			J721E_WKUP_IOPAD(0x0008, PIN_INPUT, 0)  /* MCU_OSPI0_DQS */
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
--- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
@@ -109,7 +109,7 @@ transceiver2: can-phy2 {
 };
 
 &main_pmx0 {
-	main_uart8_pins_default: main-uart8-pins-default {
+	main_uart8_pins_default: main-uart8-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x040, PIN_INPUT, 14) /* (AC28) MCASP0_AXR0.UART8_CTSn */
 			J721S2_IOPAD(0x044, PIN_OUTPUT, 14) /* (Y26) MCASP0_AXR1.UART8_RTSn */
@@ -118,14 +118,14 @@ J721S2_IOPAD(0x0d4, PIN_OUTPUT, 11) /* (AH27) SPI0_CLK.UART8_TXD */
 		>;
 	};
 
-	main_i2c3_pins_default: main-i2c3-pins-default {
+	main_i2c3_pins_default: main-i2c3-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x064, PIN_INPUT_PULLUP, 13) /* (W28) MCAN0_TX.I2C3_SCL */
 			J721S2_IOPAD(0x060, PIN_INPUT_PULLUP, 13) /* (AC27) MCASP2_AXR1.I2C3_SDA */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x104, PIN_INPUT, 0) /* (P23) MMC1_CLK */
 			J721S2_IOPAD(0x108, PIN_INPUT, 0) /* (N24) MMC1_CMD */
@@ -138,7 +138,7 @@ J721S2_IOPAD(0x0e8, PIN_INPUT, 8) /* (AE25) TIMER_IO0.MMC1_SDCD */
 		>;
 	};
 
-	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
+	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x020, PIN_INPUT, 7) /* (AA23) MCAN15_RX.GPIO0_8 */
 		>;
@@ -146,7 +146,7 @@ J721S2_IOPAD(0x020, PIN_INPUT, 7) /* (AA23) MCAN15_RX.GPIO0_8 */
 };
 
 &wkup_pmx0 {
-	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x094, PIN_INPUT, 0) /* (B22) MCU_RGMII1_RD0 */
 			J721S2_WKUP_IOPAD(0x090, PIN_INPUT, 0) /* (B21) MCU_RGMII1_RD1 */
@@ -163,41 +163,41 @@ J721S2_WKUP_IOPAD(0x068, PIN_OUTPUT, 0) /* (F22) MCU_RGMII1_TX_CTL */
 		>;
 	};
 
-	mcu_mdio_pins_default: mcu-mdio-pins-default {
+	mcu_mdio_pins_default: mcu-mdio-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x09c, PIN_OUTPUT, 0) /* (A21) MCU_MDIO0_MDC */
 			J721S2_WKUP_IOPAD(0x098, PIN_INPUT, 0) /* (A22) MCU_MDIO0_MDIO */
 		>;
 	};
 
-	mcu_mcan0_pins_default: mcu-mcan0-pins-default {
+	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x0bc, PIN_INPUT, 0) /* (E28) MCU_MCAN0_RX */
 			J721S2_WKUP_IOPAD(0x0b8, PIN_OUTPUT, 0) /* (E27) MCU_MCAN0_TX */
 		>;
 	};
 
-	mcu_mcan1_pins_default: mcu-mcan1-pins-default {
+	mcu_mcan1_pins_default: mcu-mcan1-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x0d4, PIN_INPUT, 0) /* (F26) WKUP_GPIO0_5.MCU_MCAN1_RX */
 			J721S2_WKUP_IOPAD(0x0d0, PIN_OUTPUT, 0) /* (C23) WKUP_GPIO0_4.MCU_MCAN1_TX */
 		>;
 	};
 
-	mcu_mcan0_gpio_pins_default: mcu-mcan0-gpio-pins-default {
+	mcu_mcan0_gpio_pins_default: mcu-mcan0-gpio-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x0c0, PIN_INPUT, 7) /* (D26) WKUP_GPIO0_0 */
 			J721S2_WKUP_IOPAD(0x0a8, PIN_INPUT, 7) /* (B25) MCU_SPI0_D1.WKUP_GPIO0_69 */
 		>;
 	};
 
-	mcu_mcan1_gpio_pins_default: mcu-mcan1-gpio-pins-default {
+	mcu_mcan1_gpio_pins_default: mcu-mcan1-gpio-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x0c8, PIN_INPUT, 7) /* (C28) WKUP_GPIO0_2 */
 		>;
 	};
 
-	mcu_adc0_pins_default: mcu-adc0-pins-default {
+	mcu_adc0_pins_default: mcu-adc0-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x134, PIN_INPUT, 0) /* (L25) MCU_ADC0_AIN0 */
 			J721S2_WKUP_IOPAD(0x138, PIN_INPUT, 0) /* (K25) MCU_ADC0_AIN1 */
@@ -210,7 +210,7 @@ J721S2_WKUP_IOPAD(0x150, PIN_INPUT, 0) /* (M26) MCU_ADC0_AIN7 */
 		>;
 	};
 
-	mcu_adc1_pins_default: mcu-adc1-pins-default {
+	mcu_adc1_pins_default: mcu-adc1-default-pins {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x154, PIN_INPUT, 0) /* (P25) MCU_ADC1_AIN0 */
 			J721S2_WKUP_IOPAD(0x158, PIN_INPUT, 0) /* (R25) MCU_ADC1_AIN1 */
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi
--- a/arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi
@@ -40,14 +40,14 @@ transceiver0: can-phy0 {
 };
 
 &main_pmx0 {
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x0e0, PIN_INPUT_PULLUP, 0) /* (AH25) I2C0_SCL */
 			J721S2_IOPAD(0x0e4, PIN_INPUT_PULLUP, 0) /* (AE24) I2C0_SDA */
 		>;
 	};
 
-	main_mcan16_pins_default: main-mcan16-pins-default {
+	main_mcan16_pins_default: main-mcan16-default-pins {
 		pinctrl-single,pins = <
 			J721S2_IOPAD(0x028, PIN_INPUT, 0) /* (AB24) MCAN16_RX */
 			J721S2_IOPAD(0x024, PIN_OUTPUT, 0) /* (Y28) MCAN16_TX */
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
--- a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
@@ -105,7 +105,7 @@ vdd_sd_dv: regulator-TLV71033 {
 };
 
 &main_pmx0 {
-	main_uart8_pins_default: main-uart8-pins-default {
+	main_uart8_pins_default: main-uart8-default-pins {
 		pinctrl-single,pins = <
 			J784S4_IOPAD(0x040, PIN_INPUT, 14) /* (AF37) MCASP0_AXR0.UART8_CTSn */
 			J784S4_IOPAD(0x044, PIN_OUTPUT, 14) /* (AG37) MCASP0_AXR1.UART8_RTSn */
@@ -114,14 +114,14 @@ J784S4_IOPAD(0x0d4, PIN_OUTPUT, 11) /* (AN38) SPI0_CLK.UART8_TXD */
 		>;
 	};
 
-	main_i2c0_pins_default: main-i2c0-pins-default {
+	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			J784S4_IOPAD(0x0e0, PIN_INPUT_PULLUP, 0) /* (AN36) I2C0_SCL */
 			J784S4_IOPAD(0x0e4, PIN_INPUT_PULLUP, 0) /* (AP37) I2C0_SDA */
 		>;
 	};
 
-	main_mmc1_pins_default: main-mmc1-pins-default {
+	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			J784S4_IOPAD(0x104, PIN_INPUT, 0) /* (AB38) MMC1_CLK */
 			J784S4_IOPAD(0x108, PIN_INPUT, 0) /* (AB36) MMC1_CMD */
@@ -134,7 +134,7 @@ J784S4_IOPAD(0x0e8, PIN_INPUT, 8) /* (AR38) TIMER_IO0.MMC1_SDCD */
 		>;
 	};
 
-	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
+	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
 		pinctrl-single,pins = <
 			J784S4_IOPAD(0x020, PIN_INPUT, 7) /* (AJ35) MCAN15_RX.GPIO0_8 */
 		>;
@@ -142,7 +142,7 @@ J784S4_IOPAD(0x020, PIN_INPUT, 7) /* (AJ35) MCAN15_RX.GPIO0_8 */
 };
 
 &wkup_pmx0 {
-	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
 		pinctrl-single,pins = <
 			J784S4_WKUP_IOPAD(0x094, PIN_INPUT, 0) /* (A35) MCU_RGMII1_RD0 */
 			J784S4_WKUP_IOPAD(0x090, PIN_INPUT, 0) /* (B36) MCU_RGMII1_RD1 */
@@ -159,7 +159,7 @@ J784S4_WKUP_IOPAD(0x068, PIN_OUTPUT, 0) /* (C38) MCU_RGMII1_TX_CTL */
 		>;
 	};
 
-	mcu_mdio_pins_default: mcu-mdio-pins-default {
+	mcu_mdio_pins_default: mcu-mdio-default-pins {
 		pinctrl-single,pins = <
 			J784S4_WKUP_IOPAD(0x09c, PIN_OUTPUT, 0) /* (A36) MCU_MDIO0_MDC */
 			J784S4_WKUP_IOPAD(0x098, PIN_INPUT, 0) /* (B35) MCU_MDIO0_MDIO */
-- 
2.41.0
