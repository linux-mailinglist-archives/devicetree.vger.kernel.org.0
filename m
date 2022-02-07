Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88E6D4AC995
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 20:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240129AbiBGTax (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 14:30:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240036AbiBGT0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 14:26:00 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBCB7C0401E0
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:25:58 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nH9e5-0001pl-K4; Mon, 07 Feb 2022 20:25:53 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v2 8/9] arm64: dts: imx8mp: add GPU power domains
Date:   Mon,  7 Feb 2022 20:25:46 +0100
Message-Id: <20220207192547.1997549-8-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207192547.1997549-1-l.stach@pengutronix.de>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
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
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 27 +++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index dc488a147d0c..9ed57171b9fc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -503,6 +503,33 @@ pgc_usb2_phy: power-domain@3 {
 						reg = <IMX8MP_POWER_DOMAIN_USB2_PHY>;
 					};
 
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
+
 					pgc_hsiomix: power-domains@17 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MP_POWER_DOMAIN_HSIOMIX>;
-- 
2.30.2

