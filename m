Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 271B62EA3A2
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 04:07:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726168AbhAEDFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 22:05:10 -0500
Received: from inva020.nxp.com ([92.121.34.13]:37112 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726163AbhAEDFK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 22:05:10 -0500
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C362D1A009F;
        Tue,  5 Jan 2021 04:04:22 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6AA081A08A7;
        Tue,  5 Jan 2021 04:04:19 +0100 (CET)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E525F402A9;
        Tue,  5 Jan 2021 04:04:13 +0100 (CET)
From:   Yangbo Lu <yangbo.lu@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Yangbo Lu <yangbo.lu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Walle <michael@walle.cc>
Subject: [v2] arm64: dts: freescale: use fixed index mmcN for NXP layerscape reference boards
Date:   Tue,  5 Jan 2021 11:11:22 +0800
Message-Id: <20210105031122.9847-1-yangbo.lu@nxp.com>
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
Changes for v2:
	- Dropped changes for ls1012afrwy.
---
 arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts | 2 ++
 arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts | 2 ++
 arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts | 2 ++
 5 files changed, 16 insertions(+)

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

