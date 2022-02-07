Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BC774AC996
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 20:31:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240013AbiBGTaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 14:30:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240037AbiBGT0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 14:26:00 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76061C0401E2
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:25:59 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nH9e5-0001pl-2n; Mon, 07 Feb 2022 20:25:53 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v2 7/9] arm64: dts: imx8mp: add HSIO power-domains
Date:   Mon,  7 Feb 2022 20:25:45 +0100
Message-Id: <20220207192547.1997549-7-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207192547.1997549-1-l.stach@pengutronix.de>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the GPC and HSIO blk-ctrl nodes providing power control for
the high-speed (USB and PCIe) IOs.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 63 ++++++++++++++++++++---
 1 file changed, 57 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6b840c05dd77..dc488a147d0c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/imx8mp-clock.h>
+#include <dt-bindings/power/imx8mp-power.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -475,6 +476,44 @@ src: reset-controller@30390000 {
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mp-gpc";
+				reg = <0x303a0000 0x10000>;
+				interrupt-parent = <&gic>;
+				interrupt-controller;
+				#interrupt-cells = <3>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pgc_pcie_phy: power-domain@1 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_PCIE_PHY>;
+					};
+
+					pgc_usb1_phy: power-domain@2 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_USB1_PHY>;
+					};
+
+					pgc_usb2_phy: power-domain@3 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_USB2_PHY>;
+					};
+
+					pgc_hsiomix: power-domains@17 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_HSIOMIX>;
+						clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+							 <&clk IMX8MP_CLK_HSIO_ROOT>;
+						assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
+						assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
+						assigned-clock-rates = <500000000>;
+					};
+				};
+			};
 		};
 
 		aips2: bus@30400000 {
@@ -908,6 +947,20 @@ ddr-pmu@3d800000 {
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		hsio_blk_ctrl: blk-ctrl@32f10000 {
+			compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
+			reg = <0x32f10000 0x24>;
+			clocks = <&clk IMX8MP_CLK_USB_ROOT>,
+				 <&clk IMX8MP_CLK_PCIE_ROOT>;
+			clock-names = "usb", "pcie";
+			power-domains = <&pgc_hsiomix>, <&pgc_hsiomix>,
+					<&pgc_usb1_phy>, <&pgc_usb2_phy>,
+					<&pgc_hsiomix>, <&pgc_pcie_phy>;
+			power-domain-names = "bus", "usb", "usb-phy1",
+					     "usb-phy2", "pcie", "pcie-phy";
+			#power-domain-cells = <1>;
+		};
+
 		usb3_phy0: usb-phy@381f0040 {
 			compatible = "fsl,imx8mp-usb-phy";
 			reg = <0x381f0040 0x40>;
@@ -915,6 +968,7 @@ usb3_phy0: usb-phy@381f0040 {
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
 			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY1>;
 			#phy-cells = <0>;
 			status = "disabled";
 		};
@@ -926,6 +980,7 @@ usb3_0: usb@32f10100 {
 				 <&clk IMX8MP_CLK_USB_ROOT>;
 			clock-names = "hsio", "suspend";
 			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
@@ -939,9 +994,6 @@ usb_dwc3_0: usb@38100000 {
 					 <&clk IMX8MP_CLK_USB_CORE_REF>,
 					 <&clk IMX8MP_CLK_USB_ROOT>;
 				clock-names = "bus_early", "ref", "suspend";
-				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
-				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
-				assigned-clock-rates = <500000000>;
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb3_phy0>, <&usb3_phy0>;
 				phy-names = "usb2-phy", "usb3-phy";
@@ -957,6 +1009,7 @@ usb3_phy1: usb-phy@382f0040 {
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
 			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY2>;
 			#phy-cells = <0>;
 		};
 
@@ -967,6 +1020,7 @@ usb3_1: usb@32f10108 {
 				 <&clk IMX8MP_CLK_USB_ROOT>;
 			clock-names = "hsio", "suspend";
 			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
@@ -980,9 +1034,6 @@ usb_dwc3_1: usb@38200000 {
 					 <&clk IMX8MP_CLK_USB_CORE_REF>,
 					 <&clk IMX8MP_CLK_USB_ROOT>;
 				clock-names = "bus_early", "ref", "suspend";
-				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
-				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
-				assigned-clock-rates = <500000000>;
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb3_phy1>, <&usb3_phy1>;
 				phy-names = "usb2-phy", "usb3-phy";
-- 
2.30.2

