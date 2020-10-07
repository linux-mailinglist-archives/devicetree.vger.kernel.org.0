Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79517286A9F
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 00:00:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728806AbgJGWAo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 18:00:44 -0400
Received: from inva021.nxp.com ([92.121.34.21]:39636 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728804AbgJGWAo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Oct 2020 18:00:44 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 31F18202917;
        Wed,  7 Oct 2020 23:12:51 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4D64F207F37;
        Wed,  7 Oct 2020 22:39:53 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0F1902030C;
        Wed,  7 Oct 2020 22:39:53 +0200 (CEST)
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org
Cc:     leoyang.li@nxp.com, devicetree@vger.kernel.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v3 11/11] arm64: dts: lx2160ardb: add nodes for the AQR107 PHYs
Date:   Wed,  7 Oct 2020 23:39:36 +0300
Message-Id: <20201007203936.23953-12-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201007203936.23953-1-ioana.ciornei@nxp.com>
References: <20201007203936.23953-1-ioana.ciornei@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Annotate the EMDIO1 node and describe the 2 AQR107 PHYs found on the
LX2160ARDB board. Also, add the necessary phy-handles for DPMACs 3 and 4
to their associated PHY.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
 - none
Changes in v3:
 - none

 .../boot/dts/freescale/fsl-lx2160a-rdb.dts    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
index 54fe8cd3a711..7723ad5efd37 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
@@ -35,6 +35,18 @@ &crypto {
 	status = "okay";
 };
 
+&dpmac3 {
+	phy-handle = <&aquantia_phy1>;
+	phy-connection-type = "usxgmii";
+	managed = "in-band-status";
+};
+
+&dpmac4 {
+	phy-handle = <&aquantia_phy2>;
+	phy-connection-type = "usxgmii";
+	managed = "in-band-status";
+};
+
 &dpmac17 {
 	phy-handle = <&rgmii_phy1>;
 	phy-connection-type = "rgmii-id";
@@ -61,6 +73,18 @@ rgmii_phy2: ethernet-phy@2 {
 		reg = <0x2>;
 		eee-broken-1000t;
 	};
+
+	aquantia_phy1: ethernet-phy@4 {
+		/* AQR107 PHY */
+		compatible = "ethernet-phy-ieee802.3-c45";
+		reg = <0x4>;
+	};
+
+	aquantia_phy2: ethernet-phy@5 {
+		/* AQR107 PHY */
+		compatible = "ethernet-phy-ieee802.3-c45";
+		reg = <0x5>;
+	};
 };
 
 &esdhc0 {
@@ -156,6 +180,14 @@ rtc@51 {
 	};
 };
 
+&pcs_mdio3 {
+	status = "okay";
+};
+
+&pcs_mdio4 {
+	status = "okay";
+};
+
 &sata0 {
 	status = "okay";
 };
-- 
2.28.0

