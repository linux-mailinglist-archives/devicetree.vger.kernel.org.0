Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE17F3D185C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232856AbhGUUGt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232885AbhGUUGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:45 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB01DC06179E
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:20 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7a-0004jk-9T; Wed, 21 Jul 2021 22:47:14 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 14/18] arm64: dts: imx8mm: add GPC node
Date:   Wed, 21 Jul 2021 22:46:59 +0200
Message-Id: <20210721204703.1424034-15-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210721204703.1424034-1-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the DT node for the GPC, including all the PGC power domains,
some of them are not fully functional yet, as they require interaction
with the blk-ctrls to properly power up/down the peripherals.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 107 ++++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index a27e02bee6b4..1cdb475b5895 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -7,6 +7,8 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/power/imx8mm-power.h>
+#include <dt-bindings/reset/imx8mq-reset.h>
 #include <dt-bindings/thermal/thermal.h>
 
 #include "imx8mm-pinfunc.h"
@@ -600,6 +602,111 @@ src: reset-controller@30390000 {
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mm-gpc";
+				reg = <0x303a0000 0x10000>;
+				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-parent = <&gic>;
+				interrupt-controller;
+				#interrupt-cells = <3>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pgc_hsiomix: power-domain@0 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
+						clocks = <&clk IMX8MM_CLK_USB_BUS>;
+						assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
+						assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
+					};
+
+					pgc_pcie: power-domain@1 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_PCIE>;
+						power-domains = <&pgc_hsiomix>;
+						clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>;
+					};
+
+					pgc_otg1: power-domain@2 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_OTG1>;
+						power-domains = <&pgc_hsiomix>;
+					};
+
+					pgc_otg2: power-domain@3 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_OTG2>;
+						power-domains = <&pgc_hsiomix>;
+					};
+
+					pgc_gpumix: power-domain@4 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
+						clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+							 <&clk IMX8MM_CLK_GPU_AHB>;
+						assigned-clocks = <&clk IMX8MM_CLK_GPU_AXI>,
+								  <&clk IMX8MM_CLK_GPU_AHB>;
+						assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
+									 <&clk IMX8MM_SYS_PLL1_800M>;
+						assigned-clock-rates = <800000000>, <400000000>;
+					};
+
+					pgc_gpu: power-domain@5 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_GPU>;
+						clocks = <&clk IMX8MM_CLK_GPU_AHB>,
+							 <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+							 <&clk IMX8MM_CLK_GPU2D_ROOT>,
+							 <&clk IMX8MM_CLK_GPU3D_ROOT>;
+						resets = <&src IMX8MQ_RESET_GPU_RESET>;
+						power-domains = <&pgc_gpumix>;
+					};
+
+					pgc_vpumix: power-domain@6 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_VPUMIX>;
+						clocks = <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
+						assigned-clocks = <&clk IMX8MM_CLK_VPU_BUS>;
+						assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>;
+						resets = <&src IMX8MQ_RESET_VPU_RESET>;
+					};
+
+					pgc_vpu_g1: power-domain@7 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_VPUG1>;
+					};
+
+					pgc_vpu_g2: power-domain@8 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_VPUG2>;
+					};
+
+					pgc_vpu_h1: power-domain@9 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_VPUH1>;
+					};
+
+					pgc_dispmix: power-domain@10 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_DISPMIX>;
+						clocks = <&clk IMX8MM_CLK_DISP_APB_ROOT>,
+							 <&clk IMX8MM_CLK_DISP_AXI_ROOT>;
+						assigned-clocks = <&clk IMX8MM_CLK_DISP_AXI>,
+								  <&clk IMX8MM_CLK_DISP_APB>;
+						assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_1000M>,
+									 <&clk IMX8MM_SYS_PLL1_800M>;
+						assigned-clock-rates = <500000000>, <200000000>;
+					};
+
+					pgc_mipi: power-domain@11 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_MIPI>;
+					};
+				};
+			};
 		};
 
 		aips2: bus@30400000 {
-- 
2.30.2

