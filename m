Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39F134F6755
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239087AbiDFRbH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:31:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239065AbiDFRax (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:30:53 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 391922317B3
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:34:17 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nc7fc-0005jN-3R; Wed, 06 Apr 2022 17:34:08 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 08/11] arm64: dts: imx8mp: add HSIO power-domains
Date:   Wed,  6 Apr 2022 17:33:59 +0200
Message-Id: <20220406153402.1265474-9-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220406153402.1265474-1-l.stach@pengutronix.de>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
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
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 57 ++++++++++++++++++++---
 1 file changed, 51 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index afd36374dccb..edf2d8f5e22e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -488,6 +488,21 @@ pgc {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
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
 					pgc_gpu2d: power-domain@6 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MP_POWER_DOMAIN_GPU2D>;
@@ -514,6 +529,16 @@ pgc_gpu3d: power-domain@9 {
 							 <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>;
 						power-domains = <&pgc_gpumix>;
 					};
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
 				};
 			};
 		};
@@ -933,6 +958,28 @@ eqos: ethernet@30bf0000 {
 			};
 		};
 
+		aips4: bus@32c00000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x32c00000 0x400000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			hsio_blk_ctrl: blk-ctrl@32f10000 {
+				compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
+				reg = <0x32f10000 0x24>;
+				clocks = <&clk IMX8MP_CLK_USB_ROOT>,
+					 <&clk IMX8MP_CLK_PCIE_ROOT>;
+				clock-names = "usb", "pcie";
+				power-domains = <&pgc_hsiomix>, <&pgc_hsiomix>,
+						<&pgc_usb1_phy>, <&pgc_usb2_phy>,
+						<&pgc_hsiomix>, <&pgc_pcie_phy>;
+				power-domain-names = "bus", "usb", "usb-phy1",
+						     "usb-phy2", "pcie", "pcie-phy";
+				#power-domain-cells = <1>;
+			};
+		};
+
 		gpu3d: gpu@38000000 {
 			compatible = "vivante,gc";
 			reg = <0x38000000 0x8000>;
@@ -987,6 +1034,7 @@ usb3_phy0: usb-phy@381f0040 {
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
 			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY1>;
 			#phy-cells = <0>;
 			status = "disabled";
 		};
@@ -999,6 +1047,7 @@ usb3_0: usb@32f10100 {
 				 <&clk IMX8MP_CLK_USB_ROOT>;
 			clock-names = "hsio", "suspend";
 			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
@@ -1012,9 +1061,6 @@ usb_dwc3_0: usb@38100000 {
 					 <&clk IMX8MP_CLK_USB_CORE_REF>,
 					 <&clk IMX8MP_CLK_USB_ROOT>;
 				clock-names = "bus_early", "ref", "suspend";
-				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
-				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
-				assigned-clock-rates = <500000000>;
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb3_phy0>, <&usb3_phy0>;
 				phy-names = "usb2-phy", "usb3-phy";
@@ -1030,6 +1076,7 @@ usb3_phy1: usb-phy@382f0040 {
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
 			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY2>;
 			#phy-cells = <0>;
 			status = "disabled";
 		};
@@ -1042,6 +1089,7 @@ usb3_1: usb@32f10108 {
 				 <&clk IMX8MP_CLK_USB_ROOT>;
 			clock-names = "hsio", "suspend";
 			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
@@ -1055,9 +1103,6 @@ usb_dwc3_1: usb@38200000 {
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

