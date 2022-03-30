Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66EC94EBF20
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 12:46:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239046AbiC3KsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 06:48:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245632AbiC3KsQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 06:48:16 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B955269A5E
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 03:46:32 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nZVqL-0002Zn-75; Wed, 30 Mar 2022 12:46:25 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v4 4/5] arm64: dts: imx8mp: add GPC node with GPU power domains
Date:   Wed, 30 Mar 2022 12:46:19 +0200
Message-Id: <20220330104620.3600159-5-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220330104620.3600159-1-l.stach@pengutronix.de>
References: <20220330104620.3600159-1-l.stach@pengutronix.de>
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

Add the power domains for the GPUs, which do not require any interaction with
a blk-ctrl, but are simply two PU domains nested inside a MIX domain.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 41 +++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6b840c05dd77..bd0c66e80e01 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/imx8mp-clock.h>
+#include <dt-bindings/power/imx8mp-power.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -475,6 +476,46 @@ src: reset-controller@30390000 {
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mp-gpc";
+				reg = <0x303a0000 0x1000>;
+				interrupt-parent = <&gic>;
+				interrupt-controller;
+				#interrupt-cells = <3>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pgc_gpu2d: power-domain@6 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_GPU2D>;
+						clocks = <&clk IMX8MP_CLK_GPU2D_ROOT>;
+						power-domains = <&pgc_gpumix>;
+					};
+
+					pgc_gpumix: power-domain@7 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_GPUMIX>;
+						clocks = <&clk IMX8MP_CLK_GPU_ROOT>,
+							 <&clk IMX8MP_CLK_GPU_AHB>;
+						assigned-clocks = <&clk IMX8MP_CLK_GPU_AXI>,
+								  <&clk IMX8MP_CLK_GPU_AHB>;
+						assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+									 <&clk IMX8MP_SYS_PLL1_800M>;
+						assigned-clock-rates = <800000000>, <400000000>;
+					};
+
+					pgc_gpu3d: power-domain@9 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_GPU3D>;
+						clocks = <&clk IMX8MP_CLK_GPU3D_ROOT>,
+							 <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>;
+						power-domains = <&pgc_gpumix>;
+					};
+				};
+			};
 		};
 
 		aips2: bus@30400000 {
-- 
2.30.2

