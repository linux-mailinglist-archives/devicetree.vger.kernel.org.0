Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5559C2C95A6
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 04:14:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727518AbgLADOS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 22:14:18 -0500
Received: from inva021.nxp.com ([92.121.34.21]:45308 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727517AbgLADOR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 22:14:17 -0500
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9D8442007A7;
        Tue,  1 Dec 2020 04:13:30 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 31B27200763;
        Tue,  1 Dec 2020 04:13:27 +0100 (CET)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A42BD402C4;
        Tue,  1 Dec 2020 04:13:22 +0100 (CET)
From:   Yangbo Lu <yangbo.lu@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Yangbo Lu <yangbo.lu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Walle <michael@walle.cc>
Subject: [PATCH] arm64: dts: freescale: use fixed index mmcN for NXP layerscape reference boards
Date:   Tue,  1 Dec 2020 11:21:27 +0800
Message-Id: <20201201032127.41681-1-yangbo.lu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The eSDHC driver has converted to use asynchronous probe.
Let's use fixed index mmcN for eSDHC controllers, so that
we can ignore the effect on usage, and avoid problem on
previous use cases with fixed index mmcblkN.

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts  | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts  | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts  | 2 ++
 arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts  | 2 ++
 arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts  | 2 ++
 6 files changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
index 6290e2f..76b7e29 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
@@ -14,6 +14,11 @@
 / {
 	model = "LS1012A FRWY Board";
 	compatible = "fsl,ls1012a-frwy", "fsl,ls1012a";
+
+	aliases {
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
+	};
 };
 
 &duart0 {
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
index 449475a..e22c5e7 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
@@ -13,6 +13,11 @@
 	model = "LS1012A QDS Board";
 	compatible = "fsl,ls1012a-qds", "fsl,ls1012a";
 
+	aliases {
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
+	};
+
 	sys_mclk: clock-mclk {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
index d45c176..f939d65 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
@@ -12,6 +12,11 @@
 / {
 	model = "LS1012A RDB Board";
 	compatible = "fsl,ls1012a-rdb", "fsl,ls1012a";
+
+	aliases {
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
+	};
 };
 
 &duart0 {
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
index 2d1fe6c..4ec1a4c 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
@@ -15,6 +15,8 @@
 	aliases {
 		crypto = &crypto;
 		serial0 = &uart0;
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
index 7723ad5..bdb3b04 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
@@ -15,6 +15,8 @@
 	aliases {
 		crypto = &crypto;
 		serial0 = &uart0;
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
index 9178684..69e99cb 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
@@ -15,6 +15,8 @@
 	aliases {
 		crypto = &crypto;
 		serial0 = &uart0;
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
 	};
 
 	chosen {
-- 
2.7.4

