Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 560DD32EC2D
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 14:31:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229781AbhCENaz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 08:30:55 -0500
Received: from inva021.nxp.com ([92.121.34.21]:58304 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230395AbhCENat (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 5 Mar 2021 08:30:49 -0500
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F3301201496;
        Fri,  5 Mar 2021 14:30:48 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4872E20148D;
        Fri,  5 Mar 2021 14:30:43 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C59E8402EB;
        Fri,  5 Mar 2021 14:30:35 +0100 (CET)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com, jan.kiszka@siemens.com,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Fabio Estevam <fabio.estevam@nxp.com>
Subject: [PATCH v5 04/18] arm64: dts: imx8qxp: move scu pd node before scu clock node
Date:   Fri,  5 Mar 2021 21:17:34 +0800
Message-Id: <1614950268-22073-6-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SCU clock depends on SCU Power domain. Moving scu pd node before
scu clock can save a hundred of defer probes of all system devices
which depends on power domain and clocks.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
 v2->v5: no changes
 v2: new patch
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 56da25b12950..f4a2a76ee894 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -158,6 +158,11 @@ scu {
 			  &lsio_mu1 1 0
 			  &lsio_mu1 3 3>;
 
+		pd: imx8qx-pd {
+			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
+			#power-domain-cells = <1>;
+		};
+
 		clk: clock-controller {
 			compatible = "fsl,imx8qxp-clk";
 			#clock-cells = <1>;
@@ -175,11 +180,6 @@ ocotp: imx8qx-ocotp {
 			#size-cells = <1>;
 		};
 
-		pd: imx8qx-pd {
-			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
-			#power-domain-cells = <1>;
-		};
-
 		scu_key: scu-key {
 			compatible = "fsl,imx8qxp-sc-key", "fsl,imx-sc-key";
 			linux,keycodes = <KEY_POWER>;
-- 
2.25.1

