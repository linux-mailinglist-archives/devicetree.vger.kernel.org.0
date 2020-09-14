Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78574269162
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 18:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726467AbgINQXo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 12:23:44 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:33022 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726481AbgINQXK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 12:23:10 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08EGMtcJ072710;
        Mon, 14 Sep 2020 11:22:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600100575;
        bh=CmyXyjWfosPVnPTJSZBsmcTzG4uzHJw8plca5bgWf9M=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=E8WZVogeDbr5P2CrIohLVO4ioh+HQCm++6iWehruiJ1WKpCydhkBKrIyveyyM2Zj2
         V/1XqBq1rBXFtr5o03xcRWqPbb/Dmd7/PKZJOEJRkljlg8oSGtb0aKUR7iBBlYKRp2
         jvmwd42yZkEEH1c12mIHB6+PBgL3agkzbxR3ouHU=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08EGMtd5025352
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 14 Sep 2020 11:22:55 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 11:22:54 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 11:22:54 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08EGMW6e088296;
        Mon, 14 Sep 2020 11:22:51 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v4 5/5] arm64: dts: ti: Add support for J7200 Common Processor Board
Date:   Mon, 14 Sep 2020 21:52:31 +0530
Message-ID: <20200914162231.2535-6-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200914162231.2535-1-lokeshvutla@ti.com>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for J7200 Common Processor Board.
The EVM architecture is very similar to J721E as follows:

+------------------------------------------------------+
|   +-------------------------------------------+      |
|   |                                           |      |
|   |        Add-on Card 1 Options              |      |
|   |                                           |      |
|   +-------------------------------------------+      |
|                                                      |
|                                                      |
|                     +-------------------+            |
|                     |                   |            |
|                     |   SOM             |            |
|  +--------------+   |                   |            |
|  |              |   |                   |            |
|  |  Add-on      |   +-------------------+            |
|  |  Card 2      |                                    |    Power Supply
|  |  Options     |                                    |    |
|  |              |                                    |    |
|  +--------------+                                    | <---
+------------------------------------------------------+
                                Common Processor Board

Common Processor board is the baseboard that has most of the actual
connectors, power supply etc. A SOM (System on Module) is plugged on
to the common processor board and this contains the SoC, PMIC, DDR and
basic high speed components necessary for functionality.

Note:
* The minimum configuration required to boot up the board is System On
  Module(SOM) + Common Processor Board.
* Since there is just a single SOM and Common Processor Board, we are
  maintaining common processor board as the base dts and SOM as the dtsi
  that we include. In the future as more SOM's appear, we should move
  common processor board as a dtsi and include configurations as dts.
* All daughter cards beyond the basic boards shall be maintained as
  overlays.

Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile               |  2 +
 .../dts/ti/k3-j7200-common-proc-board.dts     | 64 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 29 +++++++++
 3 files changed, 95 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 7f28be62b8da..65506f21ba30 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -9,3 +9,5 @@
 dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
 
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
+
+dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
new file mode 100644
index 000000000000..e27069317c4e
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+
+#include "k3-j7200-som-p0.dtsi"
+
+/ {
+	chosen {
+		stdout-path = "serial2:115200n8";
+		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
+	};
+};
+
+&wkup_uart0 {
+	/* Wakeup UART is used by System firmware */
+	status = "disabled";
+};
+
+&main_uart0 {
+	power-domains = <&k3_pds 146 TI_SCI_PD_SHARED>;
+};
+
+&main_uart2 {
+	/* MAIN UART 2 is used by R5F firmware */
+	status = "disabled";
+};
+
+&main_uart3 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart4 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart5 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart6 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart7 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart8 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart9 {
+	/* UART not brought out */
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
new file mode 100644
index 000000000000..f7e271c442a0
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+
+#include "k3-j7200.dtsi"
+
+/ {
+	memory@80000000 {
+		device_type = "memory";
+		/* 4G RAM */
+		reg = <0x00 0x80000000 0x00 0x80000000>,
+		      <0x08 0x80000000 0x00 0x80000000>;
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>;
+			alignment = <0x1000>;
+			no-map;
+		};
+	};
+};
-- 
2.28.0

