Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C03E170D601
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 09:50:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjEWHux (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 03:50:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232773AbjEWHul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 03:50:41 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id AE5E110D4
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 00:50:10 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id BE7FA80B5;
        Tue, 23 May 2023 07:48:48 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: Unify pinctrl-single pin group nodes for keystone
Date:   Tue, 23 May 2023 10:48:43 +0300
Message-Id: <20230523074845.59433-1-tony@atomide.com>
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
 arch/arm/boot/dts/keystone-k2g-evm.dts | 30 +++++++++++++-------------
 arch/arm/boot/dts/keystone-k2g-ice.dts | 16 +++++++-------
 arch/arm/boot/dts/keystone-k2l.dtsi    | 20 ++++++++---------
 3 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boot/dts/keystone-k2g-evm.dts b/arch/arm/boot/dts/keystone-k2g-evm.dts
--- a/arch/arm/boot/dts/keystone-k2g-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2g-evm.dts
@@ -120,14 +120,14 @@ codec {
 };
 
 &k2g_pinctrl {
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x11cc) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* uart0_rxd.uart0_rxd */
 			K2G_CORE_IOPAD(0x11d0) (BUFFER_CLASS_B | PIN_PULLDOWN | MUX_MODE0)	/* uart0_txd.uart0_txd */
 		>;
 	};
 
-	mmc0_pins: pinmux_mmc0_pins {
+	mmc0_pins: mmc0-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1300) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE2)	/* mmc0_dat3.mmc0_dat3 */
 			K2G_CORE_IOPAD(0x1304) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE2)	/* mmc0_dat2.mmc0_dat2 */
@@ -139,7 +139,7 @@ K2G_CORE_IOPAD(0x12ec) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE3)	/* mmc0_sdcd.gp
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x10ec) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* mmc1_dat7.mmc1_dat7 */
 			K2G_CORE_IOPAD(0x10f0) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* mmc1_dat6.mmc1_dat6 */
@@ -154,27 +154,27 @@ K2G_CORE_IOPAD(0x1110) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* mmc1_cmd.mmc
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x137c) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c0_scl.i2c0_scl */
 			K2G_CORE_IOPAD(0x1380) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c0_sda.i2c0_sda */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1384) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c1_scl.i2c1_scl */
 			K2G_CORE_IOPAD(0x1388) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c1_sda.i2c1_sda */
 		>;
 	};
 
-	ecap0_pins: ecap0_pins {
+	ecap0_pins: ecap0-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1374) (BUFFER_CLASS_B | MUX_MODE4)	/* pr1_mdio_data.ecap0_in_apwm0_out */
 		>;
 	};
 
-	spi1_pins: pinmux_spi1_pins {
+	spi1_pins: spi1-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x11a4) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* spi1_scs0.spi1_scs0 */
 			K2G_CORE_IOPAD(0x11ac) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* spi1_clk.spi1_clk */
@@ -183,7 +183,7 @@ K2G_CORE_IOPAD(0x11b4) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* spi1_mosi.
 		>;
 	};
 
-	qspi_pins: pinmux_qspi_pins {
+	qspi_pins: qspi-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1204) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* qspi_clk.qspi_clk */
 			K2G_CORE_IOPAD(0x1208) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* qspi_rclk.qspi_rclk */
@@ -195,28 +195,28 @@ K2G_CORE_IOPAD(0x121c) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* qspi_csn0.
 		>;
 	};
 
-	uart2_pins: pinmux_uart2_pins {
+	uart2_pins: uart2-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x11ec) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)      /* uart2_rxd.uart2_rxd */
 			K2G_CORE_IOPAD(0x11f0) (BUFFER_CLASS_B | PIN_PULLDOWN | MUX_MODE0)      /* uart2_txd.uart2_txd */
 		>;
 	};
 
-	dcan0_pins: pinmux_dcan0_pins {
+	dcan0_pins: dcan0-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x11fc) (BUFFER_CLASS_B | PULL_DISABLE  | MUX_MODE0)	/* dcan0tx.dcan0tx */
 			K2G_CORE_IOPAD(0x1200) (BUFFER_CLASS_B | PIN_PULLDOWN  | MUX_MODE0)	/* dcan0rx.dcan0rx */
 		>;
 	};
 
-	dcan1_pins: pinmux_dcan1_pins {
+	dcan1_pins: dcan1-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1224) (BUFFER_CLASS_B | PULL_DISABLE  | MUX_MODE1)	/* qspicsn2.dcan1tx */
 			K2G_CORE_IOPAD(0x1228) (BUFFER_CLASS_B | PIN_PULLDOWN  | MUX_MODE1)	/* qspicsn3.dcan1rx */
 		>;
 	};
 
-	emac_pins: pinmux_emac_pins {
+	emac_pins: emac-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x113C) (BUFFER_CLASS_D | PULL_DISABLE | MUX_MODE1)	/* MII_RXD1.RGMII_RXD1 */
 			K2G_CORE_IOPAD(0x1138) (BUFFER_CLASS_D | PULL_DISABLE | MUX_MODE1)	/* MII_RXD2.RGMII_RXD2 */
@@ -233,14 +233,14 @@ K2G_CORE_IOPAD(0x1144) (BUFFER_CLASS_D | PULL_DISABLE | MUX_MODE1)	/* MII_RXDV.R
 		>;
 	};
 
-	mdio_pins: pinmux_mdio_pins {
+	mdio_pins: mdio-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x118C) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* MDIO_CLK.MDIO_CLK */
 			K2G_CORE_IOPAD(0x1188) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* MDIO_DATA.MDIO_DATA */
 		>;
 	};
 
-	vout_pins: pinmux_vout_pins {
+	vout_pins: vout-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1078) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata23.dssdata23 */
 			K2G_CORE_IOPAD(0x107c) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata22.dssdata22 */
@@ -274,7 +274,7 @@ K2G_CORE_IOPAD(0x10e8) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssfid.dss
 		>;
 	};
 
-	mcasp2_pins: pinmux_mcasp2_pins {
+	mcasp2_pins: mcasp2-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1234) (BUFFER_CLASS_B | PIN_PULLDOWN | MUX_MODE4) /* pr0_pru_gpo2.mcasp2_axr2 */
 			K2G_CORE_IOPAD(0x1238) (BUFFER_CLASS_B | PIN_PULLDOWN | MUX_MODE4) /* pr0_pru_gpo3.mcasp2_axr3 */
diff --git a/arch/arm/boot/dts/keystone-k2g-ice.dts b/arch/arm/boot/dts/keystone-k2g-ice.dts
--- a/arch/arm/boot/dts/keystone-k2g-ice.dts
+++ b/arch/arm/boot/dts/keystone-k2g-ice.dts
@@ -218,14 +218,14 @@ led12 {
 };
 
 &k2g_pinctrl {
-	uart0_pins: pinmux_uart0_pins {
+	uart0_pins: uart0-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x11cc) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* uart0_rxd.uart0_rxd */
 			K2G_CORE_IOPAD(0x11d0) (BUFFER_CLASS_B | PIN_PULLDOWN | MUX_MODE0)	/* uart0_txd.uart0_txd */
 		>;
 	};
 
-	qspi_pins: pinmux_qspi_pins {
+	qspi_pins: qspi-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1204) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* qspi_clk.qspi_clk */
 			K2G_CORE_IOPAD(0x1208) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* qspi_rclk.qspi_rclk */
@@ -237,7 +237,7 @@ K2G_CORE_IOPAD(0x121c) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* qspi_csn0.
 		>;
 	};
 
-	mmc1_pins: pinmux_mmc1_pins {
+	mmc1_pins: mmc1-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x10FC) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* mmc1_dat3.mmc1_dat3 */
 			K2G_CORE_IOPAD(0x1100) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* mmc1_dat2.mmc1_dat2 */
@@ -251,21 +251,21 @@ K2G_CORE_IOPAD(0x111C) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* mmc1_pow.mmc
 		>;
 	};
 
-	i2c0_pins: pinmux_i2c0_pins {
+	i2c0_pins: i2c0-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x137c) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c0_scl.i2c0_scl */
 			K2G_CORE_IOPAD(0x1380) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c0_sda.i2c0_sda */
 		>;
 	};
 
-	i2c1_pins: pinmux_i2c1_pins {
+	i2c1_pins: i2c1-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1384) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c1_scl.i2c1_scl */
 			K2G_CORE_IOPAD(0x1388) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c1_sda.i2c1_sda */
 		>;
 	};
 
-	user_leds: pinmux_user_leds {
+	user_leds: user-leds-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x102c) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE3)	/* gpmc_ad11.gpio0_11 */
 			K2G_CORE_IOPAD(0x1030) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE3)	/* gpmc_ad12.gpio0_12 */
@@ -283,7 +283,7 @@ K2G_CORE_IOPAD(0x11bc) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE3)	/* spi2_scsn1.g
 		>;
 	};
 
-	emac_pins: pinmux_emac_pins {
+	emac_pins: emac-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x113C) (BUFFER_CLASS_D | PULL_DISABLE | MUX_MODE1)	/* MII_RXD1.RGMII_RXD1 */
 			K2G_CORE_IOPAD(0x1138) (BUFFER_CLASS_D | PULL_DISABLE | MUX_MODE1)	/* MII_RXD2.RGMII_RXD2 */
@@ -300,7 +300,7 @@ K2G_CORE_IOPAD(0x1144) (BUFFER_CLASS_D | PULL_DISABLE | MUX_MODE1)	/* MII_RXDV.R
 		>;
 	};
 
-	mdio_pins: pinmux_mdio_pins {
+	mdio_pins: mdio-pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x118C) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* MDIO_CLK.MDIO_CLK */
 			K2G_CORE_IOPAD(0x1188) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* MDIO_DATA.MDIO_DATA */
diff --git a/arch/arm/boot/dts/keystone-k2l.dtsi b/arch/arm/boot/dts/keystone-k2l.dtsi
--- a/arch/arm/boot/dts/keystone-k2l.dtsi
+++ b/arch/arm/boot/dts/keystone-k2l.dtsi
@@ -116,42 +116,42 @@ k2l_pmx: pinmux@2620690 {
 			pinctrl-single,function-mask = <0x1>;
 			status = "disabled";
 
-			uart3_emifa_pins: pinmux_uart3_emifa_pins {
+			uart3_emifa_pins: uart3-emifa-pins {
 				pinctrl-single,bits = <
 					/* UART3_EMIFA_SEL */
 					0x0 0x0  0xc0
 				>;
 			};
 
-			uart2_emifa_pins: pinmux_uart2_emifa_pins {
+			uart2_emifa_pins: uart2-emifa-pins {
 			pinctrl-single,bits = <
 					/* UART2_EMIFA_SEL */
 					0x0 0x0  0x30
 				>;
 			};
 
-			uart01_spi2_pins: pinmux_uart01_spi2_pins {
+			uart01_spi2_pins: uart01-spi2-pins {
 				pinctrl-single,bits = <
 					/* UART01_SPI2_SEL */
 					0x0 0x0 0x4
 				>;
 			};
 
-			dfesync_rp1_pins: pinmux_dfesync_rp1_pins{
+			dfesync_rp1_pins: dfesync-rp1-pins{
 				pinctrl-single,bits = <
 					/* DFESYNC_RP1_SEL */
 					0x0 0x0 0x2
 				>;
 			};
 
-			avsif_pins: pinmux_avsif_pins {
+			avsif_pins: avsif-pins {
 				pinctrl-single,bits = <
 					/* AVSIF_SEL */
 					0x0 0x0 0x1
 				>;
 			};
 
-			gpio_emu_pins: pinmux_gpio_emu_pins {
+			gpio_emu_pins: gpio-emu-pins {
 				pinctrl-single,bits = <
 				/*
 				 * GPIO_EMU_SEL[31]: 0-GPIO31, 1-EMU33
@@ -174,7 +174,7 @@ gpio_emu_pins: pinmux_gpio_emu_pins {
 				>;
 			};
 
-			gpio_timio_pins: pinmux_gpio_timio_pins {
+			gpio_timio_pins: gpio-timio-pins {
 				pinctrl-single,bits = <
 				/*
 				 * GPIO_TIMIO_SEL[15]: 0-GPIO15, 1-TIMO7
@@ -194,7 +194,7 @@ gpio_timio_pins: pinmux_gpio_timio_pins {
 				>;
 			};
 
-			gpio_spi2cs_pins: pinmux_gpio_spi2cs_pins {
+			gpio_spi2cs_pins: gpio-spi2cs-pins {
 				pinctrl-single,bits = <
 				/*
 				 * GPIO_SPI2CS_SEL[3]: 0-GPIO3, 1-SPI2CS4
@@ -206,7 +206,7 @@ gpio_spi2cs_pins: pinmux_gpio_spi2cs_pins {
 				>;
 			};
 
-			gpio_dfeio_pins: pinmux_gpio_dfeio_pins {
+			gpio_dfeio_pins: gpio-dfeio-pins {
 				pinctrl-single,bits = <
 				/*
 				 * GPIO_DFEIO_SEL[31]: 0-DFEIO17, 1-GPIO63
@@ -230,7 +230,7 @@ gpio_dfeio_pins: pinmux_gpio_dfeio_pins {
 				>;
 			};
 
-			gpio_emifa_pins: pinmux_gpio_emifa_pins {
+			gpio_emifa_pins: gpio-emifa-pins {
 				pinctrl-single,bits = <
 				/*
 				 * GPIO_EMIFA_SEL[15]: 0-EMIFA17, 1-GPIO47
-- 
2.40.1
