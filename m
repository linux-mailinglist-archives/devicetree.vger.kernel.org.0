Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6530B2F7469
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 09:31:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726694AbhAOIa4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 03:30:56 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:56090 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726004AbhAOIaz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 03:30:55 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10F8U915079775;
        Fri, 15 Jan 2021 02:30:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610699409;
        bh=zCg3EdXO/wu512oHiDJta4PXj26ANE+InTKPiw6rXQE=;
        h=From:To:CC:Subject:Date;
        b=yk62w66wQbClU0osDRhEfNgQMlU9Vn8J9wuDlPrGisaHMa/v8ArS2geAbPnS73Nrb
         xBhNKp8tlmIuZYQ4Nb6WYRrcHRUFs20P6PkYA6PlkhHzv9aWsvs6Fp5Kbvvs/u0FSL
         O4UYIDlG70zg1wL/zlbhqTrPePm8rNtzQoiXlJ7M=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10F8U9be045307
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 15 Jan 2021 02:30:09 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 15
 Jan 2021 02:30:08 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 15 Jan 2021 02:30:08 -0600
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10F8U5Ek110837;
        Fri, 15 Jan 2021 02:30:05 -0600
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3] arm64: dts: ti: k3: squelch warnings regarding no #address-cells for interrupt-controller
Date:   Fri, 15 Jan 2021 14:00:03 +0530
Message-ID: <20210115083003.27387-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sekhar Nori <nsekhar@ti.com>

With dtc 1.6.0, building TI device-tree files with W=2 results in warnings
like below for all interrupt controllers.

/bus@100000/bus@30000000/interrupt-controller1: Missing #address-cells in interrupt provider

Fix these by adding #address-cells = <0>; for all interrupt controllers in
TI device-tree files. Any other #address-cells value is really only needed
if interrupt-map property is being used (which is not the case for existing
TI device-tree files)

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
Note: Reposting this patch as there is no conclusion from the discussion in v2[0].
      Since this changeset is compliance to the current schema, IMHO it
      can be applied as is. Any further clarification on the DT schema,
      can be clarified separately.

Changes since v2:
- Rebased on top of latest ti-k3-dts-next branch
- Added Reviewed-by from Lokesh

[0] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20201117161942.38754-3-nsekhar@ti.com/ 

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi              |  5 +++++
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi            |  2 ++
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts        |  1 +
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi             |  3 +++
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi       |  1 +
 arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts |  1 +
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi             | 11 +++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi       |  3 +++
 8 files changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 12591a854020..85ae169ab0bb 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -439,6 +439,7 @@ intr_main_gpio: interrupt-controller0 {
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
 		#interrupt-cells = <1>;
+		#address-cells = <0>;
 		ti,sci = <&dmsc>;
 		ti,sci-dev-id = <100>;
 		ti,interrupt-ranges = <0 392 32>;
@@ -460,6 +461,7 @@ intr_main_navss: interrupt-controller1 {
 			interrupt-controller;
 			interrupt-parent = <&gic500>;
 			#interrupt-cells = <1>;
+			#address-cells = <0>;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <182>;
 			ti,interrupt-ranges = <0 64 64>,
@@ -473,6 +475,7 @@ inta_main_udmass: interrupt-controller@33d00000 {
 			interrupt-parent = <&intr_main_navss>;
 			msi-controller;
 			#interrupt-cells = <0>;
+			#address-cells = <0>;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <179>;
 			ti,interrupt-ranges = <0 0 256>;
@@ -669,6 +672,7 @@ main_gpio0: gpio@600000 {
 		interrupts = <192>, <193>, <194>, <195>, <196>, <197>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <96>;
 		ti,davinci-gpio-unbanked = <0>;
 		clocks = <&k3_clks 57 0>;
@@ -684,6 +688,7 @@ main_gpio1: gpio@601000 {
 		interrupts = <200>, <201>, <202>, <203>, <204>, <205>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <90>;
 		ti,davinci-gpio-unbanked = <0>;
 		clocks = <&k3_clks 58 0>;
diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
index ed42f13e7663..7fe5782a1f79 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
@@ -75,6 +75,7 @@ intr_wkup_gpio: interrupt-controller2 {
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
 		#interrupt-cells = <1>;
+		#address-cells = <0>;
 		ti,sci = <&dmsc>;
 		ti,sci-dev-id = <156>;
 		ti,interrupt-ranges = <0 712 16>;
@@ -89,6 +90,7 @@ wkup_gpio0: gpio@42110000 {
 		interrupts = <60>, <61>, <62>, <63>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <56>;
 		ti,davinci-gpio-unbanked = <0>;
 		clocks = <&k3_clks 59 0>;
diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index fe3043943906..a14a3bb212ee 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -267,6 +267,7 @@ pca9554: gpio@39 {
 		interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 4cc2e9094d0e..421e2fa3e78f 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -74,6 +74,7 @@ main_gpio_intr: interrupt-controller0 {
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
 		#interrupt-cells = <1>;
+		#address-cells = <0>;
 		ti,sci = <&dmsc>;
 		ti,sci-dev-id = <131>;
 		ti,interrupt-ranges = <8 392 56>;
@@ -92,6 +93,7 @@ main_navss_intr: interrupt-controller1 {
 			interrupt-controller;
 			interrupt-parent = <&gic500>;
 			#interrupt-cells = <1>;
+			#address-cells = <0>;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <213>;
 			ti,interrupt-ranges = <0 64 64>,
@@ -104,6 +106,7 @@ main_udmass_inta: msi-controller@33d00000 {
 			reg = <0x00 0x33d00000 0x00 0x100000>;
 			interrupt-controller;
 			#interrupt-cells = <0>;
+			#address-cells = <0>;
 			interrupt-parent = <&main_navss_intr>;
 			msi-controller;
 			ti,sci = <&dmsc>;
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index 359e3e8a8cd0..0a8df7e4739c 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -102,6 +102,7 @@ wkup_gpio_intr: interrupt-controller2 {
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
 		#interrupt-cells = <1>;
+		#address-cells = <0>;
 		ti,sci = <&dmsc>;
 		ti,sci-dev-id = <137>;
 		ti,interrupt-ranges = <16 960 16>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 60764366e22b..9039cd71cdea 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -475,6 +475,7 @@ exp4: gpio@20 {
 		interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 2d526ea44a85..b527874929a2 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -82,6 +82,7 @@ main_gpio_intr: interrupt-controller0 {
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
 		#interrupt-cells = <1>;
+		#address-cells = <0>;
 		ti,sci = <&dmsc>;
 		ti,sci-dev-id = <131>;
 		ti,interrupt-ranges = <8 392 56>;
@@ -103,6 +104,7 @@ main_navss_intr: interrupt-controller1 {
 			interrupt-controller;
 			interrupt-parent = <&gic500>;
 			#interrupt-cells = <1>;
+			#address-cells = <0>;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <213>;
 			ti,interrupt-ranges = <0 64 64>,
@@ -117,6 +119,7 @@ main_udmass_inta: interrupt-controller@33d00000 {
 			interrupt-parent = <&main_navss_intr>;
 			msi-controller;
 			#interrupt-cells = <0>;
+			#address-cells = <0>;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <209>;
 			ti,interrupt-ranges = <0 0 256>;
@@ -910,6 +913,7 @@ main_gpio0: gpio@600000 {
 			     <260>, <261>, <262>, <263>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <128>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 105 TI_SCI_PD_EXCLUSIVE>;
@@ -926,6 +930,7 @@ main_gpio1: gpio@601000 {
 		interrupts = <288>, <289>, <290>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <36>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 106 TI_SCI_PD_EXCLUSIVE>;
@@ -943,6 +948,7 @@ main_gpio2: gpio@610000 {
 			     <268>, <269>, <270>, <271>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <128>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 107 TI_SCI_PD_EXCLUSIVE>;
@@ -959,6 +965,7 @@ main_gpio3: gpio@611000 {
 		interrupts = <292>, <293>, <294>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <36>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 108 TI_SCI_PD_EXCLUSIVE>;
@@ -976,6 +983,7 @@ main_gpio4: gpio@620000 {
 			     <276>, <277>, <278>, <279>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <128>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 109 TI_SCI_PD_EXCLUSIVE>;
@@ -992,6 +1000,7 @@ main_gpio5: gpio@621000 {
 		interrupts = <296>, <297>, <298>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <36>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 110 TI_SCI_PD_EXCLUSIVE>;
@@ -1009,6 +1018,7 @@ main_gpio6: gpio@630000 {
 			     <284>, <285>, <286>, <287>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <128>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 111 TI_SCI_PD_EXCLUSIVE>;
@@ -1025,6 +1035,7 @@ main_gpio7: gpio@631000 {
 		interrupts = <300>, <301>, <302>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <36>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 112 TI_SCI_PD_EXCLUSIVE>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 6c44afae9187..59820c4290c5 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -102,6 +102,7 @@ wkup_gpio_intr: interrupt-controller2 {
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
 		#interrupt-cells = <1>;
+		#address-cells = <0>;
 		ti,sci = <&dmsc>;
 		ti,sci-dev-id = <137>;
 		ti,interrupt-ranges = <16 960 16>;
@@ -116,6 +117,7 @@ wkup_gpio0: gpio@42110000 {
 		interrupts = <103>, <104>, <105>, <106>, <107>, <108>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <84>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 113 TI_SCI_PD_EXCLUSIVE>;
@@ -132,6 +134,7 @@ wkup_gpio1: gpio@42100000 {
 		interrupts = <112>, <113>, <114>, <115>, <116>, <117>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		#address-cells = <0>;
 		ti,ngpio = <84>;
 		ti,davinci-gpio-unbanked = <0>;
 		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
-- 
2.29.2

