Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B9AB466C07
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 23:19:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237245AbhLBWXB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 17:23:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237213AbhLBWXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 17:23:01 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C8E2C061757
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 14:19:38 -0800 (PST)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id DC57C1203;
        Thu,  2 Dec 2021 23:19:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1638483576;
        bh=yXOiUCZXIj4uLGP5ei/9E48gV0y2BPSdyJfFIR2Iq6o=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=NFIe6od0diZNl9Fu1b7/56+gpgBpuwlTBRp0lWNLkLHpTZ4uSCx+EhOJ5iDpGB0mv
         a2IAK+QnsZLuuCsK9odu5R4VRRZZUX4cClDmv6gnXbZH9YrrukIZU0iLsjnQ2Iz4v2
         pfVk0SNOfHAmv2iZjl7BgUYUUgRQLb2VJxKutg6E=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 3/3] ARM: dts: imx7: Group mipi_csi 'port' children in a 'ports' node
Date:   Fri,  3 Dec 2021 00:19:03 +0200
Message-Id: <20211202221903.21882-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
References: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The nxp,imx7-mipi-csi2.yaml binding requires ports to be grouped in a
ports node, as multiple ports are present. Fix imx7s.dtsi and the only
board file that references the mipi_csi ports.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm/boot/dts/imx7s-warp.dts | 13 +++++++------
 arch/arm/boot/dts/imx7s.dtsi     | 21 ++++++++++++---------
 2 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/imx7s-warp.dts b/arch/arm/boot/dts/imx7s-warp.dts
index 614d252f029f..4f1edef06c92 100644
--- a/arch/arm/boot/dts/imx7s-warp.dts
+++ b/arch/arm/boot/dts/imx7s-warp.dts
@@ -250,14 +250,15 @@ &mipi_csi {
 	clock-frequency = <166000000>;
 	status = "okay";
 
-	port@0 {
-		reg = <0>;
+	ports {
+		port@0 {
+			reg = <0>;
 
-		mipi_from_sensor: endpoint {
-			remote-endpoint = <&ov2680_to_mipi>;
-			data-lanes = <1>;
+			mipi_from_sensor: endpoint {
+				remote-endpoint = <&ov2680_to_mipi>;
+				data-lanes = <1>;
+			};
 		};
-
 	};
 };
 
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 7e6b99ece7e9..52a9aeecdbb2 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -809,8 +809,6 @@ lcdif: lcdif@30730000 {
 			mipi_csi: mipi-csi@30750000 {
 				compatible = "fsl,imx7-mipi-csi2";
 				reg = <0x30750000 0x10000>;
-				#address-cells = <1>;
-				#size-cells = <0>;
 				interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
 					 <&clks IMX7D_MIPI_CSI_ROOT_CLK>,
@@ -821,15 +819,20 @@ mipi_csi: mipi-csi@30750000 {
 				resets = <&src IMX7_RESET_MIPI_PHY_MRST>;
 				status = "disabled";
 
-				port@0 {
-					reg = <0>;
-				};
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
 
-				port@1 {
-					reg = <1>;
+					port@0 {
+						reg = <0>;
+					};
 
-					mipi_vc0_to_csi_mux: endpoint {
-						remote-endpoint = <&csi_mux_from_mipi_vc0>;
+					port@1 {
+						reg = <1>;
+
+						mipi_vc0_to_csi_mux: endpoint {
+							remote-endpoint = <&csi_mux_from_mipi_vc0>;
+						};
 					};
 				};
 			};
-- 
Regards,

Laurent Pinchart

