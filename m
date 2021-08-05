Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78DC93E1796
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 17:08:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238638AbhHEPIy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 11:08:54 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:57117 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238005AbhHEPIy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 11:08:54 -0400
Received: (Authenticated sender: thomas.perrot@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 36A3740004;
        Thu,  5 Aug 2021 15:08:38 +0000 (UTC)
From:   Thomas Perrot <thomas.perrot@bootlin.com>
To:     devicetree@vger.kernel.org
Cc:     Thomas Perrot <thomas.perrot@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH] ARM: dts: imx7: add ftm nodes for Flex Timers
Date:   Thu,  5 Aug 2021 17:06:33 +0200
Message-Id: <20210805150633.348451-1-thomas.perrot@bootlin.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX7 has two possible Flex Timers, disabled by default. Moreover, the
block is the same as LS1021a, then the drivers can be used as-is.

Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>
---
 arch/arm/boot/dts/imx7s.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index a22d41e0cf31..1843fc053870 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -707,6 +707,34 @@ ecspi4: spi@30630000 {
 				status = "disabled";
 			};
 
+			ftm1: pwm@30640000 {
+				compatible = "fsl,vf610-ftm-pwm";
+				reg = <0x30640000 0x10000>;
+				#pwm-cells = <3>;
+				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+				clock-names = "ftm_sys", "ftm_ext",
+				"ftm_fix", "ftm_cnt_clk_en";
+				clocks = <&clks IMX7D_FLEXTIMER1_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER1_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER1_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER1_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			ftm2: pwm@30650000 {
+				compatible = "fsl,vf610-ftm-pwm";
+				reg = <0x30650000 0x10000>;
+				#pwm-cells = <3>;
+				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+				clock-names = "ftm_sys", "ftm_ext",
+				"ftm_fix", "ftm_cnt_clk_en";
+				clocks = <&clks IMX7D_FLEXTIMER2_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER2_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER2_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER2_ROOT_CLK>;
+				status = "disabled";
+			};
+
 			pwm1: pwm@30660000 {
 				compatible = "fsl,imx7d-pwm", "fsl,imx27-pwm";
 				reg = <0x30660000 0x10000>;
-- 
2.31.1

