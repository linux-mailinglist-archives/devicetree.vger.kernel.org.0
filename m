Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD3B62EC029
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:10:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbhAFPJt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:09:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725890AbhAFPJt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 10:09:49 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 670F9C06134C
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 07:09:08 -0800 (PST)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6CCA5878;
        Wed,  6 Jan 2021 16:09:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1609945747;
        bh=c1cYvZRnrt+AyL9EneIsFdjVf9murI3rERm+y/j7hRA=;
        h=From:To:Cc:Subject:Date:From;
        b=Ljm0PIYzH2aBQ9ltreQc6V3jE0uv2dA0QfGo+4UADA3//GLcUXbdxLiO1ltI8YQk/
         Xb6CCq1z/yuHQj6+TGCwVju/2CsWbBdcwF4RM67iJbWMVZBT8f3EAw3PcBRCJDJrzp
         zWES+bs5WuCYOVJ0CGTcTQ+MA+T1C+rSpaloNJsw=
From:   Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH] ARM: dts: imx6q(dl): Move 'port' nodes under 'ports' for HDMI encoder
Date:   Wed,  6 Jan 2021 17:08:51 +0200
Message-Id: <20210106150851.8480-1-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In preparation for the conversion of the DWC HDMI TX device tree
bindings to YAML, move the HDMI encoder's 'port' nodes under a 'ports'
node. The 'ports' node is optional in the OF graph implementation, but
YAML bindings require it.

Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
 arch/arm/boot/dts/imx6q.dtsi   | 20 +++++++++++---------
 arch/arm/boot/dts/imx6qdl.dtsi | 25 ++++++++++++++-----------
 2 files changed, 25 insertions(+), 20 deletions(-)

This patch is needed to avoid a DT validation warning when converting
the DWC HDMI TX bindings to YAML.

diff --git a/arch/arm/boot/dts/imx6q.dtsi b/arch/arm/boot/dts/imx6q.dtsi
index 5277e3903291..8d209c1b3ca7 100644
--- a/arch/arm/boot/dts/imx6q.dtsi
+++ b/arch/arm/boot/dts/imx6q.dtsi
@@ -406,19 +406,21 @@ ipu2_csi1_mux_to_ipu2_csi1: endpoint {
 &hdmi {
 	compatible = "fsl,imx6q-hdmi";
 
-	port@2 {
-		reg = <2>;
+	ports {
+		port@2 {
+			reg = <2>;
 
-		hdmi_mux_2: endpoint {
-			remote-endpoint = <&ipu2_di0_hdmi>;
+			hdmi_mux_2: endpoint {
+				remote-endpoint = <&ipu2_di0_hdmi>;
+			};
 		};
-	};
 
-	port@3 {
-		reg = <3>;
+		port@3 {
+			reg = <3>;
 
-		hdmi_mux_3: endpoint {
-			remote-endpoint = <&ipu2_di1_hdmi>;
+			hdmi_mux_3: endpoint {
+				remote-endpoint = <&ipu2_di1_hdmi>;
+			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 7a8837cbe21b..64bd7ff8eae3 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -178,8 +178,6 @@ gpmi: nand-controller@112000 {
 		};
 
 		hdmi: hdmi@120000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
 			reg = <0x00120000 0x9000>;
 			interrupts = <0 115 0x04>;
 			gpr = <&gpr>;
@@ -188,19 +186,24 @@ hdmi: hdmi@120000 {
 			clock-names = "iahb", "isfr";
 			status = "disabled";
 
-			port@0 {
-				reg = <0>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
 
-				hdmi_mux_0: endpoint {
-					remote-endpoint = <&ipu1_di0_hdmi>;
+				port@0 {
+					reg = <0>;
+
+					hdmi_mux_0: endpoint {
+						remote-endpoint = <&ipu1_di0_hdmi>;
+					};
 				};
-			};
 
-			port@1 {
-				reg = <1>;
+				port@1 {
+					reg = <1>;
 
-				hdmi_mux_1: endpoint {
-					remote-endpoint = <&ipu1_di1_hdmi>;
+					hdmi_mux_1: endpoint {
+						remote-endpoint = <&ipu1_di1_hdmi>;
+					};
 				};
 			};
 		};
-- 
Regards,

Laurent Pinchart

