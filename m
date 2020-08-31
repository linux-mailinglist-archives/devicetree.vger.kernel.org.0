Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E97B5257A79
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 15:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727935AbgHaNdK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 09:33:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727819AbgHaN3b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 09:29:31 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BE6AC061236
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 06:27:55 -0700 (PDT)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kCjqh-0005Z3-Fi; Mon, 31 Aug 2020 15:27:51 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kCjqg-0001rY-TS; Mon, 31 Aug 2020 15:27:50 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com
Cc:     kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: imx6qdl: move iomuxc compatible assignment out of root node
Date:   Mon, 31 Aug 2020 15:27:49 +0200
Message-Id: <20200831132749.3902-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The common imx6qdl.dtsi already defines the iomuxc phandle. Make use of
it in the imx6dl.dtsi and imx6q.dtsi.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6dl.dtsi | 8 ++++----
 arch/arm/boot/dts/imx6q.dtsi  | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/imx6dl.dtsi b/arch/arm/boot/dts/imx6dl.dtsi
index 77b65a402e19..fdd81fdc3f35 100644
--- a/arch/arm/boot/dts/imx6dl.dtsi
+++ b/arch/arm/boot/dts/imx6dl.dtsi
@@ -88,10 +88,6 @@
 		};
 
 		aips1: bus@2000000 {
-			iomuxc: pinctrl@20e0000 {
-				compatible = "fsl,imx6dl-iomuxc";
-			};
-
 			pxp: pxp@20f0000 {
 				reg = <0x020f0000 0x4000>;
 				interrupts = <0 98 IRQ_TYPE_LEVEL_HIGH>;
@@ -298,6 +294,10 @@
 	compatible = "fsl,imx6dl-hdmi";
 };
 
+&iomuxc {
+	compatible = "fsl,imx6dl-iomuxc";
+};
+
 &ipu1_csi1 {
 	ipu1_csi1_from_ipu1_csi1_mux: endpoint {
 		remote-endpoint = <&ipu1_csi1_mux_to_ipu1_csi1>;
diff --git a/arch/arm/boot/dts/imx6q.dtsi b/arch/arm/boot/dts/imx6q.dtsi
index 78a4d64929f3..5277e3903291 100644
--- a/arch/arm/boot/dts/imx6q.dtsi
+++ b/arch/arm/boot/dts/imx6q.dtsi
@@ -182,10 +182,6 @@
 					status = "disabled";
 				};
 			};
-
-			iomuxc: pinctrl@20e0000 {
-				compatible = "fsl,imx6q-iomuxc";
-			};
 		};
 
 		sata: sata@2200000 {
@@ -427,6 +423,10 @@
 	};
 };
 
+&iomuxc {
+	compatible = "fsl,imx6q-iomuxc";
+};
+
 &ipu1_csi1 {
 	ipu1_csi1_from_mipi_vc1: endpoint {
 		remote-endpoint = <&mipi_vc1_to_ipu1_csi1>;
-- 
2.20.1

