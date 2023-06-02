Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 605F0720987
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 21:10:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237097AbjFBTK1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 15:10:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237143AbjFBTKZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 15:10:25 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FB121B7
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 12:10:19 -0700 (PDT)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1q5AAA-0000vT-5c; Fri, 02 Jun 2023 21:10:14 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH] arm64: dts: imx8mp: don't initialize audio clocks from CCM node
Date:   Fri,  2 Jun 2023 21:10:13 +0200
Message-Id: <20230602191013.4124840-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
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

The audio clocks should be intitialized to the correct rate by the subsystem
using them. There is no need to always initialize them from the CCM node
assigned-clocks property. This way boards using the audio clocks in a non-
standard way can change them without first duplicating the CCM clock
setup.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 428c60462e3d..995445ad54cc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -534,26 +534,16 @@ clk: clock-controller@30380000 {
 						  <&clk IMX8MP_CLK_A53_CORE>,
 						  <&clk IMX8MP_CLK_NOC>,
 						  <&clk IMX8MP_CLK_NOC_IO>,
-						  <&clk IMX8MP_CLK_GIC>,
-						  <&clk IMX8MP_CLK_AUDIO_AHB>,
-						  <&clk IMX8MP_CLK_AUDIO_AXI_SRC>,
-						  <&clk IMX8MP_AUDIO_PLL1>,
-						  <&clk IMX8MP_AUDIO_PLL2>;
+						  <&clk IMX8MP_CLK_GIC>;
 				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
 							 <&clk IMX8MP_ARM_PLL_OUT>,
 							 <&clk IMX8MP_SYS_PLL2_1000M>,
 							 <&clk IMX8MP_SYS_PLL1_800M>,
-							 <&clk IMX8MP_SYS_PLL2_500M>,
-							 <&clk IMX8MP_SYS_PLL1_800M>,
-							 <&clk IMX8MP_SYS_PLL1_800M>;
+							 <&clk IMX8MP_SYS_PLL2_500M>;
 				assigned-clock-rates = <0>, <0>,
 						       <1000000000>,
 						       <800000000>,
-						       <500000000>,
-						       <400000000>,
-						       <800000000>,
-						       <393216000>,
-						       <361267200>;
+						       <500000000>;
 			};
 
 			src: reset-controller@30390000 {
-- 
2.39.2

