Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6CDE4C70F1
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 16:48:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235658AbiB1PtU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 10:49:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234182AbiB1PtT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 10:49:19 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 985CC36E09
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 07:48:40 -0800 (PST)
Received: from pyrite.rasen.tech (h175-177-042-148.catv02.itscom.jp [175.177.42.148])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4F3C6478;
        Mon, 28 Feb 2022 16:48:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1646063318;
        bh=J04Jb8HVriI9lDHRNv832a/kx03L6NrzItZlEt50Jw8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=RGOegc9J/i3CL16hS7pfUIZnj8XrHeqC9E7Qm8V2fogatpIww1ynUr4WTRou2MMol
         Mb3wgoFmXOc5yo3Ku2TqL9hsN/XrNKE0Cx9fvHH77wCF5RoEYKGKF8htjAsfvCURlP
         zvhjGRqJYJtWGzioDfXN0LU/Lj7x+MH+JADON200=
From:   Paul Elder <paul.elder@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Paul Elder <paul.elder@ideasonboard.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Marek Vasut <marex@denx.de>,
        Zhen Lei <thunder.leizhen@huawei.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: imx8mp: Add MEDIA_BLK_CTRL
Date:   Tue,  1 Mar 2022 00:48:01 +0900
Message-Id: <20220228154801.1347487-5-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220228154801.1347487-1-paul.elder@ideasonboard.com>
References: <20220228154801.1347487-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a DT node for the MEDIA_BLK_CTRL, which provides power domains for
the camera and display devices.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 40 +++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index eecd820a1193..a1fdb96024d0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -984,6 +984,46 @@ eqos: ethernet@30bf0000 {
 			};
 		};
 
+		aips4: bus@32c00000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x32c00000 0x400000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
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
+				#power-domain-cells = <1>;
+			};
+		};
+
 		gpu3d: gpu@38000000 {
 			compatible = "vivante,gc";
 			reg = <0x38000000 0x8000>;
-- 
2.30.2

