Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01836731FAD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 20:07:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230407AbjFOSHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 14:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229696AbjFOSHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 14:07:13 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 70C8C1A3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 11:07:12 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 7AF2780B3;
        Thu, 15 Jun 2023 18:07:10 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: ti: Few more pin group node name updates
Date:   Thu, 15 Jun 2023 21:07:01 +0300
Message-ID: <20230615180706.34535-1-tony@atomide.com>
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

I noticed few more pin group node names to update to prepare for the
pinctrl-single yaml binding for make dtbs_check.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts           | 2 +-
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi   | 2 +-
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts           | 2 +-
 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts | 4 ++--
 arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts         | 4 ++--
 arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts       | 2 +-
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -432,7 +432,7 @@ AM62X_MCU_IOPAD(0x0048, PIN_INPUT, 0) /* (D10) MCU_I2C0_SDA */
 		>;
 	};
 
-	gbe_pmx_obsclk: gbe-pmx-clk-default {
+	gbe_pmx_obsclk: gbe-pmx-clk-default-pins {
 		pinctrl-single,pins = <
 			AM62X_MCU_IOPAD(0x0004, PIN_OUTPUT, 1) /* (B8) MCU_SPI0_CS1.MCU_OBSCLK0 */
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
diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -192,7 +192,7 @@ AM65X_WKUP_IOPAD(0x002c, PIN_OUTPUT, 0) /* (R4) MCU_OSPI0_CSn0 */
 		>;
 	};
 
-	wkup_pca554_default: wkup-pca554-default {
+	wkup_pca554_default: wkup-pca554-default-pins {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x0034, PIN_INPUT, 7) /* (T1) MCU_OSPI1_CLK.WKUP_GPIO0_25 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
--- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
@@ -33,7 +33,7 @@ AM65X_IOPAD(0x01c4, PIN_INPUT_PULLUP, 7)  /* (AH13) GPIO1_17 */
 		>;
 	};
 
-	main_bkey_pcie_reset: main-bkey-pcie-reset {
+	main_bkey_pcie_reset: main-bkey-pcie-reset-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01bc, PIN_OUTPUT_PULLUP, 7)  /* (AG13) GPIO1_15 */
 		>;
@@ -46,7 +46,7 @@ AM65X_IOPAD(0x01cc, PIN_INPUT_PULLUP, 7)  /* (AD13) GPIO1_19 */
 		>;
 	};
 
-	main_m2_pcie_mux_control: main-m2-pcie-mux-control {
+	main_m2_pcie_mux_control: main-m2-pcie-mux-control-pins {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0148, PIN_INPUT_PULLUP, 7)  /* (AG22) GPIO0_82 */
 			AM65X_IOPAD(0x0160, PIN_INPUT_PULLUP, 7)  /* (AE20) GPIO0_88 */
diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
@@ -272,7 +272,7 @@ J721S2_WKUP_IOPAD(0x088, PIN_OUTPUT, 0) /* (C25) WKUP_GPIO0_12.MCU_UART0_TXD */
 		>;
 	};
 
-	mcu_rpi_header_gpio0_pins0_default: mcu-rpi-header-gpio0-pins0-default {
+	mcu_rpi_header_gpio0_pins0_default: mcu-rpi-header-gpio0-default-pins-0 {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x118, PIN_INPUT, 7) /* (G25) WKUP_GPIO0_66 */
 			J721S2_WKUP_IOPAD(0x05C, PIN_INPUT, 7) /* (E24) MCU_SPI1_D0.WKUP_GPIO0_1 */
@@ -288,7 +288,7 @@ J721S2_WKUP_IOPAD(0x064, PIN_INPUT, 7) /* (C27) MCU_SPI1_CS0.WKUP_GPIO0_3 */
 };
 
 &wkup_pmx3 {
-	mcu_rpi_header_gpio0_pins1_default: mcu-rpi-header-gpio0-pins1-default {
+	mcu_rpi_header_gpio0_pins1_default: mcu-rpi-header-gpio0-default-pins-1 {
 		pinctrl-single,pins = <
 			J721S2_WKUP_IOPAD(0x000, PIN_INPUT, 7) /* (K26) WKUP_GPIO0_49 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
--- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
@@ -359,7 +359,7 @@ J721E_IOPAD(0x290, INPUT_DISABLE, 1) /* (U6) USB0_DRVVBUS.USB1_DRVVBUS */
 		>;
 	};
 
-	dp0_3v3_en_pins_default:dp0-3v3-en-default-pins {
+	dp0_3v3_en_pins_default: dp0-3v3-en-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0xc8, PIN_INPUT, 7) /* (AE26) PRG0_PRU0_GPO6.GPIO0_49 */
 		>;
-- 
2.41.0
