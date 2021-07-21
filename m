Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B0123D185A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232803AbhGUUGs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232891AbhGUUGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:45 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0791C0613D3
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:21 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7c-0004jk-4b; Wed, 21 Jul 2021 22:47:16 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 17/18] arm64: dts: imx8mm: add VPU blk-ctrl
Date:   Wed, 21 Jul 2021 22:47:02 +0200
Message-Id: <20210721204703.1424034-18-l.stach@pengutronix.de>
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

Add the DT node for the VPU blk-ctrl. With this in place the
VPU power domains are fully functional.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index a937018556a1..fdca74ece767 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1152,6 +1152,19 @@ gpu_2d: gpu@38008000 {
 			power-domains = <&pgc_gpu>;
 		};
 
+		vpu_blk_ctrl: blk-ctrl@38330000 {
+			compatible = "fsl,imx8mm-vpu-blk-ctrl", "syscon";
+			reg = <0x38330000 0x100>;
+			power-domains = <&pgc_vpumix>, <&pgc_vpu_g1>,
+					<&pgc_vpu_g2>, <&pgc_vpu_h1>;
+			power-domain-names = "bus", "g1", "g2", "h1";
+			clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>,
+				 <&clk IMX8MM_CLK_VPU_G2_ROOT>,
+				 <&clk IMX8MM_CLK_VPU_H1_ROOT>;
+			clock-names = "g1", "g2", "h1";
+			#power-domain-cells = <1>;
+		};
+
 		gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>, /* GIC Dist */
-- 
2.30.2

