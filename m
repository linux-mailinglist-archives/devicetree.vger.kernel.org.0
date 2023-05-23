Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB9770D609
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 09:52:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235351AbjEWHwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 03:52:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235469AbjEWHwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 03:52:34 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E112D19B
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 00:52:05 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 4F12080B5;
        Tue, 23 May 2023 07:50:41 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: Unify pinctrl-single pin group nodes for hisilicon
Date:   Tue, 23 May 2023 10:50:34 +0300
Message-Id: <20230523075036.52633-1-tony@atomide.com>
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

Let's also correct the pinctrl controller #size-cells to 0 while at it
and drop unnecessary ranges property.

Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/hi3620-hi4511.dts | 130 ++++++++++++++--------------
 arch/arm/boot/dts/hi3620.dtsi       |   6 +-
 2 files changed, 67 insertions(+), 69 deletions(-)

diff --git a/arch/arm/boot/dts/hi3620-hi4511.dts b/arch/arm/boot/dts/hi3620-hi4511.dts
--- a/arch/arm/boot/dts/hi3620-hi4511.dts
+++ b/arch/arm/boot/dts/hi3620-hi4511.dts
@@ -66,119 +66,119 @@ pmx0: pinmux@803000 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&board_pmx_pins>;
 
-			board_pmx_pins: board_pmx_pins {
+			board_pmx_pins: board-pins {
 				pinctrl-single,pins = <
 					0x008 0x0	/* GPIO -- eFUSE_DOUT */
 					0x100 0x0	/* USIM_CLK & USIM_DATA (IOMG63) */
 				>;
 			};
-			uart0_pmx_func: uart0_pmx_func {
+			uart0_pmx_func: uart0-pins {
 				pinctrl-single,pins = <
 					0x0f0 0x0
 					0x0f4 0x0	/* UART0_RX & UART0_TX */
 				>;
 			};
-			uart0_pmx_idle: uart0_pmx_idle {
+			uart0_pmx_idle: uart0-idle-pins {
 				pinctrl-single,pins = <
 					/*0x0f0 0x1*/	/* UART0_CTS & UART0_RTS */
 					0x0f4 0x1	/* UART0_RX & UART0_TX */
 				>;
 			};
-			uart1_pmx_func: uart1_pmx_func {
+			uart1_pmx_func: uart1-pins {
 				pinctrl-single,pins = <
 					0x0f8 0x0	/* UART1_CTS & UART1_RTS (IOMG61) */
 					0x0fc 0x0	/* UART1_RX & UART1_TX (IOMG62) */
 				>;
 			};
-			uart1_pmx_idle: uart1_pmx_idle {
+			uart1_pmx_idle: uart1-idle-pins {
 				pinctrl-single,pins = <
 					0x0f8 0x1	/* GPIO (IOMG61) */
 					0x0fc 0x1	/* GPIO (IOMG62) */
 				>;
 			};
-			uart2_pmx_func: uart2_pmx_func {
+			uart2_pmx_func: uart2-pins {
 				pinctrl-single,pins = <
 					0x104 0x2	/* UART2_RXD (IOMG96) */
 					0x108 0x2	/* UART2_TXD (IOMG64) */
 				>;
 			};
-			uart2_pmx_idle: uart2_pmx_idle {
+			uart2_pmx_idle: uart2-idle-pins {
 				pinctrl-single,pins = <
 					0x104 0x1	/* GPIO (IOMG96) */
 					0x108 0x1	/* GPIO (IOMG64) */
 				>;
 			};
-			uart3_pmx_func: uart3_pmx_func {
+			uart3_pmx_func: uart3-pins {
 				pinctrl-single,pins = <
 					0x160 0x2	/* UART3_CTS & UART3_RTS (IOMG85) */
 					0x164 0x2	/* UART3_RXD & UART3_TXD (IOMG86) */
 				>;
 			};
-			uart3_pmx_idle: uart3_pmx_idle {
+			uart3_pmx_idle: uart3-idle-pins {
 				pinctrl-single,pins = <
 					0x160 0x1	/* GPIO (IOMG85) */
 					0x164 0x1	/* GPIO (IOMG86) */
 				>;
 			};
-			uart4_pmx_func: uart4_pmx_func {
+			uart4_pmx_func: uart4-pins {
 				pinctrl-single,pins = <
 					0x168 0x0	/* UART4_CTS & UART4_RTS (IOMG87) */
 					0x16c 0x0	/* UART4_RXD (IOMG88) */
 					0x170 0x0	/* UART4_TXD (IOMG93) */
 				>;
 			};
-			uart4_pmx_idle: uart4_pmx_idle {
+			uart4_pmx_idle: uart4-idle-pins {
 				pinctrl-single,pins = <
 					0x168 0x1	/* GPIO (IOMG87) */
 					0x16c 0x1	/* GPIO (IOMG88) */
 					0x170 0x1	/* GPIO (IOMG93) */
 				>;
 			};
-			i2c0_pmx_func: i2c0_pmx_func {
+			i2c0_pmx_func: i2c0-pins {
 				pinctrl-single,pins = <
 					0x0b4 0x0	/* I2C0_SCL & I2C0_SDA (IOMG45) */
 				>;
 			};
-			i2c0_pmx_idle: i2c0_pmx_idle {
+			i2c0_pmx_idle: i2c0-idle-pins {
 				pinctrl-single,pins = <
 					0x0b4 0x1	/* GPIO (IOMG45) */
 				>;
 			};
-			i2c1_pmx_func: i2c1_pmx_func {
+			i2c1_pmx_func: i2c1-pins {
 				pinctrl-single,pins = <
 					0x0b8 0x0	/* I2C1_SCL & I2C1_SDA (IOMG46) */
 				>;
 			};
-			i2c1_pmx_idle: i2c1_pmx_idle {
+			i2c1_pmx_idle: i2c1-idle-pins {
 				pinctrl-single,pins = <
 					0x0b8 0x1	/* GPIO (IOMG46) */
 				>;
 			};
-			i2c2_pmx_func: i2c2_pmx_func {
+			i2c2_pmx_func: i2c2-pins {
 				pinctrl-single,pins = <
 					0x068 0x0	/* I2C2_SCL (IOMG26) */
 					0x06c 0x0	/* I2C2_SDA (IOMG27) */
 				>;
 			};
-			i2c2_pmx_idle: i2c2_pmx_idle {
+			i2c2_pmx_idle: i2c2-idle-pins {
 				pinctrl-single,pins = <
 					0x068 0x1	/* GPIO (IOMG26) */
 					0x06c 0x1	/* GPIO (IOMG27) */
 				>;
 			};
-			i2c3_pmx_func: i2c3_pmx_func {
+			i2c3_pmx_func: i2c3-pins {
 				pinctrl-single,pins = <
 					0x050 0x2	/* I2C3_SCL (IOMG20) */
 					0x054 0x2	/* I2C3_SDA (IOMG21) */
 				>;
 			};
-			i2c3_pmx_idle: i2c3_pmx_idle {
+			i2c3_pmx_idle: i2c3-idle-pins {
 				pinctrl-single,pins = <
 					0x050 0x1	/* GPIO (IOMG20) */
 					0x054 0x1	/* GPIO (IOMG21) */
 				>;
 			};
-			spi0_pmx_func: spi0_pmx_func {
+			spi0_pmx_func: spi0-pins {
 				pinctrl-single,pins = <
 					0x0d4 0x0	/* SPI0_CLK/SPI0_DI/SPI0_DO (IOMG53) */
 					0x0d8 0x0	/* SPI0_CS0 (IOMG54) */
@@ -187,7 +187,7 @@ spi0_pmx_func: spi0_pmx_func {
 					0x0e4 0x0	/* SPI0_CS3 (IOMG57) */
 				>;
 			};
-			spi0_pmx_idle: spi0_pmx_idle {
+			spi0_pmx_idle: spi0-idle-pins {
 				pinctrl-single,pins = <
 					0x0d4 0x1	/* GPIO (IOMG53) */
 					0x0d8 0x1	/* GPIO (IOMG54) */
@@ -196,21 +196,21 @@ spi0_pmx_idle: spi0_pmx_idle {
 					0x0e4 0x1	/* GPIO (IOMG57) */
 				>;
 			};
-			spi1_pmx_func: spi1_pmx_func {
+			spi1_pmx_func: spi1-pins {
 				pinctrl-single,pins = <
 					0x184 0x0	/* SPI1_CLK/SPI1_DI (IOMG98) */
 					0x0e8 0x0	/* SPI1_DO (IOMG58) */
 					0x0ec 0x0	/* SPI1_CS (IOMG95) */
 				>;
 			};
-			spi1_pmx_idle: spi1_pmx_idle {
+			spi1_pmx_idle: spi1-idle-pins {
 				pinctrl-single,pins = <
 					0x184 0x1	/* GPIO (IOMG98) */
 					0x0e8 0x1	/* GPIO (IOMG58) */
 					0x0ec 0x1	/* GPIO (IOMG95) */
 				>;
 			};
-			kpc_pmx_func: kpc_pmx_func {
+			kpc_pmx_func: kpc-pins {
 				pinctrl-single,pins = <
 					0x12c 0x0	/* KEY_IN0 (IOMG73) */
 					0x130 0x0	/* KEY_IN1 (IOMG74) */
@@ -220,7 +220,7 @@ kpc_pmx_func: kpc_pmx_func {
 					0x114 0x0	/* KEY_OUT2 (IOMG67) */
 				>;
 			};
-			kpc_pmx_idle: kpc_pmx_idle {
+			kpc_pmx_idle: kpc-idle-pins {
 				pinctrl-single,pins = <
 					0x12c 0x1	/* GPIO (IOMG73) */
 					0x130 0x1	/* GPIO (IOMG74) */
@@ -230,13 +230,13 @@ kpc_pmx_idle: kpc_pmx_idle {
 					0x114 0x1	/* GPIO (IOMG67) */
 				>;
 			};
-			gpio_key_func: gpio_key_func {
+			gpio_key_func: gpio-key-pins {
 				pinctrl-single,pins = <
 					0x10c 0x1	/* KEY_OUT0/GPIO (IOMG65) */
 					0x130 0x1	/* KEY_IN1/GPIO (IOMG74) */
 				>;
 			};
-			emmc_pmx_func: emmc_pmx_func {
+			emmc_pmx_func: emmc-pins {
 				pinctrl-single,pins = <
 					0x030 0x2	/* eMMC_CMD/eMMC_CLK (IOMG12) */
 					0x018 0x0	/* NAND_CS3_N (IOMG6) */
@@ -245,7 +245,7 @@ emmc_pmx_func: emmc_pmx_func {
 					0x02c 0x2	/* eMMC_DATA[0:7] (IOMG10) */
 				>;
 			};
-			emmc_pmx_idle: emmc_pmx_idle {
+			emmc_pmx_idle: emmc-idle-pins {
 				pinctrl-single,pins = <
 					0x030 0x0	/* GPIO (IOMG12) */
 					0x018 0x1	/* GPIO (IOMG6) */
@@ -254,19 +254,19 @@ emmc_pmx_idle: emmc_pmx_idle {
 					0x02c 0x1	/* GPIO (IOMG10) */
 				>;
 			};
-			sd_pmx_func: sd_pmx_func {
+			sd_pmx_func: sd-pins {
 				pinctrl-single,pins = <
 					0x0bc 0x0	/* SD_CLK/SD_CMD/SD_DATA0/SD_DATA1/SD_DATA2 (IOMG47) */
 					0x0c0 0x0	/* SD_DATA3 (IOMG48) */
 				>;
 			};
-			sd_pmx_idle: sd_pmx_idle {
+			sd_pmx_idle: sd-idle-pins {
 				pinctrl-single,pins = <
 					0x0bc 0x1	/* GPIO (IOMG47) */
 					0x0c0 0x1	/* GPIO (IOMG48) */
 				>;
 			};
-			nand_pmx_func: nand_pmx_func {
+			nand_pmx_func: nand-pins {
 				pinctrl-single,pins = <
 					0x00c 0x0	/* NAND_ALE/NAND_CLE/.../NAND_DATA[0:7] (IOMG3) */
 					0x010 0x0	/* NAND_CS1_N (IOMG4) */
@@ -279,7 +279,7 @@ nand_pmx_func: nand_pmx_func {
 					0x02c 0x0	/* NAND_DATA[8:15] (IOMG10) */
 				>;
 			};
-			nand_pmx_idle: nand_pmx_idle {
+			nand_pmx_idle: nand-idle-pins {
 				pinctrl-single,pins = <
 					0x00c 0x1	/* GPIO (IOMG3) */
 					0x010 0x1	/* GPIO (IOMG4) */
@@ -292,17 +292,17 @@ nand_pmx_idle: nand_pmx_idle {
 					0x02c 0x1	/* GPIO (IOMG10) */
 				>;
 			};
-			sdio_pmx_func: sdio_pmx_func {
+			sdio_pmx_func: sdio-pins {
 				pinctrl-single,pins = <
 					0x0c4 0x0	/* SDIO_CLK/SDIO_CMD/SDIO_DATA[0:3] (IOMG49) */
 				>;
 			};
-			sdio_pmx_idle: sdio_pmx_idle {
+			sdio_pmx_idle: sdio-idle-pins {
 				pinctrl-single,pins = <
 					0x0c4 0x1	/* GPIO (IOMG49) */
 				>;
 			};
-			audio_out_pmx_func: audio_out_pmx_func {
+			audio_out_pmx_func: audio-out-pins {
 				pinctrl-single,pins = <
 					0x0f0 0x1	/* GPIO (IOMG59), audio spk & earphone */
 				>;
@@ -314,7 +314,7 @@ pmx1: pinmux@803800 {
 			pinctrl-0 = <	&board_pu_pins &board_pd_pins &board_pd_ps_pins
 					&board_np_pins &board_ps_pins &kpc_cfg_func
 					&audio_out_cfg_func>;
-			board_pu_pins: board_pu_pins {
+			board_pu_pins: board-pu-pins {
 				pinctrl-single,pins = <
 					0x014 0		/* GPIO_158 (IOCFG2) */
 					0x018 0		/* GPIO_159 (IOCFG3) */
@@ -324,7 +324,7 @@ board_pu_pins: board_pu_pins {
 				pinctrl-single,bias-pulldown = <0 2 0 2>;
 				pinctrl-single,bias-pullup = <1 1 0 1>;
 			};
-			board_pd_pins: board_pd_pins {
+			board_pd_pins: board-pd-pins {
 				pinctrl-single,pins = <
 					0x038 0		/* eFUSE_DOUT (IOCFG11) */
 					0x150 0		/* ISP_GPIO8 (IOCFG93) */
@@ -333,7 +333,7 @@ board_pd_pins: board_pd_pins {
 				pinctrl-single,bias-pulldown = <2 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			board_pd_ps_pins: board_pd_ps_pins {
+			board_pd_ps_pins: board-pd-ps-pins {
 				pinctrl-single,pins = <
 					0x2d8 0		/* CLK_OUT0 (IOCFG190) */
 					0x004 0		/* PMU_SPI_DATA (IOCFG192) */
@@ -342,21 +342,21 @@ board_pd_ps_pins: board_pd_ps_pins {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			board_np_pins: board_np_pins {
+			board_np_pins: board-np-pins {
 				pinctrl-single,pins = <
 					0x24c 0		/* KEYPAD_OUT7 (IOCFG155) */
 				>;
 				pinctrl-single,bias-pulldown = <0 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			board_ps_pins: board_ps_pins {
+			board_ps_pins: board-ps-pins {
 				pinctrl-single,pins = <
 					0x000 0		/* PMU_SPI_CLK (IOCFG191) */
 					0x008 0		/* PMU_SPI_CS_N (IOCFG193) */
 				>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			uart0_cfg_func: uart0_cfg_func {
+			uart0_cfg_func: uart0-cfg-pins {
 				pinctrl-single,pins = <
 					0x208 0		/* UART0_RXD (IOCFG138) */
 					0x20c 0		/* UART0_TXD (IOCFG139) */
@@ -364,7 +364,7 @@ uart0_cfg_func: uart0_cfg_func {
 				pinctrl-single,bias-pulldown = <0 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			uart0_cfg_idle: uart0_cfg_idle {
+			uart0_cfg_idle: uart0-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x208 0		/* UART0_RXD (IOCFG138) */
 					0x20c 0		/* UART0_TXD (IOCFG139) */
@@ -372,7 +372,7 @@ uart0_cfg_idle: uart0_cfg_idle {
 				pinctrl-single,bias-pulldown = <2 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			uart1_cfg_func: uart1_cfg_func {
+			uart1_cfg_func: uart1-cfg-pins {
 				pinctrl-single,pins = <
 					0x210 0		/* UART1_CTS (IOCFG140) */
 					0x214 0		/* UART1_RTS (IOCFG141) */
@@ -382,7 +382,7 @@ uart1_cfg_func: uart1_cfg_func {
 				pinctrl-single,bias-pulldown = <0 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			uart1_cfg_idle: uart1_cfg_idle {
+			uart1_cfg_idle: uart1-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x210 0		/* UART1_CTS (IOCFG140) */
 					0x214 0		/* UART1_RTS (IOCFG141) */
@@ -392,7 +392,7 @@ uart1_cfg_idle: uart1_cfg_idle {
 				pinctrl-single,bias-pulldown = <2 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			uart2_cfg_func: uart2_cfg_func {
+			uart2_cfg_func: uart2-cfg-pins {
 				pinctrl-single,pins = <
 					0x220 0		/* UART2_CTS (IOCFG144) */
 					0x224 0		/* UART2_RTS (IOCFG145) */
@@ -402,7 +402,7 @@ uart2_cfg_func: uart2_cfg_func {
 				pinctrl-single,bias-pulldown = <0 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			uart2_cfg_idle: uart2_cfg_idle {
+			uart2_cfg_idle: uart2-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x220 0		/* GPIO (IOCFG144) */
 					0x224 0		/* GPIO (IOCFG145) */
@@ -412,7 +412,7 @@ uart2_cfg_idle: uart2_cfg_idle {
 				pinctrl-single,bias-pulldown = <2 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			uart3_cfg_func: uart3_cfg_func {
+			uart3_cfg_func: uart3-cfg-pins {
 				pinctrl-single,pins = <
 					0x294 0		/* UART3_CTS (IOCFG173) */
 					0x298 0		/* UART3_RTS (IOCFG174) */
@@ -422,7 +422,7 @@ uart3_cfg_func: uart3_cfg_func {
 				pinctrl-single,bias-pulldown = <0 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			uart3_cfg_idle: uart3_cfg_idle {
+			uart3_cfg_idle: uart3-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x294 0		/* UART3_CTS (IOCFG173) */
 					0x298 0		/* UART3_RTS (IOCFG174) */
@@ -432,7 +432,7 @@ uart3_cfg_idle: uart3_cfg_idle {
 				pinctrl-single,bias-pulldown = <2 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			uart4_cfg_func: uart4_cfg_func {
+			uart4_cfg_func: uart4-cfg-pins {
 				pinctrl-single,pins = <
 					0x2a4 0		/* UART4_CTS (IOCFG177) */
 					0x2a8 0		/* UART4_RTS (IOCFG178) */
@@ -442,7 +442,7 @@ uart4_cfg_func: uart4_cfg_func {
 				pinctrl-single,bias-pulldown = <0 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			i2c0_cfg_func: i2c0_cfg_func {
+			i2c0_cfg_func: i2c0-cfg-pins {
 				pinctrl-single,pins = <
 					0x17c 0		/* I2C0_SCL (IOCFG103) */
 					0x180 0		/* I2C0_SDA (IOCFG104) */
@@ -451,7 +451,7 @@ i2c0_cfg_func: i2c0_cfg_func {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			i2c1_cfg_func: i2c1_cfg_func {
+			i2c1_cfg_func: i2c1-cfg-pins {
 				pinctrl-single,pins = <
 					0x184 0		/* I2C1_SCL (IOCFG105) */
 					0x188 0		/* I2C1_SDA (IOCFG106) */
@@ -460,7 +460,7 @@ i2c1_cfg_func: i2c1_cfg_func {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			i2c2_cfg_func: i2c2_cfg_func {
+			i2c2_cfg_func: i2c2-cfg-pins {
 				pinctrl-single,pins = <
 					0x118 0		/* I2C2_SCL (IOCFG79) */
 					0x11c 0		/* I2C2_SDA (IOCFG80) */
@@ -469,7 +469,7 @@ i2c2_cfg_func: i2c2_cfg_func {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			i2c3_cfg_func: i2c3_cfg_func {
+			i2c3_cfg_func: i2c3-cfg-pins {
 				pinctrl-single,pins = <
 					0x100 0		/* I2C3_SCL (IOCFG73) */
 					0x104 0		/* I2C3_SDA (IOCFG74) */
@@ -478,7 +478,7 @@ i2c3_cfg_func: i2c3_cfg_func {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			spi0_cfg_func1: spi0_cfg_func1 {
+			spi0_cfg_func1: spi0-cfg-func1-pins {
 				pinctrl-single,pins = <
 					0x1d4 0		/* SPI0_CLK (IOCFG125) */
 					0x1d8 0		/* SPI0_DI (IOCFG126) */
@@ -488,7 +488,7 @@ spi0_cfg_func1: spi0_cfg_func1 {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			spi0_cfg_func2: spi0_cfg_func2 {
+			spi0_cfg_func2: spi0-cfg-func2-pins {
 				pinctrl-single,pins = <
 					0x1e0 0		/* SPI0_CS0 (IOCFG128) */
 					0x1e4 0		/* SPI0_CS1 (IOCFG129) */
@@ -499,7 +499,7 @@ spi0_cfg_func2: spi0_cfg_func2 {
 				pinctrl-single,bias-pullup = <1 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			spi1_cfg_func1: spi1_cfg_func1 {
+			spi1_cfg_func1: spi1-cfg-func1-pins {
 				pinctrl-single,pins = <
 					0x1f0 0		/* SPI1_CLK (IOCFG132) */
 					0x1f4 0		/* SPI1_DI (IOCFG133) */
@@ -509,7 +509,7 @@ spi1_cfg_func1: spi1_cfg_func1 {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			spi1_cfg_func2: spi1_cfg_func2 {
+			spi1_cfg_func2: spi1-cfg-func2-pins {
 				pinctrl-single,pins = <
 					0x1fc 0		/* SPI1_CS (IOCFG135) */
 				>;
@@ -517,7 +517,7 @@ spi1_cfg_func2: spi1_cfg_func2 {
 				pinctrl-single,bias-pullup = <1 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			kpc_cfg_func: kpc_cfg_func {
+			kpc_cfg_func: kpc-cfg-pins {
 				pinctrl-single,pins = <
 					0x250 0		/* KEY_IN0 (IOCFG156) */
 					0x254 0		/* KEY_IN1 (IOCFG157) */
@@ -529,7 +529,7 @@ kpc_cfg_func: kpc_cfg_func {
 				pinctrl-single,bias-pulldown = <2 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 			};
-			emmc_cfg_func: emmc_cfg_func {
+			emmc_cfg_func: emmc-cfg-pins {
 				pinctrl-single,pins = <
 					0x0ac 0		/* eMMC_CMD (IOCFG40) */
 					0x0b0 0		/* eMMC_CLK (IOCFG41) */
@@ -549,7 +549,7 @@ emmc_cfg_func: emmc_cfg_func {
 				pinctrl-single,bias-pullup = <1 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			sd_cfg_func1: sd_cfg_func1 {
+			sd_cfg_func1: sd-cfg-func1-pins {
 				pinctrl-single,pins = <
 					0x18c 0		/* SD_CLK (IOCFG107) */
 					0x190 0		/* SD_CMD (IOCFG108) */
@@ -558,7 +558,7 @@ sd_cfg_func1: sd_cfg_func1 {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			sd_cfg_func2: sd_cfg_func2 {
+			sd_cfg_func2: sd-cfg-func2-pins {
 				pinctrl-single,pins = <
 					0x194 0		/* SD_DATA0 (IOCFG109) */
 					0x198 0		/* SD_DATA1 (IOCFG110) */
@@ -569,7 +569,7 @@ sd_cfg_func2: sd_cfg_func2 {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x70 0xf0>;
 			};
-			nand_cfg_func1: nand_cfg_func1 {
+			nand_cfg_func1: nand-cfg-func1-pins {
 				pinctrl-single,pins = <
 					0x03c 0		/* NAND_ALE (IOCFG12) */
 					0x040 0		/* NAND_CLE (IOCFG13) */
@@ -594,7 +594,7 @@ nand_cfg_func1: nand_cfg_func1 {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			nand_cfg_func2: nand_cfg_func2 {
+			nand_cfg_func2: nand-cfg-func2-pins {
 				pinctrl-single,pins = <
 					0x044 0		/* NAND_RE_N (IOCFG14) */
 					0x048 0		/* NAND_WE_N (IOCFG15) */
@@ -611,7 +611,7 @@ nand_cfg_func2: nand_cfg_func2 {
 				pinctrl-single,bias-pullup = <1 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			sdio_cfg_func: sdio_cfg_func {
+			sdio_cfg_func: sdio-cfg-pins {
 				pinctrl-single,pins = <
 					0x1a4 0		/* SDIO0_CLK (IOCG113) */
 					0x1a8 0		/* SDIO0_CMD (IOCG114) */
@@ -624,7 +624,7 @@ sdio_cfg_func: sdio_cfg_func {
 				pinctrl-single,bias-pullup = <0 1 0 1>;
 				pinctrl-single,drive-strength = <0x30 0xf0>;
 			};
-			audio_out_cfg_func: audio_out_cfg_func {
+			audio_out_cfg_func: audio-out-cfg-pins {
 				pinctrl-single,pins = <
 					0x200 0		/* GPIO (IOCFG136) */
 					0x204 0		/* GPIO (IOCFG137) */
diff --git a/arch/arm/boot/dts/hi3620.dtsi b/arch/arm/boot/dts/hi3620.dtsi
--- a/arch/arm/boot/dts/hi3620.dtsi
+++ b/arch/arm/boot/dts/hi3620.dtsi
@@ -545,10 +545,9 @@ pmx0: pinmux@803000 {
 			compatible = "pinctrl-single";
 			reg = <0x803000 0x188>;
 			#address-cells = <1>;
-			#size-cells = <1>;
+			#size-cells = <0>;
 			#pinctrl-cells = <1>;
 			#gpio-range-cells = <3>;
-			ranges;
 
 			pinctrl-single,register-width = <32>;
 			pinctrl-single,function-mask = <7>;
@@ -567,9 +566,8 @@ pmx1: pinmux@803800 {
 			compatible = "pinconf-single";
 			reg = <0x803800 0x2dc>;
 			#address-cells = <1>;
-			#size-cells = <1>;
+			#size-cells = <0>;
 			#pinctrl-cells = <1>;
-			ranges;
 
 			pinctrl-single,register-width = <32>;
 		};
-- 
2.40.1
