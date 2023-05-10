Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFFF76FDA86
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 11:19:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236375AbjEJJTH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 05:19:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231486AbjEJJTG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 05:19:06 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2F6643A85
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 02:19:04 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 014B18109;
        Wed, 10 May 2023 09:19:02 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: ti: Clean up pin node names to avoid warnings
Date:   Wed, 10 May 2023 12:18:50 +0300
Message-Id: <20230510091850.28881-1-tony@atomide.com>
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

We should have nodes named pin or pins, and the node names should not
have a 0x prefix for the hex address. Otherwise we will see warnings
when the pinctrl-single yaml binding gets merged.

Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts           | 2 +-
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts           | 2 +-
 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts | 4 ++--
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi          | 6 +++---
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -432,7 +432,7 @@ AM62X_MCU_IOPAD(0x0048, PIN_INPUT, 0) /* (D10) MCU_I2C0_SDA */
 		>;
 	};
 
-	gbe_pmx_obsclk: gbe-pmx-clk-default {
+	gbe_pmx_obsclk: gbe-clk-pins-default {
 		pinctrl-single,pins = <
 			AM62X_MCU_IOPAD(0x0004, PIN_OUTPUT, 1) /* (B8) MCU_SPI0_CS1.MCU_OBSCLK0 */
 		>;
diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -150,7 +150,7 @@ AM65X_WKUP_IOPAD(0x002c, PIN_OUTPUT, 0) /* (R4) MCU_OSPI0_CSn0 */
 		>;
 	};
 
-	wkup_pca554_default: wkup-pca554-default {
+	wkup_pca554_default: wkup-pca554-pins-default {
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
+	main_bkey_pcie_reset: main-bkey-pcie-reset-pins-default {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x01bc, PIN_OUTPUT_PULLUP, 7)  /* (AG13) GPIO1_15 */
 		>;
@@ -46,7 +46,7 @@ AM65X_IOPAD(0x01cc, PIN_INPUT_PULLUP, 7)  /* (AD13) GPIO1_19 */
 		>;
 	};
 
-	main_m2_pcie_mux_control: main-m2-pcie-mux-control {
+	main_m2_pcie_mux_control: main-m2-pcie-mux-control-pins-default {
 		pinctrl-single,pins = <
 			AM65X_IOPAD(0x0148, PIN_INPUT_PULLUP, 7)  /* (AG22) GPIO0_82 */
 			AM65X_IOPAD(0x0160, PIN_INPUT_PULLUP, 7)  /* (AE20) GPIO0_88 */
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -62,7 +62,7 @@ wkup_pmx0: pinctrl@4301c000 {
 		pinctrl-single,function-mask = <0xffffffff>;
 	};
 
-	wkup_pmx1: pinctrl@0x4301c038 {
+	wkup_pmx1: pinctrl@4301c038 {
 		compatible = "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c038 0x00 0x8>;
@@ -71,7 +71,7 @@ wkup_pmx1: pinctrl@0x4301c038 {
 		pinctrl-single,function-mask = <0xffffffff>;
 	};
 
-	wkup_pmx2: pinctrl@0x4301c068 {
+	wkup_pmx2: pinctrl@4301c068 {
 		compatible = "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c068 0x00 0xec>;
@@ -80,7 +80,7 @@ wkup_pmx2: pinctrl@0x4301c068 {
 		pinctrl-single,function-mask = <0xffffffff>;
 	};
 
-	wkup_pmx3: pinctrl@0x4301c174 {
+	wkup_pmx3: pinctrl@4301c174 {
 		compatible = "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c174 0x00 0x20>;
-- 
2.40.1
