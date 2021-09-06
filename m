Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 892A2401FE3
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 20:44:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244514AbhIFSo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 14:44:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244510AbhIFSo5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 14:44:57 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F30BC0613D9
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 11:43:52 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mNJas-0003Ue-8J; Mon, 06 Sep 2021 20:43:46 +0200
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
Subject: [PATCH v3 17/18] arm64: dts: imx8mm: add VPU blk-ctrl
Date:   Mon,  6 Sep 2021 20:43:32 +0200
Message-Id: <20210906184333.1855426-18-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210906184333.1855426-1-l.stach@pengutronix.de>
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
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
index 87198f7ea6df..1452d60a0524 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1169,6 +1169,19 @@ gpu_2d: gpu@38008000 {
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

