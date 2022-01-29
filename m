Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B3064A2C4D
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 08:09:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348978AbiA2HJZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 02:09:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243344AbiA2HJY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 02:09:24 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B2A1C061714
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 23:09:24 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id B2173B810B6
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 07:09:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE033C340E7;
        Sat, 29 Jan 2022 07:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643440161;
        bh=k6ny6wwDDIUh6ws2zSY/wifOA5OlT0xvE78DfK8tcvM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=uK5GjjQXyPIRvHzftg0y2zcYNVzzcmcLtSsNnVoyepoKiCqutN4oRucavamR3okGj
         bi6FIdK8zn2DsXnm1xqXcgz48GfHmTC4fKTsx8ohD4Ze1YLMOcA8xHVMrDVsOxiPY7
         bt8zPO99tcbbfJb/iJ3f1kVaw/XxuJficeWCtZScWy5meTh7zb4TAARJd/7ZSwxh8Y
         l4k/ipo8O4hH30E5S9dWCfJLbz2Vx1wzcwLso84ix+j4tiPZWfFs+j4cyZD5lMGFEf
         1VXD9id6I5tEwQYg/XD7DVsB4nd2tJP5sCLo7tfC3E0lv7L51mKJJcihq1KvSu0Ir3
         +yigMflDNWijQ==
From:   Shawn Guo <shawnguo@kernel.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/2] arm64: dts: fsl-ls1028a-qds: Drop overlay syntax hard coding
Date:   Sat, 29 Jan 2022 15:09:11 +0800
Message-Id: <20220129070912.9836-2-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220129070912.9836-1-shawnguo@kernel.org>
References: <20220129070912.9836-1-shawnguo@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As suggested by commit 9ae8578b517a ("of: Documentation: change overlay
example to use current syntax"), there is no need to have overlay syntax
be hard coded in the device tree source file any more.

Signed-off-by: Shawn Guo <shawnguo@kernel.org>
---
 .../dts/freescale/fsl-ls1028a-qds-13bb.dts    | 146 ++++++++----------
 .../dts/freescale/fsl-ls1028a-qds-65bb.dts    | 138 +++++++----------
 .../dts/freescale/fsl-ls1028a-qds-7777.dts    |  99 ++++++------
 .../dts/freescale/fsl-ls1028a-qds-85bb.dts    | 134 +++++++---------
 .../dts/freescale/fsl-ls1028a-qds-899b.dts    |  86 +++++------
 .../dts/freescale/fsl-ls1028a-qds-9999.dts    |  97 ++++++------
 6 files changed, 299 insertions(+), 401 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-13bb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-13bb.dts
index f748a2c12a70..f826392c23fa 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-13bb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-13bb.dts
@@ -12,102 +12,80 @@
 /dts-v1/;
 /plugin/;
 
-/ {
-	fragment@0 {
-		target = <&mdio_slot1>;
-
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			slot1_sgmii: ethernet-phy@2 {
-				/* AQR112 */
-				reg = <0x2>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
-		};
-	};
-
-	fragment@1 {
-		target = <&enetc_port0>;
-
-		__overlay__ {
-			phy-handle = <&slot1_sgmii>;
-			phy-mode = "usxgmii";
-			managed = "in-band-status";
-			status = "okay";
-		};
+&mdio_slot1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	slot1_sgmii: ethernet-phy@2 {
+		/* AQR112 */
+		reg = <0x2>;
+		compatible = "ethernet-phy-ieee802.3-c45";
 	};
+};
 
-	fragment@2 {
-		target = <&mdio_slot2>;
-
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			/* 4 ports on AQR412 */
-			slot2_qxgmii0: ethernet-phy@0 {
-				reg = <0x0>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
-
-			slot2_qxgmii1: ethernet-phy@1 {
-				reg = <0x1>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
+&enetc_port0 {
+	phy-handle = <&slot1_sgmii>;
+	phy-mode = "usxgmii";
+	managed = "in-band-status";
+	status = "okay";
+};
 
-			slot2_qxgmii2: ethernet-phy@2 {
-				reg = <0x2>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
+&mdio_slot2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-			slot2_qxgmii3: ethernet-phy@3 {
-				reg = <0x3>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
-		};
+	/* 4 ports on AQR412 */
+	slot2_qxgmii0: ethernet-phy@0 {
+		reg = <0x0>;
+		compatible = "ethernet-phy-ieee802.3-c45";
 	};
 
-	fragment@3 {
-		target = <&mscc_felix_ports>;
+	slot2_qxgmii1: ethernet-phy@1 {
+		reg = <0x1>;
+		compatible = "ethernet-phy-ieee802.3-c45";
+	};
 
-		__overlay__ {
-			port@0 {
-				status = "okay";
-				phy-handle = <&slot2_qxgmii0>;
-				phy-mode = "usxgmii";
-				managed = "in-band-status";
-			};
+	slot2_qxgmii2: ethernet-phy@2 {
+		reg = <0x2>;
+		compatible = "ethernet-phy-ieee802.3-c45";
+	};
 
-			port@1 {
-				status = "okay";
-				phy-handle = <&slot2_qxgmii1>;
-				phy-mode = "usxgmii";
-				managed = "in-band-status";
-			};
+	slot2_qxgmii3: ethernet-phy@3 {
+		reg = <0x3>;
+		compatible = "ethernet-phy-ieee802.3-c45";
+	};
+};
 
-			port@2 {
-				status = "okay";
-				phy-handle = <&slot2_qxgmii2>;
-				phy-mode = "usxgmii";
-				managed = "in-band-status";
-			};
+&mscc_felix_ports {
+	port@0 {
+		status = "okay";
+		phy-handle = <&slot2_qxgmii0>;
+		phy-mode = "usxgmii";
+		managed = "in-band-status";
+	};
 
-			port@3 {
-				status = "okay";
-				phy-handle = <&slot2_qxgmii3>;
-				phy-mode = "usxgmii";
-				managed = "in-band-status";
-			};
-		};
+	port@1 {
+		status = "okay";
+		phy-handle = <&slot2_qxgmii1>;
+		phy-mode = "usxgmii";
+		managed = "in-band-status";
 	};
 
-	fragment@4 {
-		target = <&mscc_felix>;
+	port@2 {
+		status = "okay";
+		phy-handle = <&slot2_qxgmii2>;
+		phy-mode = "usxgmii";
+		managed = "in-band-status";
+	};
 
-		__overlay__ {
-			status = "okay";
-		};
+	port@3 {
+		status = "okay";
+		phy-handle = <&slot2_qxgmii3>;
+		phy-mode = "usxgmii";
+		managed = "in-band-status";
 	};
 };
+
+&mscc_felix {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
index 8ffb707a1576..bd88438c2ecd 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
@@ -11,98 +11,78 @@
 /dts-v1/;
 /plugin/;
 
-/ {
-	fragment@0 {
-		target = <&mdio_slot1>;
-
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			slot1_sgmii: ethernet-phy@2 {
-				/* AQR112 */
-				reg = <0x2>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
-		};
-	};
+&mdio_slot1 {
 
-	fragment@1 {
-		target = <&enetc_port0>;
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-		__overlay__ {
-			phy-handle = <&slot1_sgmii>;
-			phy-mode = "2500base-x";
-			managed = "in-band-status";
-			status = "okay";
-		};
+	slot1_sgmii: ethernet-phy@2 {
+		/* AQR112 */
+		reg = <0x2>;
+		compatible = "ethernet-phy-ieee802.3-c45";
 	};
+};
 
-	fragment@2 {
-		target = <&mdio_slot2>;
+&enetc_port0 {
+	phy-handle = <&slot1_sgmii>;
+	phy-mode = "2500base-x";
+	managed = "in-band-status";
+	status = "okay";
+};
 
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
+&mdio_slot2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-			/* 4 ports on VSC8514 */
-			slot2_qsgmii0: ethernet-phy@8 {
-				reg = <0x8>;
-			};
+	/* 4 ports on VSC8514 */
+	slot2_qsgmii0: ethernet-phy@8 {
+		reg = <0x8>;
+	};
 
-			slot2_qsgmii1: ethernet-phy@9 {
-				reg = <0x9>;
-			};
+	slot2_qsgmii1: ethernet-phy@9 {
+		reg = <0x9>;
+	};
 
-			slot2_qsgmii2: ethernet-phy@a {
-				reg = <0xa>;
-			};
+	slot2_qsgmii2: ethernet-phy@a {
+		reg = <0xa>;
+	};
 
-			slot2_qsgmii3: ethernet-phy@b {
-				reg = <0xb>;
-			};
-		};
+	slot2_qsgmii3: ethernet-phy@b {
+		reg = <0xb>;
 	};
+};
 
-	fragment@3 {
-		target = <&mscc_felix_ports>;
-
-		__overlay__ {
-			port@0 {
-				status = "okay";
-				phy-handle = <&slot2_qsgmii0>;
-				phy-mode = "qsgmii";
-				managed = "in-band-status";
-			};
-
-			port@1 {
-				status = "okay";
-				phy-handle = <&slot2_qsgmii1>;
-				phy-mode = "qsgmii";
-				managed = "in-band-status";
-			};
-
-			port@2 {
-				status = "okay";
-				phy-handle = <&slot2_qsgmii2>;
-				phy-mode = "qsgmii";
-				managed = "in-band-status";
-			};
-
-			port@3 {
-				status = "okay";
-				phy-handle = <&slot2_qsgmii3>;
-				phy-mode = "qsgmii";
-				managed = "in-band-status";
-			};
-		};
+&mscc_felix_ports {
+	port@0 {
+		status = "okay";
+		phy-handle = <&slot2_qsgmii0>;
+		phy-mode = "qsgmii";
+		managed = "in-band-status";
 	};
 
-	fragment@4 {
-		target = <&mscc_felix>;
+	port@1 {
+		status = "okay";
+		phy-handle = <&slot2_qsgmii1>;
+		phy-mode = "qsgmii";
+		managed = "in-band-status";
+	};
+
+	port@2 {
+		status = "okay";
+		phy-handle = <&slot2_qsgmii2>;
+		phy-mode = "qsgmii";
+		managed = "in-band-status";
+	};
 
-		__overlay__ {
-			status = "okay";
-		};
+	port@3 {
+		status = "okay";
+		phy-handle = <&slot2_qsgmii3>;
+		phy-mode = "qsgmii";
+		managed = "in-band-status";
 	};
 };
+
+&mscc_felix {
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-7777.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-7777.dts
index eb6a1e674f10..1dff68d7484b 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-7777.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-7777.dts
@@ -12,71 +12,58 @@
 /dts-v1/;
 /plugin/;
 
-/ {
-	fragment@0 {
-		target = <&mdio_slot1>;
+&mdio_slot1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			/* 4 ports on AQR412 */
-			slot1_sxgmii0: ethernet-phy@0 {
-				reg = <0x0>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
-
-			slot1_sxgmii1: ethernet-phy@1 {
-				reg = <0x1>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
-
-			slot1_sxgmii2: ethernet-phy@2 {
-				reg = <0x2>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
+	/* 4 ports on AQR412 */
+	slot1_sxgmii0: ethernet-phy@0 {
+		reg = <0x0>;
+		compatible = "ethernet-phy-ieee802.3-c45";
+	};
 
-			slot1_sxgmii3: ethernet-phy@3 {
-				reg = <0x3>;
-				compatible = "ethernet-phy-ieee802.3-c45";
-			};
-		};
+	slot1_sxgmii1: ethernet-phy@1 {
+		reg = <0x1>;
+		compatible = "ethernet-phy-ieee802.3-c45";
 	};
 
-	fragment@1 {
-		target = <&mscc_felix_ports>;
+	slot1_sxgmii2: ethernet-phy@2 {
+		reg = <0x2>;
+		compatible = "ethernet-phy-ieee802.3-c45";
+	};
 
-		__overlay__ {
-			port@0 {
-				status = "okay";
-				phy-handle = <&slot1_sxgmii0>;
-				phy-mode = "2500base-x";
-			};
+	slot1_sxgmii3: ethernet-phy@3 {
+		reg = <0x3>;
+		compatible = "ethernet-phy-ieee802.3-c45";
+	};
+};
 
-			port@1 {
-				status = "okay";
-				phy-handle = <&slot1_sxgmii1>;
-				phy-mode = "2500base-x";
-			};
+&mscc_felix_ports {
+	port@0 {
+		status = "okay";
+		phy-handle = <&slot1_sxgmii0>;
+		phy-mode = "2500base-x";
+	};
 
-			port@2 {
-				status = "okay";
-				phy-handle = <&slot1_sxgmii2>;
-				phy-mode = "2500base-x";
-			};
+	port@1 {
+		status = "okay";
+		phy-handle = <&slot1_sxgmii1>;
+		phy-mode = "2500base-x";
+	};
 
-			port@3 {
-				status = "okay";
-				phy-handle = <&slot1_sxgmii3>;
-				phy-mode = "2500base-x";
-			};
-		};
+	port@2 {
+		status = "okay";
+		phy-handle = <&slot1_sxgmii2>;
+		phy-mode = "2500base-x";
 	};
 
-	fragment@2 {
-		target = <&mscc_felix>;
-		__overlay__ {
-			status = "okay";
-		};
+	port@3 {
+		status = "okay";
+		phy-handle = <&slot1_sxgmii3>;
+		phy-mode = "2500base-x";
 	};
 };
+
+&mscc_felix {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-85bb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-85bb.dts
index 8e90c3088ba1..19424d349713 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-85bb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-85bb.dts
@@ -11,97 +11,75 @@
 /dts-v1/;
 /plugin/;
 
-/ {
-	fragment@0 {
-		target = <&mdio_slot1>;
+&mdio_slot1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			slot1_sgmii: ethernet-phy@1c {
-				/* 1st port on VSC8234 */
-				reg = <0x1c>;
-			};
-		};
+	slot1_sgmii: ethernet-phy@1c {
+		/* 1st port on VSC8234 */
+		reg = <0x1c>;
 	};
+};
 
-	fragment@1 {
-		target = <&enetc_port0>;
-
-		__overlay__ {
-			phy-handle = <&slot1_sgmii>;
-			phy-mode = "sgmii";
-			managed = "in-band-status";
-			status = "okay";
-		};
-	};
-
-	fragment@2 {
-		target = <&mdio_slot2>;
-
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			/* 4 ports on VSC8514 */
-			slot2_qsgmii0: ethernet-phy@8 {
-				reg = <0x8>;
-			};
-
-			slot2_qsgmii1: ethernet-phy@9 {
-				reg = <0x9>;
-			};
+&enetc_port0 {
+	phy-handle = <&slot1_sgmii>;
+	phy-mode = "sgmii";
+	managed = "in-band-status";
+	status = "okay";
+};
 
-			slot2_qsgmii2: ethernet-phy@a {
-				reg = <0xa>;
-			};
+&mdio_slot2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-			slot2_qsgmii3: ethernet-phy@b {
-				reg = <0xb>;
-			};
-		};
+	/* 4 ports on VSC8514 */
+	slot2_qsgmii0: ethernet-phy@8 {
+		reg = <0x8>;
 	};
 
-	fragment@3 {
-		target = <&mscc_felix_ports>;
+	slot2_qsgmii1: ethernet-phy@9 {
+		reg = <0x9>;
+	};
 
-		__overlay__ {
-			port@0 {
-				status = "okay";
-				phy-handle = <&slot2_qsgmii0>;
-				phy-mode = "qsgmii";
-				managed = "in-band-status";
-			};
+	slot2_qsgmii2: ethernet-phy@a {
+		reg = <0xa>;
+	};
 
-			port@1 {
-				status = "okay";
-				phy-handle = <&slot2_qsgmii1>;
-				phy-mode = "qsgmii";
-				managed = "in-band-status";
-			};
+	slot2_qsgmii3: ethernet-phy@b {
+		reg = <0xb>;
+	};
+};
 
-			port@2 {
-				status = "okay";
-				phy-handle = <&slot2_qsgmii2>;
-				phy-mode = "qsgmii";
-				managed = "in-band-status";
-			};
+&mscc_felix_ports {
+	port@0 {
+		status = "okay";
+		phy-handle = <&slot2_qsgmii0>;
+		phy-mode = "qsgmii";
+		managed = "in-band-status";
+	};
 
-			port@3 {
-				status = "okay";
-				phy-handle = <&slot2_qsgmii3>;
-				phy-mode = "qsgmii";
-				managed = "in-band-status";
-			};
-		};
+	port@1 {
+		status = "okay";
+		phy-handle = <&slot2_qsgmii1>;
+		phy-mode = "qsgmii";
+		managed = "in-band-status";
 	};
 
-	fragment@4 {
-		target = <&mscc_felix>;
+	port@2 {
+		status = "okay";
+		phy-handle = <&slot2_qsgmii2>;
+		phy-mode = "qsgmii";
+		managed = "in-band-status";
+	};
 
-		__overlay__ {
-			status = "okay";
-		};
+	port@3 {
+		status = "okay";
+		phy-handle = <&slot2_qsgmii3>;
+		phy-mode = "qsgmii";
+		managed = "in-band-status";
 	};
 };
+
+&mscc_felix {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-899b.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-899b.dts
index 5d0a094e6c44..fb85847f778f 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-899b.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-899b.dts
@@ -11,65 +11,51 @@
 /dts-v1/;
 /plugin/;
 
-/ {
-	fragment@0 {
-		target = <&mdio_slot1>;
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
+&mdio_slot1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-			/* VSC8234 */
-			slot1_sgmii0: ethernet-phy@1c {
-				reg = <0x1c>;
-			};
-
-			slot1_sgmii1: ethernet-phy@1d {
-				reg = <0x1d>;
-			};
+	/* VSC8234 */
+	slot1_sgmii0: ethernet-phy@1c {
+		reg = <0x1c>;
+	};
 
-			slot1_sgmii2: ethernet-phy@1e {
-				reg = <0x1e>;
-			};
+	slot1_sgmii1: ethernet-phy@1d {
+		reg = <0x1d>;
+	};
 
-			slot1_sgmii3: ethernet-phy@1f {
-				reg = <0x1f>;
-			};
-		};
+	slot1_sgmii2: ethernet-phy@1e {
+		reg = <0x1e>;
 	};
 
-	fragment@1 {
-		target = <&enetc_port0>;
-		__overlay__ {
-			phy-handle = <&slot1_sgmii0>;
-			phy-mode = "sgmii";
-			managed = "in-band-status";
-			status = "okay";
-		};
+	slot1_sgmii3: ethernet-phy@1f {
+		reg = <0x1f>;
 	};
+};
 
-	fragment@2 {
-		target = <&mscc_felix_ports>;
-		__overlay__ {
-			port@1 {
-				status = "okay";
-				phy-handle = <&slot1_sgmii1>;
-				phy-mode = "sgmii";
-				managed = "in-band-status";
-			};
+&enetc_port0 {
+	phy-handle = <&slot1_sgmii0>;
+	phy-mode = "sgmii";
+	managed = "in-band-status";
+	status = "okay";
+};
 
-			port@2 {
-				status = "okay";
-				phy-handle = <&slot1_sgmii2>;
-				phy-mode = "sgmii";
-				managed = "in-band-status";
-			};
-		};
+&mscc_felix_ports {
+	port@1 {
+		status = "okay";
+		phy-handle = <&slot1_sgmii1>;
+		phy-mode = "sgmii";
+		managed = "in-band-status";
 	};
 
-	fragment@3 {
-		target = <&mscc_felix>;
-		__overlay__ {
-			status = "okay";
-		};
+	port@2 {
+		status = "okay";
+		phy-handle = <&slot1_sgmii2>;
+		phy-mode = "sgmii";
+		managed = "in-band-status";
 	};
 };
+
+&mscc_felix {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-9999.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-9999.dts
index 1ef743c48e84..63e46fad22bd 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-9999.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-9999.dts
@@ -11,69 +11,58 @@
 /dts-v1/;
 /plugin/;
 
-/ {
-	fragment@0 {
-		target = <&mdio_slot1>;
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
+&mdio_slot1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-			/* VSC8234 */
-			slot1_sgmii0: ethernet-phy@1c {
-				reg = <0x1c>;
-			};
-
-			slot1_sgmii1: ethernet-phy@1d {
-				reg = <0x1d>;
-			};
+	/* VSC8234 */
+	slot1_sgmii0: ethernet-phy@1c {
+		reg = <0x1c>;
+	};
 
-			slot1_sgmii2: ethernet-phy@1e {
-				reg = <0x1e>;
-			};
+	slot1_sgmii1: ethernet-phy@1d {
+		reg = <0x1d>;
+	};
 
-			slot1_sgmii3: ethernet-phy@1f {
-				reg = <0x1f>;
-			};
-		};
+	slot1_sgmii2: ethernet-phy@1e {
+		reg = <0x1e>;
 	};
 
-	fragment@1 {
-		target = <&mscc_felix_ports>;
-		__overlay__ {
-			port@0 {
-				status = "okay";
-				phy-handle = <&slot1_sgmii0>;
-				phy-mode = "sgmii";
-				managed = "in-band-status";
-			};
+	slot1_sgmii3: ethernet-phy@1f {
+		reg = <0x1f>;
+	};
+};
 
-			port@1 {
-				status = "okay";
-				phy-handle = <&slot1_sgmii1>;
-				phy-mode = "sgmii";
-				managed = "in-band-status";
-			};
+&mscc_felix_ports {
+	port@0 {
+		status = "okay";
+		phy-handle = <&slot1_sgmii0>;
+		phy-mode = "sgmii";
+		managed = "in-band-status";
+	};
 
-			port@2 {
-				status = "okay";
-				phy-handle = <&slot1_sgmii2>;
-				phy-mode = "sgmii";
-				managed = "in-band-status";
-			};
+	port@1 {
+		status = "okay";
+		phy-handle = <&slot1_sgmii1>;
+		phy-mode = "sgmii";
+		managed = "in-band-status";
+	};
 
-			port@3 {
-				status = "okay";
-				phy-handle = <&slot1_sgmii3>;
-				phy-mode = "sgmii";
-				managed = "in-band-status";
-			};
-		};
+	port@2 {
+		status = "okay";
+		phy-handle = <&slot1_sgmii2>;
+		phy-mode = "sgmii";
+		managed = "in-band-status";
 	};
 
-	fragment@2 {
-		target = <&mscc_felix>;
-		__overlay__ {
-			status = "okay";
-		};
+	port@3 {
+		status = "okay";
+		phy-handle = <&slot1_sgmii3>;
+		phy-mode = "sgmii";
+		managed = "in-band-status";
 	};
 };
+
+&mscc_felix {
+	status = "okay";
+};
-- 
2.17.1

