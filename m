Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40E1929496F
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 10:40:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408621AbgJUIkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 04:40:45 -0400
Received: from inva020.nxp.com ([92.121.34.13]:43128 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729561AbgJUIko (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Oct 2020 04:40:44 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 24DD71A11C7;
        Wed, 21 Oct 2020 10:40:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 76F411A0C0E;
        Wed, 21 Oct 2020 10:40:40 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2E89D402BE;
        Wed, 21 Oct 2020 10:40:37 +0200 (CEST)
From:   Yangbo Lu <yangbo.lu@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Yangbo Lu <yangbo.lu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: freescale: use fixed index mmcN for layerscape
Date:   Wed, 21 Oct 2020 16:31:36 +0800
Message-Id: <20201021083136.10554-1-yangbo.lu@nxp.com>
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
 arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi | 2 ++
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 ++
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
index 6a2c091..a3b04d1 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
@@ -18,6 +18,8 @@
 
 	aliases {
 		crypto = &crypto;
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
 		rtc1 = &ftm_alarm0;
 		rtic-a = &rtic_a;
 		rtic-b = &rtic_b;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 73e4f94..16ac1be 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -18,6 +18,8 @@
 	#size-cells = <2>;
 
 	aliases {
+		mmc0 = &esdhc;
+		mmc1 = &esdhc1;
 		rtc1 = &ftm_alarm0;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 83072da6..cb68db8 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -17,6 +17,8 @@
 	#size-cells = <2>;
 
 	aliases {
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
 		rtc1 = &ftm_alarm0;
 	};
 
-- 
2.7.4

