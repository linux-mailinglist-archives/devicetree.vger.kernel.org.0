Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6E5A41F8EA
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 03:00:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231942AbhJBBCG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 21:02:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232035AbhJBBCD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 21:02:03 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52740C061793
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 18:00:15 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mWTNp-0005o6-9g; Sat, 02 Oct 2021 03:00:09 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH v5 16/18] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core
Date:   Sat,  2 Oct 2021 02:59:52 +0200
Message-Id: <20211002005954.1367653-17-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211002005954.1367653-1-l.stach@pengutronix.de>
References: <20211002005954.1367653-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
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
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index d8c53ffb5fff..6009e54266f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1139,6 +1139,37 @@ gpmi: nand-controller@33002000{
 			status = "disabled";
 		};
 
+		gpu_3d: gpu@38000000 {
+			compatible = "vivante,gc";
+			reg = <0x38000000 0x8000>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_GPU_AHB>,
+				 <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+				 <&clk IMX8MM_CLK_GPU3D_ROOT>,
+				 <&clk IMX8MM_CLK_GPU3D_ROOT>;
+			clock-names = "reg", "bus", "core", "shader";
+			assigned-clocks = <&clk IMX8MM_CLK_GPU3D_CORE>,
+					  <&clk IMX8MM_GPU_PLL_OUT>;
+			assigned-clock-parents = <&clk IMX8MM_GPU_PLL_OUT>;
+			assigned-clock-rates = <0>, <1000000000>;
+			power-domains = <&pgc_gpu>;
+		};
+
+		gpu_2d: gpu@38008000 {
+			compatible = "vivante,gc";
+			reg = <0x38008000 0x8000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_GPU_AHB>,
+				 <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+				 <&clk IMX8MM_CLK_GPU2D_ROOT>;
+			clock-names = "reg", "bus", "core";
+			assigned-clocks = <&clk IMX8MM_CLK_GPU2D_CORE>,
+					  <&clk IMX8MM_GPU_PLL_OUT>;
+			assigned-clock-parents = <&clk IMX8MM_GPU_PLL_OUT>;
+			assigned-clock-rates = <0>, <1000000000>;
+			power-domains = <&pgc_gpu>;
+		};
+
 		gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>, /* GIC Dist */
-- 
2.30.2

