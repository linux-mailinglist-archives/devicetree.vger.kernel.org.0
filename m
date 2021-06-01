Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF1FE3975FC
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233797AbhFAPCh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:02:37 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:56560 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233924AbhFAPCc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:02:32 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 151F0h9d072836;
        Tue, 1 Jun 2021 10:00:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622559643;
        bh=QtcArdRjPfW/wb3knqprsPmMce5GCzvB1V383ra8mFE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=Go9jhjGDdcuMPnsiSqiMqwTkcH10Wrl4Dp841QxIR7fwqB3yGlBcmq34YjpvIdSHS
         P1Zowvnuo8/6EsjaPcKE8b5MvehHrW1/s+DmaLdpFxs6f9iGU8x5DPBaP/l8dPAHHE
         3Xm09rmp82GA27JhMzsPnInXqywsxWoErc1MTzhs=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 151F0h06118131
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 1 Jun 2021 10:00:43 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 1 Jun
 2021 10:00:43 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 1 Jun 2021 10:00:43 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 151F0hmC124364;
        Tue, 1 Jun 2021 10:00:43 -0500
Received: from localhost ([10.250.35.153])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 151F0hWb109744;
        Tue, 1 Jun 2021 10:00:43 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 1/2] arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes
Date:   Tue, 1 Jun 2021 10:00:31 -0500
Message-ID: <20210601150032.11432-2-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210601150032.11432-1-s-anna@ti.com>
References: <20210601150032.11432-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Roger Quadros <rogerq@ti.com>

The ICSSGs on K3 AM65x SoCs contain an MDIO controller that can
be used to control external PHYs associated with the Industrial
Ethernet peripherals within each ICSSG instance. The MDIO module
used within the ICSSG is similar to the MDIO Controller used
in TI Davinci SoCs. A bus frequency of 1 MHz is chosen for the
MDIO operations.

The nodes are added and enabled in the common k3-am65-main.dtsi
file by default, and disabled in the existing AM65 board dts
files. These nodes need pinctrl lines, and so should be enabled
only on boards where they are actually wired and pinned out for
ICSSG Ethernet. Any new board dts file should disable these if
they are not sure.

Signed-off-by: Roger Quadros <rogerq@ti.com>
[s-anna@ti.com: move the disabled status to board dts files]
Signed-off-by: Suman Anna <s-anna@ti.com>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
Acked-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 12 ++++++++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 30 +++++++++++++++++++
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 12 ++++++++
 3 files changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index d90abda1de84..8c6b538c53f3 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -702,3 +702,15 @@ &mailbox0_cluster10 {
 &mailbox0_cluster11 {
 	status = "disabled";
 };
+
+&icssg0_mdio {
+	status = "disabled";
+};
+
+&icssg1_mdio {
+	status = "disabled";
+};
+
+&icssg2_mdio {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index f97fc00c00ca..e679394d0b7e 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -1052,6 +1052,16 @@ tx_pru0_1: txpru@c000 {
 			reg-names = "iram", "control", "debug";
 			firmware-name = "am65x-txpru0_1-fw";
 		};
+
+		icssg0_mdio: mdio@32400 {
+			compatible = "ti,davinci_mdio";
+			reg = <0x32400 0x100>;
+			clocks = <&k3_clks 62 3>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			bus_freq = <1000000>;
+		};
 	};
 
 	icssg1: icssg@b100000 {
@@ -1183,6 +1193,16 @@ tx_pru1_1: txpru@c000 {
 			reg-names = "iram", "control", "debug";
 			firmware-name = "am65x-txpru1_1-fw";
 		};
+
+		icssg1_mdio: mdio@32400 {
+			compatible = "ti,davinci_mdio";
+			reg = <0x32400 0x100>;
+			clocks = <&k3_clks 63 3>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			bus_freq = <1000000>;
+		};
 	};
 
 	icssg2: icssg@b200000 {
@@ -1314,5 +1334,15 @@ tx_pru2_1: txpru@c000 {
 			reg-names = "iram", "control", "debug";
 			firmware-name = "am65x-txpru2_1-fw";
 		};
+
+		icssg2_mdio: mdio@32400 {
+			compatible = "ti,davinci_mdio";
+			reg = <0x32400 0x100>;
+			clocks = <&k3_clks 64 3>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			bus_freq = <1000000>;
+		};
 	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 60e43fd7af12..fa057a85e833 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -539,3 +539,15 @@ &mcasp2 {
 &dss {
 	status = "disabled";
 };
+
+&icssg0_mdio {
+	status = "disabled";
+};
+
+&icssg1_mdio {
+	status = "disabled";
+};
+
+&icssg2_mdio {
+	status = "disabled";
+};
-- 
2.30.1

