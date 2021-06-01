Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8473A3975FD
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:00:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233924AbhFAPCi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:02:38 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:56594 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234066AbhFAPCh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:02:37 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 151F0mng072863;
        Tue, 1 Jun 2021 10:00:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622559648;
        bh=7t7I7vDeGgG3JoWgwTVVE1/vR1UOHKQGZO0PYBqm36E=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=hYD/s5NyX5qjNYsUa4IuWLe3JV/xbunopXppSgvVcNeywugfxxBPxVX4ftruWZjHv
         1hlLUBSlZEVf+KGWQ997Mg6PSCXa77J1N9STJxvucAkVH9fr1d78AfmKyjW0hrAt2Y
         dE2mXcUZbzwg5Pd6AnGs8C0HxgZTb1Wwkj+ax0yQ=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 151F0mFC034128
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 1 Jun 2021 10:00:48 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 1 Jun
 2021 10:00:48 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 1 Jun 2021 10:00:48 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 151F0m5E124436;
        Tue, 1 Jun 2021 10:00:48 -0500
Received: from localhost ([10.250.35.153])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 151F0mxw109775;
        Tue, 1 Jun 2021 10:00:48 -0500
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
Subject: [PATCH v2 2/2] arm64: dts: ti: k3-j721e-main: Add ICSSG MDIO nodes
Date:   Tue, 1 Jun 2021 10:00:32 -0500
Message-ID: <20210601150032.11432-3-s-anna@ti.com>
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

The ICSSGs on K3 J721E SoCs contain an MDIO controller that can
be used to control external PHYs associated with the Industrial
Ethernet peripherals within each ICSSG instance. The MDIO module
used within the ICSSG is similar to the MDIO Controller used
in TI Davinci SoCs. A bus frequency of 1 MHz is chosen for the
MDIO operations.

The nodes are added and enabled in the common k3-j721e-main.dtsi
file by default, and disabled in the existing J721E board dts
file. These nodes need pinctrl lines, and so should be enabled
only on boards where they are actually wired and pinned out for
ICSSG Ethernet. Any new board dts file should disable these if
they are not sure.

Signed-off-by: Suman Anna <s-anna@ti.com>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     |  8 ++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 +++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 351bb84db65b..1991f620d94b 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -718,3 +718,11 @@ &pcie3_ep {
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
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 3bcafe4c1742..598613876b0f 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1794,6 +1794,16 @@ tx_pru0_1: txpru@c000 {
 			reg-names = "iram", "control", "debug";
 			firmware-name = "j7-txpru0_1-fw";
 		};
+
+		icssg0_mdio: mdio@32400 {
+			compatible = "ti,davinci_mdio";
+			reg = <0x32400 0x100>;
+			clocks = <&k3_clks 119 1>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			bus_freq = <1000000>;
+		};
 	};
 
 	icssg1: icssg@b100000 {
@@ -1925,5 +1935,15 @@ tx_pru1_1: txpru@c000 {
 			reg-names = "iram", "control", "debug";
 			firmware-name = "j7-txpru1_1-fw";
 		};
+
+		icssg1_mdio: mdio@32400 {
+			compatible = "ti,davinci_mdio";
+			reg = <0x32400 0x100>;
+			clocks = <&k3_clks 120 4>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			bus_freq = <1000000>;
+		};
 	};
 };
-- 
2.30.1

