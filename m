Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E5D961F9F9
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 17:35:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232388AbiKGQfv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 11:35:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232280AbiKGQfs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 11:35:48 -0500
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9A9DBE58
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 08:35:46 -0800 (PST)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 397C681D0;
        Mon,  7 Nov 2022 16:26:01 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Keerthy <j-keerthy@ti.com>, Georgi Vlaev <g-vlaev@ti.com>
Subject: [PATCH v2 1/4] arm64: dts: ti: k3-am65: Configure pinctrl for timer IO pads
Date:   Mon,  7 Nov 2022 18:35:30 +0200
Message-Id: <20221107163533.48777-2-tony@atomide.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221107163533.48777-1-tony@atomide.com>
References: <20221107163533.48777-1-tony@atomide.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Compared to the earlier TI SoCs, am65 has an additional level of dedicated
multiplexing registers for the timer IO pads.

There are timer IO pads in the MCU domain, and in the MAIN domain. These
pads can be muxed for the related timers.

There are timer IO control registers for input and output. The registers
for CTRLMMR_TIMER*_CTRL and CTRLMMR_MCU_TIMER*_CTRL are used to control
the input. The registers for CTCTRLMMR_TIMERIO*_CTRL and
CTRLMMR_MCU_TIMERIO*_CTRL the output.

The multiplexing is documented in TRM "5.1.2.3.1.4 Timer IO Muxing Control
Registers" and "5.1.3.3.1.5 Timer IO Muxing Control Registers", and the
CASCADE_EN bit is documented in TRM "12.8.3.1 Timers Overview".

For chaining timers, the timer IO control registers also have a CASCADE_EN
input bit in the CTRLMMR_TIMER*_CTRL in the registers. The CASCADE_EN bit
muxes the previous timer output, or possibly and external TIMER_IO pad
source, to the input clock of the selected timer instance for odd numered
timers. For the even numbered timers, the CASCADE_EN bit does not do
anything. The timer cascade input routing options are shown in TRM
"Figure 12-3632. Timers Overview". For handling beyond multiplexing, the
driver support for timer cascading should be likely be handled via the
clock framework.

Cc: Keerthy <j-keerthy@ti.com>
Cc: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 18 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  | 18 ++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -134,6 +134,24 @@ rng: rng@4e10000 {
 		};
 	};
 
+	/* TIMERIO pad input CTRLMMR_TIMER*_CTRL registers */
+	main_timerio_input: pinctrl@104200 {
+		compatible = "pinctrl-single";
+		reg = <0x0 0x104200 0x0 0x30>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0x0000001ff>;
+	};
+
+	/* TIMERIO pad output CTCTRLMMR_TIMERIO*_CTRL registers */
+	main_timerio_output: pinctrl@104280 {
+		compatible = "pinctrl-single";
+		reg = <0x0 0x104280 0x0 0x20>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0x0000000f>;
+	};
+
 	main_pmx0: pinctrl@11c000 {
 		compatible = "pinctrl-single";
 		reg = <0x0 0x11c000 0x0 0x2e4>;
diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -20,6 +20,24 @@ phy_gmii_sel: phy@4040 {
 		};
 	};
 
+	/* MCU_TIMERIO pad input CTRLMMR_MCU_TIMER*_CTRL registers */
+	mcu_timerio_input: pinctrl@40f04200 {
+		compatible = "pinctrl-single";
+		reg = <0x0 0x40f04200 0x0 0x10>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0x00000101>;
+	};
+
+	/* MCU_TIMERIO pad output CTRLMMR_MCU_TIMERIO*_CTRL registers */
+	mcu_timerio_output: pinctrl@40f04280 {
+		compatible = "pinctrl-single";
+		reg = <0x0 0x40f04280 0x0 0x8>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0x00000003>;
+	};
+
 	mcu_uart0: serial@40a00000 {
 		compatible = "ti,am654-uart";
 		reg = <0x00 0x40a00000 0x00 0x100>;
-- 
2.38.1
