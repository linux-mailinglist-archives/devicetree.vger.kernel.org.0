Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32E724C70F0
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 16:48:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234966AbiB1PtO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 10:49:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234182AbiB1PtN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 10:49:13 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAA4236310
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 07:48:34 -0800 (PST)
Received: from pyrite.rasen.tech (h175-177-042-148.catv02.itscom.jp [175.177.42.148])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5A2D51010;
        Mon, 28 Feb 2022 16:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1646063313;
        bh=rxnJRv2ilek3fvm+7tWS8lSy+brxusBl8X4Z400ehDc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=hFYTiRAgi1LPba/ASlOsl6Z9VvkD/mF8UIa8/77eXBr83JknD6JXH5Qjqa0g2Yj2Z
         HY+FCL/hjWSAN3U8hD1m3/Gd+ZxQX0vRS967/HXM0CHUf5cN6vHdKfo3V2WAqrhYdY
         2Ay3e3FDpetz2KM57WK7FedVlwL6Jsmpp7a+KZXU=
From:   Paul Elder <paul.elder@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        Jacky Bai <ping.bai@nxp.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Zhen Lei <thunder.leizhen@huawei.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] arm64: dts: imx8mp: Add MEDIAMIX power domains
Date:   Tue,  1 Mar 2022 00:48:00 +0900
Message-Id: <20220228154801.1347487-4-paul.elder@ideasonboard.com>
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Add the power domains related to the MEDIAMIX to the GPC.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index c89acb53be4a..eecd820a1193 100644
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
@@ -530,6 +535,21 @@ pgc_gpu3d: power-domain@9 {
 						power-domains = <&pgc_gpumix>;
 					};
 
+					pgc_mediamix: power-domain@10 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_MEDIAMIX>;
+						clocks = <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+							 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+						assigned-clocks = <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+								  <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+						assigned-clock-rates = <500000000>, <200000000>;
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
@@ -539,6 +559,12 @@ pgc_hsiomix: power-domains@17 {
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

