Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98E394F67A6
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239083AbiDFRbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:31:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239087AbiDFRax (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:30:53 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BA12228AB5
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:34:16 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nc7fd-0005jN-8N; Wed, 06 Apr 2022 17:34:09 +0200
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
Subject: [PATCH v4 10/11] arm64: dts: imx8mp: Add MEDIA_BLK_CTRL
Date:   Wed,  6 Apr 2022 17:34:01 +0200
Message-Id: <20220406153402.1265474-11-l.stach@pengutronix.de>
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

From: Paul Elder <paul.elder@ideasonboard.com>

Add a DT node for the MEDIA_BLK_CTRL, which provides power domains for
the camera and display devices.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Marek Vasut <marex@denx.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index e94c88a2fda8..627846434901 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -988,6 +988,44 @@ aips4: bus@32c00000 {
 			#size-cells = <1>;
 			ranges;
 
+			media_blk_ctrl: blk-ctrl@32ec0000 {
+				compatible = "fsl,imx8mp-media-blk-ctrl",
+					     "syscon";
+				reg = <0x32ec0000 0x10000>;
+				power-domains = <&pgc_mediamix>,
+						<&pgc_mipi_phy1>,
+						<&pgc_mipi_phy1>,
+						<&pgc_mediamix>,
+						<&pgc_mediamix>,
+						<&pgc_mipi_phy2>,
+						<&pgc_mediamix>,
+						<&pgc_ispdwp>,
+						<&pgc_ispdwp>,
+						<&pgc_mipi_phy2>;
+				power-domain-names = "bus", "mipi-dsi1", "mipi-csi1",
+						     "lcdif1", "isi", "mipi-csi2",
+						     "lcdif2", "isp", "dwe",
+						     "mipi-dsi2";
+				clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_DISP1_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_ISP_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>;
+				clock-names = "apb", "axi", "cam1", "cam2",
+					      "disp1", "disp2", "isp", "phy";
+
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_AXI>,
+						  <&clk IMX8MP_CLK_MEDIA_APB>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
+							 <&clk IMX8MP_SYS_PLL1_800M>;
+				assigned-clock-rates = <500000000>, <200000000>;
+
+				#power-domain-cells = <1>;
+			};
+
 			hsio_blk_ctrl: blk-ctrl@32f10000 {
 				compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
 				reg = <0x32f10000 0x24>;
-- 
2.30.2

