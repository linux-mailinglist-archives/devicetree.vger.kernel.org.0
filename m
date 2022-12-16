Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B363D64F211
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 20:59:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231950AbiLPT7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 14:59:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231954AbiLPT7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 14:59:39 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAB4461D4C
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 11:59:36 -0800 (PST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1p6Grl-00085a-F8; Fri, 16 Dec 2022 20:59:33 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: [PATCH] arm64: dts: imx8mp: move PCIe controller clock config to SoC dtsi
Date:   Fri, 16 Dec 2022 20:59:32 +0100
Message-Id: <20221216195932.3228998-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The only difference in PCIe clock configuration between boards is how
the PCIe reference clock is generated. The refclock configuration is
fully contained in the PCIe PHY node, so the PCIe controller clocks
can be set up in the SoC dtsi, as there is no reason for any board to
use a different configuration.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts           | 7 -------
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts | 7 -------
 arch/arm64/boot/dts/freescale/imx8mp.dtsi              | 7 +++++++
 3 files changed, 7 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index e2e1898d3d12..faed1d179238 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -400,13 +400,6 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
 	reset-gpio = <&gpio2 7 GPIO_ACTIVE_LOW>;
-	clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
-		 <&clk IMX8MP_CLK_PCIE_ROOT>,
-		 <&clk IMX8MP_CLK_HSIO_AXI>;
-	clock-names = "pcie", "pcie_aux", "pcie_bus";
-	assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
-	assigned-clock-rates = <10000000>;
-	assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
 	vpcie-supply = <&reg_pcie0>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
index ceeca4966fc5..007dd85fa086 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
@@ -593,13 +593,6 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
 	reset-gpio = <&gpio2 17 GPIO_ACTIVE_LOW>;
-	clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
-		 <&clk IMX8MP_CLK_PCIE_ROOT>,
-		 <&clk IMX8MP_CLK_HSIO_AXI>;
-	clock-names = "pcie", "pcie_aux", "pcie_bus";
-	assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
-	assigned-clock-rates = <10000000>;
-	assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 7a6e6221f421..4ef36ebc6bfe 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1183,6 +1183,13 @@ pcie: pcie@33800000 {
 			compatible = "fsl,imx8mp-pcie";
 			reg = <0x33800000 0x400000>, <0x1ff00000 0x80000>;
 			reg-names = "dbi", "config";
+			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+				 <&clk IMX8MP_CLK_PCIE_ROOT>,
+				 <&clk IMX8MP_CLK_HSIO_AXI>;
+			clock-names = "pcie", "pcie_aux", "pcie_bus";
+			assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
+			assigned-clock-rates = <10000000>;
+			assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 			device_type = "pci";
-- 
2.30.2

