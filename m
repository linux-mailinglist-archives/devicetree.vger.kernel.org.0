Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F1EB2615C3
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 18:56:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731932AbgIHQzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 12:55:40 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33728 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731876AbgIHQXW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 12:23:22 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088GNHXX097460;
        Tue, 8 Sep 2020 11:23:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599582197;
        bh=2pbwwCo19T+vbFMqKNBIWRrk6ESIZJmXPCMFj4NKSuo=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=UXzvp5fkkS/pGj8Ybb7rCTVcwDEA1EoWp2jR6cEuBmlOJi5dPCnfgpaiIWX/sjf25
         GCX/pHjyoVL41FJUnIjgc/m3y2N/adsPT30zK4zxWIO/+5CxIiGFv0pXa1aIRGzYh7
         7e0qQidY+81DVXU4eXlljJBAU2CYyYTxIajNyfSU=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 088GNHjn123817
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 11:23:17 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 11:23:16 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 11:23:16 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088GMqAs044781;
        Tue, 8 Sep 2020 11:23:13 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 5/5] arm64: dts: ti: Add support for J7200 Common Processor Board
Date:   Tue, 8 Sep 2020 21:52:52 +0530
Message-ID: <20200908162252.17672-6-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200908162252.17672-1-lokeshvutla@ti.com>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
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
index e7bfb16fa816..ae76b0cb1fbf 100644
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
index 000000000000..22fc50bd5c4c
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

