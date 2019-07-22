Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B7DF66FDD1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 12:30:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727581AbfGVKay (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 06:30:54 -0400
Received: from inva021.nxp.com ([92.121.34.21]:60780 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726944AbfGVKay (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 06:30:54 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6BBAE2001D1;
        Mon, 22 Jul 2019 12:30:52 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5EDFD20023F;
        Mon, 22 Jul 2019 12:30:52 +0200 (CEST)
Received: from fsr-ub1464-137.ea.freescale.net (fsr-ub1464-137.ea.freescale.net [10.171.82.114])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 1E07A205DB;
        Mon, 22 Jul 2019 12:30:52 +0200 (CEST)
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     shawnguo@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     leoyang.li@nxp.com, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v3] arm64: dts: add the console node for DPAA2 platforms
Date:   Mon, 22 Jul 2019 13:30:43 +0300
Message-Id: <1563791443-26372-1-git-send-email-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 1.9.1
Reply-to: ioana.ciornei@nxp.com
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the console device tree node for the following
DPAA2 based platforms: LS1088A, LS2080A, LS2088A and LX2160A.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v3:
 - sort the node by unit address

Changes in v2:
 - use a generic node name
 - remove leading zeros and 0x from the unit-address

 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index dacd8cf03a7f..20f5ebd74200 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -609,6 +609,11 @@
 				     <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		console@8340020 {
+			compatible = "fsl,dpaa2-console";
+			reg = <0x00000000 0x08340020 0 0x2>;
+		};
+
 		ptp-timer@8b95000 {
 			compatible = "fsl,dpaa2-ptp";
 			reg = <0x0 0x8b95000 0x0 0x100>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
index 3ace91945b72..64101c9962ce 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
@@ -321,6 +321,11 @@
 			};
 		};
 
+		console@8340020 {
+			compatible = "fsl,dpaa2-console";
+			reg = <0x00000000 0x08340020 0 0x2>;
+		};
+
 		ptp-timer@8b95000 {
 			compatible = "fsl,dpaa2-ptp";
 			reg = <0x0 0x8b95000 0x0 0x100>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index e6fdba39453c..4720a8e7304c 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -848,6 +848,11 @@
 			dma-coherent;
 		};
 
+		console@8340020 {
+			compatible = "fsl,dpaa2-console";
+			reg = <0x00000000 0x08340020 0 0x2>;
+		};
+
 		ptp-timer@8b95000 {
 			compatible = "fsl,dpaa2-ptp";
 			reg = <0x0 0x8b95000 0x0 0x100>;
-- 
1.9.1

