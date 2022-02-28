Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB0B24C7A0D
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 21:21:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbiB1USW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 15:18:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbiB1USW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 15:18:22 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91F274B878
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 12:17:42 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nOmSe-0003aH-OW; Mon, 28 Feb 2022 21:17:36 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v3 7/7] arm64: dts: imx8mp: add GPU nodes
Date:   Mon, 28 Feb 2022 21:17:31 +0100
Message-Id: <20220228201731.3330192-8-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220228201731.3330192-1-l.stach@pengutronix.de>
References: <20220228201731.3330192-1-l.stach@pengutronix.de>
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

Add the DT nodes for both the 3D and 2D GPU cores found on the i.MX8MP.

etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204
etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
[drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9f2c335cc7a1..3ded7314c473 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -980,6 +980,37 @@ hsio_blk_ctrl: blk-ctrl@32f10000 {
 			};
 		};
 
+		gpu3d: gpu@38000000 {
+			compatible = "vivante,gc";
+			reg = <0x38000000 0x8000>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MP_CLK_GPU3D_ROOT>,
+				 <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>,
+				 <&clk IMX8MP_CLK_GPU_ROOT>,
+				 <&clk IMX8MP_CLK_GPU_AHB>;
+			clock-names = "core", "shader", "bus", "reg";
+			assigned-clocks = <&clk IMX8MP_CLK_GPU3D_CORE>,
+					  <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>;
+			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+						 <&clk IMX8MP_SYS_PLL1_800M>;
+			assigned-clock-rates = <800000000>, <800000000>;
+			power-domains = <&pgc_gpu3d>;
+		};
+
+		gpu2d: gpu@38008000 {
+			compatible = "vivante,gc";
+			reg = <0x38008000 0x8000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MP_CLK_GPU2D_ROOT>,
+				 <&clk IMX8MP_CLK_GPU_ROOT>,
+				 <&clk IMX8MP_CLK_GPU_AHB>;
+			clock-names = "core", "bus", "reg";
+			assigned-clocks = <&clk IMX8MP_CLK_GPU2D_CORE>;
+			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
+			assigned-clock-rates = <800000000>;
+			power-domains = <&pgc_gpu2d>;
+		};
+
 		gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>,
-- 
2.30.2

