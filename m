Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C838427EDF3
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728674AbgI3Pyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728292AbgI3PyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:54:25 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52F8DC061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:54:25 -0700 (PDT)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNeQt-0007jp-A2; Wed, 30 Sep 2020 17:54:19 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Date:   Wed, 30 Sep 2020 17:54:18 +0200
Message-Id: <20200930155418.535857-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.2
Subject: [PATCH] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

According to the documents, the i.MX8M-Mini features a GC320 and a
GCNanoUltra GPU core. Etnaviv detects them as:

	etnaviv-gpu 38000000.gpu: model: GC600, revision: 4653
	etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341

This seems to work fine more or less without any changes to the HWDB,
which still might be needed in the future to correct some features,
etc.

[lst]: Added power domains and switched clock assignments to the
       new clock defines used for the composite clocks, instead of
       relying on the backwards compat defines.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
This patch depends on the power domain support for i.MX8MM, as the
GPUs are in a invalid state (which might lead to full system lockups)
if they are not properly powered on via the power sequencing
implemented in the GPCv2 driver.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 39 +++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index ab379d02d4e4..2f5812763315 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1012,6 +1012,45 @@
 			status = "disabled";
 		};
 
+		gpu_3d: gpu@38000000 {
+			compatible = "vivante,gc";
+			reg = <0x38000000 0x8000>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_GPU_AHB>,
+			         <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+			         <&clk IMX8MM_CLK_GPU3D_ROOT>,
+			         <&clk IMX8MM_CLK_GPU3D_ROOT>;
+			clock-names = "reg", "bus", "core", "shader";
+			assigned-clocks = <&clk IMX8MM_CLK_GPU3D_CORE>,
+			                  <&clk IMX8MM_CLK_GPU_AXI>,
+			                  <&clk IMX8MM_CLK_GPU_AHB>,
+			                  <&clk IMX8MM_GPU_PLL_OUT>;
+			assigned-clock-parents = <&clk IMX8MM_GPU_PLL_OUT>,
+			                         <&clk IMX8MM_SYS_PLL1_800M>,
+			                         <&clk IMX8MM_SYS_PLL1_800M>;
+			assigned-clock-rates = <0>, <0>,<400000000>,<1000000000>;
+			power-domains = <&pgc_gpu>;
+		};
+
+		gpu_2d: gpu@38008000 {
+			compatible = "vivante,gc";
+			reg = <0x38008000 0x8000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_GPU_AHB>,
+			         <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+			         <&clk IMX8MM_CLK_GPU2D_ROOT>;
+			clock-names = "reg", "bus", "core";
+			assigned-clocks = <&clk IMX8MM_CLK_GPU2D_CORE>,
+			                  <&clk IMX8MM_CLK_GPU_AXI>,
+			                  <&clk IMX8MM_CLK_GPU_AHB>,
+			                  <&clk IMX8MM_GPU_PLL_OUT>;
+			assigned-clock-parents = <&clk IMX8MM_GPU_PLL_OUT>,
+			                         <&clk IMX8MM_SYS_PLL1_800M>,
+			                         <&clk IMX8MM_SYS_PLL1_800M>;
+			assigned-clock-rates = <0>, <0>,<400000000>,<1000000000>;
+			power-domains = <&pgc_gpu>;
+		};
+
 		gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>, /* GIC Dist */
-- 
2.20.1

