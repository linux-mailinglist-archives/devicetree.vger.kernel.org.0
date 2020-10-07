Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95F20286A61
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 23:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728599AbgJGVlV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 17:41:21 -0400
Received: from inva021.nxp.com ([92.121.34.21]:54028 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728615AbgJGVlS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Oct 2020 17:41:18 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 65BBB202512;
        Wed,  7 Oct 2020 22:47:03 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5F4CE207F32;
        Wed,  7 Oct 2020 22:39:52 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 23465202CA;
        Wed,  7 Oct 2020 22:39:52 +0200 (CEST)
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org
Cc:     leoyang.li@nxp.com, devicetree@vger.kernel.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v3 08/11] arm64: dts: ls2088ardb: add PHY nodes for the AQR405 PHYs
Date:   Wed,  7 Oct 2020 23:39:33 +0300
Message-Id: <20201007203936.23953-9-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201007203936.23953-1-ioana.ciornei@nxp.com>
References: <20201007203936.23953-1-ioana.ciornei@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Annotate the EMDIO2 node and describe the other 4 10GBASER PHYs found on
the LS2088ARDB board. Also, add phy-handles for DPMACs 5-8 to their
associated PHY.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
 - none
Changes in v3:
 - none


 .../boot/dts/freescale/fsl-ls2088a-rdb.dts    | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls2088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls2088a-rdb.dts
index 0d1935fcd201..0492c9f76490 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls2088a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls2088a-rdb.dts
@@ -39,6 +39,22 @@ &dpmac4 {
 	phy-handle = <&mdio1_phy4>;
 };
 
+&dpmac5 {
+	phy-handle = <&mdio2_phy1>;
+};
+
+&dpmac6 {
+	phy-handle = <&mdio2_phy2>;
+};
+
+&dpmac7 {
+	phy-handle = <&mdio2_phy3>;
+};
+
+&dpmac8 {
+	phy-handle = <&mdio2_phy4>;
+};
+
 &emdio1 {
 	status = "okay";
 
@@ -63,3 +79,32 @@ mdio1_phy4: emdio1_phy@4 {
 		phy-connection-type = "10gbase-r";
 	};
 };
+
+&emdio2 {
+	status = "okay";
+
+	mdio2_phy1: emdio2_phy@1 {
+		compatible = "ethernet-phy-id03a1.b4b0", "ethernet-phy-ieee802.3-c45";
+		interrupts = <0 1 0x4>;
+		reg = <0x0>;
+		phy-connection-type = "10gbase-r";
+	};
+	mdio2_phy2: emdio2_phy@2 {
+		compatible = "ethernet-phy-id03a1.b4b0", "ethernet-phy-ieee802.3-c45";
+		interrupts = <0 2 0x4>;
+		reg = <0x1>;
+		phy-connection-type = "10gbase-r";
+	};
+	mdio2_phy3: emdio2_phy@3 {
+		compatible = "ethernet-phy-id03a1.b4b0", "ethernet-phy-ieee802.3-c45";
+		interrupts = <0 4 0x4>;
+		reg = <0x2>;
+		phy-connection-type = "10gbase-r";
+	};
+	mdio2_phy4: emdio2_phy@4 {
+		compatible = "ethernet-phy-id03a1.b4b0", "ethernet-phy-ieee802.3-c45";
+		interrupts = <0 5 0x4>;
+		reg = <0x3>;
+		phy-connection-type = "10gbase-r";
+	};
+};
-- 
2.28.0

