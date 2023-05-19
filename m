Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EA7B709055
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 09:25:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbjESHZw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 03:25:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjESHZv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 03:25:51 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CD2EF109
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 00:25:50 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id D3E9F80F9;
        Fri, 19 May 2023 07:25:48 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: Unify pinctrl-single pin group nodes for stingray
Date:   Fri, 19 May 2023 10:25:21 +0300
Message-Id: <20230519072522.52263-1-tony@atomide.com>
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

We want to unify the pinctrl-single pin group nodes as these will add
make dtbs checks errors when pinctrl-single yaml binding is merged.

Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 .../broadcom/stingray/stingray-pinctrl.dtsi   | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
@@ -56,14 +56,14 @@ range: gpio-range {
 			};
 
 			/* pinctrl functions */
-			tsio_pins: pinmux_gpio_14 {
+			tsio_pins: gpio-14-pins {
 				pinctrl-single,pins = <
 					0x038 MODE_NITRO /* tsio_0 */
 					0x03c MODE_NITRO /* tsio_1 */
 				>;
 			};
 
-			nor_pins: pinmux_pnor_adv_n {
+			nor_pins: pnor-adv-n-pins {
 				pinctrl-single,pins = <
 					0x0ac MODE_PNOR /* nand_ce1_n */
 					0x0b0 MODE_PNOR /* nand_ce0_n */
@@ -119,7 +119,7 @@ nor_pins: pinmux_pnor_adv_n {
 				>;
 			};
 
-			nand_pins: pinmux_nand_ce1_n {
+			nand_pins: nand-ce1-n-pins {
 				pinctrl-single,pins = <
 					0x0ac MODE_NAND /* nand_ce1_n */
 					0x0b0 MODE_NAND /* nand_ce0_n */
@@ -148,59 +148,59 @@ nand_pins: pinmux_nand_ce1_n {
 				>;
 			};
 
-			pwm0_pins: pinmux_pwm_0 {
+			pwm0_pins: pwm-0-pins {
 				pinctrl-single,pins = <
 					0x10c MODE_NITRO
 				>;
 			};
 
-			pwm1_pins: pinmux_pwm_1 {
+			pwm1_pins: pwm-1-pins {
 				pinctrl-single,pins = <
 					0x110 MODE_NITRO
 				>;
 			};
 
-			pwm2_pins: pinmux_pwm_2 {
+			pwm2_pins: pwm-2-pins {
 				pinctrl-single,pins = <
 					0x114 MODE_NITRO
 				>;
 			};
 
-			pwm3_pins: pinmux_pwm_3 {
+			pwm3_pins: pwm-3-pins {
 				pinctrl-single,pins = <
 					0x118 MODE_NITRO
 				>;
 			};
 
-			dbu_rxd_pins: pinmux_uart1_sin_nitro {
+			dbu_rxd_pins: uart1-sin-nitro-pins {
 				pinctrl-single,pins = <
 					0x11c MODE_NITRO /* dbu_rxd */
 					0x120 MODE_NITRO /* dbu_txd */
 				>;
 			};
 
-			uart1_pins: pinmux_uart1_sin_nand {
+			uart1_pins: uart1-sin-nand-pins {
 				pinctrl-single,pins = <
 					0x11c MODE_NAND /* uart1_sin */
 					0x120 MODE_NAND /* uart1_out */
 				>;
 			};
 
-			uart2_pins: pinmux_uart2_sin {
+			uart2_pins: uart2-sin-pins {
 				pinctrl-single,pins = <
 					0x124 MODE_NITRO /* uart2_sin */
 					0x128 MODE_NITRO /* uart2_out */
 				>;
 			};
 
-			uart3_pins: pinmux_uart3_sin {
+			uart3_pins: uart3-sin-pins {
 				pinctrl-single,pins = <
 					0x12c MODE_NITRO /* uart3_sin */
 					0x130 MODE_NITRO /* uart3_out */
 				>;
 			};
 
-			i2s_pins: pinmux_i2s_bitclk {
+			i2s_pins: i2s-bitclk-pins {
 				pinctrl-single,pins = <
 					0x134 MODE_NITRO /* i2s_bitclk */
 					0x138 MODE_NITRO /* i2s_sdout */
@@ -229,21 +229,21 @@ mdio_pins: pinumx_ext_mdio {
 				>;
 			};
 
-			i2c0_pins: pinmux_i2c0_sda {
+			i2c0_pins: i2c0-sda-pins {
 				pinctrl-single,pins = <
 					0x16c MODE_NITRO /* i2c0_sda */
 					0x170 MODE_NITRO /* i2c0_scl */
 				>;
 			};
 
-			i2c1_pins: pinmux_i2c1_sda {
+			i2c1_pins: i2c1-sda-pins {
 				pinctrl-single,pins = <
 					0x174 MODE_NITRO /* i2c1_sda */
 					0x178 MODE_NITRO /* i2c1_scl */
 				>;
 			};
 
-			sdio0_pins: pinmux_sdio0_cd_l {
+			sdio0_pins: sdio0-cd-l-pins {
 				pinctrl-single,pins = <
 					0x17c MODE_NITRO /* sdio0_cd_l */
 					0x180 MODE_NITRO /* sdio0_clk_sdcard */
@@ -262,7 +262,7 @@ sdio0_pins: pinmux_sdio0_cd_l {
 				>;
 			};
 
-			sdio1_pins: pinmux_sdio1_cd_l {
+			sdio1_pins: sdio1-cd-l-pins {
 				pinctrl-single,pins = <
 					0x1b4 MODE_NITRO /* sdio1_cd_l */
 					0x1b8 MODE_NITRO /* sdio1_clk_sdcard */
@@ -281,7 +281,7 @@ sdio1_pins: pinmux_sdio1_cd_l {
 				>;
 			};
 
-			spi0_pins: pinmux_spi0_sck_nand {
+			spi0_pins: spi0-sck-nand-pins {
 				pinctrl-single,pins = <
 					0x1ec MODE_NITRO /* spi0_sck */
 					0x1f0 MODE_NITRO /* spi0_rxd */
@@ -290,7 +290,7 @@ spi0_pins: pinmux_spi0_sck_nand {
 				>;
 			};
 
-			spi1_pins: pinmux_spi1_sck_nand {
+			spi1_pins: spi1-sck-nand-pins {
 				pinctrl-single,pins = <
 					0x1fc MODE_NITRO /* spi1_sck */
 					0x200 MODE_NITRO /* spi1_rxd */
@@ -299,7 +299,7 @@ spi1_pins: pinmux_spi1_sck_nand {
 				>;
 			};
 
-			nuart_pins: pinmux_uart0_sin_nitro {
+			nuart_pins: uart0-sin-nitro-pins {
 				pinctrl-single,pins = <
 					0x20c MODE_NITRO /* nuart_rxd */
 					0x210 MODE_NITRO /* nuart_txd */
@@ -319,7 +319,7 @@ uart0_pins: pinumux_uart0_sin_nand {
 				>;
 			};
 
-			drdu2_pins: pinmux_drdu2_overcurrent {
+			drdu2_pins: drdu2-overcurrent-pins {
 				pinctrl-single,pins = <
 					0x22c MODE_NITRO /* drdu2_overcurrent */
 					0x230 MODE_NITRO /* drdu2_vbus_ppc */
@@ -328,7 +328,7 @@ drdu2_pins: pinmux_drdu2_overcurrent {
 				>;
 			};
 
-			drdu3_pins: pinmux_drdu3_overcurrent {
+			drdu3_pins: drdu3-overcurrent-pins {
 				pinctrl-single,pins = <
 					0x23c MODE_NITRO /* drdu3_overcurrent */
 					0x240 MODE_NITRO /* drdu3_vbus_ppc */
@@ -337,7 +337,7 @@ drdu3_pins: pinmux_drdu3_overcurrent {
 				>;
 			};
 
-			usb3h_pins: pinmux_usb3h_overcurrent {
+			usb3h_pins: usb3h-overcurrent-pins {
 				pinctrl-single,pins = <
 					0x24c MODE_NITRO /* usb3h_overcurrent */
 					0x250 MODE_NITRO /* usb3h_vbus_ppc */
-- 
2.40.1
