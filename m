Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED3524F6769
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239071AbiDFRbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:31:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239100AbiDFRax (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:30:53 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A078022EBDB
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:34:16 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nc7fc-0005jN-M9; Wed, 06 Apr 2022 17:34:08 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 09/11] arm64: dts: imx8mp: Add MEDIAMIX power domains
Date:   Wed,  6 Apr 2022 17:34:00 +0200
Message-Id: <20220406153402.1265474-10-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220406153402.1265474-1-l.stach@pengutronix.de>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Add the power domains related to the MEDIAMIX to the GPC.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Marek Vasut <marex@denx.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index edf2d8f5e22e..e94c88a2fda8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -488,6 +488,11 @@ pgc {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
+					pgc_mipi_phy1: power-domain@0 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_MIPI_PHY1>;
+					};
+
 					pgc_pcie_phy: power-domain@1 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MP_POWER_DOMAIN_PCIE_PHY>;
@@ -530,6 +535,18 @@ pgc_gpu3d: power-domain@9 {
 						power-domains = <&pgc_gpumix>;
 					};
 
+					pgc_mediamix: power-domain@10 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_MEDIAMIX>;
+						clocks = <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+							 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+					};
+
+					pgc_mipi_phy2: power-domain@16 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_MIPI_PHY2>;
+					};
+
 					pgc_hsiomix: power-domains@17 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MP_POWER_DOMAIN_HSIOMIX>;
@@ -539,6 +556,12 @@ pgc_hsiomix: power-domains@17 {
 						assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
 						assigned-clock-rates = <500000000>;
 					};
+
+					pgc_ispdwp: power-domain@18 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_MEDIAMIX_ISPDWP>;
+						clocks = <&clk IMX8MP_CLK_MEDIA_ISP_DIV>;
+					};
 				};
 			};
 		};
-- 
2.30.2

