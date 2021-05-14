Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74D313813E3
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 00:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234016AbhENWta (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 18:49:30 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:41352 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230371AbhENWt2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 18:49:28 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EMmAbN099728;
        Fri, 14 May 2021 17:48:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621032490;
        bh=+EBocfjKrbrL9lxJzYv6uCNcP95jHKI1BZ/EgBdBjB0=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=AksFqKgrYO7lqd1Qh1zXxXmjl95FJx8QLTZ7rGbNZtSWXk6i3Mxf+DY1DfqxiFk+B
         rflt3ptzgvqBStwn5VQiHEYjP9qpYhytELNg+eIqn6znbo7qPysb2zP+/Icu5sp/u9
         U2+oCi/mGmtaztu8Wv/zgNws2/dMR9par25RK4sI=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EMmArQ039038
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 17:48:10 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 17:48:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 17:48:10 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EMmAo8097550;
        Fri, 14 May 2021 17:48:10 -0500
Received: from localhost ([10.250.35.60])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14EMmAhS111509;
        Fri, 14 May 2021 17:48:10 -0500
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
Subject: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes
Date:   Fri, 14 May 2021 17:47:58 -0500
Message-ID: <20210514224759.9987-2-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210514224759.9987-1-s-anna@ti.com>
References: <20210514224759.9987-1-s-anna@ti.com>
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
---
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 12 ++++++++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 30 +++++++++++++++++++
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 12 ++++++++
 3 files changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index de763ca9251c..63140eaba524 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -653,3 +653,15 @@ &pcie1_rc {
 &pcie1_ep {
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
index cb340d1b401f..25ec7aba841a 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -1051,6 +1051,16 @@ tx_pru0_1: txpru@c000 {
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
@@ -1182,6 +1192,16 @@ tx_pru1_1: txpru@c000 {
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
@@ -1313,5 +1333,15 @@ tx_pru2_1: txpru@c000 {
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
index 9e87fb313a54..be905a006a97 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -537,3 +537,15 @@ &mcasp2 {
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

